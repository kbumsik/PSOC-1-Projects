//----------------------------------------------------------------------------
// Lab7B
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>

void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);

#define DAC_MAX (62) //max dac value

unsigned char bDACValue = 0, f; //dac value, index
BOOL buttonPressed = FALSE; //holds if button pressed
int buttonCount = 0, valat = 0; //buttoncount and place in dacs

void main(void)
{
	unsigned char out[17]; //inputs and output array
	
	LCD_1_Start(); //start lcd module	
	DAC6_Start(DAC6_HIGHPOWER); //start dac6 high power
	INT_MSK0 |= 0x40; //enable sleep interrupt
	M8C_EnableGInt; //enable global interrupt
	
	while (1) {
		if (buttonPressed) { //waits until isr updates buttonPressed
			if(bDACValue == DAC_MAX)
				bDACValue = 0;
			else bDACValue++;
			DAC6_WriteStall(bDACValue);//increment SCDAC control register
			buttonPressed = FALSE; //clear buttonpress
			for(f = 0xFF; f != 0; f--); //stall while writing dac val
		}
		itoa(DAC6_CR0, out, 10); //cr0's lower 5 bits to base 10 in out
		LCD_line_print(out, 0); //print output array to LCD
	}
}

void itoa(unsigned short input, char *str, int base)
{
	int n = 0;
	unsigned int d = 1;
	
	while ((input / d) >= base) 
	{
		d *= base;
	}
	while (d != 0)
	{
		int digit = input / d;
		input %= d;
		d /= base;
		if (n || digit > 0 || d == 0)
		{
			*str++ = digit + ((digit < 10)? '0': 'a' - 10);
			n++;
		}
	}
	*str = '\0';
}

void LCD_line_print(char *str, unsigned char line)
{
	static char buffer[17];
	memset(buffer, ' ', 16);
	memcpy(buffer, str, strlen(str));
	buffer[17] = '\0';
	LCD_1_Position(line, 0);
	LCD_1_PrString(buffer);
}

#pragma interrupt_handler SleepTimerISR // use SleepTimerISR as ISR
void SleepTimerISR(void ) {
	if (PRT1DR == 1) { //if button pressed
		if(buttonCount == 5) { //button is pressed
			buttonPressed = TRUE; //certify successful press
			buttonCount = 0; //reset debounce count
		}
		else { //add to debounce count
			buttonCount++;
		}
	}
}