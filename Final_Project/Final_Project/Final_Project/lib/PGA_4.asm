;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME:   PGA_4.asm  ( PGA )
;;  Version: 3.2, Updated on 2015/3/4 at 22:26:46
;;  Generated by PSoC Designer 5.4.3191
;;
;;  DESCRIPTION:  PGA User Module software implementation file.
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2015. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

;; -----------------------------------------------------------------
;;                         Register Definitions
;;
;; Uses 1 Continuous Time Block configured as shown.
;;
;; * For a Mask/Val pair, this indicates that the value is
;;   determined by the user either through config-time parameteriza-
;;   tion or run-time manipulation.
;;
;; BIT FIELD             Mask/Val Function
;; -----------------            -----   --------------------
;; GAIN_CR0.RES_RATIO_T2B       F0/*    User Parameter (by table)
;; GAIN_CR0.GAIN_ATTEN          08/*    Gain (by table)
;; GAIN_CR0.RES_SOURCE          04/1    Res source to output
;; GAIN_CR0.RES_REF             03/*    Res ref
;;
;; GAIN_CR1.A_OUT               80/*    User Parameter (Output bus)
;; GAIN_CR1.COMP_EN             40/0    Comparator bus disabled
;; GAIN_CR1.CT_NEG_INPUT_MUX    38/4    Neg mux to analog f.b. tap
;; GAIN_CR1.CT_POS_INPUT_MUX    07/*    Pos mux, typically to col. input mux
;;
;; GAIN_CR2.CP_COMP             80/0    Latch transparent on PH1
;; GAIN_CR2.CK_COMP             40/0    Latch transparent
;; GAIN_CR2.CC_COMP             20/1    Mode OP-AMP (not comparator)
;; GAIN_CR2.BYPASS_OBUS         1C/0    Bypass OFF
;; GAIN_CR2.PWR_SELECT          03/*    Power OFF (0h) at start-up
;;
;; --------------------------------------------------------------------

include "PGA_4.inc"
include "m8c.inc"
include "memory.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  PGA_4_Start
export _PGA_4_Start
export  PGA_4_SetPower
export _PGA_4_SetPower

export  PGA_4_SetGain
export _PGA_4_SetGain

export  PGA_4_Stop
export _PGA_4_Stop

IF (PGA_4_AGNDBUFAPI)
export  PGA_4_EnableAGNDBuffer
export _PGA_4_EnableAGNDBuffer
export  PGA_4_DisableAGNDBuffer
export _PGA_4_DisableAGNDBuffer
ENDIF

;-----------------------------------------------
;  EQUATES
;-----------------------------------------------
POWERMASK:     equ 03h
GAINREGMASK:   equ f8h
GAINMASK:      equ fCh
HIGHGAIN:      equ 04h
HIGHGAINMASK:  equ 18h
EXGAIN:        equ 01h
AGNDBUFMASK:   equ 20h

AREA UserModules (ROM, REL)
.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PGA_4_Start
;  FUNCTION NAME: PGA_4_SetPower
;
;  DESCRIPTION:
;    Applies power setting to the module's PSoC block.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;  A  Contains the power settings 0=Off, 1=Low, 2=Med, and 3=High
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
 PGA_4_Start:
_PGA_4_Start:
 PGA_4_SetPower:
_PGA_4_SetPower:

   RAM_PROLOGUE RAM_USE_CLASS_2
   and  A, POWERMASK                                 ; mask A to protect unchanged bits
   mov  X, SP                                        ; define temp store location
;
   push A                                            ; put power value in temp store
   mov  A, reg[PGA_4_GAIN_CR2]                             ; read power value
   and  A, ~POWERMASK                                ; clear power bits in A
   or   A, [X]                                       ; combine power value with balance of reg.
   mov  reg[PGA_4_GAIN_CR2], A                        ; move complete value back to register
   pop  A
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PGA_4_SetGain
;
;  DESCRIPTION:
;    This function sets the Gain/Atten of the amplifier.  Valid gain settings
;    are defined in the .inc file.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;    A  Contains gain settings.
;
;    Gain values shown are for example. (See .inc file for gain equates)
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
 PGA_4_SetGain:
_PGA_4_SetGain:

   RAM_PROLOGUE RAM_USE_CLASS_2
   and  A, GAINMASK                                       ; mask A to protect unchanged bits
   mov  X, SP                                             ; define temp store location
;
   push A                                                 ; put gain value in temp store
   mov  A, reg[PGA_4_GAIN_CR0]                             ; read mux settings
   and  A, ~GAINREGMASK                                   ; clear gain bits in A
   tst  [X],HIGHGAIN                                      ; See if High Gain is set
   jnz  .SETHIGHGAIN
   and  reg[PGA_4_GAIN_CR3],~EXGAIN                        ; Clear High Gain bit.
   or   A, [X]                                            ; combine gain value with balance of reg.
   mov  reg[PGA_4_GAIN_CR0], A                             ; move complete value back to register
   pop  A
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret

.SETHIGHGAIN:
   and  [X],HIGHGAINMASK                                  ; Make sure we have a valid high gain
   or   A, [X]                                            ; combine gain value with balance of reg.
   mov  reg[PGA_4_GAIN_CR0], A                             ; move complete value back to register
   or   reg[PGA_4_GAIN_CR3], EXGAIN                        ; Set High Gain bit.
   pop  A
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PGA_4_Stop
;
;  DESCRIPTION:
;    Turns off the power to the amplifier.
;
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
 PGA_4_Stop:
_PGA_4_Stop:

   RAM_PROLOGUE RAM_USE_CLASS_1
   and REG[PGA_4_GAIN_CR2], ~POWERMASK
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

IF (PGA_4_AGNDBUFAPI)
.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PGA_4_EnableAGNDBuffer
;
;  DESCRIPTION:
;    Turns on the AGND buffer power.
;
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
 PGA_4_EnableAGNDBuffer:
_PGA_4_EnableAGNDBuffer:
   RAM_PROLOGUE RAM_USE_CLASS_1
   and   reg[PGA_4_GAIN_CR3], ~AGNDBUFMASK
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: PGA_4_DisableAGNDBuffer
;
;  DESCRIPTION:
;    Turns off the AGND buffer power.
;
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
 PGA_4_DisableAGNDBuffer:
_PGA_4_DisableAGNDBuffer:
   RAM_PROLOGUE RAM_USE_CLASS_1
   or    reg[PGA_4_GAIN_CR3], AGNDBUFMASK
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret
.ENDSECTION
ENDIF

; End of File PGA_4.asm
