//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>

void itoa(int input, char *str, int base);

void itoa(int input, char *str, int base)
{
	int n = 0;
	unsigned int d = 1;
	while (input / d >= base)
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


void main(void)
{
	// variable declaration
	char str[16];
	unsigned char pw;
	char bSwitchState;
	
	// initialize hardware
	INT_MSK0 |= 0x40;
	PWM8_1_Start();
	LCD_1_Start();
	LCD_1_Position(0,0);
	pw = PWM8_1_bReadPulseWidth();
	pw = 255;
	PWM8_1_WritePulseWidth(pw);
	itoa(pw, str, 10);
	LCD_1_PrString(str);
	
	// infinite loop with debouncing.
	bSwitchState = 0;
	while (1)
	{
		bSwitchState <<= 1;
		bSwitchState &= 0x0f;
		bSwitchState |= (PRT1DR & 0x01);
		if(bSwitchState == 0x07)
		{
			// clear the LCD
			memset(str, ' ', 16);
			LCD_1_Position(0,0);
			LCD_1_PrString(str);
			
			// increase the pulse width
			pw = PWM8_1_bReadPulseWidth() - 1;
			if (pw <= 0)
			{
				pw = 255;
			}
			PWM8_1_WritePulseWidth(pw);
			
			// print out
			LCD_1_Position(0,0);
			itoa(pw, str, 10);
			LCD_1_PrString(str);
		}
	}
}