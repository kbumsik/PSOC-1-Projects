Project:      output/Lab7D
Build Number: 0
Date:         Fri Dec 09 18:19:10 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   017D =    381. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  _SineTable
       026F  LoadConfigTBL_lab7d_Bank0
       02AA  LoadConfigTBL_lab7d_Bank1
       02CD  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   02CD   0003 =      3. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       02CD  __idata_start
       02D0  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   02D0   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02D0  LoadConfigTBL_lab7d_Ordered
       0395  LoadConfigInit
       0395  _LoadConfigInit
       03A5  LoadConfig_lab7d
       03A5  _LoadConfig_lab7d
       03FC  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03FC   02B6 =    694. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03FC  _LCD_1_PrCString
       03FC  LCD_1_PrCString
       040E  LCD_1_HEX_STR
       041E  _LCD_1_PrHexByte
       041E  LCD_1_PrHexByte
       0431  LCD_1_PrHexInt
       0431  _LCD_1_PrHexInt
       0438  LCD_1_PrString
       0438  _LCD_1_PrString
       0442  LCD_1_WriteData
       0442  _LCD_1_Write_Data
       0442  _LCD_1_WriteData
       0442  LCD_1_Write_Data
       0456  LCD_1_Control
       0456  _LCD_1_Control
       04FD  LCD_1_Start
       04FD  _LCD_1_Init
       04FD  _LCD_1_Start
       04FD  LCD_1_Init
       0569  LCD_1_ROW_OFFSET
       056D  LCD_1_Position
       056D  _LCD_1_Position
       0579  LCD_1_Delay50uTimes
       0579  _LCD_1_Delay50uTimes
       057F  LCD_1_Delay50u_Table
       0587  _LCD_1_Delay50u
       0587  LCD_1_Delay50u
       059B  LCD_1_DrawBG
       05C1  _LCD_1_DrawBG
       05EA  LCD_1_DrawVBG
       0617  _LCD_1_DrawVBG
       0647  _LCD_1_InitVBG
       0647  LCD_1_InitVBG
       0674  LCD_1_BG_TYPE1
       067B  LCD_1_BG_TYPE2
       0682  _LCD_1_InitBG
       0682  LCD_1_InitBG
       06B2  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06B2   0405 =   1029. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       06B2  _main
       06B2  __text_start
       080E  _VC3_Interrupt
       083F  _itoa
       094D  _LCD_line_print
       0A08  _memcpyLMM
       0A17  _memcpy
       0A36  _memsetLMM
       0A41  _memset
       0A64  _cstrcpyLMM
       0A6F  _cstrcpy
       0A91  _strlenLMM
       0A9C  _strlen
       0AB7  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0000  _Phase
       0001  _PhaseRate
       0002  _Gain
       0003  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0003   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rZ
       0004  __rY
       0005  __rX
       0006  __r3
       0007  __r2
       0008  __r1
       0009  __r0
       000A  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   000A   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000A  _Port_2_Data_SHADE
       000A  _NO_SHADOW
       000A  Port_2_Data_SHADE
       000A  NO_SHADOW
       000B  _Port_2_DriveMode_0_SHADE
       000B  Port_2_DriveMode_0_SHADE
       000C  _Port_2_DriveMode_1_SHADE
       000C  Port_2_DriveMode_1_SHADE
       000D  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   000D   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000D  __bss_start
       001E  __ramareas_end
       001E  __bss_end

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
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm ]
[ divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm, memcpy.s, memset.s, cstrcpy.s ]
[ strlen.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

