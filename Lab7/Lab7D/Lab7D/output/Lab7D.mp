Project:      output/Lab7D
Build Number: 0
Date:         Tue Dec 06 02:55:11 2016
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
                     UserModules   03FC   02DE =    734. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03FC  _SCGain_SetPower
       03FC  _SCGain_Start
       03FC  SCGain_Start
       03FC  SCGain_SetPower
       040C  _SCGain_Stop
       040C  SCGain_Stop
       0410  SCDAC_Start
       0410  SCDAC_SetPower
       0410  _SCDAC_Start
       0410  _SCDAC_SetPower
       0420  _SCDAC_Stop
       0420  SCDAC_Stop
       0424  _LCD_1_PrCString
       0424  LCD_1_PrCString
       0436  LCD_1_HEX_STR
       0446  _LCD_1_PrHexByte
       0446  LCD_1_PrHexByte
       0459  LCD_1_PrHexInt
       0459  _LCD_1_PrHexInt
       0460  LCD_1_PrString
       0460  _LCD_1_PrString
       046A  LCD_1_WriteData
       046A  _LCD_1_Write_Data
       046A  LCD_1_Write_Data
       046A  _LCD_1_WriteData
       047E  LCD_1_Control
       047E  _LCD_1_Control
       0525  LCD_1_Start
       0525  LCD_1_Init
       0525  _LCD_1_Init
       0525  _LCD_1_Start
       0591  LCD_1_ROW_OFFSET
       0595  LCD_1_Position
       0595  _LCD_1_Position
       05A1  LCD_1_Delay50uTimes
       05A1  _LCD_1_Delay50uTimes
       05A7  LCD_1_Delay50u_Table
       05AF  LCD_1_Delay50u
       05AF  _LCD_1_Delay50u
       05C3  LCD_1_DrawBG
       05E9  _LCD_1_DrawBG
       0612  LCD_1_DrawVBG
       063F  _LCD_1_DrawVBG
       066F  LCD_1_InitVBG
       066F  _LCD_1_InitVBG
       069C  LCD_1_BG_TYPE1
       06A3  LCD_1_BG_TYPE2
       06AA  LCD_1_InitBG
       06AA  _LCD_1_InitBG
       06DA  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06DA   0411 =   1041. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       06DA  _main
       06DA  __text_start
       0842  _VC3_Interrupt
       0873  _itoa
       0981  _LCD_line_print
       0A3C  _memcpyLMM
       0A4B  _memcpy
       0A6A  _memsetLMM
       0A75  _memset
       0A98  _cstrcpyLMM
       0AA3  _cstrcpy
       0AC5  _strlenLMM
       0AD0  _strlen
       0AEB  __text_end

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
<library>	[ scgain.asm, scdac.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, rZ.asm, rY.asm, rX.asm, r3.asm ]
[ r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm, memcpy.s ]
[ memset.s, cstrcpy.s, strlen.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

