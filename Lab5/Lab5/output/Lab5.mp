Project:      output/Lab5
Build Number: 0
Date:         Mon Oct 24 19:10:07 2016
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0047 =     71. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0197  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0197   016B =    363. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0197  LoadConfigTBL_example_uart_28pin
       02F8  LoadConfigInit
       02F8  _LoadConfigInit
       02FC  _LoadConfig_example_uart_28pin
       02FC  LoadConfig_example_uart_28pin
       0302  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0302   01FA =    506. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0302  _UART_TX_ISR
       0303  _UART_RX_ISR
       0353  UART_EnableInt
       0353  _UART_EnableInt
       035A  _UART_DisableInt
       035A  UART_DisableInt
       0361  UART_SetTxIntMode
       0361  _UART_SetTxIntMode
       0373  _UART_Start
       0373  UART_Start
       037C  UART_Stop
       037C  _UART_Stop
       0383  UART_SendData
       0383  _UART_SendData
       0386  _bUART_ReadTxStatus
       0386  _UART_bReadTxStatus
       0386  bUART_ReadTxStatus
       0386  UART_bReadTxStatus
       0389  _bUART_ReadRxData
       0389  _UART_bReadRxData
       0389  bUART_ReadRxData
       0389  UART_bReadRxData
       038C  _UART_bReadRxStatus
       038C  _bUART_ReadRxStatus
       038C  bUART_ReadRxStatus
       038C  UART_bReadRxStatus
       038F  UART_TxIntMode
       038F  _UART_TxIntMode
       03A2  _UART_IntCntl
       03A2  UART_IntCntl
       03CD  _UART_PutSHexByte
       03CD  UART_PutSHexByte
       03E0  _UART_PutSHexInt
       03E0  UART_PutSHexInt
       03E7  _UART_PutChar
       03E7  UART_PutChar
       03EF  UART_cGetChar
       03EF  _UART_cGetChar
       03F7  UART_cReadChar
       03F7  _UART_cReadChar
       040E  _UART_iReadChar
       040E  UART_iReadChar
       0424  _UART_PutString
       0424  UART_PutString
       042E  _UART_Write
       042E  UART_Write
       0446  _UART_CWrite
       0446  UART_CWrite
       046E  _UART_CPutString
       046E  UART_CPutString
       0480  _UART_PutCRLF
       0480  UART_PutCRLF
       0489  _UART_CmdReset
       0489  UART_CmdReset
       0496  _UART_bCmdCheck
       0496  UART_bCmdCheck
       049B  UART_bErrCheck
       049B  _UART_bErrCheck
       04A3  UART_bCmdLength
       04A3  _UART_bCmdLength
       04A6  _UART_szGetParam
       04A6  UART_szGetParam
       04F4  UART_szGetRestOfParams
       04F4  _UART_szGetRestOfParams
       04FC  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   04FC   02CA =    714. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       04FC  _itoa
       04FC  __text_start
       063A  _LCD_line_print
       0678  _main
       06D3  _welcomeScreen
       0744  _memcpyLMM
       0753  _memcpy
       0772  _memsetLMM
       077D  _memset
       07A0  _strlenLMM
       07AB  _strlen
       07C6  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rZ
       0001  __rY
       0002  __rX
       0003  __r3
       0004  __r2
       0005  __r1
       0006  __r0
       0007  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0007   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0007  UART_fStatus
       0007  _UART_fStatus
       0008  UART_bRxCnt
       0008  _UART_bRxCnt
       0009  _NO_SHADOW
       0009  __InterruptRAM_end
       0009  NO_SHADOW

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0009   002F =     47. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0009  __bss_start
       0038  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        UART_RAM   0038   0021 =     33. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0038  UART_aRxBuffer
       0038  _UART_aRxBuffer
       0059  __ramareas_end
       0059  __UART_RAM_end

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
<library>	[ uartint.asm, uart.asm, psocconfigtbl.asm, psocconfig.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r2.asm ]
[ r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, mul16_util.asm, memcpy.s ]
[ memset.s, strlen.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

