Project:      output/Lab4D
Build Number: 0
Date:         Tue Oct 18 05:34:00 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0072 =    114. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_lab4d_Bank0
       018D  LoadConfigTBL_lab4d_Bank1
       01C2  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   01C2   0012 =     18. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01C2  __idata_start
       01D4  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01D4   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01D4  LoadConfigTBL_lab4d_Ordered
       0299  LoadConfigInit
       0299  _LoadConfigInit
       02A9  LoadConfig_lab4d
       02A9  _LoadConfig_lab4d
       0300  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0300   03B3 =    947. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0300  _TachTimer_ISR
       0319  _TachTimer_EnableInt
       0319  TachTimer_EnableInt
       031D  TachTimer_DisableInt
       031D  _TachTimer_DisableInt
       0321  TachTimer_Start
       0321  _TachTimer_Start
       0325  _TachTimer_Stop
       0325  TachTimer_Stop
       0329  TachTimer_WritePeriod
       0329  _TachTimer_WritePeriod
       032F  TachTimer_WriteCompareValue
       032F  _TachTimer_WriteCompareValue
       0335  TachTimer_wReadCompareValue
       0335  wTachTimer_ReadCompareValue
       0335  _wTachTimer_ReadCompareValue
       0335  _TachTimer_wReadCompareValue
       033B  _wTachTimer_ReadCounter
       033B  wTachTimer_ReadCounter
       033B  wTachTimer_ReadTimerSaveCV
       033B  TachTimer_wReadTimerSaveCV
       033B  _wTachTimer_ReadTimerSaveCV
       033B  _TachTimer_wReadTimerSaveCV
       036D  wTachTimer_CaptureCounter
       036D  wTachTimer_ReadTimer
       036D  _wTachTimer_CaptureCounter
       036D  _TachTimer_wReadTimer
       036D  _wTachTimer_ReadTimer
       036D  TachTimer_wReadTimer
       0375  _LCD_1_PrCString
       0375  LCD_1_PrCString
       0387  LCD_1_HEX_STR
       0397  LCD_1_PrHexByte
       0397  _LCD_1_PrHexByte
       03AA  LCD_1_PrHexInt
       03AA  _LCD_1_PrHexInt
       03B1  _LCD_1_PrString
       03B1  LCD_1_PrString
       03BB  LCD_1_WriteData
       03BB  LCD_1_Write_Data
       03BB  _LCD_1_Write_Data
       03BB  _LCD_1_WriteData
       03CF  LCD_1_Control
       03CF  _LCD_1_Control
       0476  _LCD_1_Init
       0476  _LCD_1_Start
       0476  LCD_1_Init
       0476  LCD_1_Start
       04E2  LCD_1_ROW_OFFSET
       04E6  LCD_1_Position
       04E6  _LCD_1_Position
       04F2  LCD_1_Delay50uTimes
       04F2  _LCD_1_Delay50uTimes
       04F8  LCD_1_Delay50u_Table
       0500  _LCD_1_Delay50u
       0500  LCD_1_Delay50u
       0514  LCD_1_DrawBG
       053A  _LCD_1_DrawBG
       0563  LCD_1_DrawVBG
       0590  _LCD_1_DrawVBG
       05C0  LCD_1_InitVBG
       05C0  _LCD_1_InitVBG
       05ED  LCD_1_BG_TYPE1
       05F4  LCD_1_BG_TYPE2
       05FB  LCD_1_InitBG
       05FB  _LCD_1_InitBG
       062B  _FanPWM_ISR
       0671  FanPWM_EnableInt
       0671  _FanPWM_EnableInt
       0675  FanPWM_DisableInt
       0675  _FanPWM_DisableInt
       0679  _FanPWM_Start
       0679  FanPWM_Start
       067D  FanPWM_Stop
       067D  _FanPWM_Stop
       0681  FanPWM_WritePeriod
       0681  _FanPWM_WritePeriod
       0684  FanPWM_WritePulseWidth
       0684  _FanPWM_WritePulseWidth
       0687  _bFanPWM_ReadPulseWidth
       0687  bFanPWM_ReadPulseWidth
       0687  FanPWM_bReadPulseWidth
       0687  _FanPWM_bReadPulseWidth
       068A  FanPWM_bReadCounter
       068A  _bFanPWM_ReadCounter
       068A  bFanPWM_ReadCounter
       068A  _FanPWM_bReadCounter
       06B3  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06B3   0565 =   1381. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       06B3  _itoa
       06B3  __text_start
       07C1  _LCD_line_print
       0814  _main
       0B6D  _memcpyLMM
       0B7C  _memcpy
       0B9B  _memsetLMM
       0BA6  _memset
       0BC9  _strcpyLMM
       0BD8  _strcpy
       0BF2  _strlenLMM
       0BFD  _strlen
       0C18  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0012 =     18. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0000  _line1_head
       0006  _line2_head
       000C  _wControlState
       000E  _cNumCycles
       000F  _bDataAvailable
       0010  _wSpeedRPM
       0012  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0012   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0012  __rZ
       0013  __rY
       0014  __rX
       0015  __r3
       0016  __r2
       0017  __r1
       0018  __r0
       0019  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0019   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  _Port_2_Data_SHADE
       0019  _NO_SHADOW
       0019  Port_2_Data_SHADE
       0019  NO_SHADOW
       001A  _Port_2_DriveMode_0_SHADE
       001A  Port_2_DriveMode_0_SHADE
       001B  _Port_2_DriveMode_1_SHADE
       001B  Port_2_DriveMode_1_SHADE
       001C  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   001C   0026 =     38. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001C  __bss_start
       003E  _wLastValue
       0040  _wFirstValue
       0042  __ramareas_end
       0042  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   00D7 =    215. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00D4  _bGetPowerSetting
       00D4  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ tachtimerint.asm, tachtimer.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, fanpwmint.asm ]
[ fanpwm.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmod_32x32_32_util.asm, divmodu_16x16_16_util.asm ]
[ i_div16_block_util.asm, i_div32_block_util.asm, i_div32_not_util.asm, i_mulu8_block_util.asm ]
[ mul16_util.asm, mul32_util.asm, memcpy.s, memset.s, strcpy.s, strlen.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

