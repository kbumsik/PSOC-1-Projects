Project:      output/Lab3C
Build Number: 0
Date:         Mon Oct 24 17:00:11 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0066 =    102. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_lab3a_Bank0
       0187  LoadConfigTBL_lab3a_Bank1
       01B6  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01B6   0123 =    291. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01B6  LoadConfigTBL_lab3a_Ordered
       027B  LoadConfigInit
       027B  _LoadConfigInit
       0282  LoadConfig_lab3a
       0282  _LoadConfig_lab3a
       02D9  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02D9   0086 =    134. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02D9  _PWM8_2_ISR
       02DA  _PWM8_2_EnableInt
       02DA  PWM8_2_EnableInt
       02DE  PWM8_2_DisableInt
       02DE  _PWM8_2_DisableInt
       02E2  _PWM8_2_Start
       02E2  PWM8_2_Start
       02E6  PWM8_2_Stop
       02E6  _PWM8_2_Stop
       02EA  PWM8_2_WritePeriod
       02EA  _PWM8_2_WritePeriod
       02ED  _PWM8_2_WritePulseWidth
       02ED  PWM8_2_WritePulseWidth
       02F0  bPWM8_2_ReadPulseWidth
       02F0  PWM8_2_bReadPulseWidth
       02F0  _PWM8_2_bReadPulseWidth
       02F0  _bPWM8_2_ReadPulseWidth
       02F3  PWM8_2_bReadCounter
       02F3  _PWM8_2_bReadCounter
       02F3  _bPWM8_2_ReadCounter
       02F3  bPWM8_2_ReadCounter
       031C  _PWM8_1_ISR
       031D  PWM8_1_EnableInt
       031D  _PWM8_1_EnableInt
       0321  PWM8_1_DisableInt
       0321  _PWM8_1_DisableInt
       0325  _PWM8_1_Start
       0325  PWM8_1_Start
       0329  _PWM8_1_Stop
       0329  PWM8_1_Stop
       032D  PWM8_1_WritePeriod
       032D  _PWM8_1_WritePeriod
       0330  PWM8_1_WritePulseWidth
       0330  _PWM8_1_WritePulseWidth
       0333  _PWM8_1_bReadPulseWidth
       0333  bPWM8_1_ReadPulseWidth
       0333  PWM8_1_bReadPulseWidth
       0333  _bPWM8_1_ReadPulseWidth
       0336  PWM8_1_bReadCounter
       0336  bPWM8_1_ReadCounter
       0336  _bPWM8_1_ReadCounter
       0336  _PWM8_1_bReadCounter
       035F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   035F   000C =     12. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       035F  __text_start
       035F  _main
       036B  __text_end

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
<library>	[ pwm8_2int.asm, pwm8_2.asm, pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, r0.asm ]


Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

