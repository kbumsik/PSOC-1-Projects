Project:      output/Final_Project
Build Number: 0
Date:         Sat Dec 17 03:32:18 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   012D =    301. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01E7  LoadConfigTBL_project1_Bank0
       0286  LoadConfigTBL_project1_Bank1
       02CD  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   02CD   0007 =      7. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       02CD  __idata_start
       02D4  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   02D4   0008 =      8. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       02D4  __func_lit_start
       02DC  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   02DC   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02DC  LoadConfigTBL_project1_Ordered
       03A1  LoadConfigInit
       03A1  _LoadConfigInit
       03B1  _LoadConfig_project1
       03B1  LoadConfig_project1
       0408  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0408   02CD =    717. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0408  StopTimer_EnableInt
       0408  _StopTimer_EnableInt
       040C  _StopTimer_DisableInt
       040C  StopTimer_DisableInt
       0410  _StopTimer_Start
       0410  StopTimer_Start
       0414  StopTimer_Stop
       0414  _StopTimer_Stop
       0418  _StopTimer_WritePeriod
       0418  StopTimer_WritePeriod
       041E  StopTimer_WriteCompareValue
       041E  _StopTimer_WriteCompareValue
       0424  StopTimer_wReadCompareValue
       0424  _StopTimer_wReadCompareValue
       0424  _wStopTimer_ReadCompareValue
       0424  wStopTimer_ReadCompareValue
       042A  wStopTimer_ReadCounter
       042A  wStopTimer_ReadTimerSaveCV
       042A  StopTimer_wReadTimerSaveCV
       042A  _wStopTimer_ReadTimerSaveCV
       042A  _StopTimer_wReadTimerSaveCV
       042A  _wStopTimer_ReadCounter
       045C  _wStopTimer_CaptureCounter
       045C  _StopTimer_wReadTimer
       045C  wStopTimer_ReadTimer
       045C  _wStopTimer_ReadTimer
       045C  StopTimer_wReadTimer
       045C  wStopTimer_CaptureCounter
       0464  LCD_PrCString
       0464  _LCD_PrCString
       0476  LCD_HEX_STR
       0486  _LCD_PrHexByte
       0486  LCD_PrHexByte
       0499  _LCD_PrHexInt
       0499  LCD_PrHexInt
       04A0  LCD_PrString
       04A0  _LCD_PrString
       04AA  LCD_Write_Data
       04AA  _LCD_WriteData
       04AA  _LCD_Write_Data
       04AA  LCD_WriteData
       04BE  _LCD_Control
       04BE  LCD_Control
       0565  _LCD_Init
       0565  LCD_Start
       0565  LCD_Init
       0565  _LCD_Start
       05D1  LCD_ROW_OFFSET
       05D5  _LCD_Position
       05D5  LCD_Position
       05E1  LCD_Delay50uTimes
       05E1  _LCD_Delay50uTimes
       05E7  LCD_Delay50u_Table
       05EF  LCD_Delay50u
       05EF  _LCD_Delay50u
       0611  _DUALADC_1_CNT1_ISR
       0614  _DUALADC_1_CNT2_ISR
       0617  _DUALADC_1_PWM16_ISR
       06D5  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06D5   04AB =   1195. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       06D5  __text_start
       06D5  _stopwatch_fsm
       07BD  _main
       08E0  _itoa
       09EE  _LCD_line_print
       0A41  _do_nothing
       0A42  _start_timer
       0A48  _pause_timer
       0A4E  _reset_timer
       0A55  _StopTimer_ISR
       0AC5  _memcpyLMM
       0AD4  _memcpy
       0AF3  _memsetLMM
       0AFE  _memset
       0B21  _cstrcpyLMM
       0B2C  _cstrcpy
       0B4E  _strlenLMM
       0B59  _strlen
       0B74  __plcall
       0B80  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0007  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0007   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0007  __rZ
       0008  __rY
       0009  __rX
       000A  __r3
       000B  __r2
       000C  __r1
       000D  __r0
       000E  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   000E   000B =     11. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000E  NO_SHADOW
       000E  _Port_2_Data_SHADE
       000E  Port_2_Data_SHADE
       000E  _NO_SHADOW
       000F  _Port_2_DriveMode_0_SHADE
       000F  Port_2_DriveMode_0_SHADE
       0010  _Port_2_DriveMode_1_SHADE
       0010  Port_2_DriveMode_1_SHADE
       0011  DUALADC_1_cCounter1U
       0012  DUALADC_1_cCounter2U
       0013  DUALADC_1_iResult1
       0013  _DUALADC_1_iResult1
       0015  DUALADC_1_iResult2
       0015  _DUALADC_1_iResult2
       0017  DUALADC_1_bfStatus
       0017  _DUALADC_1_bfStatus
       0018  DUALADC_1_bSampC
       0019  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0019   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  __bss_start
       002A  _time
       002C  __ramareas_end
       002C  __bss_end

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
<library>	[ stoptimer.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, dualadc_1int.asm, rZ.asm, rY.asm, rX.asm ]
[ r3.asm, r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm ]
[ memcpy.s, memset.s, cstrcpy.s, strlen.s, plcall.s ]

Area Definitions

-blit:0x1a0.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

