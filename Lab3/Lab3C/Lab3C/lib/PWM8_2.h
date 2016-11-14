//*****************************************************************************
//*****************************************************************************
//  FILENAME: PWM8_2.h
//   Version: 2.60, Updated on 2015/3/4 at 22:26:52
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION: PWM8 User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef PWM8_2_INCLUDE
#define PWM8_2_INCLUDE

#include <m8c.h>

#pragma fastcall16 PWM8_2_EnableInt
#pragma fastcall16 PWM8_2_DisableInt
#pragma fastcall16 PWM8_2_Start
#pragma fastcall16 PWM8_2_Stop
#pragma fastcall16 PWM8_2_bReadCounter              // Read  DR0
#pragma fastcall16 PWM8_2_WritePeriod               // Write DR1
#pragma fastcall16 PWM8_2_bReadPulseWidth           // Read  DR2
#pragma fastcall16 PWM8_2_WritePulseWidth           // Write DR2

// The following symbols are deprecated.
// They may be omitted in future releases
//
#pragma fastcall16 bPWM8_2_ReadCounter              // Read  DR0 (Deprecated)
#pragma fastcall16 bPWM8_2_ReadPulseWidth           // Read  DR2 (Deprecated)


//-------------------------------------------------
// Prototypes of the PWM8_2 API.
//-------------------------------------------------

extern void PWM8_2_EnableInt(void);                        // Proxy Class 1
extern void PWM8_2_DisableInt(void);                       // Proxy Class 1
extern void PWM8_2_Start(void);                            // Proxy Class 1
extern void PWM8_2_Stop(void);                             // Proxy Class 1
extern BYTE PWM8_2_bReadCounter(void);                     // Proxy Class 2
extern void PWM8_2_WritePeriod(BYTE bPeriod);              // Proxy Class 1
extern BYTE PWM8_2_bReadPulseWidth(void);                  // Proxy Class 1
extern void PWM8_2_WritePulseWidth(BYTE bPulseWidth);      // Proxy Class 1

// The following functions are deprecated.
// They may be omitted in future releases
//
extern BYTE bPWM8_2_ReadCounter(void);            // Deprecated
extern BYTE bPWM8_2_ReadPulseWidth(void);         // Deprecated


//--------------------------------------------------
// Constants for PWM8_2 API's.
//--------------------------------------------------

#define PWM8_2_CONTROL_REG_START_BIT           ( 0x01 )
#define PWM8_2_INT_REG_ADDR                    ( 0x0e1 )
#define PWM8_2_INT_MASK                        ( 0x02 )


//--------------------------------------------------
// Constants for PWM8_2 user defined values
//--------------------------------------------------

#define PWM8_2_PERIOD                          ( 0xfd )
#define PWM8_2_PULSE_WIDTH                     ( 0x7f )


//-------------------------------------------------
// Register Addresses for PWM8_2
//-------------------------------------------------

#pragma ioport  PWM8_2_COUNTER_REG: 0x024                  //DR0 Count register
BYTE            PWM8_2_COUNTER_REG;
#pragma ioport  PWM8_2_PERIOD_REG:  0x025                  //DR1 Period register
BYTE            PWM8_2_PERIOD_REG;
#pragma ioport  PWM8_2_COMPARE_REG: 0x026                  //DR2 Compare register
BYTE            PWM8_2_COMPARE_REG;
#pragma ioport  PWM8_2_CONTROL_REG: 0x027                  //Control register
BYTE            PWM8_2_CONTROL_REG;
#pragma ioport  PWM8_2_FUNC_REG:    0x124                  //Function register
BYTE            PWM8_2_FUNC_REG;
#pragma ioport  PWM8_2_INPUT_REG:   0x125                  //Input register
BYTE            PWM8_2_INPUT_REG;
#pragma ioport  PWM8_2_OUTPUT_REG:  0x126                  //Output register
BYTE            PWM8_2_OUTPUT_REG;
#pragma ioport  PWM8_2_INT_REG:       0x0e1                //Interrupt Mask Register
BYTE            PWM8_2_INT_REG;


//-------------------------------------------------
// PWM8_2 Macro 'Functions'
//-------------------------------------------------

#define PWM8_2_Start_M \
   PWM8_2_CONTROL_REG |=  PWM8_2_CONTROL_REG_START_BIT

#define PWM8_2_Stop_M  \
   PWM8_2_CONTROL_REG &= ~PWM8_2_CONTROL_REG_START_BIT

#define PWM8_2_EnableInt_M   \
   M8C_EnableIntMask(PWM8_2_INT_REG, PWM8_2_INT_MASK)

#define PWM8_2_DisableInt_M  \
   M8C_DisableIntMask(PWM8_2_INT_REG, PWM8_2_INT_MASK)

#endif
// end of file PWM8_2.h
