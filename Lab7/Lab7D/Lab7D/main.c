//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>

void itoa(unsigned short input, char *str, int base);
void LCD_line_print(char *str, unsigned char line);

// const keyword will let the string stored in Flash.
// So it does not take SRAM.
const unsigned char SineTable[256] = {
    128, 129, 130, 130, 131, 132, 133, 133, 134, 135, 136, 136, 137, 138, 138, 139,
    140, 141, 141, 142, 143, 143, 144, 145, 145, 146, 146, 147, 148, 148, 149, 149,
    150, 150, 151, 151, 152, 152, 153, 153, 154, 154, 155, 155, 155, 156, 156, 156,
    157, 157, 157, 157, 158, 158, 158, 158, 158, 159, 159, 159, 159, 159, 159, 159,
    159, 159, 159, 159, 159, 159, 159, 159, 158, 158, 158, 158, 158, 157, 157, 157,
    157, 156, 156, 156, 155, 155, 155, 154, 154, 153, 153, 152, 152, 151, 151, 150,
    150, 149, 149, 148, 148, 147, 146, 146, 145, 145, 144, 143, 143, 142, 141, 141,
    140, 139, 138, 138, 137, 136, 136, 135, 134, 133, 133, 132, 131, 130, 130, 129,
    128, 161, 162, 162, 163, 164, 165, 165, 166, 167, 168, 168, 169, 170, 170, 171,
    172, 173, 173, 174, 175, 175, 176, 177, 177, 178, 178, 179, 180, 180, 181, 181,
    182, 182, 183, 183, 184, 184, 185, 185, 186, 186, 187, 187, 187, 188, 188, 188,
    189, 189, 189, 189, 190, 190, 190, 190, 190, 191, 191, 191, 191, 191, 191, 191,
    191, 191, 191, 191, 191, 191, 191, 191, 190, 190, 190, 190, 190, 189, 189, 189,
    189, 188, 188, 188, 187, 187, 187, 186, 186, 185, 185, 184, 184, 183, 183, 182,
    182, 181, 181, 180, 180, 179, 178, 178, 177, 177, 176, 175, 175, 174, 173, 173,
    172, 171, 170, 170, 169, 168, 168, 167, 166, 165, 165, 164, 163, 162, 162, 161
};

// sineTable index variable 
unsigned char Phase = 0; 
// sineTable step size – this is the variable you change  
// to get different output frequencies 
unsigned char PhaseRate = 1; 
// gain variable – this you change to experiment with different gains 
// note that the gain is set to some predefined values 
unsigned char Gain = 0x30; // should make gain = -1 

// main 
void main (void){
	char line_1[17];
	char line_2[17];
	char *ptr;

	// Start LCD
	LCD_1_Start();
	cstrcpy(line_1, "Lab7D Test");
	LCD_line_print(line_1, 0);
	
    // add code to start the analog modules SCDAC and SCGain
    // if required (look at module datasheet) 
	SCDAC_Start(SCDAC_LOWPOWER);
	SCGain_Start(SCGain_LOWPOWER);
    
    // add code to enable VC3 interrupt and global interrupts
	M8C_EnableIntMask(INT_MSK0, INT_MSK0_VC3);
	M8C_EnableGInt; //enable global interrupt

    // write gain value
    SCGain_cr0 = Gain; 
	
    while (1) { 		
		// put Phase value
		ptr = line_1;
		cstrcpy(ptr, "Phase:");
		ptr += strlen(ptr);
		itoa(Phase, ptr, 10);
		LCD_line_print(line_1, 0);
		//put gain and rate
		ptr = line_2;
		cstrcpy(ptr, "Gain:");
		ptr += strlen(ptr);
		itoa(Gain, ptr, 10);
		ptr += strlen(ptr);
		
		cstrcpy(ptr, " Rate:");
		ptr += strlen(ptr);
		itoa(PhaseRate, ptr, 10);
		ptr += strlen(ptr);
		LCD_line_print(line_2, 1);
    }
} // end main 

#pragma interrupt_handler VC3_Interrupt // use SleepTimerISR as ISR
void VC3_Interrupt(void) { 
    // change SCDAC_cr0 to next value in table 
    M8C_Stall; // required to avoid glitch 
    SCDAC_cr0 = SineTable[Phase]; 
    M8C_Unstall; 
	
    // adjust SineTable index based on step used 
    Phase = (Phase + PhaseRate); // use modulo 256 since the table index 
    // should go only from 0 to 25, but phase is defined as int 
    
    M8C_ClearIntFlag(INT_CLR0, INT_MSK0_VC3);	// needed to avoid nested 
	// interrupts since stall/unstall are used and this can take  
    // quite some time. 
}// end VC3 interrupt 


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