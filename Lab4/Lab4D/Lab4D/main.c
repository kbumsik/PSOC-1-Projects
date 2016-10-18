//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>
#include <stddef.h>

void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);

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

// global variables
unsigned short wControlState = 1000;
unsigned short wFirstValue;
unsigned short wLastValue;
char cNumCycles = (char )-1;
unsigned char bDataAvailable = 0;
unsigned short wSpeedRPM = 0;

void main(void)
{
	// variable declaration
	static char str_buf[17];
	unsigned char pw;
	char bSwitchState;
	long int tmp;
	char line1_head[] = "RPM: ";
	char line2_head[] = "PWM: ";
	
	// initialize interrupt
	//INT_MSK0 |= 0x40;
	M8C_EnableGInt;
	FanPWM_EnableInt();

	//SleepTimer_EnableInt();
	
	// initialize PWM module
	FanPWM_Start();
	
	// init 16 bit timer
	TachTimer_Start();
	
	// init LCD module
	LCD_1_Start();
	
	// start PWM and LCD
	pw = FanPWM_bReadPulseWidth();
	pw = 255;
	FanPWM_WritePulseWidth(pw);
	strcpy(str_buf, line2_head);
	itoa(pw, str_buf + 5, 10);
	LCD_line_print(str_buf, 1);
	
	
	// infinite loop with debouncing.
	bSwitchState = 0;
	while (1)
	{
		// FIXME: The sleep has a problem with the overall freq
		//M8C_Sleep;
		//INT_CLR0 = INT_CLR0 & ~0x40;
		
		// debouncing
		bSwitchState <<= 1;
		bSwitchState &= 0x0f;
		bSwitchState |= (PRT1DR & 0x01);
		if(bSwitchState == 0x07)
		{			
			// increase the pulse width
			pw = FanPWM_bReadPulseWidth() - 1;
			if (pw <= 0)
			{
				pw = 255;
			}
			FanPWM_WritePulseWidth(pw);
			
			// print out
			strcpy(str_buf, line2_head);
			itoa(pw, str_buf + strlen(line2_head), 10);
			LCD_line_print(str_buf, 1);
		}
		
		// Main control loop
		if (bDataAvailable == 1)
		{
			// clear it
			bDataAvailable = 0;
			// calculate the fan speed
			
			// and post it along with the value of cNumCyles, to the LCD
			tmp = 0;
			tmp = 45*100000*cNumCycles;
			tmp += (wFirstValue - wLastValue)/2;
			tmp /= (wFirstValue - wLastValue);
			wSpeedRPM = (unsigned short)tmp;
			
			// print out
			strcpy(str_buf, line1_head);
			itoa(wSpeedRPM, str_buf + strlen(line1_head), 10);
			LCD_line_print(str_buf, 0);
		}
	}
}
