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
void stop_timer_record(void);
void show_next_record(void);
void inc_accuracy(void);
void inc_sensitivity(void);
void show_detected(void);

/*******************************************************************************
 * State machine definitions
 ******************************************************************************/

// event enum
enum event {
	sp, lp, mic, eol
};

// state enum
enum state {
	pb_stopped, pb_running, mic_stopped, mic_running,
	statistic, accuracy, sensitivity
};

// transition and table
struct transition {
	enum event event_val;
	void (*task) (void);
	enum state next_state;
};

// stopwatch current state
enum state cs = pb_stopped;

// fsm function
void stopwatch_fsm(enum event event_input){
	static const struct transition pb_stopped_transitions[] = {
	//	Event	Task				Next_state
		{sp,	start_timer, 		pb_running},
		{lp,	do_nothing, 		mic_stopped},
		{eol,	do_nothing,			pb_stopped}
	};
	static const struct transition pb_running_transitions[] = {
	//	Event	Task				Next_state
		{sp,	stop_timer_record,	pb_stopped},
		{eol,	do_nothing,			pb_running}
	};
	static const struct transition mic_stopped_transitions[] = {
	//	Event	Task				Next_state
		{mic,	start_timer, 		mic_running},
		{lp,	do_nothing, 		statistic},
		{eol,	do_nothing,			mic_stopped}
	};
	static const struct transition mic_running_transitions[] = {
	//	Event	Task				Next_state
		{mic,	stop_timer_record,	mic_stopped},
		{eol,	do_nothing,			mic_running}
	};
	static const struct transition statistic_transitions[] = {
	//	Event	Task				Next_state
		{sp,	show_next_record,	statistic},
		{lp,	do_nothing, 		accuracy},
		{eol,	do_nothing,			statistic}
	};
	static const struct transition accuracy_transitions[] = {
	//	Event	Task				Next_state
		{sp,	inc_accuracy, 		accuracy},
		{lp,	do_nothing, 		sensitivity},
		{eol,	do_nothing,			accuracy}
	};
	static const struct transition sensitivity_transitions[] = {
	//	Event	Task				Next_state
		{sp,	inc_sensitivity, 	sensitivity},
		{mic,	show_detected,		sensitivity},
		{lp,	do_nothing, 		pb_stopped},
		{eol,	do_nothing,			sensitivity}
	};
	// FSM table. Since it is const, it will be stored in FLASH
	static const struct transition *fsm_table[7] = {
		pb_stopped_transitions, 
		pb_running_transitions, 
		mic_stopped_transitions, 
		mic_running_transitions,
		statistic_transitions, 
		accuracy_transitions, 
		sensitivity_transitions
	};

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

// global variable
unsigned short time;
unsigned short MuteTime;
unsigned char MicSensitivity = 1;
int MicSenseValue = 350;
unsigned char TimeAccuracy = 0;
char str_buf[17];

/*******************************************************************************
 * Main function
 ******************************************************************************/
void main(void){
	unsigned char bSwitchState = 0;
	unsigned char PressedTime = 0;
	int MicValue;
	int i;
	MuteTime = 0;
	
	// initialize interrupt
	M8C_EnableGInt;
	StopTimer_EnableInt();
	MuteTimer_EnableInt();
	
	// start Mic hardware
	PGA_1_Start(PGA_1_HIGHPOWER);
	PGA_2_Start(PGA_2_HIGHPOWER);
	LPF2_1_Start(LPF2_1_HIGHPOWER);
	DUALADC_1_Start(DUALADC_1_HIGHPOWER);
	DUALADC_1_SetResolution(10);
	DUALADC_1_GetSamples(0);
	
	// init LCD module
	LCD_Start();
	
	// start PWM and LCD
	cstrcpy(str_buf, "Hello?");
	LCD_line_print(str_buf, LCD_LINE_2);
	
	// main loop
	while (1){
		/****************************************************
		 * Button detecting
		 ***************************************************/
		// debouncing		
		bSwitchState <<= 1;
		bSwitchState &= 0x0f;
		bSwitchState |= (PRT1DR & 0x01);
		if(bSwitchState == 0x0f){	// press detected 0x07
			if (PressedTime < 200){
				PressedTime++;	// Time button being pressed counted
			} else if (PressedTime == 200){
				// Long pressed Event
				PressedTime++; // to prevent Repeated event
				stopwatch_fsm(lp);
			
				cstrcpy(str_buf, "Long Pressed");
				LCD_line_print(str_buf, LCD_LINE_2);
			} else {
				// to prevent Repeated event after long pressed event
			}
		} else {
			if (PressedTime == 0){
				// Not pressed. No Event
			} else if (PressedTime >= 200){
				// Release after Long pressed Event
				cstrcpy(str_buf, "Released");
				LCD_line_print(str_buf, LCD_LINE_2);
			} else {
				// Short Pressed Event
				stopwatch_fsm(sp);
			
				cstrcpy(str_buf, "Short Pressed");
				LCD_line_print(str_buf, LCD_LINE_2);
			}
			PressedTime = 0;
		}
		
		/****************************************************
		 * Microphone detecting
		 ***************************************************/
		// get mic
		if(MuteTime == 0) {
			while (DUALADC_1_fIsDataAvailable() == 0){
				// Wait for mic conversion data available
			}
			MicValue = DUALADC_1_iGetData1ClearFlag(); // Get data from ADC
										// and Clear data ready flag
			if(MicValue > MicSenseValue) {
				// Sound detected
				stopwatch_fsm(mic);
				
				cstrcpy(str_buf, "Sound detected");
				LCD_line_print(str_buf, LCD_LINE_2);

				// Start Mute Timer
				MuteTime = 1;	// Prevent getting this loop again.
				MuteTimer_Start();
			}
		} else if (MuteTime > 100) {	// Muted for 0.5 seconds
			MuteTimer_Stop();
			MuteTime = 0;
			
			cstrcpy(str_buf, "Mic Restored");
			LCD_line_print(str_buf, LCD_LINE_2);
		}
		
		/****************************************************
		 * Main Loop
		 ***************************************************/
		switch(cs){
		case pb_stopped:
			itoa(time, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case pb_running:
			itoa(time, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case mic_stopped:
			itoa(time, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case mic_running:
			itoa(time, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case statistic:
			itoa(time, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case accuracy:
			itoa(TimeAccuracy, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		case sensitivity:
			itoa(MicSensitivity, str_buf, 10);
			LCD_line_print(str_buf, LCD_LINE_1);
			break;
		}
	}
}


/*******************************************************************************
 * Output-related functions
 ******************************************************************************/
void itoa(unsigned short input, char *str, int base){
	int n = 0;
	unsigned int d = 1;
	
	while ((input / d) >= base) {
		d *= base;
	}
	while (d != 0) {
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
void do_nothing(void) {
	return;
}
void start_timer(void) {
	StopTimer_Start();
}
void stop_timer_record(void) {
	StopTimer_Stop();
	time = 0;
}

void show_next_record(void) {
	return;
}

void inc_accuracy(void) {
	if(TimeAccuracy < 2) {
		TimeAccuracy += 1;
	} else {
		TimeAccuracy = 0;
	}
	switch(TimeAccuracy) {
	case 0:
		StopTimer_WritePeriod(32000);	// 1 sec
		break;
	case 1:
		StopTimer_WritePeriod(16000);	// 1/2 sec
		break;
	case 2:
		StopTimer_WritePeriod(3200);	// 1/10 sec
		break;
	}
}

void inc_sensitivity(void) {
	if(MicSensitivity < 10) {
		MicSensitivity += 1;
	} else {
		MicSensitivity = 1;
	}
	MicSenseValue = 300 + MicSensitivity * 50;
}

void show_detected(void) {
	cstrcpy(str_buf, "Mic detected");
	LCD_line_print(str_buf, LCD_LINE_2);
}


/*******************************************************************************
 * ISRs
 ******************************************************************************/
#pragma interrupt_handler StopTimer_ISR
void StopTimer_ISR(void){
	time += 1;
}

#pragma interrupt_handler MuteTimer_ISR
void MuteTimer_ISR(void){	// This is triggered at 200 Hz
	MuteTime += 1;
}