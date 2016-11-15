//*****************************************************************************
//*****************************************************************************
//  FILENAME:  RefLoMux.h
//  Version: 1.3, Updated on 2015/3/4 at 22:26:55
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION:
//  DESCRIPTION: RefMux User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef RefLoMux_INCLUDE
#define RefLoMux_INCLUDE

#include <m8c.h>

//-------------------------------------------------
// Constants for RefLoMux API's.
//-------------------------------------------------
#define RefLoMux_MUXOFF                0x00
#define RefLoMux_PMUXOUT               0x10
#define RefLoMux_AGND                  0x14
#define RefLoMux_REFLO                 0x18
#define RefLoMux_REFHI                 0x1C

#define RefLoMux_OFF                   0
#define RefLoMux_LOWPOWER              1
#define RefLoMux_MEDPOWER              2
#define RefLoMux_HIGHPOWER             3


#pragma fastcall16 RefLoMux_Start
#pragma fastcall16 RefLoMux_SetPower
#pragma fastcall16 RefLoMux_Stop
#pragma fastcall16 RefLoMux_RefSelect

//-------------------------------------------------
// Prototypes of the RefLoMux API.
//-------------------------------------------------
extern void RefLoMux_Start(BYTE bPower);
extern void RefLoMux_SetPower(BYTE bPower);
extern void RefLoMux_Stop( void );
extern void RefLoMux_RefSelect(BYTE bRef);


//-------------------------------------------------
// Register Addresses for RefLoMux
//-------------------------------------------------

#pragma ioport  RefLoMux_REFMUX_CR0:    0x075
BYTE            RefLoMux_REFMUX_CR0;
#pragma ioport  RefLoMux_REFMUX_CR1:    0x076
BYTE            RefLoMux_REFMUX_CR1;
#pragma ioport  RefLoMux_REFMUX_CR2:    0x077
BYTE            RefLoMux_REFMUX_CR2;
#pragma ioport  RefLoMux_REFMUX_CR3:    0x074
BYTE            RefLoMux_REFMUX_CR3;

#endif
// end of file RefLoMux.