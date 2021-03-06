//----------------------------------------------------------------------------
// Lab7B
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>

void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);



BOOL buttonPressed = FALSE; //holds if button pressed
int buttonCount = 0, valat = 0; //buttoncount and place in dacs
BYTE dacs[] = {128, 191, 0, 38, 137}; //scdac array
void main(void)
{
	unsigned char i1, i2, i3, out[17]; //inputs and output array
	unsigned char *ooptr; //initialize output pointer
	unsigned char testout[5];
	
	LCD_1_Start(); //start lcd module	
	
	INT_MSK0 |= 0x40; //enable sleep interrupt
	M8C_EnableGInt; //enable global interrupt
	
	while (1) {
		if (buttonPressed) { //waits until isr updates buttonPressed
			SCDAC_cr0 = dacs[valat]; //increment SCDAC control register
			buttonPressed = FALSE; //clear buttonpress
			if (valat < 4)
				valat++;
			else valat = 0;
		}
		//lcd out masks for bit 7 of cr, then bits 4-0, then bit 5
		i1 = (SCDAC_cr0 & 0x80) >> 7; // FCAP
		i2 = SCDAC_cr0 & 0x1F; // ACAP
		i3 = (SCDAC_cr0 & 0x20) >> 5; // ASign
		itoa(i1, out, 10); //i1 to base 10 in out
		ooptr = out; //point to out
		while (*ooptr != '\0') //look for last char of output array
			ooptr++; //go to next element of array
		*ooptr++ = ' '; //add space to next element of output array
		itoa(i2, ooptr, 10);//i2 to base 10 appended to out
		while (*ooptr != '\0') //look for last char of output array
			ooptr++; //go to next element of array
		*ooptr++ = ' '; //add space to next element of output array
		itoa(i3, ooptr, 10); //i3 to base 10 appended to out
		
		LCD_line_print(out, 0); //print output array to LCD
		
		itoa(SCDAC_cr0, testout, 10); 
		LCD_line_print(testout,1);
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