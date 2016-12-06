//*****************************************************************************
//*****************************************************************************
//  FILENAME:  SCDAC.h  ( SCBLOCK )
//  Version: 2.4, Updated on 2015/3/4 at 22:26:58
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION:  SCBLOCK User Module C Language interface file.
//
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef SCDAC_INCLUDE
#define SCDAC_INCLUDE

#include <M8C.h>

//-------------------------------------------------
// Constants for SCDAC API's.
//-------------------------------------------------
#define SCDAC_OFF         0
#define SCDAC_LOWPOWER    1
#define SCDAC_MEDPOWER    2
#define SCDAC_HIGHPOWER   3

#pragma fastcall16 SCDAC_Start
#pragma fastcall16 SCDAC_SetPower
#pragma fastcall16 SCDAC_Stop

//-------------------------------------------------
// Prototypes of the SCDAC API.
//-------------------------------------------------
extern void SCDAC_Start(BYTE bPower);
extern void SCDAC_SetPower(BYTE bPower);
extern void SCDAC_Stop(void);

//-------------------------------------------------
// Register Addresses for SCDAC
//-------------------------------------------------
#pragma ioport  SCDAC_cr0:  0x080
BYTE            SCDAC_cr0;
#pragma ioport  SCDAC_cr1:  0x081
BYTE            SCDAC_cr1;
#pragma ioport  SCDAC_cr2:  0x082
BYTE            SCDAC_cr2;
#pragma ioport  SCDAC_cr3:  0x083
BYTE            SCDAC_cr3;
#pragma ioport  SCDAC_Comp_Ctrl:    0x000
BYTE            SCDAC_Comp_Ctrl;

#endif
// end of file SCDAC.h
