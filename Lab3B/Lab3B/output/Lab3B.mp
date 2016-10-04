Project:      output/Lab3B
Build Number: 0
Date:         Mon Oct 03 17:54:58 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   005A =     90. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_lab3a_Bank0
       0181  LoadConfigTBL_lab3a_Bank1
       01AA  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01AA   0123 =    291. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01AA  LoadConfigTBL_lab3a_Ordered
       026F  LoadConfigInit
       026F  _LoadConfigInit
       0276  LoadConfig_lab3a
       0276  _LoadConfig_lab3a
       02CD  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02CD   0043 =     67. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02CD  _PWM8_1_ISR
       02CE  PWM8_1_EnableInt
       02CE  _PWM8_1_EnableInt
       02D2  _PWM8_1_DisableInt
       02D2  PWM8_1_DisableInt
       02D6  _PWM8_1_Start
       02D6  PWM8_1_Start
       02DA  PWM8_1_Stop
       02DA  _PWM8_1_Stop
       02DE  _PWM8_1_WritePeriod
       02DE  PWM8_1_WritePeriod
       02E1  PWM8_1_WritePulseWidth
       02E1  _PWM8_1_WritePulseWidth
       02E4  _bPWM8_1_ReadPulseWidth
       02E4  bPWM8_1_ReadPulseWidth
       02E4  PWM8_1_bReadPulseWidth
       02E4  _PWM8_1_bReadPulseWidth
       02E7  bPWM8_1_ReadCounter
       02E7  PWM8_1_bReadCounter
       02E7  _PWM8_1_bReadCounter
       02E7  _bPWM8_1_ReadCounter
       0310  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0310   0009 =      9. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0310  __text_start
       0310  _main
       0319  __text_end

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
obj/main.o	[ main.c ]
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

