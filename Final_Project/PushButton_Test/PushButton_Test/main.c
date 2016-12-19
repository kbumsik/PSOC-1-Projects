//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>
#include <stddef.h>

// Output-related functions
void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);
#define LCD_LINE_1 0
#define LCD_LINE_2 1

// FSM/timer-related functions
void do_nothing(void);
void start_timer(void);
void pause_timer(void);
void reset_timer(void);

// Timer global variable
unsigned short time;

/*******************************************************************************
 * State machine definitions
 ******************************************************************************/

// event enum
enum event {
	short_pressed, long_pressed, eol
};

// state enum
enum state {
	stopped, running, paused
};

// transition and table
struct transition {
	enum event event_val;
	void (*task) (void);
	enum state next_state;
};

// fsm function
void stopwatch_fsm(enum event event_input){
	static const struct transition stopped_transitions[] = {
	//	Event			Task		Next_state
		{short_pressed, start_timer, running},
		{eol,			do_nothing,	stopped}
	};
	static const struct transition running_transitions[] = {
	//	Event			Task		Next_state
		{short_pressed, pause_timer, paused},
		{eol,			do_nothing,	running}
	};
	static const struct transition paused_transitions[] = {
	//	Event			Task		Next_state
		{short_pressed, start_timer, running},
		{long_pressed,	reset_timer, stopped},
		{eol,			do_nothing,	paused}
	};
	// FSM table. Since it is const, it will be stored in FLASH
	static const struct transition *fsm_table[3] = {
		stopped_transitions,
		running_transitions,
		paused_transitions
	};
	// stopwatch current state
	static enum state cs = stopped;

	// search for signal
	int i;
	for (i = 0; (fsm_table[cs][i].event_val != event_input)
		&& (fsm_table[cs][i].event_val != eol); i++){
	};
	// call task function and than change state
	fsm_table[cs][i].task();
	cs = fsm_table[cs][i].next_state;
	return;
}


/*******************************************************************************
 * Main function
 ******************************************************************************/
void main(void){
	char str_buf[17];
	unsigned char bSwitchState = 0;
	unsigned char PressedTime = 0;
	
	// initialize interrupt
	M8C_EnableGInt;
	StopTimer_EnableInt();
	
	// init LCD module
	LCD_Start();
	
	// start PWM and LCD
	cstrcpy(str_buf, "Hello?");
	LCD_line_print(str_buf, LCD_LINE_2);
	
	// infinite loop with debouncing.
	reset_timer();
	while (1){
		// debouncing		
		bSwitchState <<= 1;
		bSwitchState &= 0x0f;
		bSwitchState |= (PRT1DR & 0x01);
		if(bSwitchState == 0x0f){	// press detected 0x07
			if (PressedTime < 200){
				PressedTime++;	// Time button being pressed counted
			}else if (PressedTime == 200){
				// Long pressed Event
				PressedTime++; // to prevent Repeated event
				stopwatch_fsm(long_pressed);
			
				cstrcpy(str_buf, "Long Pressed");
				LCD_line_print(str_buf, LCD_LINE_2);
			}else {
				// to prevent Repeated event after long pressed event
			}
		}else {
			if (PressedTime == 0){
				// Not pressed. No Event
			}else if (PressedTime >= 200){
				// Release after Long pressed Event
				cstrcpy(str_buf, "Released");
				LCD_line_print(str_buf, LCD_LINE_2);
			}else {
				// Short Pressed Event
				stopwatch_fsm(short_pressed);
			
				cstrcpy(str_buf, "Short Pressed");
				LCD_line_print(str_buf, LCD_LINE_2);
			}
			PressedTime = 0;
		}
		
		// main loop
		itoa(time, str_buf, 10);
		LCD_line_print(str_buf, LCD_LINE_1);	
	}
}


/*******************************************************************************
 * Output-related functions
 ******************************************************************************/
void itoa(unsigned short input, char *str, int base){
	int n = 0;
	unsigned int d = 1;
	
	while ((input / d) >= base){
		d *= base;
	}
	while (d != 0){
		int digit = input / d;
		input %= d;
		d /= base;
		if (n || digit > 0 || d == 0){
			*str++ = digit + ((digit < 10)? '0': 'a' - 10);
			n++;
		}
	}
	*str = '\0';
}

void LCD_line_print(char *str, unsigned char line){
	static char buffer[17];
	memset(buffer, ' ', 16);
	memcpy(buffer, str, strlen(str));
	buffer[17] = '\0';
	LCD_Position(line, 0);
	LCD_PrString(buffer);
}


/*******************************************************************************
 * FSM/Timer related functions
 ******************************************************************************/
void do_nothing(void){
	return;
}
void start_timer(void){
	StopTimer_Start();
}

void pause_timer(void){
	StopTimer_Stop();
}

void reset_timer(void){
	time = 0;
}


/*******************************************************************************
 * ISRs
 ******************************************************************************/
#pragma interrupt_handler StopTimer_ISR
void StopTimer_ISR(void){
	time += 1;
}
