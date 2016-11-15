//----------------------------------------------------------------------------
// Lab7B
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>

void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);

CONST char test2[] = "It turns On";

BOOL buttonPressed = FALSE; //holds if button pressed
int buttonCount = 0;
void main(void)
{
	unsigned char o1;
	unsigned char o2;
	unsigned char o3;
	unsigned char oo[17]; //setup lcd output array
	unsigned char *temp;
	char debug[17];
	
	LCD_1_Start(); //start lcd module
	//LCD_1_Position(0,0); //initialize lcd cursor position
	//LCD_1_PrCString("Test?");
	
	strcpy(debug, test2);
	
	LCD_line_print(debug, 1);
	
	INT_MSK0 |= 0x40; //enable sleep interrupt
	M8C_EnableGInt; //enable global interrupt

	
	while (1) {
		if (buttonPressed) { //waits until isr updates buttonPressed
			SCDAC_cr0 = SCDAC_cr0 + 1; //increment SCDAC control register
			buttonPressed = FALSE; //clear buttonpress
		}
		//lcd out masks for bit 7 of cr, then bits 4-0, then bit 5
		o1 = (SCDAC_cr0 & 0x80) >> 7; // FCAP
		o2 = SCDAC_cr0 & 0x1F; // ACAP
		o3 = (SCDAC_cr0 & 0x20) >> 5; // ASign
		itoa(o1, oo, 16);
		temp = oo;
		while (*temp != '\0')
			temp++;
		*temp++ = ' ';
		itoa(o2, temp, 16);
		while (*temp != '\0')
			temp++;
		*temp++ = ' ';
		itoa(o3, temp, 16);
		
		LCD_line_print(oo, 0);
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
		if(buttonCount == 3) { //button is pressed
			buttonPressed = TRUE;
			buttonCount = 0;
		}
		else { //add to debounce count
			buttonCount++;
		}
	}
}