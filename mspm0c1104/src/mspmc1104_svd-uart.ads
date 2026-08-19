pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------------------------
   -- UART0_GPRCM[%s] cluster's Registers --
   -----------------------------------------

   --  Enable the power
   type UART0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for UART0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type UART0_PWREN_UART0_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : UART0_PWREN_ENABLE_Field := MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PWREN_UART0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type UART0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for UART0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type UART0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for UART0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type UART0_RSTCTL_UART0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : UART0_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.UART.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : UART0_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.UART.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RSTCTL_UART0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Async Clock Request is blocked from starting SYSOSC or forcing bus clock
   --  to 32MHz
   type UART0_CLKCFG_BLOCKASYNC_Field is
     (Disable,
      Enable)
     with Size => 1;
   for UART0_CLKCFG_BLOCKASYNC_Field use
     (Disable => 0,
      Enable => 1);

   --  Peripheral Clock Configuration Register
   type UART0_CLKCFG_UART0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  Async Clock Request is blocked from starting SYSOSC or forcing bus
      --  clock to 32MHz
      BLOCKASYNC    : UART0_CLKCFG_BLOCKASYNC_Field :=
                       MSPMC1104_SVD.UART.Disable;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CLKCFG_UART0_GPRCM[%s]_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      BLOCKASYNC    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type UART0_GPRCM_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for UART0_GPRCM_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type UART0_GPRCM_STAT_UART0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : UART0_GPRCM_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_GPRCM_STAT_UART0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type UART0_GPRCM[%s]_Cluster is record
      --  Power enable
      UART0_PWREN      : aliased UART0_PWREN_UART0_GPRCM[%s]_Register;
      --  Reset Control
      UART0_RSTCTL     : aliased UART0_RSTCTL_UART0_GPRCM[%s]_Register;
      --  Peripheral Clock Configuration Register
      UART0_CLKCFG     : aliased UART0_CLKCFG_UART0_GPRCM[%s]_Register;
      --  Status Register
      UART0_GPRCM_STAT : aliased UART0_GPRCM_STAT_UART0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for UART0_GPRCM[%s]_Cluster use record
      UART0_PWREN      at 16#0# range 0 .. 31;
      UART0_RSTCTL     at 16#4# range 0 .. 31;
      UART0_CLKCFG     at 16#8# range 0 .. 31;
      UART0_GPRCM_STAT at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type UART0_CLKDIV_RATIO_Field is
     (--  Do not divide clock source
      DIV_BY_1,
      --  Divide clock source by 2
      DIV_BY_2,
      --  Divide clock source by 3
      DIV_BY_3,
      --  Divide clock source by 4
      DIV_BY_4,
      --  Divide clock source by 5
      DIV_BY_5,
      --  Divide clock source by 6
      DIV_BY_6,
      --  Divide clock source by 7
      DIV_BY_7,
      --  Divide clock source by 8
      DIV_BY_8)
     with Size => 3;
   for UART0_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type UART0_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : UART0_CLKDIV_RATIO_Field := MSPMC1104_SVD.UART.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects LFCLK as clock source if enabled
   type UART0_CLKSEL_LFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for UART0_CLKSEL_LFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects MFCLK as clock source if enabled
   type UART0_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for UART0_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects BUS CLK as clock source if enabled
   type UART0_CLKSEL_BUSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for UART0_CLKSEL_BUSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type UART0_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : UART0_CLKSEL_LFCLK_SEL_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : UART0_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  Selects BUS CLK as clock source if enabled
      BUSCLK_SEL    : UART0_CLKSEL_BUSCLK_SEL_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type UART0_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for UART0_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type UART0_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for UART0_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type UART0_PDBGCTL_Register is record
      --  Free run control
      FREE          : UART0_PDBGCTL_FREE_Field := MSPMC1104_SVD.UART.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : UART0_PDBGCTL_SOFT_Field :=
                       MSPMC1104_SVD.UART.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ----------------------------------------------
   -- UART0_INT_EVENT0[%s] cluster's Registers --
   ----------------------------------------------

   --  UART Module Interrupt Vector Value. This register provides the highes
   --  priority interrupt index. A read clears the corresponding interrupt flag
   --  in RIS and MIS registers. 15h-1Fh = Reserved
   type UART0_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  UART receive time-out interrupt; Interrupt Flag: RT; Interrupt Priority:
--  Highest
      RTFG,
      --  UART framing error interrupt; Interrupt Flag: FE
      FEFG,
      --  UART parity error interrupt; Interrupt Flag: PE
      PEFG,
      --  UART break error interrupt; Interrupt Flag: BE
      BEFG,
      --  UART receive overrun error interrupt; Interrupt Flag: OE
      OEFG,
      --  Negative edge on UARTxRXD interrupt; Interrupt Flag: RXNE
      RXNE,
      --  Positive edge on UARTxRXD interrupt; Interrupt Flag: RXPE
      RXPE,
      --  LIN capture 0 / match interrupt; Interrupt Flag: LINC0
      LINC0,
      --  LIN capture 1 interrupt; Interrupt Flag: LINC1
      LINC1,
      --  LIN hardware counter overflow interrupt; Interrupt Flag: LINOVF
      LINOVF,
      --  UART receive interrupt; Interrupt Flag: RX
      RXIFG,
      --  UART transmit interrupt; Interrupt Flag: TX
      TXIFG,
      --  UART end of transmission interrupt (transmit serializer empty); Interrupt
--  Flag: EOT
      EOT,
      --  9-bit mode address match interrupt; Interrupt Flag: MODE_9B
      MODE_9B,
      --  UART Clear to Send Modem interrupt; Interrupt Flag: CTS
      CTS,
      --  DMA DONE on RX
      DMA_DONE_RX,
      --  DMA DONE on TX
      DMA_DONE_TX,
      --  Noise Error Event
      NERR_EVT)
     with Size => 8;
   for UART0_IIDX_STAT_Field use
     (NO_INTR => 0,
      RTFG => 1,
      FEFG => 2,
      PEFG => 3,
      BEFG => 4,
      OEFG => 5,
      RXNE => 6,
      RXPE => 7,
      LINC0 => 8,
      LINC1 => 9,
      LINOVF => 10,
      RXIFG => 11,
      TXIFG => 12,
      EOT => 13,
      MODE_9B => 14,
      CTS => 15,
      DMA_DONE_RX => 16,
      DMA_DONE_TX => 17,
      NERR_EVT => 18);

   --  Interrupt index
   type UART0_IIDX_UART0_INT_EVENT0[%s]_Register is record
      --  Read-only. UART Module Interrupt Vector Value. This register provides
      --  the highes priority interrupt index. A read clears the corresponding
      --  interrupt flag in RIS and MIS registers. 15h-1Fh = Reserved
      STAT          : UART0_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IIDX_UART0_INT_EVENT0[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable UARTOUT Receive Time-Out Interrupt.
   type UART0_IMASK_RTOUT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Framing Error Interrupt.
   type UART0_IMASK_FRMERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_FRMERR_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Parity Error Interrupt.
   type UART0_IMASK_PARERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_PARERR_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Break Error Interrupt.
   type UART0_IMASK_BRKERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_BRKERR_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Receive Overrun Error Interrupt.
   type UART0_IMASK_OVRERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_OVRERR_Field use
     (CLR => 0,
      SET => 1);

   --  Enable Negative Edge on UARTxRXD Interrupt.
   type UART0_IMASK_RXNE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_RXNE_Field use
     (CLR => 0,
      SET => 1);

   --  Enable Positive Edge on UARTxRXD Interrupt.
   type UART0_IMASK_RXPE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_RXPE_Field use
     (CLR => 0,
      SET => 1);

   --  Enable LIN Capture 0 / Match Interrupt .
   type UART0_IMASK_LINC0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_LINC0_Field use
     (CLR => 0,
      SET => 1);

   --  UART0_IMASK_UART0_INT_EVENT0[%s]_LINC array
   type UART0_IMASK_UART0_INT_EVENT0[%s]_LINC_Field_Array is array (0 .. 1)
     of UART0_IMASK_LINC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for UART0_IMASK_UART0_INT_EVENT0[%s]_LINC
   type UART0_IMASK_UART0_INT_EVENT0[%s]_LINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINC as a value
            Val : HAL.UInt2;
         when True =>
            --  LINC as an array
            Arr : UART0_IMASK_UART0_INT_EVENT0[%s]_LINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UART0_IMASK_UART0_INT_EVENT0[%s]_LINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Enable LIN Hardware Counter Overflow Interrupt.
   type UART0_IMASK_LINOVF_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_LINOVF_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Receive Interrupt.
   type UART0_IMASK_RXINT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_RXINT_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Transmit Interrupt.
   type UART0_IMASK_TXINT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_TXINT_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART End of Transmission Interrupt Indicates that the last bit of
   --  all transmitted data and flags has left the serializer and without any
   --  further Data in the TX Fifo or Buffer.
   type UART0_IMASK_EOT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_EOT_Field use
     (CLR => 0,
      SET => 1);

   --  Enable Address Match Interrupt.
   type UART0_IMASK_ADDR_MATCH_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_ADDR_MATCH_Field use
     (CLR => 0,
      SET => 1);

   --  Enable UART Clear to Send Modem Interrupt.
   type UART0_IMASK_CTS_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_CTS_Field use
     (CLR => 0,
      SET => 1);

   --  Enable DMA Done on RX Event Channel Interrupt
   type UART0_IMASK_DMA_DONE_RX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Enable DMA Done on TX Event Channel Interrupt
   type UART0_IMASK_DMA_DONE_TX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Noise Error on triple voting. Asserted when the 3 samples of majority
   --  voting are not equal
   type UART0_IMASK_NERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for UART0_IMASK_NERR_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type UART0_IMASK_UART0_INT_EVENT0[%s]_Register is record
      --  Enable UARTOUT Receive Time-Out Interrupt.
      RTOUT          : UART0_IMASK_RTOUT_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Framing Error Interrupt.
      FRMERR         : UART0_IMASK_FRMERR_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Parity Error Interrupt.
      PARERR         : UART0_IMASK_PARERR_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Break Error Interrupt.
      BRKERR         : UART0_IMASK_BRKERR_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Receive Overrun Error Interrupt.
      OVRERR         : UART0_IMASK_OVRERR_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable Negative Edge on UARTxRXD Interrupt.
      RXNE           : UART0_IMASK_RXNE_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable Positive Edge on UARTxRXD Interrupt.
      RXPE           : UART0_IMASK_RXPE_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable LIN Capture 0 / Match Interrupt .
      LINC           : UART0_IMASK_UART0_INT_EVENT0[%s]_LINC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enable LIN Hardware Counter Overflow Interrupt.
      LINOVF         : UART0_IMASK_LINOVF_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Receive Interrupt.
      RXINT          : UART0_IMASK_RXINT_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Transmit Interrupt.
      TXINT          : UART0_IMASK_TXINT_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART End of Transmission Interrupt Indicates that the last bit
      --  of all transmitted data and flags has left the serializer and without
      --  any further Data in the TX Fifo or Buffer.
      EOT            : UART0_IMASK_EOT_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable Address Match Interrupt.
      ADDR_MATCH     : UART0_IMASK_ADDR_MATCH_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable UART Clear to Send Modem Interrupt.
      CTS            : UART0_IMASK_CTS_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable DMA Done on RX Event Channel Interrupt
      DMA_DONE_RX    : UART0_IMASK_DMA_DONE_RX_Field :=
                        MSPMC1104_SVD.UART.CLR;
      --  Enable DMA Done on TX Event Channel Interrupt
      DMA_DONE_TX    : UART0_IMASK_DMA_DONE_TX_Field :=
                        MSPMC1104_SVD.UART.CLR;
      --  Noise Error on triple voting. Asserted when the 3 samples of majority
      --  voting are not equal
      NERR           : UART0_IMASK_NERR_Field := MSPMC1104_SVD.UART.CLR;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IMASK_UART0_INT_EVENT0[%s]_Register use record
      RTOUT          at 0 range 0 .. 0;
      FRMERR         at 0 range 1 .. 1;
      PARERR         at 0 range 2 .. 2;
      BRKERR         at 0 range 3 .. 3;
      OVRERR         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      RXPE           at 0 range 6 .. 6;
      LINC           at 0 range 7 .. 8;
      LINOVF         at 0 range 9 .. 9;
      RXINT          at 0 range 10 .. 10;
      TXINT          at 0 range 11 .. 11;
      EOT            at 0 range 12 .. 12;
      ADDR_MATCH     at 0 range 13 .. 13;
      CTS            at 0 range 14 .. 14;
      DMA_DONE_RX    at 0 range 15 .. 15;
      DMA_DONE_TX    at 0 range 16 .. 16;
      NERR           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  UARTOUT Receive Time-Out Interrupt.
   type UART0_RIS_RTOUT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  UART Framing Error Interrupt.
   type UART0_RIS_FRMERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_FRMERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Parity Error Interrupt.
   type UART0_RIS_PARERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_PARERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Break Error Interrupt.
   type UART0_RIS_BRKERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_BRKERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Receive Overrun Error Interrupt.
   type UART0_RIS_OVRERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_OVRERR_Field use
     (CLR => 0,
      SET => 1);

   --  Negative Edge on UARTxRXD Interrupt.
   type UART0_RIS_RXNE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_RXNE_Field use
     (CLR => 0,
      SET => 1);

   --  Positive Edge on UARTxRXD Interrupt.
   type UART0_RIS_RXPE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_RXPE_Field use
     (CLR => 0,
      SET => 1);

   --  LIN Capture 0 / Match Interrupt .
   type UART0_RIS_LINC0_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_LINC0_Field use
     (CLR => 0,
      SET => 1);

   --  UART0_RIS_UART0_INT_EVENT0[%s]_LINC array
   type UART0_RIS_UART0_INT_EVENT0[%s]_LINC_Field_Array is array (0 .. 1)
     of UART0_RIS_LINC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for UART0_RIS_UART0_INT_EVENT0[%s]_LINC
   type UART0_RIS_UART0_INT_EVENT0[%s]_LINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINC as a value
            Val : HAL.UInt2;
         when True =>
            --  LINC as an array
            Arr : UART0_RIS_UART0_INT_EVENT0[%s]_LINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UART0_RIS_UART0_INT_EVENT0[%s]_LINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  LIN Hardware Counter Overflow Interrupt.
   type UART0_RIS_LINOVF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_LINOVF_Field use
     (CLR => 0,
      SET => 1);

   --  UART Receive Interrupt.
   type UART0_RIS_RXINT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_RXINT_Field use
     (CLR => 0,
      SET => 1);

   --  UART Transmit Interrupt.
   type UART0_RIS_TXINT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_TXINT_Field use
     (CLR => 0,
      SET => 1);

   --  UART End of Transmission Interrupt Indicates that the last bit of all
   --  transmitted data and flags has left the serializer and without any
   --  further Data in the TX Fifo or Buffer.
   type UART0_RIS_EOT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_EOT_Field use
     (CLR => 0,
      SET => 1);

   --  Address Match Interrupt.
   type UART0_RIS_ADDR_MATCH_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_ADDR_MATCH_Field use
     (CLR => 0,
      SET => 1);

   --  UART Clear to Send Modem Interrupt.
   type UART0_RIS_CTS_Field is
     (--  Interrupt disabled
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_CTS_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on RX Event Channel Interrupt
   type UART0_RIS_DMA_DONE_RX_Field is
     (--  Interrupt disabled
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on TX Event Channel Interrupt
   type UART0_RIS_DMA_DONE_TX_Field is
     (--  Interrupt disabled
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Noise Error on triple voting. Asserted when the 3 samples of majority
   --  voting are not equal
   type UART0_RIS_NERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_RIS_NERR_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type UART0_RIS_UART0_INT_EVENT0[%s]_Register is record
      --  Read-only. UARTOUT Receive Time-Out Interrupt.
      RTOUT          : UART0_RIS_RTOUT_Field;
      --  Read-only. UART Framing Error Interrupt.
      FRMERR         : UART0_RIS_FRMERR_Field;
      --  Read-only. UART Parity Error Interrupt.
      PARERR         : UART0_RIS_PARERR_Field;
      --  Read-only. UART Break Error Interrupt.
      BRKERR         : UART0_RIS_BRKERR_Field;
      --  Read-only. UART Receive Overrun Error Interrupt.
      OVRERR         : UART0_RIS_OVRERR_Field;
      --  Read-only. Negative Edge on UARTxRXD Interrupt.
      RXNE           : UART0_RIS_RXNE_Field;
      --  Read-only. Positive Edge on UARTxRXD Interrupt.
      RXPE           : UART0_RIS_RXPE_Field;
      --  Read-only. LIN Capture 0 / Match Interrupt .
      LINC           : UART0_RIS_UART0_INT_EVENT0[%s]_LINC_Field;
      --  Read-only. LIN Hardware Counter Overflow Interrupt.
      LINOVF         : UART0_RIS_LINOVF_Field;
      --  Read-only. UART Receive Interrupt.
      RXINT          : UART0_RIS_RXINT_Field;
      --  Read-only. UART Transmit Interrupt.
      TXINT          : UART0_RIS_TXINT_Field;
      --  Read-only. UART End of Transmission Interrupt Indicates that the last
      --  bit of all transmitted data and flags has left the serializer and
      --  without any further Data in the TX Fifo or Buffer.
      EOT            : UART0_RIS_EOT_Field;
      --  Read-only. Address Match Interrupt.
      ADDR_MATCH     : UART0_RIS_ADDR_MATCH_Field;
      --  Read-only. UART Clear to Send Modem Interrupt.
      CTS            : UART0_RIS_CTS_Field;
      --  Read-only. DMA Done on RX Event Channel Interrupt
      DMA_DONE_RX    : UART0_RIS_DMA_DONE_RX_Field;
      --  Read-only. DMA Done on TX Event Channel Interrupt
      DMA_DONE_TX    : UART0_RIS_DMA_DONE_TX_Field;
      --  Read-only. Noise Error on triple voting. Asserted when the 3 samples
      --  of majority voting are not equal
      NERR           : UART0_RIS_NERR_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RIS_UART0_INT_EVENT0[%s]_Register use record
      RTOUT          at 0 range 0 .. 0;
      FRMERR         at 0 range 1 .. 1;
      PARERR         at 0 range 2 .. 2;
      BRKERR         at 0 range 3 .. 3;
      OVRERR         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      RXPE           at 0 range 6 .. 6;
      LINC           at 0 range 7 .. 8;
      LINOVF         at 0 range 9 .. 9;
      RXINT          at 0 range 10 .. 10;
      TXINT          at 0 range 11 .. 11;
      EOT            at 0 range 12 .. 12;
      ADDR_MATCH     at 0 range 13 .. 13;
      CTS            at 0 range 14 .. 14;
      DMA_DONE_RX    at 0 range 15 .. 15;
      DMA_DONE_TX    at 0 range 16 .. 16;
      NERR           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Masked UARTOUT Receive Time-Out Interrupt.
   type UART0_MIS_RTOUT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Framing Error Interrupt.
   type UART0_MIS_FRMERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_FRMERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Parity Error Interrupt.
   type UART0_MIS_PARERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_PARERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Break Error Interrupt.
   type UART0_MIS_BRKERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_BRKERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Receive Overrun Error Interrupt.
   type UART0_MIS_OVRERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_OVRERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Negative Edge on UARTxRXD Interrupt.
   type UART0_MIS_RXNE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_RXNE_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Positive Edge on UARTxRXD Interrupt.
   type UART0_MIS_RXPE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_RXPE_Field use
     (CLR => 0,
      SET => 1);

   --  Masked LIN Capture 0 / Match Interrupt .
   type UART0_MIS_LINC0_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_LINC0_Field use
     (CLR => 0,
      SET => 1);

   --  UART0_MIS_UART0_INT_EVENT0[%s]_LINC array
   type UART0_MIS_UART0_INT_EVENT0[%s]_LINC_Field_Array is array (0 .. 1)
     of UART0_MIS_LINC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for UART0_MIS_UART0_INT_EVENT0[%s]_LINC
   type UART0_MIS_UART0_INT_EVENT0[%s]_LINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINC as a value
            Val : HAL.UInt2;
         when True =>
            --  LINC as an array
            Arr : UART0_MIS_UART0_INT_EVENT0[%s]_LINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UART0_MIS_UART0_INT_EVENT0[%s]_LINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Masked LIN Hardware Counter Overflow Interrupt.
   type UART0_MIS_LINOVF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_LINOVF_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Receive Interrupt.
   type UART0_MIS_RXINT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_RXINT_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Transmit Interrupt.
   type UART0_MIS_TXINT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_TXINT_Field use
     (CLR => 0,
      SET => 1);

   --  UART End of Transmission Interrupt Indicates that the last bit of all
   --  transmitted data and flags has left the serializer and without any
   --  further Data in the TX Fifo or Buffer.
   type UART0_MIS_EOT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_EOT_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Address Match Interrupt.
   type UART0_MIS_ADDR_MATCH_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_ADDR_MATCH_Field use
     (CLR => 0,
      SET => 1);

   --  Masked UART Clear to Send Modem Interrupt.
   type UART0_MIS_CTS_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_CTS_Field use
     (CLR => 0,
      SET => 1);

   --  Masked DMA Done on RX Event Channel Interrupt
   type UART0_MIS_DMA_DONE_RX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Masked DMA Done on TX Event Channel Interrupt
   type UART0_MIS_DMA_DONE_TX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Noise Error on triple voting. Asserted when the 3 samples of majority
   --  voting are not equal
   type UART0_MIS_NERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for UART0_MIS_NERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type UART0_MIS_UART0_INT_EVENT0[%s]_Register is record
      --  Read-only. Masked UARTOUT Receive Time-Out Interrupt.
      RTOUT          : UART0_MIS_RTOUT_Field;
      --  Read-only. Masked UART Framing Error Interrupt.
      FRMERR         : UART0_MIS_FRMERR_Field;
      --  Read-only. Masked UART Parity Error Interrupt.
      PARERR         : UART0_MIS_PARERR_Field;
      --  Read-only. Masked UART Break Error Interrupt.
      BRKERR         : UART0_MIS_BRKERR_Field;
      --  Read-only. Masked UART Receive Overrun Error Interrupt.
      OVRERR         : UART0_MIS_OVRERR_Field;
      --  Read-only. Masked Negative Edge on UARTxRXD Interrupt.
      RXNE           : UART0_MIS_RXNE_Field;
      --  Read-only. Masked Positive Edge on UARTxRXD Interrupt.
      RXPE           : UART0_MIS_RXPE_Field;
      --  Read-only. Masked LIN Capture 0 / Match Interrupt .
      LINC           : UART0_MIS_UART0_INT_EVENT0[%s]_LINC_Field;
      --  Read-only. Masked LIN Hardware Counter Overflow Interrupt.
      LINOVF         : UART0_MIS_LINOVF_Field;
      --  Read-only. Masked UART Receive Interrupt.
      RXINT          : UART0_MIS_RXINT_Field;
      --  Read-only. Masked UART Transmit Interrupt.
      TXINT          : UART0_MIS_TXINT_Field;
      --  Read-only. UART End of Transmission Interrupt Indicates that the last
      --  bit of all transmitted data and flags has left the serializer and
      --  without any further Data in the TX Fifo or Buffer.
      EOT            : UART0_MIS_EOT_Field;
      --  Read-only. Masked Address Match Interrupt.
      ADDR_MATCH     : UART0_MIS_ADDR_MATCH_Field;
      --  Read-only. Masked UART Clear to Send Modem Interrupt.
      CTS            : UART0_MIS_CTS_Field;
      --  Read-only. Masked DMA Done on RX Event Channel Interrupt
      DMA_DONE_RX    : UART0_MIS_DMA_DONE_RX_Field;
      --  Read-only. Masked DMA Done on TX Event Channel Interrupt
      DMA_DONE_TX    : UART0_MIS_DMA_DONE_TX_Field;
      --  Read-only. Noise Error on triple voting. Asserted when the 3 samples
      --  of majority voting are not equal
      NERR           : UART0_MIS_NERR_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_MIS_UART0_INT_EVENT0[%s]_Register use record
      RTOUT          at 0 range 0 .. 0;
      FRMERR         at 0 range 1 .. 1;
      PARERR         at 0 range 2 .. 2;
      BRKERR         at 0 range 3 .. 3;
      OVRERR         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      RXPE           at 0 range 6 .. 6;
      LINC           at 0 range 7 .. 8;
      LINOVF         at 0 range 9 .. 9;
      RXINT          at 0 range 10 .. 10;
      TXINT          at 0 range 11 .. 11;
      EOT            at 0 range 12 .. 12;
      ADDR_MATCH     at 0 range 13 .. 13;
      CTS            at 0 range 14 .. 14;
      DMA_DONE_RX    at 0 range 15 .. 15;
      DMA_DONE_TX    at 0 range 16 .. 16;
      NERR           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Set UARTOUT Receive Time-Out Interrupt.
   type UART0_ISET_RTOUT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_RTOUT_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Framing Error Interrupt.
   type UART0_ISET_FRMERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_FRMERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Parity Error Interrupt.
   type UART0_ISET_PARERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_PARERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Break Error Interrupt.
   type UART0_ISET_BRKERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_BRKERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Receive Overrun Error Interrupt.
   type UART0_ISET_OVRERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_OVRERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Negative Edge on UARTxRXD Interrupt.
   type UART0_ISET_RXNE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_RXNE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Positive Edge on UARTxRXD Interrupt.
   type UART0_ISET_RXPE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_RXPE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set LIN Capture 0 / Match Interrupt .
   type UART0_ISET_LINC0_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_LINC0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  UART0_ISET_UART0_INT_EVENT0[%s]_LINC array
   type UART0_ISET_UART0_INT_EVENT0[%s]_LINC_Field_Array is array (0 .. 1)
     of UART0_ISET_LINC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for UART0_ISET_UART0_INT_EVENT0[%s]_LINC
   type UART0_ISET_UART0_INT_EVENT0[%s]_LINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINC as a value
            Val : HAL.UInt2;
         when True =>
            --  LINC as an array
            Arr : UART0_ISET_UART0_INT_EVENT0[%s]_LINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UART0_ISET_UART0_INT_EVENT0[%s]_LINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Set LIN Hardware Counter Overflow Interrupt.
   type UART0_ISET_LINOVF_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_LINOVF_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Receive Interrupt.
   type UART0_ISET_RXINT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_RXINT_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Transmit Interrupt.
   type UART0_ISET_TXINT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_TXINT_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART End of Transmission Interrupt Indicates that the last bit of
   --  all transmitted data and flags has left the serializer and without any
   --  further Data in the TX Fifo or Buffer.
   type UART0_ISET_EOT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_EOT_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Address Match Interrupt.
   type UART0_ISET_ADDR_MATCH_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_ADDR_MATCH_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set UART Clear to Send Modem Interrupt.
   type UART0_ISET_CTS_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_CTS_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set DMA Done on RX Event Channel Interrupt
   type UART0_ISET_DMA_DONE_RX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_DMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set DMA Done on TX Event Channel Interrupt
   type UART0_ISET_DMA_DONE_TX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for UART0_ISET_DMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Noise Error on triple voting. Asserted when the 3 samples of majority
   --  voting are not equal
   type UART0_ISET_NERR_Field is
     (--  Writing this has no effect
      NO_EFFECT,
      --  Set the interrupt
      SET)
     with Size => 1;
   for UART0_ISET_NERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type UART0_ISET_UART0_INT_EVENT0[%s]_Register is record
      --  Write-only. Set UARTOUT Receive Time-Out Interrupt.
      RTOUT          : UART0_ISET_RTOUT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Framing Error Interrupt.
      FRMERR         : UART0_ISET_FRMERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Parity Error Interrupt.
      PARERR         : UART0_ISET_PARERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Break Error Interrupt.
      BRKERR         : UART0_ISET_BRKERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Receive Overrun Error Interrupt.
      OVRERR         : UART0_ISET_OVRERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set Negative Edge on UARTxRXD Interrupt.
      RXNE           : UART0_ISET_RXNE_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set Positive Edge on UARTxRXD Interrupt.
      RXPE           : UART0_ISET_RXPE_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set LIN Capture 0 / Match Interrupt .
      LINC           : UART0_ISET_UART0_INT_EVENT0[%s]_LINC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Set LIN Hardware Counter Overflow Interrupt.
      LINOVF         : UART0_ISET_LINOVF_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Receive Interrupt.
      RXINT          : UART0_ISET_RXINT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Transmit Interrupt.
      TXINT          : UART0_ISET_TXINT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART End of Transmission Interrupt Indicates that the
      --  last bit of all transmitted data and flags has left the serializer
      --  and without any further Data in the TX Fifo or Buffer.
      EOT            : UART0_ISET_EOT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set Address Match Interrupt.
      ADDR_MATCH     : UART0_ISET_ADDR_MATCH_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set UART Clear to Send Modem Interrupt.
      CTS            : UART0_ISET_CTS_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set DMA Done on RX Event Channel Interrupt
      DMA_DONE_RX    : UART0_ISET_DMA_DONE_RX_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Set DMA Done on TX Event Channel Interrupt
      DMA_DONE_TX    : UART0_ISET_DMA_DONE_TX_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Noise Error on triple voting. Asserted when the 3 samples
      --  of majority voting are not equal
      NERR           : UART0_ISET_NERR_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_ISET_UART0_INT_EVENT0[%s]_Register use record
      RTOUT          at 0 range 0 .. 0;
      FRMERR         at 0 range 1 .. 1;
      PARERR         at 0 range 2 .. 2;
      BRKERR         at 0 range 3 .. 3;
      OVRERR         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      RXPE           at 0 range 6 .. 6;
      LINC           at 0 range 7 .. 8;
      LINOVF         at 0 range 9 .. 9;
      RXINT          at 0 range 10 .. 10;
      TXINT          at 0 range 11 .. 11;
      EOT            at 0 range 12 .. 12;
      ADDR_MATCH     at 0 range 13 .. 13;
      CTS            at 0 range 14 .. 14;
      DMA_DONE_RX    at 0 range 15 .. 15;
      DMA_DONE_TX    at 0 range 16 .. 16;
      NERR           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Clear UARTOUT Receive Time-Out Interrupt.
   type UART0_ICLR_RTOUT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_RTOUT_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Framing Error Interrupt.
   type UART0_ICLR_FRMERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_FRMERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Parity Error Interrupt.
   type UART0_ICLR_PARERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_PARERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Break Error Interrupt.
   type UART0_ICLR_BRKERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_BRKERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Receive Overrun Error Interrupt.
   type UART0_ICLR_OVRERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_OVRERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Negative Edge on UARTxRXD Interrupt.
   type UART0_ICLR_RXNE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_RXNE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Positive Edge on UARTxRXD Interrupt.
   type UART0_ICLR_RXPE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_RXPE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear LIN Capture 0 / Match Interrupt .
   type UART0_ICLR_LINC0_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_LINC0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  UART0_ICLR_UART0_INT_EVENT0[%s]_LINC array
   type UART0_ICLR_UART0_INT_EVENT0[%s]_LINC_Field_Array is array (0 .. 1)
     of UART0_ICLR_LINC0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for UART0_ICLR_UART0_INT_EVENT0[%s]_LINC
   type UART0_ICLR_UART0_INT_EVENT0[%s]_LINC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LINC as a value
            Val : HAL.UInt2;
         when True =>
            --  LINC as an array
            Arr : UART0_ICLR_UART0_INT_EVENT0[%s]_LINC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UART0_ICLR_UART0_INT_EVENT0[%s]_LINC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Clear LIN Hardware Counter Overflow Interrupt.
   type UART0_ICLR_LINOVF_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_LINOVF_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Receive Interrupt.
   type UART0_ICLR_RXINT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_RXINT_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Transmit Interrupt.
   type UART0_ICLR_TXINT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_TXINT_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART End of Transmission Interrupt Indicates that the last bit of
   --  all transmitted data and flags has left the serializer and without any
   --  further Data in the TX Fifo or Buffer.
   type UART0_ICLR_EOT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_EOT_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Address Match Interrupt.
   type UART0_ICLR_ADDR_MATCH_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_ADDR_MATCH_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear UART Clear to Send Modem Interrupt.
   type UART0_ICLR_CTS_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_CTS_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear DMA Done on RX Event Channel Interrupt
   type UART0_ICLR_DMA_DONE_RX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_DMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear DMA Done on TX Event Channel Interrupt
   type UART0_ICLR_DMA_DONE_TX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_DMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Noise Error on triple voting. Asserted when the 3 samples of majority
   --  voting are not equal
   type UART0_ICLR_NERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for UART0_ICLR_NERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type UART0_ICLR_UART0_INT_EVENT0[%s]_Register is record
      --  Write-only. Clear UARTOUT Receive Time-Out Interrupt.
      RTOUT          : UART0_ICLR_RTOUT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Framing Error Interrupt.
      FRMERR         : UART0_ICLR_FRMERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Parity Error Interrupt.
      PARERR         : UART0_ICLR_PARERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Break Error Interrupt.
      BRKERR         : UART0_ICLR_BRKERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Receive Overrun Error Interrupt.
      OVRERR         : UART0_ICLR_OVRERR_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear Negative Edge on UARTxRXD Interrupt.
      RXNE           : UART0_ICLR_RXNE_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear Positive Edge on UARTxRXD Interrupt.
      RXPE           : UART0_ICLR_RXPE_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear LIN Capture 0 / Match Interrupt .
      LINC           : UART0_ICLR_UART0_INT_EVENT0[%s]_LINC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Clear LIN Hardware Counter Overflow Interrupt.
      LINOVF         : UART0_ICLR_LINOVF_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Receive Interrupt.
      RXINT          : UART0_ICLR_RXINT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Transmit Interrupt.
      TXINT          : UART0_ICLR_TXINT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART End of Transmission Interrupt Indicates that
      --  the last bit of all transmitted data and flags has left the
      --  serializer and without any further Data in the TX Fifo or Buffer.
      EOT            : UART0_ICLR_EOT_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear Address Match Interrupt.
      ADDR_MATCH     : UART0_ICLR_ADDR_MATCH_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear UART Clear to Send Modem Interrupt.
      CTS            : UART0_ICLR_CTS_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear DMA Done on RX Event Channel Interrupt
      DMA_DONE_RX    : UART0_ICLR_DMA_DONE_RX_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Clear DMA Done on TX Event Channel Interrupt
      DMA_DONE_TX    : UART0_ICLR_DMA_DONE_TX_Field :=
                        MSPMC1104_SVD.UART.NO_EFFECT;
      --  Write-only. Noise Error on triple voting. Asserted when the 3 samples
      --  of majority voting are not equal
      NERR           : UART0_ICLR_NERR_Field := MSPMC1104_SVD.UART.NO_EFFECT;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_ICLR_UART0_INT_EVENT0[%s]_Register use record
      RTOUT          at 0 range 0 .. 0;
      FRMERR         at 0 range 1 .. 1;
      PARERR         at 0 range 2 .. 2;
      BRKERR         at 0 range 3 .. 3;
      OVRERR         at 0 range 4 .. 4;
      RXNE           at 0 range 5 .. 5;
      RXPE           at 0 range 6 .. 6;
      LINC           at 0 range 7 .. 8;
      LINOVF         at 0 range 9 .. 9;
      RXINT          at 0 range 10 .. 10;
      TXINT          at 0 range 11 .. 11;
      EOT            at 0 range 12 .. 12;
      ADDR_MATCH     at 0 range 13 .. 13;
      CTS            at 0 range 14 .. 14;
      DMA_DONE_RX    at 0 range 15 .. 15;
      DMA_DONE_TX    at 0 range 16 .. 16;
      NERR           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   type UART0_INT_EVENT0[%s]_Cluster is record
      --  Interrupt index
      UART0_IIDX  : aliased UART0_IIDX_UART0_INT_EVENT0[%s]_Register;
      --  Interrupt mask
      UART0_IMASK : aliased UART0_IMASK_UART0_INT_EVENT0[%s]_Register;
      --  Raw interrupt status
      UART0_RIS   : aliased UART0_RIS_UART0_INT_EVENT0[%s]_Register;
      --  Masked interrupt status
      UART0_MIS   : aliased UART0_MIS_UART0_INT_EVENT0[%s]_Register;
      --  Interrupt set
      UART0_ISET  : aliased UART0_ISET_UART0_INT_EVENT0[%s]_Register;
      --  Interrupt clear
      UART0_ICLR  : aliased UART0_ICLR_UART0_INT_EVENT0[%s]_Register;
   end record
     with Size => 352;

   for UART0_INT_EVENT0[%s]_Cluster use record
      UART0_IIDX  at 16#0# range 0 .. 31;
      UART0_IMASK at 16#8# range 0 .. 31;
      UART0_RIS   at 16#10# range 0 .. 31;
      UART0_MIS   at 16#18# range 0 .. 31;
      UART0_ISET  at 16#20# range 0 .. 31;
      UART0_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT0]
   type UART0_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for UART0_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT1]
   type UART0_EVT_MODE_INT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for UART0_EVT_MODE_INT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT2]
   type UART0_EVT_MODE_INT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for UART0_EVT_MODE_INT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type UART0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT0]
      INT0_CFG      : UART0_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT1]
      INT1_CFG      : UART0_EVT_MODE_INT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT2]
      INT2_CFG      : UART0_EVT_MODE_INT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      INT1_CFG      at 0 range 2 .. 3;
      INT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Writing a 1 to this field re-evaluates the interrupt sources.
   type UART0_INTCTL_INTEVAL_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      EVAL)
     with Size => 1;
   for UART0_INTCTL_INTEVAL_Field use
     (DISABLE => 0,
      EVAL => 1);

   --  Interrupt control register
   type UART0_INTCTL_Register is record
      --  Write-only. Writing a 1 to this field re-evaluates the interrupt
      --  sources.
      INTEVAL       : UART0_INTCTL_INTEVAL_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_INTCTL_Register use record
      INTEVAL       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  UART Module Enable. If the UART is disabled in the middle of
   --  transmission or reception, it completes the current character before
   --  stopping. If the ENABLE bit is not set, all registers can still be
   --  accessed and updated. It is recommended to setup and change the UART
   --  operation mode with having the ENABLE bit cleared to avoid unpredictable
   --  behavior during the setup or update. If disabled the UART module will
   --  not send or receive any data and the logic is held in reset state.
   type UART0_CTL0_ENABLE_Field is
     (--  Disable Module
      DISABLE,
      --  Enable module
      ENABLE)
     with Size => 1;
   for UART0_CTL0_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Loop Back Enable
   type UART0_CTL0_LBE_Field is
     (--  Normal operation.
      DISABLE,
      --  The UARTxTX path is fed through the UARTxRX path internally.
      ENABLE)
     with Size => 1;
   for UART0_CTL0_LBE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Receive Enable If the UART is disabled in the middle of a receive,
   --  it completes the current character before stopping. #b#NOTE:#/b# To
   --  enable reception, the UARTEN bit must be set.
   type UART0_CTL0_RXE_Field is
     (--  The receive section of the UART is disabled.
      DISABLE,
      --  The receive section of the UART is enabled.
      ENABLE)
     with Size => 1;
   for UART0_CTL0_RXE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Transmit Enable If the UART is disabled in the middle of a
   --  transmission, it completes the current character before stopping.
   --  #b#NOTE:#/b# To enable transmission, the UARTEN bit must be set.
   type UART0_CTL0_TXE_Field is
     (--  The transmit section of the UART is disabled. The UARTxTXD pin of the UART
--  can be controlled by the TXD_CTL bit when enabled.
      DISABLE,
      --  The transmit section of the UART is enabled.
      ENABLE)
     with Size => 1;
   for UART0_CTL0_TXE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  TXD Pin Control Enable. When the transmit section of the UART is
   --  disabled (TXE = 0), the TXD pin can be controlled by the TXD_OUT bit.
   type UART0_CTL0_TXD_OUT_EN_Field is
     (--  TXD pin can not be controlled by TXD_OUT
      DISABLE,
      --  TXD pin can be controlled by TXD_OUT
      ENABLE)
     with Size => 1;
   for UART0_CTL0_TXD_OUT_EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  TXD Pin Control Controls the TXD pin when TXD_OUT_EN = 1 and TXE = 0.
   type UART0_CTL0_TXD_OUT_Field is
     (--  TXD pin is low
      LOW,
      --  TXD pin is high
      HIGH)
     with Size => 1;
   for UART0_CTL0_TXD_OUT_Field use
     (LOW => 0,
      HIGH => 1);

   --  Manchester Encode enable
   type UART0_CTL0_MENC_Field is
     (--  Disable Manchester Encoding
      DISABLE,
      --  Enable Manchester Encoding
      ENABLE)
     with Size => 1;
   for UART0_CTL0_MENC_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Set the communication mode and protocol used. (Not defined settings uses
   --  the default setting: 0)
   type UART0_CTL0_MODE_Field is
     (--  Normal operation
      UART,
      --  RS485 mode: UART needs to be IDLE with receiving data for the in
--  EXTDIR_HOLD set time. EXTDIR_SETUP defines the time the RTS line is set to
--  high before sending. When the buffer is empty the RTS line is set low
--  again. A transmit will be delayed as long the UART is receiving data.
      RS485,
      --  The UART operates in IDLE Line Mode
      IDLELINE,
      --  The UART operates in 9 Bit Address mode
      ADDR9BIT,
      --  ISO7816 Smart Card Support The application must ensure that it sets 8-bit
--  word length (WLEN set to 3h) and even parity (PEN set to 1, EPS set to 1,
--  SPS set to 0) in UARTLCRH when using ISO7816 mode. The value of the STP2
--  bit in UARTLCRH is ignored and the number of stop bits is forced to 2.
      SMART,
      --  DALI Mode:
      DALI)
     with Size => 3;
   for UART0_CTL0_MODE_Field use
     (UART => 0,
      RS485 => 1,
      IDLELINE => 2,
      ADDR9BIT => 3,
      SMART => 4,
      DALI => 5);

   --  Request to Send If RTSEN is set the RTS output signals is controlled by
   --  the hardware logic using the FIFO fill level or TXDATA buffer. If RTSEN
   --  is cleared the RTS output is controlled by the RTS bit. The bit is the
   --  complement of the UART request to send, RTS modem status output.
   type UART0_CTL0_RTS_Field is
     (--  Signal not RTS
      CLR,
      --  Signal RTS
      SET)
     with Size => 1;
   for UART0_CTL0_RTS_Field use
     (CLR => 0,
      SET => 1);

   --  Enable hardware controlled Request to Send
   type UART0_CTL0_RTSEN_Field is
     (--  RTS hardware flow control is disabled.
      DISABLE,
      --  RTS hardware flow control is enabled. Data is only requested (by asserting
--  UARTxRTS) when the receive FIFO has available entries.
      ENABLE)
     with Size => 1;
   for UART0_CTL0_RTSEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable Clear To Send
   type UART0_CTL0_CTSEN_Field is
     (--  CTS hardware flow control is disabled.
      DISABLE,
      --  CTS hardware flow control is enabled. Data is only transmitted when the
--  UARTxCTS signal is asserted.
      ENABLE)
     with Size => 1;
   for UART0_CTL0_CTSEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  High-Speed Bit Oversampling Enable #b#NOTE:#/b# The bit oversampling
   --  influences the UART baud-rate configuration. The state of this bit has
   --  no effect on clock generation in ISO7816 smart card mode (the SMART bit
   --  is set).
   type UART0_CTL0_HSE_Field is
     (--  16x oversampling.
      OVS16,
      --  8x oversampling.
      OVS8,
      --  3x oversampling. IrDA, Manchester and DALI not supported when 3x
--  oversampling is enabled.
      OVS3)
     with Size => 2;
   for UART0_CTL0_HSE_Field use
     (OVS16 => 0,
      OVS8 => 1,
      OVS3 => 2);

   --  UART Enable FIFOs
   type UART0_CTL0_FEN_Field is
     (--  The FIFOs are disabled (Character mode). The FIFOs become 1-byte-deep
--  holding registers.
      DISABLE,
      --  The transmit and receive FIFO buffers are enabled (FIFO mode).
      ENABLE)
     with Size => 1;
   for UART0_CTL0_FEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Majority Vote Enable When Majority Voting is enabled, the three center
   --  bits are used to determine received sample value. In case of error (i.e.
   --  all 3 bits are not the same), noise error is detected and bits RIS.NERR
   --  and register RXDATA.NERR are set. Oversampling of 16 : bits 7, 8, 9 are
   --  used Oversampling of 8 : bits 3, 4, 5 are used Disabled : Single sample
   --  value (center value) used
   type UART0_CTL0_MAJVOTE_Field is
     (--  Majority voting is disabled
      DISABLE,
      --  Majority voting is enabled
      ENABLE)
     with Size => 1;
   for UART0_CTL0_MAJVOTE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Most Significant Bit First This bit has effect both on the way protocol
   --  byte is transmitted and received. Notes: User needs to match the
   --  protocol to the correct value of this bit to send MSb or LSb first. The
   --  hardware engine will send the byte entirely based on this bit.
   type UART0_CTL0_MSBFIRST_Field is
     (--  Least significant bit is sent first in the protocol packet
      DISABLE,
      --  Most significant bit is sent first in the protocol packet
      ENABLE)
     with Size => 1;
   for UART0_CTL0_MSBFIRST_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Control Register 0
   type UART0_CTL0_Register is record
      --  UART Module Enable. If the UART is disabled in the middle of
      --  transmission or reception, it completes the current character before
      --  stopping. If the ENABLE bit is not set, all registers can still be
      --  accessed and updated. It is recommended to setup and change the UART
      --  operation mode with having the ENABLE bit cleared to avoid
      --  unpredictable behavior during the setup or update. If disabled the
      --  UART module will not send or receive any data and the logic is held
      --  in reset state.
      ENABLE         : UART0_CTL0_ENABLE_Field := MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  UART Loop Back Enable
      LBE            : UART0_CTL0_LBE_Field := MSPMC1104_SVD.UART.DISABLE;
      --  UART Receive Enable If the UART is disabled in the middle of a
      --  receive, it completes the current character before stopping.
      --  #b#NOTE:#/b# To enable reception, the UARTEN bit must be set.
      RXE            : UART0_CTL0_RXE_Field := MSPMC1104_SVD.UART.ENABLE;
      --  UART Transmit Enable If the UART is disabled in the middle of a
      --  transmission, it completes the current character before stopping.
      --  #b#NOTE:#/b# To enable transmission, the UARTEN bit must be set.
      TXE            : UART0_CTL0_TXE_Field := MSPMC1104_SVD.UART.ENABLE;
      --  TXD Pin Control Enable. When the transmit section of the UART is
      --  disabled (TXE = 0), the TXD pin can be controlled by the TXD_OUT bit.
      TXD_OUT_EN     : UART0_CTL0_TXD_OUT_EN_Field :=
                        MSPMC1104_SVD.UART.ENABLE;
      --  TXD Pin Control Controls the TXD pin when TXD_OUT_EN = 1 and TXE = 0.
      TXD_OUT        : UART0_CTL0_TXD_OUT_Field := MSPMC1104_SVD.UART.LOW;
      --  Manchester Encode enable
      MENC           : UART0_CTL0_MENC_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Set the communication mode and protocol used. (Not defined settings
      --  uses the default setting: 0)
      MODE           : UART0_CTL0_MODE_Field := MSPMC1104_SVD.UART.UART;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Request to Send If RTSEN is set the RTS output signals is controlled
      --  by the hardware logic using the FIFO fill level or TXDATA buffer. If
      --  RTSEN is cleared the RTS output is controlled by the RTS bit. The bit
      --  is the complement of the UART request to send, RTS modem status
      --  output.
      RTS            : UART0_CTL0_RTS_Field := MSPMC1104_SVD.UART.CLR;
      --  Enable hardware controlled Request to Send
      RTSEN          : UART0_CTL0_RTSEN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Enable Clear To Send
      CTSEN          : UART0_CTL0_CTSEN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  High-Speed Bit Oversampling Enable #b#NOTE:#/b# The bit oversampling
      --  influences the UART baud-rate configuration. The state of this bit
      --  has no effect on clock generation in ISO7816 smart card mode (the
      --  SMART bit is set).
      HSE            : UART0_CTL0_HSE_Field := MSPMC1104_SVD.UART.OVS16;
      --  UART Enable FIFOs
      FEN            : UART0_CTL0_FEN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Majority Vote Enable When Majority Voting is enabled, the three
      --  center bits are used to determine received sample value. In case of
      --  error (i.e. all 3 bits are not the same), noise error is detected and
      --  bits RIS.NERR and register RXDATA.NERR are set. Oversampling of 16 :
      --  bits 7, 8, 9 are used Oversampling of 8 : bits 3, 4, 5 are used
      --  Disabled : Single sample value (center value) used
      MAJVOTE        : UART0_CTL0_MAJVOTE_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Most Significant Bit First This bit has effect both on the way
      --  protocol byte is transmitted and received. Notes: User needs to match
      --  the protocol to the correct value of this bit to send MSb or LSb
      --  first. The hardware engine will send the byte entirely based on this
      --  bit.
      MSBFIRST       : UART0_CTL0_MSBFIRST_Field :=
                        MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_CTL0_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      LBE            at 0 range 2 .. 2;
      RXE            at 0 range 3 .. 3;
      TXE            at 0 range 4 .. 4;
      TXD_OUT_EN     at 0 range 5 .. 5;
      TXD_OUT        at 0 range 6 .. 6;
      MENC           at 0 range 7 .. 7;
      MODE           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      RTS            at 0 range 12 .. 12;
      RTSEN          at 0 range 13 .. 13;
      CTSEN          at 0 range 14 .. 14;
      HSE            at 0 range 15 .. 16;
      FEN            at 0 range 17 .. 17;
      MAJVOTE        at 0 range 18 .. 18;
      MSBFIRST       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  UART Send Break (for LIN Protocol)
   type UART0_LCRH_BRK_Field is
     (--  Normal use.
      DISABLE,
      --  A low level is continually output on the UARTxTXD signal, after completing
--  transmission of the current character. For the proper execution of the
--  break command, software must set this bit for at least two frames
--  (character periods).
      ENABLE)
     with Size => 1;
   for UART0_LCRH_BRK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Parity Enable
   type UART0_LCRH_PEN_Field is
     (--  Parity is disabled and no parity bit is added to the data frame.
      DISABLE,
      --  Parity checking and generation is enabled.
      ENABLE)
     with Size => 1;
   for UART0_LCRH_PEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Even Parity Select This bit has no effect when parity is disabled
   --  by the PEN bit. For 9-Bit UART Mode transmissions, this bit controls the
   --  address byte and data byte indication (9th bit). 0 = The transferred
   --  byte is a data byte 1 = The transferred byte is an address byte
   type UART0_LCRH_EPS_Field is
     (--  Odd parity is performed, which checks for an odd number of 1s.
      ODD,
      --  Even parity generation and checking is performed during transmission and
--  reception, which checks for an even number of 1s in data and parity bits.
      EVEN)
     with Size => 1;
   for UART0_LCRH_EPS_Field use
     (ODD => 0,
      EVEN => 1);

   --  UART Two Stop Bits Select When in 7816 smart card mode (the SMART bit is
   --  set in the UARTCTL register), the number of stop bits is forced to 2.
   type UART0_LCRH_STP2_Field is
     (--  One stop bit is transmitted at the end of a frame.
      DISABLE,
      --  Two stop bits are transmitted at the end of a frame. The receive logic
--  checks for two stop bits being received and provide Frame Error if either
--  is invalid.
      ENABLE)
     with Size => 1;
   for UART0_LCRH_STP2_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART Word Length The bits indicate the number of data bits transmitted
   --  or received in a frame as follows:
   type UART0_LCRH_WLEN_Field is
     (--  5 bits (default)
      DATABIT5,
      --  6 bits
      DATABIT6,
      --  7 bits
      DATABIT7,
      --  8 bits
      DATABIT8)
     with Size => 2;
   for UART0_LCRH_WLEN_Field use
     (DATABIT5 => 0,
      DATABIT6 => 1,
      DATABIT7 => 2,
      DATABIT8 => 3);

   --  UART Stick Parity Select The Stick Parity Select (SPS) bit is used to
   --  set either a permanent '1' or a permanent '0' as parity when
   --  transmitting or receiving data. Its purpose is to typically indicate the
   --  first byte of a package or to mark an address byte, for example in a
   --  multi-drop RS-485 network. When bits PEN, EPS, and SPS of UARTLCRH are
   --  set, the parity bit is transmitted and checked as a 0. When bits PEN and
   --  SPS are set and EPS is cleared, the parity bit is transmitted and
   --  checked as a 1.
   type UART0_LCRH_SPS_Field is
     (--  Disable Stick Parity
      DISABLE,
      --  Enable Stick Parity
      ENABLE)
     with Size => 1;
   for UART0_LCRH_SPS_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART send IDLE pattern. When this bit is set an SENDIDLE period of 11
   --  bit times will be sent on the TX line. The bit is cleared by hardware
   --  afterwards.
   type UART0_LCRH_SENDIDLE_Field is
     (--  Disable Send Idle Pattern
      DISABLE,
      --  Enable Send Idle Pattern
      ENABLE)
     with Size => 1;
   for UART0_LCRH_SENDIDLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype UART0_LCRH_EXTDIR_SETUP_Field is HAL.UInt5;
   subtype UART0_LCRH_EXTDIR_HOLD_Field is HAL.UInt5;

   --  UART Line Control Register
   type UART0_LCRH_Register is record
      --  UART Send Break (for LIN Protocol)
      BRK            : UART0_LCRH_BRK_Field := MSPMC1104_SVD.UART.DISABLE;
      --  UART Parity Enable
      PEN            : UART0_LCRH_PEN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  UART Even Parity Select This bit has no effect when parity is
      --  disabled by the PEN bit. For 9-Bit UART Mode transmissions, this bit
      --  controls the address byte and data byte indication (9th bit). 0 = The
      --  transferred byte is a data byte 1 = The transferred byte is an
      --  address byte
      EPS            : UART0_LCRH_EPS_Field := MSPMC1104_SVD.UART.ODD;
      --  UART Two Stop Bits Select When in 7816 smart card mode (the SMART bit
      --  is set in the UARTCTL register), the number of stop bits is forced to
      --  2.
      STP2           : UART0_LCRH_STP2_Field := MSPMC1104_SVD.UART.DISABLE;
      --  UART Word Length The bits indicate the number of data bits
      --  transmitted or received in a frame as follows:
      WLEN           : UART0_LCRH_WLEN_Field := MSPMC1104_SVD.UART.DATABIT5;
      --  UART Stick Parity Select The Stick Parity Select (SPS) bit is used to
      --  set either a permanent '1' or a permanent '0' as parity when
      --  transmitting or receiving data. Its purpose is to typically indicate
      --  the first byte of a package or to mark an address byte, for example
      --  in a multi-drop RS-485 network. When bits PEN, EPS, and SPS of
      --  UARTLCRH are set, the parity bit is transmitted and checked as a 0.
      --  When bits PEN and SPS are set and EPS is cleared, the parity bit is
      --  transmitted and checked as a 1.
      SPS            : UART0_LCRH_SPS_Field := MSPMC1104_SVD.UART.DISABLE;
      --  UART send IDLE pattern. When this bit is set an SENDIDLE period of 11
      --  bit times will be sent on the TX line. The bit is cleared by hardware
      --  afterwards.
      SENDIDLE       : UART0_LCRH_SENDIDLE_Field :=
                        MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  Defines the number of UARTclk ticks the signal to control the
      --  external driver for the RS485 will be set before the START bit is
      --  send
      EXTDIR_SETUP   : UART0_LCRH_EXTDIR_SETUP_Field := 16#0#;
      --  Defines the number of UARTclk ticks the signal to control the
      --  external driver for the RS485 will be reset after the beginning of
      --  the stop bit. (If 2 STOP bits are enabled the beginning of the 2nd
      --  STOP bit.)
      EXTDIR_HOLD    : UART0_LCRH_EXTDIR_HOLD_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_LCRH_Register use record
      BRK            at 0 range 0 .. 0;
      PEN            at 0 range 1 .. 1;
      EPS            at 0 range 2 .. 2;
      STP2           at 0 range 3 .. 3;
      WLEN           at 0 range 4 .. 5;
      SPS            at 0 range 6 .. 6;
      SENDIDLE       at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      EXTDIR_SETUP   at 0 range 16 .. 20;
      EXTDIR_HOLD    at 0 range 21 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  UART Busy This bit is set as soon as the transmit FIFO or TXDATA
   --  register becomes non-empty (regardless of whether UART is enabled) or if
   --  a receive data is currently ongoing (after the start edge have been
   --  detected until a complete byte, including all stop bits, has been
   --  received by the shift register). In IDLE_Line mode the Busy signal also
   --  stays set during the idle time generation.
   type UART0_STAT_BUSY_Field is
     (--  The UART is not busy.
      CLEARED,
      --  The UART is busy transmitting data. This bit remains set until the complete
--  byte, including all stop bits, has been sent/received from/into the shift
--  register.
      SET)
     with Size => 1;
   for UART0_STAT_BUSY_Field use
     (CLEARED => 0,
      SET => 1);

   --  UART Receive FIFO Empty The meaning of this bit depends on the state of
   --  the FEN bit in the CTL0 register.
   type UART0_STAT_RXFE_Field is
     (--  The receiver is not empty.
      CLEARED,
      --  If the FIFO is disabled (FEN is 0), the receive holding register is empty.
--  If the FIFO is enabled (FEN is 1), the receive FIFO is empty.
      SET)
     with Size => 1;
   for UART0_STAT_RXFE_Field use
     (CLEARED => 0,
      SET => 1);

   --  UART Receive FIFO Full The meaning of this bit depends on the state of
   --  the FEN bit in the CTL0 register.
   type UART0_STAT_RXFF_Field is
     (--  The receiver can receive data.
      CLEARED,
      --  If the FIFO is disabled (FEN is 0), the receive holding register is full.
--  If the FIFO is enabled (FEN is 1), the receive FIFO is full.
      SET)
     with Size => 1;
   for UART0_STAT_RXFF_Field use
     (CLEARED => 0,
      SET => 1);

   --  UART Transmit FIFO Empty The meaning of this bit depends on the state of
   --  the FEN bit in the CTL0 register.
   type UART0_STAT_TXFE_Field is
     (--  The transmitter has data to transmit.
      CLEARED,
      --  If the FIFO is disabled (FEN is 0), the transmit holding register is empty.
--  If the FIFO is enabled (FEN is 1), the transmit FIFO is empty.
      SET)
     with Size => 1;
   for UART0_STAT_TXFE_Field use
     (CLEARED => 0,
      SET => 1);

   --  UART Transmit FIFO Full The meaning of this bit depends on the state of
   --  the FEN bit in the CTL0 register.
   type UART0_STAT_TXFF_Field is
     (--  The transmitter is not full.
      CLEARED,
      --  If the FIFO is disabled (FEN is 0), the transmit holding register is full.
--  If the FIFO is enabled (FEN is 1), the transmit FIFO is full.
      SET)
     with Size => 1;
   for UART0_STAT_TXFF_Field use
     (CLEARED => 0,
      SET => 1);

   --  Clear To Send
   type UART0_STAT_CTS_Field is
     (--  The CTS signal is not asserted (high).
      CLEARED,
      --  The CTS signal is asserted (low).
      SET)
     with Size => 1;
   for UART0_STAT_CTS_Field use
     (CLEARED => 0,
      SET => 1);

   --  IDLE mode has been detected in Idleline-Multiprocessor-Mode. The IDLE
   --  bit is used as an address tag for each block of characters. In idle-line
   --  multiprocessor format, this bit is set when a received character is an
   --  address.
   type UART0_STAT_IDLE_Field is
     (--  IDLE has not been detected before last received character. (In idle-line
--  multiprocessor mode).
      CLEARED,
      --  IDLE has been detected before last received character. (In idle-line
--  multiprocessor mode).
      SET)
     with Size => 1;
   for UART0_STAT_IDLE_Field use
     (CLEARED => 0,
      SET => 1);

   --  UART Status Register
   type UART0_STAT_Register is record
      --  Read-only. UART Busy This bit is set as soon as the transmit FIFO or
      --  TXDATA register becomes non-empty (regardless of whether UART is
      --  enabled) or if a receive data is currently ongoing (after the start
      --  edge have been detected until a complete byte, including all stop
      --  bits, has been received by the shift register). In IDLE_Line mode the
      --  Busy signal also stays set during the idle time generation.
      BUSY           : UART0_STAT_BUSY_Field;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only. UART Receive FIFO Empty The meaning of this bit depends on
      --  the state of the FEN bit in the CTL0 register.
      RXFE           : UART0_STAT_RXFE_Field;
      --  Read-only. UART Receive FIFO Full The meaning of this bit depends on
      --  the state of the FEN bit in the CTL0 register.
      RXFF           : UART0_STAT_RXFF_Field;
      --  unspecified
      Reserved_4_5   : HAL.UInt2;
      --  Read-only. UART Transmit FIFO Empty The meaning of this bit depends
      --  on the state of the FEN bit in the CTL0 register.
      TXFE           : UART0_STAT_TXFE_Field;
      --  Read-only. UART Transmit FIFO Full The meaning of this bit depends on
      --  the state of the FEN bit in the CTL0 register.
      TXFF           : UART0_STAT_TXFF_Field;
      --  Read-only. Clear To Send
      CTS            : UART0_STAT_CTS_Field;
      --  Read-only. IDLE mode has been detected in
      --  Idleline-Multiprocessor-Mode. The IDLE bit is used as an address tag
      --  for each block of characters. In idle-line multiprocessor format,
      --  this bit is set when a received character is an address.
      IDLE           : UART0_STAT_IDLE_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_STAT_Register use record
      BUSY           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RXFE           at 0 range 2 .. 2;
      RXFF           at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      TXFE           at 0 range 6 .. 6;
      TXFF           at 0 range 7 .. 7;
      CTS            at 0 range 8 .. 8;
      IDLE           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  UART Transmit Interrupt FIFO Level Select The trigger points for the
   --  transmit interrupt are as follows: Note: for undefined settings the
   --  default configuration is used.
   type UART0_IFLS_TXIFLSEL_Field is
     (--  TX FIFO <= 3/4 empty
      LVL_3_4,
      --  TX FIFO <= 1/2 empty (default)
      LVL_1_2,
      --  TX FIFO <= 1/4 empty
      LVL_1_4,
      --  TX FIFO is empty
      LVL_EMPTY,
      --  TX FIFO >= 1 entry free Note: esp. required for DMA Trigger
      LVL_1)
     with Size => 3;
   for UART0_IFLS_TXIFLSEL_Field use
     (LVL_3_4 => 1,
      LVL_1_2 => 2,
      LVL_1_4 => 3,
      LVL_EMPTY => 5,
      LVL_1 => 7);

   --  UART Receive Interrupt FIFO Level Select The trigger points for the
   --  receive interrupt are as follows: Note: In ULP domain the trigger levels
   --  are used for: 0: LVL_1_4 4: LVL_FULL For undefined settings the default
   --  configuration is used.
   type UART0_IFLS_RXIFLSEL_Field is
     (--  RX FIFO >= 1/4 full Note: For ULP Domain
      LVL_1_4_RES,
      --  RX FIFO >= 1/4 full
      LVL_1_4,
      --  RX FIFO >= 1/2 full (default)
      LVL_1_2,
      --  RX FIFO >= 3/4 full
      LVL_3_4,
      --  RX FIFO is full Note: For ULP Domain
      LVL_FULL_RES,
      --  RX FIFO is full
      LVL_FULL,
      --  RX FIFO >= 1 entry available Note: esp. required for DMA Trigger
      LVL_1)
     with Size => 3;
   for UART0_IFLS_RXIFLSEL_Field use
     (LVL_1_4_RES => 0,
      LVL_1_4 => 1,
      LVL_1_2 => 2,
      LVL_3_4 => 3,
      LVL_FULL_RES => 4,
      LVL_FULL => 5,
      LVL_1 => 7);

   subtype UART0_IFLS_RXTOSEL_Field is HAL.UInt4;

   --  UART Interrupt FIFO Level Select Register
   type UART0_IFLS_Register is record
      --  UART Transmit Interrupt FIFO Level Select The trigger points for the
      --  transmit interrupt are as follows: Note: for undefined settings the
      --  default configuration is used.
      TXIFLSEL       : UART0_IFLS_TXIFLSEL_Field :=
                        MSPMC1104_SVD.UART.LVL_1_2;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  UART Receive Interrupt FIFO Level Select The trigger points for the
      --  receive interrupt are as follows: Note: In ULP domain the trigger
      --  levels are used for: 0: LVL_1_4 4: LVL_FULL For undefined settings
      --  the default configuration is used.
      RXIFLSEL       : UART0_IFLS_RXIFLSEL_Field :=
                        MSPMC1104_SVD.UART.LVL_1_2;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  UART Receive Interrupt Timeout Select. When receiving no start edge
      --  for an additional character within the set bittimes a RX interrupt is
      --  set even if the FIFO level is not reached. A value of 0 disables this
      --  function.
      RXTOSEL        : UART0_IFLS_RXTOSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IFLS_Register use record
      TXIFLSEL       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXIFLSEL       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXTOSEL        at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype UART0_IBRD_DIVINT_Field is HAL.UInt16;

   --  UART Integer Baud-Rate Divisor Register
   type UART0_IBRD_Register is record
      --  Integer Baud-Rate Divisor
      DIVINT         : UART0_IBRD_DIVINT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IBRD_Register use record
      DIVINT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART0_FBRD_DIVFRAC_Field is HAL.UInt6;

   --  UART Fractional Baud-Rate Divisor Register
   type UART0_FBRD_Register is record
      --  Fractional Baud-Rate Divisor
      DIVFRAC       : UART0_FBRD_DIVFRAC_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_FBRD_Register use record
      DIVFRAC       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Glitch Suppression Pulse Width This field controls the pulse width
   --  select for glitch suppression on the RX line. The value programmed in
   --  this field gives the number of cycles of functional clock up to which
   --  the glitch has to be suppressed on the RX line. In IRDA mode: The
   --  minimum pulse length for receive is given by: t(MIN) = (DGFSEL) /
   --  f(IRTXCLK)
   type UART0_GFCTL_DGFSEL_Field is
     (--  Bypass GF
      DISABLED)
     with Size => 6;
   for UART0_GFCTL_DGFSEL_Field use
     (DISABLED => 0);

   --  Analog Glitch Suppression Enable
   type UART0_GFCTL_AGFEN_Field is
     (--  Analog Glitch Filter disable
      DISABLE,
      --  Analog Glitch Filter enable
      ENABLE)
     with Size => 1;
   for UART0_GFCTL_AGFEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Analog Glitch Suppression Pulse Width This field controls the pulse
   --  width select for the analog glitch suppression on the RX line. See
   --  device datasheet for exact values.
   type UART0_GFCTL_AGFSEL_Field is
     (--  Pulses shorter then 5ns length are filtered.
      AGLIT_5,
      --  Pulses shorter then 10ns length are filtered.
      AGLIT_10,
      --  Pulses shorter then 25ns length are filtered.
      AGLIT_25,
      --  Pulses shorter then 50ns length are filtered.
      AGLIT_50)
     with Size => 2;
   for UART0_GFCTL_AGFSEL_Field use
     (AGLIT_5 => 0,
      AGLIT_10 => 1,
      AGLIT_25 => 2,
      AGLIT_50 => 3);

   --  Analog and digital noise filters chaining enable. 0 DISABLE: When 0,
   --  chaining is disabled and only digital filter output is available to IP
   --  logic for sampling 1 ENABLE: When 1, analog and digital glitch filters
   --  are chained and the output of the combination is made available to IP
   --  logic for sampling
   type UART0_GFCTL_CHAIN_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for UART0_GFCTL_CHAIN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Glitch Filter Control
   type UART0_GFCTL_Register is record
      --  Glitch Suppression Pulse Width This field controls the pulse width
      --  select for glitch suppression on the RX line. The value programmed in
      --  this field gives the number of cycles of functional clock up to which
      --  the glitch has to be suppressed on the RX line. In IRDA mode: The
      --  minimum pulse length for receive is given by: t(MIN) = (DGFSEL) /
      --  f(IRTXCLK)
      DGFSEL         : UART0_GFCTL_DGFSEL_Field :=
                        MSPMC1104_SVD.UART.DISABLED;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Analog Glitch Suppression Enable
      AGFEN          : UART0_GFCTL_AGFEN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Analog Glitch Suppression Pulse Width This field controls the pulse
      --  width select for the analog glitch suppression on the RX line. See
      --  device datasheet for exact values.
      AGFSEL         : UART0_GFCTL_AGFSEL_Field := MSPMC1104_SVD.UART.AGLIT_5;
      --  Analog and digital noise filters chaining enable. 0 DISABLE: When 0,
      --  chaining is disabled and only digital filter output is available to
      --  IP logic for sampling 1 ENABLE: When 1, analog and digital glitch
      --  filters are chained and the output of the combination is made
      --  available to IP logic for sampling
      CHAIN          : UART0_GFCTL_CHAIN_Field := MSPMC1104_SVD.UART.DISABLED;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_GFCTL_Register use record
      DGFSEL         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      AGFEN          at 0 range 8 .. 8;
      AGFSEL         at 0 range 9 .. 10;
      CHAIN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype UART0_TXDATA_DATA_Field is HAL.UInt8;

   --  UART Transmit Data Register
   type UART0_TXDATA_Register is record
      --  Data Transmitted or Received Data that is to be transmitted via the
      --  UART is written to this field. When read, this field contains the
      --  data that was received by the UART.
      DATA          : UART0_TXDATA_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_TXDATA_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_RXDATA_DATA_Field is HAL.UInt8;

   --  UART Framing Error Writing to this bit has no effect. The flag is
   --  cleared by writing 1 to the FRMERR bit in the UART EVENT ICLR register.
   --  This error is associated with the character at the top of the FIFO.
   type UART0_RXDATA_FRMERR_Field is
     (--  No framing error has occurred
      CLR,
      --  The received character does not have a valid stop bit sequence, which is
--  one or two stop bits depending on the UARTLCRH.STP2 setting (a valid stop
--  bit is 1).
      SET)
     with Size => 1;
   for UART0_RXDATA_FRMERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Parity Error Writing to this bit has no effect. The flag is cleared
   --  by writing 1 to the PARERR bit in the UART EVENT ICLR register.
   type UART0_RXDATA_PARERR_Field is
     (--  No parity error has occurred
      CLR,
      --  The parity of the received data character does not match the parity defined
--  by bits 2 and 7 of the UARTLCRH register.
      SET)
     with Size => 1;
   for UART0_RXDATA_PARERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Break Error Writing to this bit has no effect. The flag is cleared
   --  by writing 1 to the BRKERR bit in the UART EVENT ICLR register. This
   --  error is associated with the character at the top of the FIFO. When a
   --  break occurs, only one 0 character is loaded into the FIFO. The next
   --  character is only enabled after the receive data input goes to a 1
   --  (marking state) and the next valid start bit is received.
   type UART0_RXDATA_BRKERR_Field is
     (--  No break condition has occurred
      CLR,
      --  A break condition has been detected, indicating that the receive data input
--  was held low for longer than a full-word transmission time (defined as
--  start, data, parity, and stop bits).
      SET)
     with Size => 1;
   for UART0_RXDATA_BRKERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Receive Overrun Error Writing to this bit has no effect. The flag
   --  is cleared by writing 1 to the OVRERR bit in the UART EVENT ICLR
   --  register. In case of a receive FIFO overflow, the FIFO contents remain
   --  valid because no further data is written when the FIFO is full. Only the
   --  contents of the shift register are overwritten. The CPU must read the
   --  data in order to empty the FIFO.
   type UART0_RXDATA_OVRERR_Field is
     (--  No data has been lost due to a receive overrun.
      CLR,
      --  New data was received but could not be stored, because the previous data
--  was not read (resulting in data loss).
      SET)
     with Size => 1;
   for UART0_RXDATA_OVRERR_Field use
     (CLR => 0,
      SET => 1);

   --  Noise Error. Writing to this bit has no effect. The flag is cleared by
   --  writing 1 to the NERR bit in the UART EVENT ICLR register.
   type UART0_RXDATA_NERR_Field is
     (--  No noise error occured
      CLR,
      --  Noise error occured during majority voting
      SET)
     with Size => 1;
   for UART0_RXDATA_NERR_Field use
     (CLR => 0,
      SET => 1);

   --  UART Receive Data Register
   type UART0_RXDATA_Register is record
      --  Read-only. Received Data. When read, this field contains the data
      --  that was received by the UART.
      DATA           : UART0_RXDATA_DATA_Field;
      --  Read-only. UART Framing Error Writing to this bit has no effect. The
      --  flag is cleared by writing 1 to the FRMERR bit in the UART EVENT ICLR
      --  register. This error is associated with the character at the top of
      --  the FIFO.
      FRMERR         : UART0_RXDATA_FRMERR_Field;
      --  Read-only. UART Parity Error Writing to this bit has no effect. The
      --  flag is cleared by writing 1 to the PARERR bit in the UART EVENT ICLR
      --  register.
      PARERR         : UART0_RXDATA_PARERR_Field;
      --  Read-only. UART Break Error Writing to this bit has no effect. The
      --  flag is cleared by writing 1 to the BRKERR bit in the UART EVENT ICLR
      --  register. This error is associated with the character at the top of
      --  the FIFO. When a break occurs, only one 0 character is loaded into
      --  the FIFO. The next character is only enabled after the receive data
      --  input goes to a 1 (marking state) and the next valid start bit is
      --  received.
      BRKERR         : UART0_RXDATA_BRKERR_Field;
      --  Read-only. UART Receive Overrun Error Writing to this bit has no
      --  effect. The flag is cleared by writing 1 to the OVRERR bit in the
      --  UART EVENT ICLR register. In case of a receive FIFO overflow, the
      --  FIFO contents remain valid because no further data is written when
      --  the FIFO is full. Only the contents of the shift register are
      --  overwritten. The CPU must read the data in order to empty the FIFO.
      OVRERR         : UART0_RXDATA_OVRERR_Field;
      --  Read-only. Noise Error. Writing to this bit has no effect. The flag
      --  is cleared by writing 1 to the NERR bit in the UART EVENT ICLR
      --  register.
      NERR           : UART0_RXDATA_NERR_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_RXDATA_Register use record
      DATA           at 0 range 0 .. 7;
      FRMERR         at 0 range 8 .. 8;
      PARERR         at 0 range 9 .. 9;
      BRKERR         at 0 range 10 .. 10;
      OVRERR         at 0 range 11 .. 11;
      NERR           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART0_LINCNT_LINCNT_Field is HAL.UInt16;

   --  UART LIN Mode Counter Register
   type UART0_LINCNT_Register is record
      --  16 bit up counter clocked by the functional clock of the UART.
      LINCNT         : UART0_LINCNT_LINCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_LINCNT_Register use record
      LINCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  LIN Counter Enable. LIN counter will only count when enabled.
   type UART0_LINCTL_CTRENA_Field is
     (--  Counter disabled
      DISABLE,
      --  Counter enabled
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_CTRENA_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Zero on negative Edge of RXD. When enabled the counter is set to 0 and
   --  starts counting on a negative edge of RXD
   type UART0_LINCTL_ZERONE_Field is
     (--  Zero on negative edge disabled
      DISABLE,
      --  Zero on negative edge enabled
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_ZERONE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Count while low Signal on RXD When counter is enabled and the signal on
   --  RXD is low, the counter increments.
   type UART0_LINCTL_CNTRXLOW_Field is
     (--  Count while low Signal on UARTxRXD disabled
      DISABLE,
      --  Count while low Signal on UARTxRXD enabled
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_CNTRXLOW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Capture Counter on negative RXD Edge. When enabled the counter value is
   --  captured to LINC0 register on each negative RXD edge. A LINC0 interrupt
   --  is triggered when enabled.
   type UART0_LINCTL_LINC0CAP_Field is
     (--  Capture counter on negative UARTxRXD edge disabled
      DISABLE,
      --  Capture counter on negative UARTxRXD edge enabled
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_LINC0CAP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Capture Counter on positive RXD Edge. When enabled the counter value is
   --  captured to LINC1 register on each positive RXD edge. A LINC1 interrupt
   --  is triggered when enabled.
   type UART0_LINCTL_LINC1CAP_Field is
     (--  Capture counter on positive UARTxRXD edge disabled
      DISABLE,
      --  Capture counter on positive UARTxRXD edge enabled
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_LINC1CAP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Counter Compare Match Mode When this bit is set to 1 a counter compare
   --  match with LINC0 register triggers an LINC0 interrupt when enabled.
   type UART0_LINCTL_LINC0_MATCH_Field is
     (--  Counter compare match mode disabled (capture mode enabled)
      DISABLE,
      --  Counter compare match enabled (capture mode disabled)
      ENABLE)
     with Size => 1;
   for UART0_LINCTL_LINC0_MATCH_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  UART LIN Mode Control Register
   type UART0_LINCTL_Register is record
      --  LIN Counter Enable. LIN counter will only count when enabled.
      CTRENA        : UART0_LINCTL_CTRENA_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Zero on negative Edge of RXD. When enabled the counter is set to 0
      --  and starts counting on a negative edge of RXD
      ZERONE        : UART0_LINCTL_ZERONE_Field := MSPMC1104_SVD.UART.DISABLE;
      --  Count while low Signal on RXD When counter is enabled and the signal
      --  on RXD is low, the counter increments.
      CNTRXLOW      : UART0_LINCTL_CNTRXLOW_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Capture Counter on negative RXD Edge. When enabled the counter value
      --  is captured to LINC0 register on each negative RXD edge. A LINC0
      --  interrupt is triggered when enabled.
      LINC0CAP      : UART0_LINCTL_LINC0CAP_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  Capture Counter on positive RXD Edge. When enabled the counter value
      --  is captured to LINC1 register on each positive RXD edge. A LINC1
      --  interrupt is triggered when enabled.
      LINC1CAP      : UART0_LINCTL_LINC1CAP_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  Counter Compare Match Mode When this bit is set to 1 a counter
      --  compare match with LINC0 register triggers an LINC0 interrupt when
      --  enabled.
      LINC0_MATCH   : UART0_LINCTL_LINC0_MATCH_Field :=
                       MSPMC1104_SVD.UART.DISABLE;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_LINCTL_Register use record
      CTRENA        at 0 range 0 .. 0;
      ZERONE        at 0 range 1 .. 1;
      CNTRXLOW      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      LINC0CAP      at 0 range 4 .. 4;
      LINC1CAP      at 0 range 5 .. 5;
      LINC0_MATCH   at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype UART0_LINC_DATA_Field is HAL.UInt16;

   --  UART LIN Mode Capture 0 Register
   type UART0_LINC_Register is record
      --  16 Bit Capture / Compare Register Captures current LINCTR value on
      --  RXD falling edge and can generate a LINC0 interrupt when capture is
      --  enabled (LINC0CAP = 1). If compare mode is enabled (LINC0_MATCH = 1),
      --  a counter match can generate a LINC0 interrupt.
      DATA           : UART0_LINC_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_LINC_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IrDA encoder/decoder enable
   type UART0_IRCTL_IREN_Field is
     (--  IrDA encoder/decoder disabled
      DISABLE,
      --  IrDA encoder/decoder enabled
      ENABLE)
     with Size => 1;
   for UART0_IRCTL_IREN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  IrDA transmit pulse clock select
   type UART0_IRCTL_IRTXCLK_Field is
     (--  IrDA encode data is based on the functional clock.
      BITCLK,
      --  IrDA encode data is based on the Baud Rate clock< when select 8x
--  oversampling, the IRTXPL cycle should less 8; when select 16x oversampling,
--  the IRTXPL cycle should less 16.
      BRCLK)
     with Size => 1;
   for UART0_IRCTL_IRTXCLK_Field use
     (BITCLK => 0,
      BRCLK => 1);

   subtype UART0_IRCTL_IRTXPL_Field is HAL.UInt6;

   --  IrDA receive input UCAxRXD polarity
   type UART0_IRCTL_IRRXPL_Field is
     (--  IrDA transceiver delivers a high pulse when a light pulse is seen
      HIGH,
      --  IrDA transceiver delivers a low pulse when a light pulse is seen
      LOW)
     with Size => 1;
   for UART0_IRCTL_IRRXPL_Field use
     (HIGH => 0,
      LOW => 1);

   --  eUSCI_Ax IrDA Control Word Register
   type UART0_IRCTL_Register is record
      --  IrDA encoder/decoder enable
      IREN           : UART0_IRCTL_IREN_Field := MSPMC1104_SVD.UART.DISABLE;
      --  IrDA transmit pulse clock select
      IRTXCLK        : UART0_IRCTL_IRTXCLK_Field := MSPMC1104_SVD.UART.BITCLK;
      --  Transmit pulse length. Pulse length t(PULSE) = (IRTXPLx + 1) / [2 *
      --  f(IRTXCLK)] (IRTXCLK = functional clock of the UART)
      IRTXPL         : UART0_IRCTL_IRTXPL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  IrDA receive input UCAxRXD polarity
      IRRXPL         : UART0_IRCTL_IRRXPL_Field := MSPMC1104_SVD.UART.HIGH;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_IRCTL_Register use record
      IREN           at 0 range 0 .. 0;
      IRTXCLK        at 0 range 1 .. 1;
      IRTXPL         at 0 range 2 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      IRRXPL         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype UART0_AMASK_MSK_Field is HAL.UInt8;

   --  Self Address Mask Register
   type UART0_AMASK_Register is record
      --  Self Address Mask for 9-Bit Mode This field contains the address mask
      --  that creates a set of addresses that should be matched. A 0 bit in
      --  the MSK bitfield configures, that the corresponding bit in the ADDR
      --  bitfield of the UARTxADDR register is don't care. A 1 bit in the MSK
      --  bitfield configures, that the corresponding bit in the ADDR bitfield
      --  of the UARTxADDR register must match.
      MSK           : UART0_AMASK_MSK_Field := 16#FF#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_AMASK_Register use record
      MSK           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART0_ADDR_ADDR_Field is HAL.UInt8;

   --  Self Address Register
   type UART0_ADDR_Register is record
      --  Self Address for 9-Bit Mode This field contains the address that
      --  should be matched when UARTxAMASK is FFh.
      ADDR          : UART0_ADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART0_ADDR_Register use record
      ADDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type UART0_Peripheral is record
      UART0_GPRCM[%s]      : aliased UART0_GPRCM[%s]_Cluster;
      --  Clock Divider
      UART0_CLKDIV         : aliased UART0_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      UART0_CLKSEL         : aliased UART0_CLKSEL_Register;
      --  Peripheral Debug Control
      UART0_PDBGCTL        : aliased UART0_PDBGCTL_Register;
      UART0_INT_EVENT0[%s] : aliased UART0_INT_EVENT0[%s]_Cluster;
      --  Event Mode
      UART0_EVT_MODE       : aliased UART0_EVT_MODE_Register;
      --  Interrupt control register
      UART0_INTCTL         : aliased UART0_INTCTL_Register;
      --  UART Control Register 0
      UART0_CTL0           : aliased UART0_CTL0_Register;
      --  UART Line Control Register
      UART0_LCRH           : aliased UART0_LCRH_Register;
      --  UART Status Register
      UART0_STAT           : aliased UART0_STAT_Register;
      --  UART Interrupt FIFO Level Select Register
      UART0_IFLS           : aliased UART0_IFLS_Register;
      --  UART Integer Baud-Rate Divisor Register
      UART0_IBRD           : aliased UART0_IBRD_Register;
      --  UART Fractional Baud-Rate Divisor Register
      UART0_FBRD           : aliased UART0_FBRD_Register;
      --  Glitch Filter Control
      UART0_GFCTL          : aliased UART0_GFCTL_Register;
      --  UART Transmit Data Register
      UART0_TXDATA         : aliased UART0_TXDATA_Register;
      --  UART Receive Data Register
      UART0_RXDATA         : aliased UART0_RXDATA_Register;
      --  UART LIN Mode Counter Register
      UART0_LINCNT         : aliased UART0_LINCNT_Register;
      --  UART LIN Mode Control Register
      UART0_LINCTL         : aliased UART0_LINCTL_Register;
      --  UART LIN Mode Capture 0 Register
      UART0_LINC0          : aliased UART0_LINC_Register;
      --  UART LIN Mode Capture 1 Register
      UART0_LINC1          : aliased UART0_LINC_Register;
      --  eUSCI_Ax IrDA Control Word Register
      UART0_IRCTL          : aliased UART0_IRCTL_Register;
      --  Self Address Mask Register
      UART0_AMASK          : aliased UART0_AMASK_Register;
      --  Self Address Register
      UART0_ADDR           : aliased UART0_ADDR_Register;
      --  Clock Divider
      UART0_CLKDIV2        : aliased UART0_CLKDIV_Register;
   end record
     with Volatile;

   for UART0_Peripheral use record
      UART0_GPRCM[%s]      at 16#800# range 0 .. 191;
      UART0_CLKDIV         at 16#1000# range 0 .. 31;
      UART0_CLKSEL         at 16#1008# range 0 .. 31;
      UART0_PDBGCTL        at 16#1018# range 0 .. 31;
      UART0_INT_EVENT0[%s] at 16#1020# range 0 .. 351;
      UART0_EVT_MODE       at 16#10E0# range 0 .. 31;
      UART0_INTCTL         at 16#10E4# range 0 .. 31;
      UART0_CTL0           at 16#1100# range 0 .. 31;
      UART0_LCRH           at 16#1104# range 0 .. 31;
      UART0_STAT           at 16#1108# range 0 .. 31;
      UART0_IFLS           at 16#110C# range 0 .. 31;
      UART0_IBRD           at 16#1110# range 0 .. 31;
      UART0_FBRD           at 16#1114# range 0 .. 31;
      UART0_GFCTL          at 16#1118# range 0 .. 31;
      UART0_TXDATA         at 16#1120# range 0 .. 31;
      UART0_RXDATA         at 16#1124# range 0 .. 31;
      UART0_LINCNT         at 16#1130# range 0 .. 31;
      UART0_LINCTL         at 16#1134# range 0 .. 31;
      UART0_LINC0          at 16#1138# range 0 .. 31;
      UART0_LINC1          at 16#113C# range 0 .. 31;
      UART0_IRCTL          at 16#1140# range 0 .. 31;
      UART0_AMASK          at 16#1148# range 0 .. 31;
      UART0_ADDR           at 16#114C# range 0 .. 31;
      UART0_CLKDIV2        at 16#1160# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   UART0_Periph : aliased UART0_Peripheral
     with Import, Address => UART0_Base;

end MSPMC1104_SVD.UART;
