Project:      output/Lab4D
Build Number: 0
Date:         Thu Oct 20 16:20:50 2016
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
                     UserModules   0300   03B4 =    948. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0300  _TachTimer_ISR
       031E  _TachTimer_EnableInt
       031E  TachTimer_EnableInt
       0322  TachTimer_DisableInt
       0322  _TachTimer_DisableInt
       0326  TachTimer_Start
       0326  _TachTimer_Start
       032A  _TachTimer_Stop
       032A  TachTimer_Stop
       032E  TachTimer_WritePeriod
       032E  _TachTimer_WritePeriod
       0334  TachTimer_WriteCompareValue
       0334  _TachTimer_WriteCompareValue
       033A  TachTimer_wReadCompareValue
       033A  wTachTimer_ReadCompareValue
       033A  _wTachTimer_ReadCompareValue
       033A  _TachTimer_wReadCompareValue
       0340  _wTachTimer_ReadCounter
       0340  wTachTimer_ReadCounter
       0340  wTachTimer_ReadTimerSaveCV
       0340  TachTimer_wReadTimerSaveCV
       0340  _wTachTimer_ReadTimerSaveCV
       0340  _TachTimer_wReadTimerSaveCV
       0372  wTachTimer_CaptureCounter
       0372  wTachTimer_ReadTimer
       0372  _wTachTimer_CaptureCounter
       0372  _TachTimer_wReadTimer
       0372  _wTachTimer_ReadTimer
       0372  TachTimer_wReadTimer
       037A  _LCD_1_PrCString
       037A  LCD_1_PrCString
       038C  LCD_1_HEX_STR
       039C  LCD_1_PrHexByte
       039C  _LCD_1_PrHexByte
       03AF  LCD_1_PrHexInt
       03AF  _LCD_1_PrHexInt
       03B6  _LCD_1_PrString
       03B6  LCD_1_PrString
       03C0  LCD_1_WriteData
       03C0  LCD_1_Write_Data
       03C0  _LCD_1_Write_Data
       03C0  _LCD_1_WriteData
       03D4  LCD_1_Control
       03D4  _LCD_1_Control
       047B  _LCD_1_Init
       047B  _LCD_1_Start
       047B  LCD_1_Init
       047B  LCD_1_Start
       04E7  LCD_1_ROW_OFFSET
       04EB  LCD_1_Position
       04EB  _LCD_1_Position
       04F7  LCD_1_Delay50uTimes
       04F7  _LCD_1_Delay50uTimes
       04FD  LCD_1_Delay50u_Table
       0505  _LCD_1_Delay50u
       0505  LCD_1_Delay50u
       0519  LCD_1_DrawBG
       053F  _LCD_1_DrawBG
       0568  LCD_1_DrawVBG
       0595  _LCD_1_DrawVBG
       05C5  LCD_1_InitVBG
       05C5  _LCD_1_InitVBG
       05F2  LCD_1_BG_TYPE1
       05F9  LCD_1_BG_TYPE2
       0600  LCD_1_InitBG
       0600  _LCD_1_InitBG
       0630  _FanPWM_ISR
       0672  FanPWM_EnableInt
       0672  _FanPWM_EnableInt
       0676  FanPWM_DisableInt
       0676  _FanPWM_DisableInt
       067A  _FanPWM_Start
       067A  FanPWM_Start
       067E  FanPWM_Stop
       067E  _FanPWM_Stop
       0682  FanPWM_WritePeriod
       0682  _FanPWM_WritePeriod
       0685  FanPWM_WritePulseWidth
       0685  _FanPWM_WritePulseWidth
       0688  _bFanPWM_ReadPulseWidth
       0688  bFanPWM_ReadPulseWidth
       0688  FanPWM_bReadPulseWidth
       0688  _FanPWM_bReadPulseWidth
       068B  FanPWM_bReadCounter
       068B  _bFanPWM_ReadCounter
       068B  bFanPWM_ReadCounter
       068B  _FanPWM_bReadCounter
       06B4  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06B4   0569 =   1385. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       06B4  _itoa
       06B4  __text_start
       07C2  _LCD_line_print
       0815  _main
       0B72  _memcpyLMM
       0B81  _memcpy
       0BA0  _memsetLMM
       0BAB  _memset
       0BCE  _strcpyLMM
       0BDD  _strcpy
       0BF7  _strlenLMM
       0C02  _strlen
       0C1D  __text_end

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

