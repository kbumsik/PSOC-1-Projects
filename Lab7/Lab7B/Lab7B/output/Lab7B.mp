Project:      output/Lab7B
Build Number: 0
Date:         Mon Nov 14 19:23:11 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0056 =     86. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab7b_Bank0
       01D3  LoadConfigTBL_lab7b_Bank1
       01F6  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   01F6   000F =     15. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01F6  __idata_start
       0205  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0205   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0205  LoadConfigTBL_lab7b_Ordered
       02CA  LoadConfigInit
       02CA  _LoadConfigInit
       02DA  LoadConfig_lab7b
       02DA  _LoadConfig_lab7b
       0331  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0331   019F =    415. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0331  _LCD_1_PrCString
       0331  LCD_1_PrCString
       0343  LCD_1_HEX_STR
       0353  _LCD_1_PrHexByte
       0353  LCD_1_PrHexByte
       0366  LCD_1_PrHexInt
       0366  _LCD_1_PrHexInt
       036D  _LCD_1_PrString
       036D  LCD_1_PrString
       0377  LCD_1_Write_Data
       0377  LCD_1_WriteData
       0377  _LCD_1_WriteData
       0377  _LCD_1_Write_Data
       038B  _LCD_1_Control
       038B  LCD_1_Control
       0432  _LCD_1_Init
       0432  _LCD_1_Start
       0432  LCD_1_Init
       0432  LCD_1_Start
       049E  LCD_1_ROW_OFFSET
       04A2  _LCD_1_Position
       04A2  LCD_1_Position
       04AE  _LCD_1_Delay50uTimes
       04AE  LCD_1_Delay50uTimes
       04B4  LCD_1_Delay50u_Table
       04BC  LCD_1_Delay50u
       04BC  _LCD_1_Delay50u
       04D0  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   04D0   03C0 =    960. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       04D0  _main
       04D0  __text_start
       05F9  _itoa
       0707  _LCD_line_print
       075A  _SleepTimerISR
       07E5  _memcpyLMM
       07F4  _memcpy
       0813  _memsetLMM
       081E  _memset
       0841  _strcpyLMM
       0850  _strcpy
       086A  _strlenLMM
       0875  _strlen
       0890  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0000  _test2
       000C  _buttonPressed
       000D  _buttonCount
       000F  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   000F   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000F  __rZ
       0010  __rY
       0011  __rX
       0012  __r3
       0013  __r2
       0014  __r1
       0015  __r0
       0016  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0016   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0016  _Port_2_Data_SHADE
       0016  _NO_SHADOW
       0016  Port_2_Data_SHADE
       0016  NO_SHADOW
       0017  _Port_2_DriveMode_0_SHADE
       0017  Port_2_DriveMode_0_SHADE
       0018  _Port_2_DriveMode_1_SHADE
       0018  Port_2_DriveMode_1_SHADE
       0019  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0019   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  __bss_start
       002A  __ramareas_end
       002A  __bss_end

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
[ divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm, memcpy.s, memset.s, strcpy.s ]
[ strlen.s ]

Area Definitions

-blit:0x1a0.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

