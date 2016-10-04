Project:      output/Lab3D
Build Number: 0
Date:         Mon Oct 03 19:08:09 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   005A =     90. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_pdproject1_Bank0
       0181  LoadConfigTBL_pdproject1_Bank1
       01AA  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01AA   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01AA  LoadConfigTBL_pdproject1_Ordered
       026F  _LoadConfigInit
       026F  LoadConfigInit
       027F  _LoadConfig_pdproject1
       027F  LoadConfig_pdproject1
       02D6  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02D6   02F9 =    761. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02D6  _PWM8_1_ISR
       02D7  _PWM8_1_EnableInt
       02D7  PWM8_1_EnableInt
       02DB  PWM8_1_DisableInt
       02DB  _PWM8_1_DisableInt
       02DF  _PWM8_1_Start
       02DF  PWM8_1_Start
       02E3  PWM8_1_Stop
       02E3  _PWM8_1_Stop
       02E7  PWM8_1_WritePeriod
       02E7  _PWM8_1_WritePeriod
       02EA  _PWM8_1_WritePulseWidth
       02EA  PWM8_1_WritePulseWidth
       02ED  PWM8_1_bReadPulseWidth
       02ED  bPWM8_1_ReadPulseWidth
       02ED  _bPWM8_1_ReadPulseWidth
       02ED  _PWM8_1_bReadPulseWidth
       02F0  _PWM8_1_bReadCounter
       02F0  _bPWM8_1_ReadCounter
       02F0  PWM8_1_bReadCounter
       02F0  bPWM8_1_ReadCounter
       0319  LCD_1_PrCString
       0319  _LCD_1_PrCString
       032B  LCD_1_HEX_STR
       033B  _LCD_1_PrHexByte
       033B  LCD_1_PrHexByte
       034E  _LCD_1_PrHexInt
       034E  LCD_1_PrHexInt
       0355  _LCD_1_PrString
       0355  LCD_1_PrString
       035F  LCD_1_WriteData
       035F  _LCD_1_WriteData
       035F  _LCD_1_Write_Data
       035F  LCD_1_Write_Data
       0373  LCD_1_Control
       0373  _LCD_1_Control
       041A  LCD_1_Start
       041A  _LCD_1_Start
       041A  _LCD_1_Init
       041A  LCD_1_Init
       0486  LCD_1_ROW_OFFSET
       048A  LCD_1_Position
       048A  _LCD_1_Position
       0496  LCD_1_Delay50uTimes
       0496  _LCD_1_Delay50uTimes
       049C  LCD_1_Delay50u_Table
       04A4  _LCD_1_Delay50u
       04A4  LCD_1_Delay50u
       04B8  LCD_1_DrawBG
       04DE  _LCD_1_DrawBG
       0507  LCD_1_DrawVBG
       0534  _LCD_1_DrawVBG
       0564  LCD_1_InitVBG
       0564  _LCD_1_InitVBG
       0591  LCD_1_BG_TYPE1
       0598  LCD_1_BG_TYPE2
       059F  _LCD_1_InitBG
       059F  LCD_1_InitBG
       05CF  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   05CF   0298 =    664. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       05CF  _itoa
       05CF  __text_start
       06E5  _main
       0839  _memsetLMM
       0844  _memset
       0867  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rZ
       0001  __rY
       0002  __rX
       0003  __r2
       0004  __r1
       0005  __r0
       0006  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0006   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0006  _Port_2_Data_SHADE
       0006  _NO_SHADOW
       0006  Port_2_Data_SHADE
       0006  NO_SHADOW
       0007  Port_2_DriveMode_0_SHADE
       0007  _Port_2_DriveMode_0_SHADE
       0008  _Port_2_DriveMode_1_SHADE
       0008  Port_2_DriveMode_1_SHADE
       0009  __ramareas_end
       0009  __InterruptRAM_end

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
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, rZ.asm, rY.asm, rX.asm ]
[ r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm, memset.s ]


Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

