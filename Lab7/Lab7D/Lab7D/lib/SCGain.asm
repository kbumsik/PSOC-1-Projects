;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME:   SCGain.asm
;;  Version: 2.4, Updated on 2015/3/4 at 22:26:58
;;  Generated by PSoC Designer 5.4.3191
;;
;;  DESCRIPTION: SCBLOCK User Module software implementation file.
;;
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************


;; -----------------------------------------------------------------
;;                         Register Definitions
;; -----------------------------------------------------------------
;; BIT FIELD            Mask
;; -----------------    -----
;; CR0.FCap              80
;; CR0.ClockPhase        40
;; CR0.ASign             20
;; CR0.ACap              1F
;;
;; CR1.AMux              C0   SCB
;; CR1.ACMux             C0   SCA
;; CR1.BCap              1F
;;
;; CR2.AnalogBus         80
;; CR2.CmpBus            40
;; CR2.AutoZero          20
;; CR2.CCap              1F
;;
;; CR3.RefSelect         C0
;; CR3.FSW1              20
;; CR3.FSW0              10
;; CR3.BSW               08   SCB
;; CR3.BMux              04   SCB
;; CR3.BMux              0C   SCA
;; CR3.Power             03
;;

include "SCGain.inc"
include "m8c.inc"
include "memory.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  SCGain_Start
export _SCGain_Start
export  SCGain_SetPower
export _SCGain_SetPower
export  SCGain_Stop
export _SCGain_Stop

AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: SCGain_Start
;  FUNCTION NAME: SCGain_SetPower
;
;  DESCRIPTION:
;    Applies power setting to the module's analog PSoc block.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;    A  contains the power setting 0-3
;
;  RETURNS:  NA
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 SCGain_Start:
_SCGain_Start:
 SCGain_SetPower:
_SCGain_SetPower:
   RAM_PROLOGUE RAM_USE_CLASS_2
   and  A,03h
   push X
   mov  X,SP

   push A
   mov  A,reg[SCGain_cr3]
   and  A,~03h
   or   A,[X]
   mov  reg[SCGain_cr3],A
   pop  A
   pop  X
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: SCGain_Stop
;
;  DESCRIPTION:
;    Removes power from the module's analog PSoC block
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;
;  RETURNS:  NA
;
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 SCGain_Stop:
_SCGain_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   and  reg[SCGain_cr3],~03h
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

; End of File SCGain.asm
