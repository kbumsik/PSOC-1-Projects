//--------------------------------------------------------------------------
//
// Copyright 2008, Cypress Semiconductor Corporation.
//
// This software is owned by Cypress Semiconductor Corporation (Cypress)
// and is protected by and subject to worldwide patent protection (United
// States and foreign), United States copyright laws and international
// treaty provisions. Cypress hereby grants to licensee a personal,
// non-exclusive, non-transferable license to copy, use, modify, create
// derivative works of, and compile the Cypress Source Code and derivative
// works for the sole purpose of creating custom software in support of
// licensee product to be used only in conjunction with a Cypress integrated
// circuit as specified in the applicable agreement. Any reproduction,
// modification, translation, compilation, or representation of this
// software except as specified above is prohibited without the express
// written permission of Cypress.
//
// Disclaimer: CYPRESS MAKES NO WARRANTY OF ANY KIND,EXPRESS OR IMPLIED,
// WITH REGARD TO THIS MATERIAL, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
// Cypress reserves the right to make changes without further notice to the
// materials described herein. Cypress does not assume any liability arising
// out of the application or use of any product or circuit described herein.
// Cypress does not authorize its products for use as critical components in
// life-support systems where a malfunction or failure may reasonably be
// expected to result in significant injury to the user. The inclusion of
// Cypress' product in a life-support systems application implies that the
// manufacturer assumes all risk of such use and in doing so indemnifies
// Cypress against all charges.
//
// Use may be limited by and subject to the applicable Cypress software
// license agreement.
////-------------------------------------------------------------------------
//****************************************************************************
//*****************************************************************************
//  FILENAME: main.c
//   Version: 1.0, Updated on 2 August 2010
//
//  DESCRIPTION: Main file of the Example_UART Project.
//
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress MicroSystems 2000-2003. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
////***************************************************************************************
// 
//    The project can be tested using Windows HyperTerminal application.
// 
//    CY3210-PSoCEVAL1 Board Project
//
//Project Objective
//    To demonstrate the operation of the 8-Bit UART user module of PSoC device.  
//
//Overview
//    A command and some parameters (separated by spaces) are transmitted by a Personal 
//    Computer using Windows Hyper Terminal, through a Serial Port.  The data is received 
//    and decoded by PSoC and the command and parameters are echoed back to the PC (line by line).
//
//
//    The following changes were made to the default settings in the Device Editor:
// 
//    Select User Modules
//        o Select an UART_1 from the Digital Comm category.
//        o In this example, these UM is renamed as UART 
//    Place User Modules
//        1. Place the on blocks DCB02 and DCB03.
//
//    Set the global resources and UM parameters in the Device Editor as shown under 
//    "Project Settings" ahead.
//
//    Upon program execution all hardware settings from the device configuration are loaded 
//    into the device and main.c is executed.
//
//    The 24 MHz system clock is divided by 156 (VC3) to produce a 153.8 KHz clock, which 
//    is provided to UART user module.  The transfer rate would be 1/8 times the clock, 
//    ie., 19200 bps.  Parity is set to none in the initial configuration for the block 
//    and may also be set using the UART APIs.  
//
//    After setting up the HyperTerminal as explained below in section "Setting up 
//    HyperTerminal in Windows" , click on the 'Call' icon in the HyperTerminal and reset 
//    the PSoC.
//
//    In the HyperTerminal window, the following message will be displayed.
//
//    --------------------------------------------------------------------------------
//        Welcome to PSoC UART test program. V1.0
//        Enter a command and some parameters (delimited by space) and press <ENTER>
//           Eg:    foobar aa bbb cc      (MAX : 32 chars
//
//    --------------------------------------------------------------------------------
//
//    Based on the commands typed on the HyperTerminal, PSoC will decode the  command 
//    and parameters accordingly, ie., if command is typed as follows 
//	
//    	Testing 1 22 333 4444 55555
//
//    The PSoC will respond with 
//    --------------------------------------------------------------------------------
//        Found valid command
//        Command =>Testing<
//        Paramaters:
//         <1>
//         <22>
//         <333>
//         <4444>
//         <55555>
//    --------------------------------------------------------------------------------
//
//    Further information on user modules is supplied in the specific user module data sheet 
//    included with PSoC Designer.
//
//Clock Routing
//    None
//    
//
//Project Settings
//
//    Global Resources 
//        CPU_Clock      = SysClk/2          CPU clock set to 12 MHz
//        VC3 Source	    = SysClk/1	        Set System Clock as the source for VC3
//        VC3 Divider	= 156	            Divide 24 Mhz system clock by 156, so that 
//                                             effective baud rate would be 19.2 kbps.
//
//User Module Parameters
//    UART		
//        Clock	         = VC3	             Input is 153.8 KHz clock.(ie., 8 times 
//                                             baud rate-19200).
//        RX Input	     = Row_0_Input_1	 Routed from pin P2[5] through GlobalInEven_5.
//        TX Output	     = Row_0_Output_3	 Routed to pin P2[7] through GlobalOutEven_7.
//        TX InterruptMode= TXRegEmpty	     Not used.
//		  Clock Sync		 = Sync to SysClock	 Clock is synchronized with the source clock(System Clock).
//        RxCmdBuffer	 = Enable	         Enable the Command buffer, so that the command 
//                                              received is stored in a ram buffer.
//        RxBufferSize	 = 32                Bytes	Length of buffer is 32 characters 
//                                              (including parameters).
//        CommandTerminator= 13	             Carriage return (13) is the command terminator.
//        Param_Delimiter = 32	             Space (32) is the parameter delimiter.
//        IgnoreCharsBelow= 32	             Ignore control characters which has 
//                                             ascii value below 32.
//		  Enable_Backspace= Disable			 Not used.
//        Rx Output       = None				 Not used.
//		 Rx Clock Out	  = None               Not used.
//		 Tx Clock Out     = None               Not used.
//        InvertRX Input  = Normal	         Do not invert Rx Input.
//
//
//    Note : For further information on the above parameters of UART,  
//            see "High Level API section" of UART module datasheet.
//
//Hardware Connections
//
//This example project runs on the CY3210-PSoCEVAL1 board or compatible hardware. The 
//serial data is transmitted through pin P2[7] and received through the pin P2[5].  
//Input
//    Pin	    Select	            Drive
//    -----------------------------------------
//    P2[5]	GlobalInEven_5	    High Z
//			
//Output
//
//    Pin	    Select	            Drive
//    -----------------------------------------
//    P2[7]	GlobalOutEven_7	    Strong
//
//How to use the Prototype Board
//	
//    CY3210-PSoCEVAL1
//        � Connect a jumper wire between P2[5] and Rx of J13.
//        � Connect a jumper wire between P2[7] and Tx of J13.
//
//How to use Hyperterminal of Windows
//    � Connect a 9 pin Male to Female (one to one RS232) Serial cable from PC's  serial port to EVAL board serial port.
//
//    � Setting up HyperTerminal in Windows.
//
//	Click Start -> All Programs -> Accessories -> Communication -> HyperTerminal
//
//    	- Enter a Name and select OK.
//    
//    	- In ConnectTo option
//        
//        - Select the 'Connect using' as COM1/COM2 in which the serial cable is connected 
//          and Click OK
//
//    	- In the COM2 properties
//    		- Bits per second 	= 19200
//    		- Data bits		    = 8
//    		- Parity			= None
//    		- Stop Bits		    = 1
//    		- Flow Control		= None
//
//		    click OK
//
//        - Further, click on File-Properties-Settings-Ascii Setup and
//           Enable "Echo typed characters locally" (The HyperTerminal should
//           in Disconnected mode while setting this option) 
//
//   Note: The Hyper Terminal should be in Connected mode before Running PSoC.
//--------------------------------------------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include <string.h>
#include <stddef.h>

void welcomeScreen(void);	//Declaration of the function that prints Welcome String on Hyperterminal
void itoa(unsigned short input, char *str, int base);

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
	*++str = '\r';
	*++str = '\n';
	*str = '\0';
}

void main(void)
{
    // variable declaration
	static char str_buf[30];
	char bSwitchState;
	unsigned int pressed = 0;
          
    //set parity as zero and start the UART 
    UART_Start(UART_PARITY_NONE);
    //Clear the screen in Hyper terminal window
    UART_PutChar(12); 
    
	// Print welcome screen
	welcomeScreen();
	
	// infinite loop with debouncing.
	bSwitchState = 0;
	while (1)
	{
		// debouncing		
		bSwitchState <<= 1;
		bSwitchState &= 0x0f;
		bSwitchState |= (PRT1DR & 0x01);
		if(bSwitchState == 0x07)
		{			
			// increase
			++pressed;
			itoa(pressed, str_buf, 10);
			UART_PutString(str_buf);
		}
	}  
}

// Function to print the welcome screen
void welcomeScreen(void)
{
    UART_CPutString("This is our wonderful ESE366 Project\r\n");
    UART_CPutString("Let's blow up the Prof. mind!\r\n");
}
