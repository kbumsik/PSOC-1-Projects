//*****************************************************************************
//*****************************************************************************
//  FILENAME:  RefAgndMux.h
//  Version: 1.3, Updated on 2015/3/4 at 22:26:55
//  Generated by PSoC Designer 5.4.3191
//
//  DESCRIPTION:
//  DESCRIPTION: RefMux User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef RefAgndMux_INCLUDE
#define RefAgndMux_INCLUDE

#include <m8c.h>

//-------------------------------------------------
// Constants for RefAgndMux API's.
//-------------------------------------------------
#define RefAgndMux_MUXOFF              0x00
#define RefAgndMux_PMUXOUT             0x10
#define RefAgndMux_AGND                0x14
#define RefAgndMux_REFLO               0x18
#define RefAgndMux_REFHI               0x1C

#define RefAgndMux_OFF                 0
#define RefAgndMux_LOWPOWER            1
#define RefAgndMux_MEDPOWER            2
#define RefAgndMux_HIGHPOWER           3


#pragma fastcall16 RefAgndMux_Start
#pragma fastcall16 RefAgndMux_SetPower
#pragma fastcall16 RefAgndMux_Stop
#pragma fastcall16 RefAgndMux_RefSelect

//-------------------------------------------------
// Prototypes of the RefAgndMux API.
//-------------------------------------------------
extern void RefAgndMux_Start(BYTE bPower);
extern void RefAgndMux_SetPower(BYTE bPower);
extern void RefAgndMux_Stop( void );
extern void RefAgndMux_RefSelect(BYTE bRef);


//-------------------------------------------------
// Register Addresses for RefAgndMux
//-------------------------------------------------

#pragma ioport  RefAgndMux_REFMUX_CR0:  0x079
BYTE            RefAgndMux_REFMUX_CR0;
#pragma ioport  RefAgndMux_REFMUX_CR1:  0x07a
BYTE            RefAgndMux_REFMUX_CR1;
#pragma ioport  RefAgndMux_REFMUX_CR2:  0x07b
BYTE            RefAgndMux_REFMUX_CR2;
#pragma ioport  RefAgndMux_REFMUX_CR3:  0x078
BYTE            RefAgndMux_REFMUX_CR3;

#endif
// end of file RefAgndMux.
