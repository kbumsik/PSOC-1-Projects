Project:      output/lab1
Build Number: 0
Date:         Mon Oct 03 17:39:48 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   004E =     78. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_lab1_Bank0
       017B  LoadConfigTBL_lab1_Bank1
       019E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   019E   0123 =    291. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       019E  LoadConfigTBL_lab1_Ordered
       0263  LoadConfigInit
       0263  _LoadConfigInit
       026A  LoadConfig_lab1
       026A  _LoadConfig_lab1
       02C1  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   02C1   0002 =      2. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02C1  __text_start
       02C1  _main
       02C3  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r0
       0001  __ramareas_end
       0001  __virtual_registers_end

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
obj/main.o	[ main.asm ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

