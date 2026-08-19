pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------------------------
   -- I2C0_GPRCM[%s] cluster's Registers --
   ----------------------------------------

   --  Enable the power
   type I2C0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for I2C0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type I2C0_PWREN_I2C0_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : I2C0_PWREN_ENABLE_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_PWREN_I2C0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type I2C0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for I2C0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type I2C0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for I2C0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type I2C0_RSTCTL_I2C0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : I2C0_RSTCTL_RESETASSERT_Field := MSPMC1104_SVD.I2C.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : I2C0_RSTCTL_RESETSTKYCLR_Field := MSPMC1104_SVD.I2C.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_RSTCTL_I2C0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Async Clock Request is blocked from starting SYSOSC or forcing bus clock
   --  to 32MHz
   type I2C0_CLKCFG_BLOCKASYNC_Field is
     (--  Not block async clock request
      DISABLE,
      --  Block async clock request
      ENABLE)
     with Size => 1;
   for I2C0_CLKCFG_BLOCKASYNC_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Peripheral Clock Configuration Register
   type I2C0_CLKCFG_I2C0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  Async Clock Request is blocked from starting SYSOSC or forcing bus
      --  clock to 32MHz
      BLOCKASYNC    : I2C0_CLKCFG_BLOCKASYNC_Field :=
                       MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CLKCFG_I2C0_GPRCM[%s]_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      BLOCKASYNC    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type I2C0_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for I2C0_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type I2C0_STAT_I2C0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : I2C0_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_STAT_I2C0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type I2C0_GPRCM[%s]_Cluster is record
      --  Power enable
      I2C0_PWREN  : aliased I2C0_PWREN_I2C0_GPRCM[%s]_Register;
      --  Reset Control
      I2C0_RSTCTL : aliased I2C0_RSTCTL_I2C0_GPRCM[%s]_Register;
      --  Peripheral Clock Configuration Register
      I2C0_CLKCFG : aliased I2C0_CLKCFG_I2C0_GPRCM[%s]_Register;
      --  Status Register
      I2C0_STAT   : aliased I2C0_STAT_I2C0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for I2C0_GPRCM[%s]_Cluster use record
      I2C0_PWREN  at 16#0# range 0 .. 31;
      I2C0_RSTCTL at 16#4# range 0 .. 31;
      I2C0_CLKCFG at 16#8# range 0 .. 31;
      I2C0_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type I2C0_CLKDIV_RATIO_Field is
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
   for I2C0_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type I2C0_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : I2C0_CLKDIV_RATIO_Field := MSPMC1104_SVD.I2C.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects MFCLK as clock source if enabled
   type I2C0_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for I2C0_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects BUSCLK as clock source if enabled
   type I2C0_CLKSEL_BUSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for I2C0_CLKSEL_BUSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type I2C0_CLKSEL_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : I2C0_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.I2C.DISABLE;
      --  Selects BUSCLK as clock source if enabled
      BUSCLK_SEL    : I2C0_CLKSEL_BUSCLK_SEL_Field :=
                       MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_CLKSEL_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type I2C0_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for I2C0_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type I2C0_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for I2C0_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type I2C0_PDBGCTL_Register is record
      --  Free run control
      FREE          : I2C0_PDBGCTL_FREE_Field := MSPMC1104_SVD.I2C.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : I2C0_PDBGCTL_SOFT_Field := MSPMC1104_SVD.I2C.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------------------------------
   -- I2C0_INT_EVENT0[%s] cluster's Registers --
   ---------------------------------------------

   --  I2C Module Interrupt Vector Value. This register provides the highes
   --  priority interrupt index. A read clears the corresponding interrupt flag
   --  in RIS and MISC. 15h-1Fh = Reserved
   type I2C0_INT_EVENT0_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Master data received
      MRXDONEFG,
      --  Master data transmitted
      MTXDONEFG,
      --  Master receive FIFO Trigger Level
      MRXFIFOTRG,
      --  Master transmit FIFO Trigger level
      MTXFIFOTRG,
      --  RX FIFO FULL Event/interrupt pending
      MRXFIFOFULL,
      --  Transmit FIFO/Buffer Empty Event/interrupt pending
      MTX_EMPTY,
      --  Address/Data NACK
      MNACKFG,
      --  Start Event
      MSTARTFG,
      --  Stop Event
      MSTOPFG,
      --  Arbitration Lost
      MARBLOSTFG,
      --  DMA DONE on Channel TX
      MDMA_DONE_TX,
      --  DMA DONE on Channel RX
      MDMA_DONE_RX,
      --  Master PEC Receive Error Event
      MPEC_RX_ERR,
      --  Timeout A Event
      TIMEOUTA,
      --  Timeout B Event
      TIMEOUTB,
      --  Slave Data Event
      SRXDONEFG,
      --  Slave Data Event
      STXDONEFG,
      --  Slave receive FIFO Trigger Level
      SRXFIFOTRG,
      --  Slave transmit FIFO Trigger level
      STXFIFOTRG,
      --  RX FIFO FULL Event/interrupt pending
      SRXFIFOFULL,
      --  Transmit FIFO/Buffer Empty Event/interrupt pending
      STXEMPTY,
      --  Start Event
      SSTARTFG,
      --  Stop Event
      SSTOPFG,
      --  General Call Event
      SGENCALL,
      --  DMA DONE on Channel TX
      SDMA_DONE_TX,
      --  DMA DONE on Channel RX
      SDMA_DONE_RX,
      --  Slave PEC receive error event
      SPEC_RX_ERR,
      --  Slave TX FIFO underflow
      STX_UNFL,
      --  Slave RX FIFO overflow event
      SRX_OVFL,
      --  Slave arbitration lost event
      SARBLOST,
      --  Interrupt overflow event
      INTR_OVFL)
     with Size => 8;
   for I2C0_INT_EVENT0_IIDX_STAT_Field use
     (NO_INTR => 0,
      MRXDONEFG => 1,
      MTXDONEFG => 2,
      MRXFIFOTRG => 3,
      MTXFIFOTRG => 4,
      MRXFIFOFULL => 5,
      MTX_EMPTY => 6,
      MNACKFG => 8,
      MSTARTFG => 9,
      MSTOPFG => 10,
      MARBLOSTFG => 11,
      MDMA_DONE_TX => 12,
      MDMA_DONE_RX => 13,
      MPEC_RX_ERR => 14,
      TIMEOUTA => 15,
      TIMEOUTB => 16,
      SRXDONEFG => 17,
      STXDONEFG => 18,
      SRXFIFOTRG => 19,
      STXFIFOTRG => 20,
      SRXFIFOFULL => 21,
      STXEMPTY => 22,
      SSTARTFG => 23,
      SSTOPFG => 24,
      SGENCALL => 25,
      SDMA_DONE_TX => 26,
      SDMA_DONE_RX => 27,
      SPEC_RX_ERR => 28,
      STX_UNFL => 29,
      SRX_OVFL => 30,
      SARBLOST => 31,
      INTR_OVFL => 32);

   --  Interrupt index
   type I2C0_INT_EVENT0_IIDX_I2C0_INT_EVENT0[%s]_Register is record
      --  Read-only. I2C Module Interrupt Vector Value. This register provides
      --  the highes priority interrupt index. A read clears the corresponding
      --  interrupt flag in RIS and MISC. 15h-1Fh = Reserved
      STAT          : I2C0_INT_EVENT0_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_IIDX_I2C0_INT_EVENT0[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Master Receive Transaction completed Interrupt
   type I2C0_INT_EVENT0_IMASK_MRXDONE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_IMASK_MTXDONE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MTXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT0_IMASK_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT0_IMASK_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_IMASK_MRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_IMASK_MTXEMPTY_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MTXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Address/Data NACK Interrupt
   type I2C0_INT_EVENT0_IMASK_MNACK_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MNACK_Field use
     (CLR => 0,
      SET => 1);

   --  START Detection Interrupt
   type I2C0_INT_EVENT0_IMASK_MSTART_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MSTART_Field use
     (CLR => 0,
      SET => 1);

   --  STOP Detection Interrupt
   type I2C0_INT_EVENT0_IMASK_MSTOP_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  Arbitration Lost Interrupt
   type I2C0_INT_EVENT0_IMASK_MARBLOST_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_IMASK_MDMA_DONE_TX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_IMASK_MDMA_DONE_RX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Master RX Pec Error Interrupt
   type I2C0_INT_EVENT0_IMASK_MPEC_RX_ERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_MPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout A Interrupt
   type I2C0_INT_EVENT0_IMASK_TIMEOUTA_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_TIMEOUTA_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout B Interrupt
   type I2C0_INT_EVENT0_IMASK_TIMEOUTB_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_TIMEOUTB_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_IMASK_SRXDONE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_IMASK_STXDONE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_STXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT0_IMASK_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT0_IMASK_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an Slave RX FIFO is full.
   type I2C0_INT_EVENT0_IMASK_SRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Empty interrupt mask. This interrupt is set if all
   --  data in the Transmit FIFO have been shifted out and the transmit goes
   --  into idle mode.
   type I2C0_INT_EVENT0_IMASK_STXEMPTY_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_STXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Start Condition Interrupt
   type I2C0_INT_EVENT0_IMASK_SSTART_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SSTART_Field use
     (CLR => 0,
      SET => 1);

   --  Stop Condition Interrupt
   type I2C0_INT_EVENT0_IMASK_SSTOP_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  General Call Interrupt
   type I2C0_INT_EVENT0_IMASK_SGENCALL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SGENCALL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_IMASK_SDMA_DONE_TX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Slave DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_IMASK_SDMA_DONE_RX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX Pec Error Interrupt
   type I2C0_INT_EVENT0_IMASK_SPEC_RX_ERR_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Slave TX FIFO underflow
   type I2C0_INT_EVENT0_IMASK_STX_UNFL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_STX_UNFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX FIFO overflow
   type I2C0_INT_EVENT0_IMASK_SRX_OVFL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SRX_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Arbitration Lost
   type I2C0_INT_EVENT0_IMASK_SARBLOST_Field is
     (--  Clear Set Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_SARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt Overflow Interrupt Mask
   type I2C0_INT_EVENT0_IMASK_INTR_OVFL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_IMASK_INTR_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type I2C0_INT_EVENT0_IMASK_I2C0_INT_EVENT0[%s]_Register is record
      --  Master Receive Transaction completed Interrupt
      MRXDONE      : I2C0_INT_EVENT0_IMASK_MRXDONE_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Master Transmit Transaction completed Interrupt
      MTXDONE      : I2C0_INT_EVENT0_IMASK_MTXDONE_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
      --  bytes
      MRXFIFOTRG   : I2C0_INT_EVENT0_IMASK_MRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
      --  defined bytes
      MTXFIFOTRG   : I2C0_INT_EVENT0_IMASK_MTXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
      MRXFIFOFULL  : I2C0_INT_EVENT0_IMASK_MRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data
      --  in the Transmit FIFO have been shifted out and the transmit goes into
      --  idle mode.
      MTXEMPTY     : I2C0_INT_EVENT0_IMASK_MTXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Address/Data NACK Interrupt
      MNACK        : I2C0_INT_EVENT0_IMASK_MNACK_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  START Detection Interrupt
      MSTART       : I2C0_INT_EVENT0_IMASK_MSTART_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  STOP Detection Interrupt
      MSTOP        : I2C0_INT_EVENT0_IMASK_MSTOP_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Arbitration Lost Interrupt
      MARBLOST     : I2C0_INT_EVENT0_IMASK_MARBLOST_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  DMA Done on Event Channel TX
      MDMA_DONE_TX : I2C0_INT_EVENT0_IMASK_MDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  DMA Done on Event Channel RX
      MDMA_DONE_RX : I2C0_INT_EVENT0_IMASK_MDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Master RX Pec Error Interrupt
      MPEC_RX_ERR  : I2C0_INT_EVENT0_IMASK_MPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Timeout A Interrupt
      TIMEOUTA     : I2C0_INT_EVENT0_IMASK_TIMEOUTA_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Timeout B Interrupt
      TIMEOUTB     : I2C0_INT_EVENT0_IMASK_TIMEOUTB_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Receive Data Interrupt Signals that a byte has been received
      SRXDONE      : I2C0_INT_EVENT0_IMASK_SRXDONE_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Transmit Transaction completed Interrupt
      STXDONE      : I2C0_INT_EVENT0_IMASK_STXDONE_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Receive FIFO Trigger
      SRXFIFOTRG   : I2C0_INT_EVENT0_IMASK_SRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Transmit FIFO Trigger
      STXFIFOTRG   : I2C0_INT_EVENT0_IMASK_STXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  RXFIFO full event. This interrupt is set if an Slave RX FIFO is full.
      SRXFIFOFULL  : I2C0_INT_EVENT0_IMASK_SRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Transmit FIFO Empty interrupt mask. This interrupt is set if
      --  all data in the Transmit FIFO have been shifted out and the transmit
      --  goes into idle mode.
      STXEMPTY     : I2C0_INT_EVENT0_IMASK_STXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Start Condition Interrupt
      SSTART       : I2C0_INT_EVENT0_IMASK_SSTART_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Stop Condition Interrupt
      SSTOP        : I2C0_INT_EVENT0_IMASK_SSTOP_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  General Call Interrupt
      SGENCALL     : I2C0_INT_EVENT0_IMASK_SGENCALL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave DMA Done on Event Channel TX
      SDMA_DONE_TX : I2C0_INT_EVENT0_IMASK_SDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave DMA Done on Event Channel RX
      SDMA_DONE_RX : I2C0_INT_EVENT0_IMASK_SDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave RX Pec Error Interrupt
      SPEC_RX_ERR  : I2C0_INT_EVENT0_IMASK_SPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave TX FIFO underflow
      STX_UNFL     : I2C0_INT_EVENT0_IMASK_STX_UNFL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave RX FIFO overflow
      SRX_OVFL     : I2C0_INT_EVENT0_IMASK_SRX_OVFL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Slave Arbitration Lost
      SARBLOST     : I2C0_INT_EVENT0_IMASK_SARBLOST_Field :=
                      MSPMC1104_SVD.I2C.CLR;
      --  Interrupt Overflow Interrupt Mask
      INTR_OVFL    : I2C0_INT_EVENT0_IMASK_INTR_OVFL_Field :=
                      MSPMC1104_SVD.I2C.CLR;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_IMASK_I2C0_INT_EVENT0[%s]_Register use record
      MRXDONE      at 0 range 0 .. 0;
      MTXDONE      at 0 range 1 .. 1;
      MRXFIFOTRG   at 0 range 2 .. 2;
      MTXFIFOTRG   at 0 range 3 .. 3;
      MRXFIFOFULL  at 0 range 4 .. 4;
      MTXEMPTY     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      MNACK        at 0 range 7 .. 7;
      MSTART       at 0 range 8 .. 8;
      MSTOP        at 0 range 9 .. 9;
      MARBLOST     at 0 range 10 .. 10;
      MDMA_DONE_TX at 0 range 11 .. 11;
      MDMA_DONE_RX at 0 range 12 .. 12;
      MPEC_RX_ERR  at 0 range 13 .. 13;
      TIMEOUTA     at 0 range 14 .. 14;
      TIMEOUTB     at 0 range 15 .. 15;
      SRXDONE      at 0 range 16 .. 16;
      STXDONE      at 0 range 17 .. 17;
      SRXFIFOTRG   at 0 range 18 .. 18;
      STXFIFOTRG   at 0 range 19 .. 19;
      SRXFIFOFULL  at 0 range 20 .. 20;
      STXEMPTY     at 0 range 21 .. 21;
      SSTART       at 0 range 22 .. 22;
      SSTOP        at 0 range 23 .. 23;
      SGENCALL     at 0 range 24 .. 24;
      SDMA_DONE_TX at 0 range 25 .. 25;
      SDMA_DONE_RX at 0 range 26 .. 26;
      SPEC_RX_ERR  at 0 range 27 .. 27;
      STX_UNFL     at 0 range 28 .. 28;
      SRX_OVFL     at 0 range 29 .. 29;
      SARBLOST     at 0 range 30 .. 30;
      INTR_OVFL    at 0 range 31 .. 31;
   end record;

   --  Master Receive Transaction completed Interrupt
   type I2C0_INT_EVENT0_RIS_MRXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_RIS_MTXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MTXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT0_RIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT0_RIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_RIS_MRXFIFOFULL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_RIS_MTXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MTXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Address/Data NACK Interrupt
   type I2C0_INT_EVENT0_RIS_MNACK_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MNACK_Field use
     (CLR => 0,
      SET => 1);

   --  START Detection Interrupt
   type I2C0_INT_EVENT0_RIS_MSTART_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MSTART_Field use
     (CLR => 0,
      SET => 1);

   --  STOP Detection Interrupt
   type I2C0_INT_EVENT0_RIS_MSTOP_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  Arbitration Lost Interrupt
   type I2C0_INT_EVENT0_RIS_MARBLOST_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_RIS_MDMA_DONE_TX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_RIS_MDMA_DONE_RX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Master RX Pec Error Interrupt
   type I2C0_INT_EVENT0_RIS_MPEC_RX_ERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt Occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_MPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout A Interrupt
   type I2C0_INT_EVENT0_RIS_TIMEOUTA_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_TIMEOUTA_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout B Interrupt
   type I2C0_INT_EVENT0_RIS_TIMEOUTB_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_TIMEOUTB_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_RIS_SRXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_RIS_STXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_STXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT0_RIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT0_RIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_RIS_SRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_RIS_STXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_STXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Start Condition Interrupt
   type I2C0_INT_EVENT0_RIS_SSTART_Field is
     (--  Clear interrupt
      CLR,
      --  Set Interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SSTART_Field use
     (CLR => 0,
      SET => 1);

   --  Stop Condition Interrupt
   type I2C0_INT_EVENT0_RIS_SSTOP_Field is
     (--  Clear Interrupt
      CLR,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  General Call Interrupt
   type I2C0_INT_EVENT0_RIS_SGENCALL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SGENCALL_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_RIS_SDMA_DONE_TX_Field is
     (--  Clear interrupt
      CLR,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_RIS_SDMA_DONE_RX_Field is
     (--  Clear interrupt
      CLR,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX Pec Error Interrupt
   type I2C0_INT_EVENT0_RIS_SPEC_RX_ERR_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt ocuured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Slave TX FIFO underflow
   type I2C0_INT_EVENT0_RIS_STX_UNFL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_STX_UNFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX FIFO overflow
   type I2C0_INT_EVENT0_RIS_SRX_OVFL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt Occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SRX_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Arbitration Lost
   type I2C0_INT_EVENT0_RIS_SARBLOST_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_SARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt overflow interrupt It is set when SSTART or SSTOP interrupts
   --  overflow i.e. occur twice without being serviced
   type I2C0_INT_EVENT0_RIS_INTR_OVFL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_RIS_INTR_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type I2C0_INT_EVENT0_RIS_I2C0_INT_EVENT0[%s]_Register is record
      --  Read-only. Master Receive Transaction completed Interrupt
      MRXDONE      : I2C0_INT_EVENT0_RIS_MRXDONE_Field;
      --  Read-only. Master Transmit Transaction completed Interrupt
      MTXDONE      : I2C0_INT_EVENT0_RIS_MTXDONE_Field;
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG   : I2C0_INT_EVENT0_RIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG   : I2C0_INT_EVENT0_RIS_MTXFIFOTRG_Field;
      --  Read-only. RXFIFO full event. This interrupt is set if an RX FIFO is
      --  full.
      MRXFIFOFULL  : I2C0_INT_EVENT0_RIS_MRXFIFOFULL_Field;
      --  Read-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      MTXEMPTY     : I2C0_INT_EVENT0_RIS_MTXEMPTY_Field;
      --  unspecified
      Reserved_6_6 : HAL.Bit;
      --  Read-only. Address/Data NACK Interrupt
      MNACK        : I2C0_INT_EVENT0_RIS_MNACK_Field;
      --  Read-only. START Detection Interrupt
      MSTART       : I2C0_INT_EVENT0_RIS_MSTART_Field;
      --  Read-only. STOP Detection Interrupt
      MSTOP        : I2C0_INT_EVENT0_RIS_MSTOP_Field;
      --  Read-only. Arbitration Lost Interrupt
      MARBLOST     : I2C0_INT_EVENT0_RIS_MARBLOST_Field;
      --  Read-only. DMA Done on Event Channel TX
      MDMA_DONE_TX : I2C0_INT_EVENT0_RIS_MDMA_DONE_TX_Field;
      --  Read-only. DMA Done on Event Channel RX
      MDMA_DONE_RX : I2C0_INT_EVENT0_RIS_MDMA_DONE_RX_Field;
      --  Read-only. Master RX Pec Error Interrupt
      MPEC_RX_ERR  : I2C0_INT_EVENT0_RIS_MPEC_RX_ERR_Field;
      --  Read-only. Timeout A Interrupt
      TIMEOUTA     : I2C0_INT_EVENT0_RIS_TIMEOUTA_Field;
      --  Read-only. Timeout B Interrupt
      TIMEOUTB     : I2C0_INT_EVENT0_RIS_TIMEOUTB_Field;
      --  Read-only. Slave Receive Data Interrupt Signals that a byte has been
      --  received
      SRXDONE      : I2C0_INT_EVENT0_RIS_SRXDONE_Field;
      --  Read-only. Slave Transmit Transaction completed Interrupt
      STXDONE      : I2C0_INT_EVENT0_RIS_STXDONE_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG   : I2C0_INT_EVENT0_RIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG   : I2C0_INT_EVENT0_RIS_STXFIFOTRG_Field;
      --  Read-only. RXFIFO full event. This interrupt is set if an RX FIFO is
      --  full.
      SRXFIFOFULL  : I2C0_INT_EVENT0_RIS_SRXFIFOFULL_Field;
      --  Read-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      STXEMPTY     : I2C0_INT_EVENT0_RIS_STXEMPTY_Field;
      --  Read-only. Start Condition Interrupt
      SSTART       : I2C0_INT_EVENT0_RIS_SSTART_Field;
      --  Read-only. Stop Condition Interrupt
      SSTOP        : I2C0_INT_EVENT0_RIS_SSTOP_Field;
      --  Read-only. General Call Interrupt
      SGENCALL     : I2C0_INT_EVENT0_RIS_SGENCALL_Field;
      --  Read-only. DMA Done on Event Channel TX
      SDMA_DONE_TX : I2C0_INT_EVENT0_RIS_SDMA_DONE_TX_Field;
      --  Read-only. DMA Done on Event Channel RX
      SDMA_DONE_RX : I2C0_INT_EVENT0_RIS_SDMA_DONE_RX_Field;
      --  Read-only. Slave RX Pec Error Interrupt
      SPEC_RX_ERR  : I2C0_INT_EVENT0_RIS_SPEC_RX_ERR_Field;
      --  Read-only. Slave TX FIFO underflow
      STX_UNFL     : I2C0_INT_EVENT0_RIS_STX_UNFL_Field;
      --  Read-only. Slave RX FIFO overflow
      SRX_OVFL     : I2C0_INT_EVENT0_RIS_SRX_OVFL_Field;
      --  Read-only. Slave Arbitration Lost
      SARBLOST     : I2C0_INT_EVENT0_RIS_SARBLOST_Field;
      --  Read-only. Interrupt overflow interrupt It is set when SSTART or
      --  SSTOP interrupts overflow i.e. occur twice without being serviced
      INTR_OVFL    : I2C0_INT_EVENT0_RIS_INTR_OVFL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_RIS_I2C0_INT_EVENT0[%s]_Register use record
      MRXDONE      at 0 range 0 .. 0;
      MTXDONE      at 0 range 1 .. 1;
      MRXFIFOTRG   at 0 range 2 .. 2;
      MTXFIFOTRG   at 0 range 3 .. 3;
      MRXFIFOFULL  at 0 range 4 .. 4;
      MTXEMPTY     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      MNACK        at 0 range 7 .. 7;
      MSTART       at 0 range 8 .. 8;
      MSTOP        at 0 range 9 .. 9;
      MARBLOST     at 0 range 10 .. 10;
      MDMA_DONE_TX at 0 range 11 .. 11;
      MDMA_DONE_RX at 0 range 12 .. 12;
      MPEC_RX_ERR  at 0 range 13 .. 13;
      TIMEOUTA     at 0 range 14 .. 14;
      TIMEOUTB     at 0 range 15 .. 15;
      SRXDONE      at 0 range 16 .. 16;
      STXDONE      at 0 range 17 .. 17;
      SRXFIFOTRG   at 0 range 18 .. 18;
      STXFIFOTRG   at 0 range 19 .. 19;
      SRXFIFOFULL  at 0 range 20 .. 20;
      STXEMPTY     at 0 range 21 .. 21;
      SSTART       at 0 range 22 .. 22;
      SSTOP        at 0 range 23 .. 23;
      SGENCALL     at 0 range 24 .. 24;
      SDMA_DONE_TX at 0 range 25 .. 25;
      SDMA_DONE_RX at 0 range 26 .. 26;
      SPEC_RX_ERR  at 0 range 27 .. 27;
      STX_UNFL     at 0 range 28 .. 28;
      SRX_OVFL     at 0 range 29 .. 29;
      SARBLOST     at 0 range 30 .. 30;
      INTR_OVFL    at 0 range 31 .. 31;
   end record;

   --  Master Receive Data Interrupt
   type I2C0_INT_EVENT0_MIS_MRXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_MIS_MTXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MTXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT0_MIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT0_MIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if the RX FIFO is full.
   type I2C0_INT_EVENT0_MIS_MRXFIFOFULL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_MIS_MTXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MTXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Address/Data NACK Interrupt
   type I2C0_INT_EVENT0_MIS_MNACK_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MNACK_Field use
     (CLR => 0,
      SET => 1);

   --  START Detection Interrupt
   type I2C0_INT_EVENT0_MIS_MSTART_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MSTART_Field use
     (CLR => 0,
      SET => 1);

   --  STOP Detection Interrupt
   type I2C0_INT_EVENT0_MIS_MSTOP_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  Arbitration Lost Interrupt
   type I2C0_INT_EVENT0_MIS_MARBLOST_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_MIS_MDMA_DONE_TX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_MIS_MDMA_DONE_RX_Field is
     (--  Interrupt disabled
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Master RX Pec Error Interrupt
   type I2C0_INT_EVENT0_MIS_MPEC_RX_ERR_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_MPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout A Interrupt
   type I2C0_INT_EVENT0_MIS_TIMEOUTA_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_TIMEOUTA_Field use
     (CLR => 0,
      SET => 1);

   --  Timeout B Interrupt
   type I2C0_INT_EVENT0_MIS_TIMEOUTB_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_TIMEOUTB_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_MIS_SRXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SRXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_MIS_STXDONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_STXDONE_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT0_MIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT0_MIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_MIS_SRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SRXFIFOFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_MIS_STXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_STXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Slave START Detection Interrupt
   type I2C0_INT_EVENT0_MIS_SSTART_Field is
     (--  Clear MIS
      CLR,
      --  Set MIS
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SSTART_Field use
     (CLR => 0,
      SET => 1);

   --  Slave STOP Detection Interrupt
   type I2C0_INT_EVENT0_MIS_SSTOP_Field is
     (--  Clear MIS
      CLR,
      --  Set MIS
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SSTOP_Field use
     (CLR => 0,
      SET => 1);

   --  General Call Interrupt
   type I2C0_INT_EVENT0_MIS_SGENCALL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SGENCALL_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_MIS_SDMA_DONE_TX_Field is
     (--  Clear MIS
      CLR,
      --  Set MIS
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SDMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_MIS_SDMA_DONE_RX_Field is
     (--  Clear MIS
      CLR,
      --  Set MIS
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SDMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX Pec Error Interrupt
   type I2C0_INT_EVENT0_MIS_SPEC_RX_ERR_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SPEC_RX_ERR_Field use
     (CLR => 0,
      SET => 1);

   --  Slave TX FIFO underflow
   type I2C0_INT_EVENT0_MIS_STX_UNFL_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_STX_UNFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave RX FIFO overflow
   type I2C0_INT_EVENT0_MIS_SRX_OVFL_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SRX_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Arbitration Lost
   type I2C0_INT_EVENT0_MIS_SARBLOST_Field is
     (--  Clear interrupt mask
      CLR,
      --  Set interrupt mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_SARBLOST_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt overflow
   type I2C0_INT_EVENT0_MIS_INTR_OVFL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occured
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_MIS_INTR_OVFL_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type I2C0_INT_EVENT0_MIS_I2C0_INT_EVENT0[%s]_Register is record
      --  Read-only. Master Receive Data Interrupt
      MRXDONE      : I2C0_INT_EVENT0_MIS_MRXDONE_Field;
      --  Read-only. Master Transmit Transaction completed Interrupt
      MTXDONE      : I2C0_INT_EVENT0_MIS_MTXDONE_Field;
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG   : I2C0_INT_EVENT0_MIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG   : I2C0_INT_EVENT0_MIS_MTXFIFOTRG_Field;
      --  Read-only. RXFIFO full event. This interrupt is set if the RX FIFO is
      --  full.
      MRXFIFOFULL  : I2C0_INT_EVENT0_MIS_MRXFIFOFULL_Field;
      --  Read-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      MTXEMPTY     : I2C0_INT_EVENT0_MIS_MTXEMPTY_Field;
      --  unspecified
      Reserved_6_6 : HAL.Bit;
      --  Read-only. Address/Data NACK Interrupt
      MNACK        : I2C0_INT_EVENT0_MIS_MNACK_Field;
      --  Read-only. START Detection Interrupt
      MSTART       : I2C0_INT_EVENT0_MIS_MSTART_Field;
      --  Read-only. STOP Detection Interrupt
      MSTOP        : I2C0_INT_EVENT0_MIS_MSTOP_Field;
      --  Read-only. Arbitration Lost Interrupt
      MARBLOST     : I2C0_INT_EVENT0_MIS_MARBLOST_Field;
      --  Read-only. DMA Done on Event Channel TX
      MDMA_DONE_TX : I2C0_INT_EVENT0_MIS_MDMA_DONE_TX_Field;
      --  Read-only. DMA Done on Event Channel RX
      MDMA_DONE_RX : I2C0_INT_EVENT0_MIS_MDMA_DONE_RX_Field;
      --  Read-only. Master RX Pec Error Interrupt
      MPEC_RX_ERR  : I2C0_INT_EVENT0_MIS_MPEC_RX_ERR_Field;
      --  Read-only. Timeout A Interrupt
      TIMEOUTA     : I2C0_INT_EVENT0_MIS_TIMEOUTA_Field;
      --  Read-only. Timeout B Interrupt
      TIMEOUTB     : I2C0_INT_EVENT0_MIS_TIMEOUTB_Field;
      --  Read-only. Slave Receive Data Interrupt Signals that a byte has been
      --  received
      SRXDONE      : I2C0_INT_EVENT0_MIS_SRXDONE_Field;
      --  Read-only. Slave Transmit Transaction completed Interrupt
      STXDONE      : I2C0_INT_EVENT0_MIS_STXDONE_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG   : I2C0_INT_EVENT0_MIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG   : I2C0_INT_EVENT0_MIS_STXFIFOTRG_Field;
      --  Read-only. RXFIFO full event. This interrupt is set if an RX FIFO is
      --  full.
      SRXFIFOFULL  : I2C0_INT_EVENT0_MIS_SRXFIFOFULL_Field;
      --  Read-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      STXEMPTY     : I2C0_INT_EVENT0_MIS_STXEMPTY_Field;
      --  Read-only. Slave START Detection Interrupt
      SSTART       : I2C0_INT_EVENT0_MIS_SSTART_Field;
      --  Read-only. Slave STOP Detection Interrupt
      SSTOP        : I2C0_INT_EVENT0_MIS_SSTOP_Field;
      --  Read-only. General Call Interrupt
      SGENCALL     : I2C0_INT_EVENT0_MIS_SGENCALL_Field;
      --  Read-only. DMA Done on Event Channel TX
      SDMA_DONE_TX : I2C0_INT_EVENT0_MIS_SDMA_DONE_TX_Field;
      --  Read-only. DMA Done on Event Channel RX
      SDMA_DONE_RX : I2C0_INT_EVENT0_MIS_SDMA_DONE_RX_Field;
      --  Read-only. Slave RX Pec Error Interrupt
      SPEC_RX_ERR  : I2C0_INT_EVENT0_MIS_SPEC_RX_ERR_Field;
      --  Read-only. Slave TX FIFO underflow
      STX_UNFL     : I2C0_INT_EVENT0_MIS_STX_UNFL_Field;
      --  Read-only. Slave RX FIFO overflow
      SRX_OVFL     : I2C0_INT_EVENT0_MIS_SRX_OVFL_Field;
      --  Read-only. Slave Arbitration Lost
      SARBLOST     : I2C0_INT_EVENT0_MIS_SARBLOST_Field;
      --  Read-only. Interrupt overflow
      INTR_OVFL    : I2C0_INT_EVENT0_MIS_INTR_OVFL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_MIS_I2C0_INT_EVENT0[%s]_Register use record
      MRXDONE      at 0 range 0 .. 0;
      MTXDONE      at 0 range 1 .. 1;
      MRXFIFOTRG   at 0 range 2 .. 2;
      MTXFIFOTRG   at 0 range 3 .. 3;
      MRXFIFOFULL  at 0 range 4 .. 4;
      MTXEMPTY     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      MNACK        at 0 range 7 .. 7;
      MSTART       at 0 range 8 .. 8;
      MSTOP        at 0 range 9 .. 9;
      MARBLOST     at 0 range 10 .. 10;
      MDMA_DONE_TX at 0 range 11 .. 11;
      MDMA_DONE_RX at 0 range 12 .. 12;
      MPEC_RX_ERR  at 0 range 13 .. 13;
      TIMEOUTA     at 0 range 14 .. 14;
      TIMEOUTB     at 0 range 15 .. 15;
      SRXDONE      at 0 range 16 .. 16;
      STXDONE      at 0 range 17 .. 17;
      SRXFIFOTRG   at 0 range 18 .. 18;
      STXFIFOTRG   at 0 range 19 .. 19;
      SRXFIFOFULL  at 0 range 20 .. 20;
      STXEMPTY     at 0 range 21 .. 21;
      SSTART       at 0 range 22 .. 22;
      SSTOP        at 0 range 23 .. 23;
      SGENCALL     at 0 range 24 .. 24;
      SDMA_DONE_TX at 0 range 25 .. 25;
      SDMA_DONE_RX at 0 range 26 .. 26;
      SPEC_RX_ERR  at 0 range 27 .. 27;
      STX_UNFL     at 0 range 28 .. 28;
      SRX_OVFL     at 0 range 29 .. 29;
      SARBLOST     at 0 range 30 .. 30;
      INTR_OVFL    at 0 range 31 .. 31;
   end record;

   --  Master Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_ISET_MRXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MRXDONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_ISET_MTXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MTXDONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT0_ISET_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT0_ISET_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  RXFIFO full event.
   type I2C0_INT_EVENT0_ISET_MRXFIFOFULL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MRXFIFOFULL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_ISET_MTXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MTXEMPTY_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Address/Data NACK Interrupt
   type I2C0_INT_EVENT0_ISET_MNACK_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MNACK_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  START Detection Interrupt
   type I2C0_INT_EVENT0_ISET_MSTART_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MSTART_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  STOP Detection Interrupt
   type I2C0_INT_EVENT0_ISET_MSTOP_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MSTOP_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Arbitration Lost Interrupt
   type I2C0_INT_EVENT0_ISET_MARBLOST_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MARBLOST_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_ISET_MDMA_DONE_TX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MDMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_ISET_MDMA_DONE_RX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MDMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master RX Pec Error Interrupt
   type I2C0_INT_EVENT0_ISET_MPEC_RX_ERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_MPEC_RX_ERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Timeout A interrupt
   type I2C0_INT_EVENT0_ISET_TIMEOUTA_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_TIMEOUTA_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Timeout B Interrupt
   type I2C0_INT_EVENT0_ISET_TIMEOUTB_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_TIMEOUTB_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_ISET_SRXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SRXDONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_ISET_STXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_STXDONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT0_ISET_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT0_ISET_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_ISET_SRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SRXFIFOFULL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_ISET_STXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_STXEMPTY_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Start Condition Interrupt
   type I2C0_INT_EVENT0_ISET_SSTART_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SSTART_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Stop Condition Interrupt
   type I2C0_INT_EVENT0_ISET_SSTOP_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SSTOP_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  General Call Interrupt
   type I2C0_INT_EVENT0_ISET_SGENCALL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SGENCALL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_ISET_SDMA_DONE_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SDMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_ISET_SDMA_DONE_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SDMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave RX Pec Error Interrupt
   type I2C0_INT_EVENT0_ISET_SPEC_RX_ERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SPEC_RX_ERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave TX FIFO underflow
   type I2C0_INT_EVENT0_ISET_STX_UNFL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_STX_UNFL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave RX FIFO overflow
   type I2C0_INT_EVENT0_ISET_SRX_OVFL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SRX_OVFL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Arbitration Lost
   type I2C0_INT_EVENT0_ISET_SARBLOST_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_SARBLOST_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt overflow
   type I2C0_INT_EVENT0_ISET_INTR_OVFL_Field is
     (--  No effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for I2C0_INT_EVENT0_ISET_INTR_OVFL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type I2C0_INT_EVENT0_ISET_I2C0_INT_EVENT0[%s]_Register is record
      --  Write-only. Master Receive Data Interrupt Signals that a byte has
      --  been received
      MRXDONE      : I2C0_INT_EVENT0_ISET_MRXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit Transaction completed Interrupt
      MTXDONE      : I2C0_INT_EVENT0_ISET_MTXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG   : I2C0_INT_EVENT0_ISET_MRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG   : I2C0_INT_EVENT0_ISET_MTXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. RXFIFO full event.
      MRXFIFOFULL  : I2C0_INT_EVENT0_ISET_MRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      MTXEMPTY     : I2C0_INT_EVENT0_ISET_MTXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Write-only. Address/Data NACK Interrupt
      MNACK        : I2C0_INT_EVENT0_ISET_MNACK_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. START Detection Interrupt
      MSTART       : I2C0_INT_EVENT0_ISET_MSTART_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. STOP Detection Interrupt
      MSTOP        : I2C0_INT_EVENT0_ISET_MSTOP_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Arbitration Lost Interrupt
      MARBLOST     : I2C0_INT_EVENT0_ISET_MARBLOST_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel TX
      MDMA_DONE_TX : I2C0_INT_EVENT0_ISET_MDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel RX
      MDMA_DONE_RX : I2C0_INT_EVENT0_ISET_MDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master RX Pec Error Interrupt
      MPEC_RX_ERR  : I2C0_INT_EVENT0_ISET_MPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Timeout A interrupt
      TIMEOUTA     : I2C0_INT_EVENT0_ISET_TIMEOUTA_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Timeout B Interrupt
      TIMEOUTB     : I2C0_INT_EVENT0_ISET_TIMEOUTB_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive Data Interrupt Signals that a byte has been
      --  received
      SRXDONE      : I2C0_INT_EVENT0_ISET_SRXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit Transaction completed Interrupt
      STXDONE      : I2C0_INT_EVENT0_ISET_STXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG   : I2C0_INT_EVENT0_ISET_SRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG   : I2C0_INT_EVENT0_ISET_STXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. RXFIFO full event. This interrupt is set if an RX FIFO is
      --  full.
      SRXFIFOFULL  : I2C0_INT_EVENT0_ISET_SRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      STXEMPTY     : I2C0_INT_EVENT0_ISET_STXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Start Condition Interrupt
      SSTART       : I2C0_INT_EVENT0_ISET_SSTART_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Stop Condition Interrupt
      SSTOP        : I2C0_INT_EVENT0_ISET_SSTOP_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. General Call Interrupt
      SGENCALL     : I2C0_INT_EVENT0_ISET_SGENCALL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel TX
      SDMA_DONE_TX : I2C0_INT_EVENT0_ISET_SDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel RX
      SDMA_DONE_RX : I2C0_INT_EVENT0_ISET_SDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave RX Pec Error Interrupt
      SPEC_RX_ERR  : I2C0_INT_EVENT0_ISET_SPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave TX FIFO underflow
      STX_UNFL     : I2C0_INT_EVENT0_ISET_STX_UNFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave RX FIFO overflow
      SRX_OVFL     : I2C0_INT_EVENT0_ISET_SRX_OVFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Arbitration Lost
      SARBLOST     : I2C0_INT_EVENT0_ISET_SARBLOST_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Interrupt overflow
      INTR_OVFL    : I2C0_INT_EVENT0_ISET_INTR_OVFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_ISET_I2C0_INT_EVENT0[%s]_Register use record
      MRXDONE      at 0 range 0 .. 0;
      MTXDONE      at 0 range 1 .. 1;
      MRXFIFOTRG   at 0 range 2 .. 2;
      MTXFIFOTRG   at 0 range 3 .. 3;
      MRXFIFOFULL  at 0 range 4 .. 4;
      MTXEMPTY     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      MNACK        at 0 range 7 .. 7;
      MSTART       at 0 range 8 .. 8;
      MSTOP        at 0 range 9 .. 9;
      MARBLOST     at 0 range 10 .. 10;
      MDMA_DONE_TX at 0 range 11 .. 11;
      MDMA_DONE_RX at 0 range 12 .. 12;
      MPEC_RX_ERR  at 0 range 13 .. 13;
      TIMEOUTA     at 0 range 14 .. 14;
      TIMEOUTB     at 0 range 15 .. 15;
      SRXDONE      at 0 range 16 .. 16;
      STXDONE      at 0 range 17 .. 17;
      SRXFIFOTRG   at 0 range 18 .. 18;
      STXFIFOTRG   at 0 range 19 .. 19;
      SRXFIFOFULL  at 0 range 20 .. 20;
      STXEMPTY     at 0 range 21 .. 21;
      SSTART       at 0 range 22 .. 22;
      SSTOP        at 0 range 23 .. 23;
      SGENCALL     at 0 range 24 .. 24;
      SDMA_DONE_TX at 0 range 25 .. 25;
      SDMA_DONE_RX at 0 range 26 .. 26;
      SPEC_RX_ERR  at 0 range 27 .. 27;
      STX_UNFL     at 0 range 28 .. 28;
      SRX_OVFL     at 0 range 29 .. 29;
      SARBLOST     at 0 range 30 .. 30;
      INTR_OVFL    at 0 range 31 .. 31;
   end record;

   --  Master Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_ICLR_MRXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MRXDONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_ICLR_MTXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MTXDONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT0_ICLR_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT0_ICLR_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  RXFIFO full event.
   type I2C0_INT_EVENT0_ICLR_MRXFIFOFULL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MRXFIFOFULL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_ICLR_MTXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MTXEMPTY_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Address/Data NACK Interrupt
   type I2C0_INT_EVENT0_ICLR_MNACK_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MNACK_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  START Detection Interrupt
   type I2C0_INT_EVENT0_ICLR_MSTART_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MSTART_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  STOP Detection Interrupt
   type I2C0_INT_EVENT0_ICLR_MSTOP_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MSTOP_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Arbitration Lost Interrupt
   type I2C0_INT_EVENT0_ICLR_MARBLOST_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MARBLOST_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_ICLR_MDMA_DONE_TX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MDMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_ICLR_MDMA_DONE_RX_Field is
     (--  Interrupt disabled
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MDMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master RX Pec Error Interrupt
   type I2C0_INT_EVENT0_ICLR_MPEC_RX_ERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_MPEC_RX_ERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Timeout A interrupt
   type I2C0_INT_EVENT0_ICLR_TIMEOUTA_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_TIMEOUTA_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Timeout B Interrupt
   type I2C0_INT_EVENT0_ICLR_TIMEOUTB_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_TIMEOUTB_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Receive Data Interrupt Signals that a byte has been received
   type I2C0_INT_EVENT0_ICLR_SRXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SRXDONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Transmit Transaction completed Interrupt
   type I2C0_INT_EVENT0_ICLR_STXDONE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_STXDONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT0_ICLR_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT0_ICLR_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  RXFIFO full event. This interrupt is set if an RX FIFO is full.
   type I2C0_INT_EVENT0_ICLR_SRXFIFOFULL_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SRXFIFOFULL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been shifted out and the transmit goes into idle
   --  mode.
   type I2C0_INT_EVENT0_ICLR_STXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_STXEMPTY_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave START Detection Interrupt
   type I2C0_INT_EVENT0_ICLR_SSTART_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SSTART_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave STOP Detection Interrupt
   type I2C0_INT_EVENT0_ICLR_SSTOP_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SSTOP_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  General Call Interrupt
   type I2C0_INT_EVENT0_ICLR_SGENCALL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SGENCALL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DMA Done on Event Channel TX
   type I2C0_INT_EVENT0_ICLR_SDMA_DONE_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SDMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DMA Done on Event Channel RX
   type I2C0_INT_EVENT0_ICLR_SDMA_DONE_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SDMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave RX Pec Error Interrupt
   type I2C0_INT_EVENT0_ICLR_SPEC_RX_ERR_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SPEC_RX_ERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave TX FIFO underflow
   type I2C0_INT_EVENT0_ICLR_STX_UNFL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_STX_UNFL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave RX FIFO overflow
   type I2C0_INT_EVENT0_ICLR_SRX_OVFL_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SRX_OVFL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Arbitration Lost
   type I2C0_INT_EVENT0_ICLR_SARBLOST_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_SARBLOST_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt overflow
   type I2C0_INT_EVENT0_ICLR_INTR_OVFL_Field is
     (--  No effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT0_ICLR_INTR_OVFL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type I2C0_INT_EVENT0_ICLR_I2C0_INT_EVENT0[%s]_Register is record
      --  Write-only. Master Receive Data Interrupt Signals that a byte has
      --  been received
      MRXDONE      : I2C0_INT_EVENT0_ICLR_MRXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit Transaction completed Interrupt
      MTXDONE      : I2C0_INT_EVENT0_ICLR_MTXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG   : I2C0_INT_EVENT0_ICLR_MRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG   : I2C0_INT_EVENT0_ICLR_MTXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. RXFIFO full event.
      MRXFIFOFULL  : I2C0_INT_EVENT0_ICLR_MRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      MTXEMPTY     : I2C0_INT_EVENT0_ICLR_MTXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_6_6 : HAL.Bit := 16#0#;
      --  Write-only. Address/Data NACK Interrupt
      MNACK        : I2C0_INT_EVENT0_ICLR_MNACK_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. START Detection Interrupt
      MSTART       : I2C0_INT_EVENT0_ICLR_MSTART_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. STOP Detection Interrupt
      MSTOP        : I2C0_INT_EVENT0_ICLR_MSTOP_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Arbitration Lost Interrupt
      MARBLOST     : I2C0_INT_EVENT0_ICLR_MARBLOST_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel TX
      MDMA_DONE_TX : I2C0_INT_EVENT0_ICLR_MDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel RX
      MDMA_DONE_RX : I2C0_INT_EVENT0_ICLR_MDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master RX Pec Error Interrupt
      MPEC_RX_ERR  : I2C0_INT_EVENT0_ICLR_MPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Timeout A interrupt
      TIMEOUTA     : I2C0_INT_EVENT0_ICLR_TIMEOUTA_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Timeout B Interrupt
      TIMEOUTB     : I2C0_INT_EVENT0_ICLR_TIMEOUTB_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive Data Interrupt Signals that a byte has been
      --  received
      SRXDONE      : I2C0_INT_EVENT0_ICLR_SRXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit Transaction completed Interrupt
      STXDONE      : I2C0_INT_EVENT0_ICLR_STXDONE_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG   : I2C0_INT_EVENT0_ICLR_SRXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG   : I2C0_INT_EVENT0_ICLR_STXFIFOTRG_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. RXFIFO full event. This interrupt is set if an RX FIFO is
      --  full.
      SRXFIFOFULL  : I2C0_INT_EVENT0_ICLR_SRXFIFOFULL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been shifted out and the
      --  transmit goes into idle mode.
      STXEMPTY     : I2C0_INT_EVENT0_ICLR_STXEMPTY_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave START Detection Interrupt
      SSTART       : I2C0_INT_EVENT0_ICLR_SSTART_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave STOP Detection Interrupt
      SSTOP        : I2C0_INT_EVENT0_ICLR_SSTOP_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. General Call Interrupt
      SGENCALL     : I2C0_INT_EVENT0_ICLR_SGENCALL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel TX
      SDMA_DONE_TX : I2C0_INT_EVENT0_ICLR_SDMA_DONE_TX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. DMA Done on Event Channel RX
      SDMA_DONE_RX : I2C0_INT_EVENT0_ICLR_SDMA_DONE_RX_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave RX Pec Error Interrupt
      SPEC_RX_ERR  : I2C0_INT_EVENT0_ICLR_SPEC_RX_ERR_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave TX FIFO underflow
      STX_UNFL     : I2C0_INT_EVENT0_ICLR_STX_UNFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave RX FIFO overflow
      SRX_OVFL     : I2C0_INT_EVENT0_ICLR_SRX_OVFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Arbitration Lost
      SARBLOST     : I2C0_INT_EVENT0_ICLR_SARBLOST_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Interrupt overflow
      INTR_OVFL    : I2C0_INT_EVENT0_ICLR_INTR_OVFL_Field :=
                      MSPMC1104_SVD.I2C.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT0_ICLR_I2C0_INT_EVENT0[%s]_Register use record
      MRXDONE      at 0 range 0 .. 0;
      MTXDONE      at 0 range 1 .. 1;
      MRXFIFOTRG   at 0 range 2 .. 2;
      MTXFIFOTRG   at 0 range 3 .. 3;
      MRXFIFOFULL  at 0 range 4 .. 4;
      MTXEMPTY     at 0 range 5 .. 5;
      Reserved_6_6 at 0 range 6 .. 6;
      MNACK        at 0 range 7 .. 7;
      MSTART       at 0 range 8 .. 8;
      MSTOP        at 0 range 9 .. 9;
      MARBLOST     at 0 range 10 .. 10;
      MDMA_DONE_TX at 0 range 11 .. 11;
      MDMA_DONE_RX at 0 range 12 .. 12;
      MPEC_RX_ERR  at 0 range 13 .. 13;
      TIMEOUTA     at 0 range 14 .. 14;
      TIMEOUTB     at 0 range 15 .. 15;
      SRXDONE      at 0 range 16 .. 16;
      STXDONE      at 0 range 17 .. 17;
      SRXFIFOTRG   at 0 range 18 .. 18;
      STXFIFOTRG   at 0 range 19 .. 19;
      SRXFIFOFULL  at 0 range 20 .. 20;
      STXEMPTY     at 0 range 21 .. 21;
      SSTART       at 0 range 22 .. 22;
      SSTOP        at 0 range 23 .. 23;
      SGENCALL     at 0 range 24 .. 24;
      SDMA_DONE_TX at 0 range 25 .. 25;
      SDMA_DONE_RX at 0 range 26 .. 26;
      SPEC_RX_ERR  at 0 range 27 .. 27;
      STX_UNFL     at 0 range 28 .. 28;
      SRX_OVFL     at 0 range 29 .. 29;
      SARBLOST     at 0 range 30 .. 30;
      INTR_OVFL    at 0 range 31 .. 31;
   end record;

   type I2C0_INT_EVENT0[%s]_Cluster is record
      --  Interrupt index
      I2C0_INT_EVENT0_IIDX  : aliased I2C0_INT_EVENT0_IIDX_I2C0_INT_EVENT0[%s]_Register;
      --  Interrupt mask
      I2C0_INT_EVENT0_IMASK : aliased I2C0_INT_EVENT0_IMASK_I2C0_INT_EVENT0[%s]_Register;
      --  Raw interrupt status
      I2C0_INT_EVENT0_RIS   : aliased I2C0_INT_EVENT0_RIS_I2C0_INT_EVENT0[%s]_Register;
      --  Masked interrupt status
      I2C0_INT_EVENT0_MIS   : aliased I2C0_INT_EVENT0_MIS_I2C0_INT_EVENT0[%s]_Register;
      --  Interrupt set
      I2C0_INT_EVENT0_ISET  : aliased I2C0_INT_EVENT0_ISET_I2C0_INT_EVENT0[%s]_Register;
      --  Interrupt clear
      I2C0_INT_EVENT0_ICLR  : aliased I2C0_INT_EVENT0_ICLR_I2C0_INT_EVENT0[%s]_Register;
   end record
     with Size => 352;

   for I2C0_INT_EVENT0[%s]_Cluster use record
      I2C0_INT_EVENT0_IIDX  at 16#0# range 0 .. 31;
      I2C0_INT_EVENT0_IMASK at 16#8# range 0 .. 31;
      I2C0_INT_EVENT0_RIS   at 16#10# range 0 .. 31;
      I2C0_INT_EVENT0_MIS   at 16#18# range 0 .. 31;
      I2C0_INT_EVENT0_ISET  at 16#20# range 0 .. 31;
      I2C0_INT_EVENT0_ICLR  at 16#28# range 0 .. 31;
   end record;

   ---------------------------------------------
   -- I2C0_INT_EVENT1[%s] cluster's Registers --
   ---------------------------------------------

   --  I2C Module Interrupt Vector Value. This register provides the highes
   --  priority interrupt index. A read clears the corresponding interrupt flag
   --  in RIS and MISC. 15h-1Fh = Reserved
   type I2C0_INT_EVENT1_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Master receive FIFO Trigger Level
      MRXFIFOTRG,
      --  Master transmit FIFO Trigger level
      MTXFIFOTRG,
      --  Slave receive FIFO Trigger Level
      SRXFIFOTRG,
      --  Slave transmit FIFO Trigger level
      STXFIFOTRG)
     with Size => 8;
   for I2C0_INT_EVENT1_IIDX_STAT_Field use
     (NO_INTR => 0,
      MRXFIFOTRG => 1,
      MTXFIFOTRG => 2,
      SRXFIFOTRG => 3,
      STXFIFOTRG => 4);

   --  Interrupt index
   type I2C0_INT_EVENT1_IIDX_I2C0_INT_EVENT1[%s]_Register is record
      --  Read-only. I2C Module Interrupt Vector Value. This register provides
      --  the highes priority interrupt index. A read clears the corresponding
      --  interrupt flag in RIS and MISC. 15h-1Fh = Reserved
      STAT          : I2C0_INT_EVENT1_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_IIDX_I2C0_INT_EVENT1[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT1_IMASK_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_IMASK_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT1_IMASK_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_IMASK_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT1_IMASK_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_IMASK_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT1_IMASK_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_IMASK_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type I2C0_INT_EVENT1_IMASK_I2C0_INT_EVENT1[%s]_Register is record
      --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
      --  bytes
      MRXFIFOTRG    : I2C0_INT_EVENT1_IMASK_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
      --  defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT1_IMASK_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT1_IMASK_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT1_IMASK_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_IMASK_I2C0_INT_EVENT1[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT1_RIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_RIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT1_RIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_RIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT1_RIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_RIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT1_RIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_RIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type I2C0_INT_EVENT1_RIS_I2C0_INT_EVENT1[%s]_Register is record
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT1_RIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT1_RIS_MTXFIFOTRG_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT1_RIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT1_RIS_STXFIFOTRG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_RIS_I2C0_INT_EVENT1[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT1_MIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_MIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT1_MIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_MIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT1_MIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_MIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT1_MIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_MIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type I2C0_INT_EVENT1_MIS_I2C0_INT_EVENT1[%s]_Register is record
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT1_MIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT1_MIS_MTXFIFOTRG_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT1_MIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT1_MIS_STXFIFOTRG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_MIS_I2C0_INT_EVENT1[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT1_ISET_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_ISET_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT1_ISET_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_ISET_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT1_ISET_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_ISET_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT1_ISET_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT1_ISET_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type I2C0_INT_EVENT1_ISET_I2C0_INT_EVENT1[%s]_Register is record
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT1_ISET_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT1_ISET_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT1_ISET_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT1_ISET_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_ISET_I2C0_INT_EVENT1[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT1_ICLR_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT1_ICLR_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT1_ICLR_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT1_ICLR_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT1_ICLR_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT1_ICLR_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT1_ICLR_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT1_ICLR_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type I2C0_INT_EVENT1_ICLR_I2C0_INT_EVENT1[%s]_Register is record
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT1_ICLR_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT1_ICLR_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT1_ICLR_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT1_ICLR_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT1_ICLR_I2C0_INT_EVENT1[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   type I2C0_INT_EVENT1[%s]_Cluster is record
      --  Interrupt index
      I2C0_INT_EVENT1_IIDX  : aliased I2C0_INT_EVENT1_IIDX_I2C0_INT_EVENT1[%s]_Register;
      --  Interrupt mask
      I2C0_INT_EVENT1_IMASK : aliased I2C0_INT_EVENT1_IMASK_I2C0_INT_EVENT1[%s]_Register;
      --  Raw interrupt status
      I2C0_INT_EVENT1_RIS   : aliased I2C0_INT_EVENT1_RIS_I2C0_INT_EVENT1[%s]_Register;
      --  Masked interrupt status
      I2C0_INT_EVENT1_MIS   : aliased I2C0_INT_EVENT1_MIS_I2C0_INT_EVENT1[%s]_Register;
      --  Interrupt set
      I2C0_INT_EVENT1_ISET  : aliased I2C0_INT_EVENT1_ISET_I2C0_INT_EVENT1[%s]_Register;
      --  Interrupt clear
      I2C0_INT_EVENT1_ICLR  : aliased I2C0_INT_EVENT1_ICLR_I2C0_INT_EVENT1[%s]_Register;
   end record
     with Size => 352;

   for I2C0_INT_EVENT1[%s]_Cluster use record
      I2C0_INT_EVENT1_IIDX  at 16#0# range 0 .. 31;
      I2C0_INT_EVENT1_IMASK at 16#8# range 0 .. 31;
      I2C0_INT_EVENT1_RIS   at 16#10# range 0 .. 31;
      I2C0_INT_EVENT1_MIS   at 16#18# range 0 .. 31;
      I2C0_INT_EVENT1_ISET  at 16#20# range 0 .. 31;
      I2C0_INT_EVENT1_ICLR  at 16#28# range 0 .. 31;
   end record;

   ---------------------------------------------
   -- I2C0_INT_EVENT2[%s] cluster's Registers --
   ---------------------------------------------

   --  I2C Module Interrupt Vector Value. This register provides the highes
   --  priority interrupt index. A read clears the corresponding interrupt flag
   --  in RIS and MISC. 15h-1Fh = Reserved
   type I2C0_INT_EVENT2_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Master receive FIFO Trigger Level
      MRXFIFOTRG,
      --  Master transmit FIFO Trigger level
      MTXFIFOTRG,
      --  Slave receive FIFO Trigger Level
      SRXFIFOTRG,
      --  Slave transmit FIFO Trigger level
      STXFIFOTRG)
     with Size => 8;
   for I2C0_INT_EVENT2_IIDX_STAT_Field use
     (NO_INTR => 0,
      MRXFIFOTRG => 1,
      MTXFIFOTRG => 2,
      SRXFIFOTRG => 3,
      STXFIFOTRG => 4);

   --  Interrupt index
   type I2C0_INT_EVENT2_IIDX_I2C0_INT_EVENT2[%s]_Register is record
      --  Read-only. I2C Module Interrupt Vector Value. This register provides
      --  the highes priority interrupt index. A read clears the corresponding
      --  interrupt flag in RIS and MISC. 15h-1Fh = Reserved
      STAT          : I2C0_INT_EVENT2_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_IIDX_I2C0_INT_EVENT2[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT2_IMASK_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_IMASK_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT2_IMASK_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_IMASK_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT2_IMASK_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_IMASK_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT2_IMASK_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_IMASK_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type I2C0_INT_EVENT2_IMASK_I2C0_INT_EVENT2[%s]_Register is record
      --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
      --  bytes
      MRXFIFOTRG    : I2C0_INT_EVENT2_IMASK_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
      --  defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT2_IMASK_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT2_IMASK_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT2_IMASK_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.CLR;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_IMASK_I2C0_INT_EVENT2[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT2_RIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_RIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT2_RIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_RIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT2_RIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_RIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT2_RIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_RIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type I2C0_INT_EVENT2_RIS_I2C0_INT_EVENT2[%s]_Register is record
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT2_RIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT2_RIS_MTXFIFOTRG_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT2_RIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT2_RIS_STXFIFOTRG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_RIS_I2C0_INT_EVENT2[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT2_MIS_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_MIS_MRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT2_MIS_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_MIS_MTXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT2_MIS_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_MIS_SRXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT2_MIS_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_MIS_STXFIFOTRG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type I2C0_INT_EVENT2_MIS_I2C0_INT_EVENT2[%s]_Register is record
      --  Read-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT2_MIS_MRXFIFOTRG_Field;
      --  Read-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT2_MIS_MTXFIFOTRG_Field;
      --  Read-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT2_MIS_SRXFIFOTRG_Field;
      --  Read-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT2_MIS_STXFIFOTRG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_MIS_I2C0_INT_EVENT2[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT2_ISET_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_ISET_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT2_ISET_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_ISET_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT2_ISET_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_ISET_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT2_ISET_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for I2C0_INT_EVENT2_ISET_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type I2C0_INT_EVENT2_ISET_I2C0_INT_EVENT2[%s]_Register is record
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT2_ISET_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT2_ISET_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT2_ISET_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT2_ISET_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_ISET_I2C0_INT_EVENT2[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Master Receive FIFO Trigger Trigger when RX FIFO contains >= defined
   --  bytes
   type I2C0_INT_EVENT2_ICLR_MRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT2_ICLR_MRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Master Transmit FIFO Trigger Trigger when Transmit FIFO contains <=
   --  defined bytes
   type I2C0_INT_EVENT2_ICLR_MTXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT2_ICLR_MTXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Receive FIFO Trigger
   type I2C0_INT_EVENT2_ICLR_SRXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT2_ICLR_SRXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Slave Transmit FIFO Trigger
   type I2C0_INT_EVENT2_ICLR_STXFIFOTRG_Field is
     (--  Clear Interrupt Mask
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for I2C0_INT_EVENT2_ICLR_STXFIFOTRG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type I2C0_INT_EVENT2_ICLR_I2C0_INT_EVENT2[%s]_Register is record
      --  Write-only. Master Receive FIFO Trigger Trigger when RX FIFO contains
      --  >= defined bytes
      MRXFIFOTRG    : I2C0_INT_EVENT2_ICLR_MRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Master Transmit FIFO Trigger Trigger when Transmit FIFO
      --  contains <= defined bytes
      MTXFIFOTRG    : I2C0_INT_EVENT2_ICLR_MTXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Receive FIFO Trigger
      SRXFIFOTRG    : I2C0_INT_EVENT2_ICLR_SRXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  Write-only. Slave Transmit FIFO Trigger
      STXFIFOTRG    : I2C0_INT_EVENT2_ICLR_STXFIFOTRG_Field :=
                       MSPMC1104_SVD.I2C.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INT_EVENT2_ICLR_I2C0_INT_EVENT2[%s]_Register use record
      MRXFIFOTRG    at 0 range 0 .. 0;
      MTXFIFOTRG    at 0 range 1 .. 1;
      SRXFIFOTRG    at 0 range 2 .. 2;
      STXFIFOTRG    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   type I2C0_INT_EVENT2[%s]_Cluster is record
      --  Interrupt index
      I2C0_INT_EVENT2_IIDX  : aliased I2C0_INT_EVENT2_IIDX_I2C0_INT_EVENT2[%s]_Register;
      --  Interrupt mask
      I2C0_INT_EVENT2_IMASK : aliased I2C0_INT_EVENT2_IMASK_I2C0_INT_EVENT2[%s]_Register;
      --  Raw interrupt status
      I2C0_INT_EVENT2_RIS   : aliased I2C0_INT_EVENT2_RIS_I2C0_INT_EVENT2[%s]_Register;
      --  Masked interrupt status
      I2C0_INT_EVENT2_MIS   : aliased I2C0_INT_EVENT2_MIS_I2C0_INT_EVENT2[%s]_Register;
      --  Interrupt set
      I2C0_INT_EVENT2_ISET  : aliased I2C0_INT_EVENT2_ISET_I2C0_INT_EVENT2[%s]_Register;
      --  Interrupt clear
      I2C0_INT_EVENT2_ICLR  : aliased I2C0_INT_EVENT2_ICLR_I2C0_INT_EVENT2[%s]_Register;
   end record
     with Size => 352;

   for I2C0_INT_EVENT2[%s]_Cluster use record
      I2C0_INT_EVENT2_IIDX  at 16#0# range 0 .. 31;
      I2C0_INT_EVENT2_IMASK at 16#8# range 0 .. 31;
      I2C0_INT_EVENT2_RIS   at 16#10# range 0 .. 31;
      I2C0_INT_EVENT2_MIS   at 16#18# range 0 .. 31;
      I2C0_INT_EVENT2_ISET  at 16#20# range 0 .. 31;
      I2C0_INT_EVENT2_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT0]
   type I2C0_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for I2C0_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT1]
   type I2C0_EVT_MODE_INT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for I2C0_EVT_MODE_INT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT2]
   type I2C0_EVT_MODE_EVT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for I2C0_EVT_MODE_EVT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type I2C0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT0]
      INT0_CFG      : I2C0_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT1]
      INT1_CFG      : I2C0_EVT_MODE_INT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT2]
      EVT2_CFG      : I2C0_EVT_MODE_EVT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      INT1_CFG      at 0 range 2 .. 3;
      EVT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Writing a 1 to this field re-evaluates the interrupt sources.
   type I2C0_INTCTL_INTEVAL_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      EVAL)
     with Size => 1;
   for I2C0_INTCTL_INTEVAL_Field use
     (DISABLE => 0,
      EVAL => 1);

   --  Interrupt control register
   type I2C0_INTCTL_Register is record
      --  Write-only. Writing a 1 to this field re-evaluates the interrupt
      --  sources.
      INTEVAL       : I2C0_INTCTL_INTEVAL_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_INTCTL_Register use record
      INTEVAL       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype I2C0_DESC_MINREV_Field is HAL.UInt4;
   subtype I2C0_DESC_MAJREV_Field is HAL.UInt4;
   subtype I2C0_DESC_INSTNUM_Field is HAL.UInt4;
   subtype I2C0_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype I2C0_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type I2C0_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : I2C0_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : I2C0_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : I2C0_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : I2C0_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : I2C0_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   --  Glitch Suppression Pulse Width This field controls the pulse width
   --  select for glitch suppression on the SCL and SDA lines. The following
   --  values are the glitch suppression values in terms of functional clocks.
   --  (Core Domain only)
   type I2C0_GFCTL_DGFSEL_Field is
     (--  Bypass
      DISABLED,
      --  1 clock
      CLK_1,
      --  2 clocks
      CLK_2,
      --  3 clocks
      CLK_3,
      --  4 clocks
      CLK_4,
      --  8 clocks
      CLK_8,
      --  16 clocks
      CLK_16,
      --  31 clocks
      CLK_31)
     with Size => 3;
   for I2C0_GFCTL_DGFSEL_Field use
     (DISABLED => 0,
      CLK_1 => 1,
      CLK_2 => 2,
      CLK_3 => 3,
      CLK_4 => 4,
      CLK_8 => 5,
      CLK_16 => 6,
      CLK_31 => 7);

   --  Analog Glitch Suppression Enable
   type I2C0_GFCTL_AGFEN_Field is
     (--  Analog Glitch Filter disable
      DISABLE,
      --  Analog Glitch Filter enable
      ENABLE)
     with Size => 1;
   for I2C0_GFCTL_AGFEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Analog Glitch Suppression Pulse Width This field controls the pulse
   --  width select for the analog glitch suppression on SCL and SDA lines. See
   --  device datasheet for exact values. (ULP I2C only)
   type I2C0_GFCTL_AGFSEL_Field is
     (--  Pulses shorter then 5ns length are filtered.
      AGLIT_5,
      --  Pulses shorter then 10ns length are filtered.
      AGLIT_10,
      --  Pulses shorter then 25ns length are filtered.
      AGLIT_25,
      --  Pulses shorter then 50ns length are filtered.
      AGLIT_50)
     with Size => 2;
   for I2C0_GFCTL_AGFSEL_Field use
     (AGLIT_5 => 0,
      AGLIT_10 => 1,
      AGLIT_25 => 2,
      AGLIT_50 => 3);

   --  Analog and digital noise filters chaining enable.
   type I2C0_GFCTL_CHAIN_Field is
     (--  When 0, chaining is disabled and only digital filter output is available to
--  IP logic for oversampling
      DISABLE,
      --  When 1, analog and digital glitch filters are chained and the output of the
--  combination is made available to IP logic for oversampling
      ENABLE)
     with Size => 1;
   for I2C0_GFCTL_CHAIN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Glitch Filter Control
   type I2C0_GFCTL_Register is record
      --  Glitch Suppression Pulse Width This field controls the pulse width
      --  select for glitch suppression on the SCL and SDA lines. The following
      --  values are the glitch suppression values in terms of functional
      --  clocks. (Core Domain only)
      DGFSEL         : I2C0_GFCTL_DGFSEL_Field := MSPMC1104_SVD.I2C.DISABLED;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Analog Glitch Suppression Enable
      AGFEN          : I2C0_GFCTL_AGFEN_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Analog Glitch Suppression Pulse Width This field controls the pulse
      --  width select for the analog glitch suppression on SCL and SDA lines.
      --  See device datasheet for exact values. (ULP I2C only)
      AGFSEL         : I2C0_GFCTL_AGFSEL_Field := MSPMC1104_SVD.I2C.AGLIT_5;
      --  Analog and digital noise filters chaining enable.
      CHAIN          : I2C0_GFCTL_CHAIN_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_GFCTL_Register use record
      DGFSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      AGFEN          at 0 range 8 .. 8;
      AGFSEL         at 0 range 9 .. 10;
      CHAIN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype I2C0_TIMEOUT_CTL_TCNTLA_Field is HAL.UInt8;

   --  Timeout Counter A Enable
   type I2C0_TIMEOUT_CTL_TCNTAEN_Field is
     (--  Disable Timeout Counter B
      DISABLE,
      --  Enable Timeout Counter B
      ENABLE)
     with Size => 1;
   for I2C0_TIMEOUT_CTL_TCNTAEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype I2C0_TIMEOUT_CTL_TCNTLB_Field is HAL.UInt8;

   --  Timeout Counter B Enable
   type I2C0_TIMEOUT_CTL_TCNTBEN_Field is
     (--  Disable Timeout Counter B
      DISABLE,
      --  Enable Timeout Counter B
      ENABLE)
     with Size => 1;
   for I2C0_TIMEOUT_CTL_TCNTBEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Timeout Count Control Register
   type I2C0_TIMEOUT_CTL_Register is record
      --  Timeout counter A load value Counter A is used for SCL low detection.
      --  This field contains the upper 8 bits of a 12-bit pre-load value for
      --  the Timeout A count. NOTE: The value of CNTLA must be greater than
      --  1h. Each count is equal to 520 times the timeout period of functional
      --  clock. For example, with 8MHz functional clock and a 100KHz operating
      --  I2C clock, one timeout period will be equal to (1 / 8MHz) * 520 or 65
      --  us.
      TCNTLA         : I2C0_TIMEOUT_CTL_TCNTLA_Field := 16#2#;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Timeout Counter A Enable
      TCNTAEN        : I2C0_TIMEOUT_CTL_TCNTAEN_Field :=
                        MSPMC1104_SVD.I2C.DISABLE;
      --  Timeout Count B Load: Counter B is used for SCL High Detection. This
      --  field contains the upper 8 bits of a 12-bit pre-load value for the
      --  Timeout B count. NOTE: The value of CNTLB must be greater than 1h.
      --  Each count is equal to 1* clock period. For example, with 10MHz
      --  functional clock one timeout period will be equal to1*100ns.
      TCNTLB         : I2C0_TIMEOUT_CTL_TCNTLB_Field := 16#2#;
      --  unspecified
      Reserved_24_30 : HAL.UInt7 := 16#0#;
      --  Timeout Counter B Enable
      TCNTBEN        : I2C0_TIMEOUT_CTL_TCNTBEN_Field :=
                        MSPMC1104_SVD.I2C.DISABLE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_TIMEOUT_CTL_Register use record
      TCNTLA         at 0 range 0 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      TCNTAEN        at 0 range 15 .. 15;
      TCNTLB         at 0 range 16 .. 23;
      Reserved_24_30 at 0 range 24 .. 30;
      TCNTBEN        at 0 range 31 .. 31;
   end record;

   subtype I2C0_TIMEOUT_CNT_TCNTA_Field is HAL.UInt8;
   subtype I2C0_TIMEOUT_CNT_TCNTB_Field is HAL.UInt8;

   --  I2C Timeout Count Register
   type I2C0_TIMEOUT_CNT_Register is record
      --  Read-only. Timeout Count A Current Count: This field contains the
      --  upper 8 bits of a 12-bit current counter for timeout counter A
      TCNTA          : I2C0_TIMEOUT_CNT_TCNTA_Field;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. Timeout Count B Current Count: This field contains the
      --  upper 8 bits of a 12-bit current counter for timeout counter B
      TCNTB          : I2C0_TIMEOUT_CNT_TCNTB_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_TIMEOUT_CNT_Register use record
      TCNTA          at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TCNTB          at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------------------------------
   -- I2C0_MASTER[%s] cluster's Registers --
   -----------------------------------------

   --  Receive/Send The DIR bit specifies if the next master operation is a
   --  Receive (High) or Transmit (Low). 0h = Transmit 1h = Receive
   type I2C0_MSA_DIR_Field is
     (--  The master is in transmit mode.
      TRANSMIT,
      --  The master is in receive mode.
      RECEIVE)
     with Size => 1;
   for I2C0_MSA_DIR_Field use
     (TRANSMIT => 0,
      RECEIVE => 1);

   subtype I2C0_MSA_I2C0_MASTER[%s]_SADDR_Field is HAL.UInt10;

   --  This bit selects the adressing mode to be used in master mode When 0,
   --  7-bit addressing is used. When 1, 10-bit addressing is used.
   type I2C0_MSA_MMODE_Field is
     (--  7-bit addressing mode
      MODE7,
      --  10-bit addressing mode
      MODE10)
     with Size => 1;
   for I2C0_MSA_MMODE_Field use
     (MODE7 => 0,
      MODE10 => 1);

   --  I2C Master Slave Address Register
   type I2C0_MSA_I2C0_MASTER[%s]_Register is record
      --  Receive/Send The DIR bit specifies if the next master operation is a
      --  Receive (High) or Transmit (Low). 0h = Transmit 1h = Receive
      DIR            : I2C0_MSA_DIR_Field := MSPMC1104_SVD.I2C.TRANSMIT;
      --  I2C Slave Address This field specifies bits A9 through A0 of the
      --  slave address. In 7-bit addressing mode as selected by MSA.MODE bit,
      --  the top 3 bits are don't care
      SADDR          : I2C0_MSA_I2C0_MASTER[%s]_SADDR_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  This bit selects the adressing mode to be used in master mode When 0,
      --  7-bit addressing is used. When 1, 10-bit addressing is used.
      MMODE          : I2C0_MSA_MMODE_Field := MSPMC1104_SVD.I2C.MODE7;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MSA_I2C0_MASTER[%s]_Register use record
      DIR            at 0 range 0 .. 0;
      SADDR          at 0 range 1 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      MMODE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  I2C Master Enable and start transaction
   type I2C0_MCTR_BURSTRUN_Field is
     (--  In standard mode, this encoding means the master is unable to transmit or
--  receive data.
      DISABLE,
      --  The master is able to transmit or receive data. See field decoding in
--  Table: MCTR Field decoding.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_BURSTRUN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Generate START
   type I2C0_MCTR_START_Field is
     (--  The controller does not generate the START condition.
      DISABLE,
      --  The controller generates the START or repeated START condition. See field
--  decoding in Table: MCTR Field decoding.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_START_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Generate STOP
   type I2C0_MCTR_STOP_Field is
     (--  The controller does not generate the STOP condition.
      DISABLE,
      --  The controller generates the STOP condition. See field decoding in Table:
--  MCTR Field decoding.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_STOP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Data Acknowledge Enable. Software needs to configure this bit to send
   --  the ACK or NACK. See field decoding in Table: MCTR Field decoding.
   type I2C0_MCTR_ACK_Field is
     (--  The last received data byte of a transaction is not acknowledged
--  automatically by the master.
      DISABLE,
      --  The last received data byte of a transaction is acknowledged automatically
--  by the master.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_ACK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Master ACK overrride Enable
   type I2C0_MCTR_MACKOEN_Field is
     (--  No special behavior
      DISABLE,
      --  When 1 and the master is receiving data and the number of bytes indicated
--  in MBLEN have been received, the state machine will generate an rxdone
--  interrupt and wait at the start of the ACK for FW to indicate if an ACK or
--  NACK should be sent. The ACK or NACK is selected by writing the MCTR
--  register and setting ACK accordingly. The other fields in this register can
--  also be written at this time to continue on with the transaction. If a NACK
--  is sent the state machine will automatically send a Stop.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_MACKOEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Read on TX Empty
   type I2C0_MCTR_RD_ON_TXEMPTY_Field is
     (--  No special behavior
      DISABLE,
      --  When 1 the master will transmit all bytes from the TX FIFO before
--  continuing with the programmed Burst Run Read. If the DIR is not set to
--  Read in the MSA then this bit is ignored. The Start must be set in the MCTR
--  for proper I2C protocol. The master will first send the Start Condition,
--  I2C Address with R/W bit set to write, before sending the bytes in the TX
--  FIFO. When the TX FIFO is empty, the I2C transaction will continue as
--  programmed in MTCR and MSA without sending a Stop Condition. This is
--  intended to be used to perform simple I2C command based reads transition
--  that will complete after initiating them without having to get an interrupt
--  to turn the bus around.
      ENABLE)
     with Size => 1;
   for I2C0_MCTR_RD_ON_TXEMPTY_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype I2C0_MCTR_I2C0_MASTER[%s]_MBLEN_Field is HAL.UInt12;

   --  I2C Master Control Register
   type I2C0_MCTR_I2C0_MASTER[%s]_Register is record
      --  I2C Master Enable and start transaction
      BURSTRUN       : I2C0_MCTR_BURSTRUN_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Generate START
      START          : I2C0_MCTR_START_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Generate STOP
      STOP           : I2C0_MCTR_STOP_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Data Acknowledge Enable. Software needs to configure this bit to send
      --  the ACK or NACK. See field decoding in Table: MCTR Field decoding.
      ACK            : I2C0_MCTR_ACK_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Master ACK overrride Enable
      MACKOEN        : I2C0_MCTR_MACKOEN_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Read on TX Empty
      RD_ON_TXEMPTY  : I2C0_MCTR_RD_ON_TXEMPTY_Field :=
                        MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  I2C transaction length This field contains the programmed length of
      --  bytes of the Transaction.
      MBLEN          : I2C0_MCTR_I2C0_MASTER[%s]_MBLEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MCTR_I2C0_MASTER[%s]_Register use record
      BURSTRUN       at 0 range 0 .. 0;
      START          at 0 range 1 .. 1;
      STOP           at 0 range 2 .. 2;
      ACK            at 0 range 3 .. 3;
      MACKOEN        at 0 range 4 .. 4;
      RD_ON_TXEMPTY  at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      MBLEN          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  I2C Master FSM Busy The BUSY bit is set during an ongoing transaction,
   --  so is set during the transmit/receive of the amount of data set in MBLEN
   --  including START, RESTART, Address and STOP signal generation when
   --  required for the current transaction.
   type I2C0_MSR_BUSY_Field is
     (--  The controller is idle.
      CLEARED,
      --  The controller is busy.
      SET)
     with Size => 1;
   for I2C0_MSR_BUSY_Field use
     (CLEARED => 0,
      SET => 1);

   --  Error The error can be from the slave address not being acknowledged or
   --  the transmit data not being acknowledged.
   type I2C0_MSR_ERR_Field is
     (--  No error was detected on the last operation.
      CLEARED,
      --  An error occurred on the last operation.
      SET)
     with Size => 1;
   for I2C0_MSR_ERR_Field use
     (CLEARED => 0,
      SET => 1);

   --  Acknowledge Address
   type I2C0_MSR_ADRACK_Field is
     (--  The transmitted address was acknowledged
      CLEARED,
      --  The transmitted address was not acknowledged.
      SET)
     with Size => 1;
   for I2C0_MSR_ADRACK_Field use
     (CLEARED => 0,
      SET => 1);

   --  Acknowledge Data
   type I2C0_MSR_DATACK_Field is
     (--  The transmitted data was acknowledged
      CLEARED,
      --  The transmitted data was not acknowledged.
      SET)
     with Size => 1;
   for I2C0_MSR_DATACK_Field use
     (CLEARED => 0,
      SET => 1);

   --  Arbitration Lost
   type I2C0_MSR_ARBLST_Field is
     (--  The I2C controller won arbitration.
      CLEARED,
      --  The I2C controller lost arbitration.
      SET)
     with Size => 1;
   for I2C0_MSR_ARBLST_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C Idle
   type I2C0_MSR_IDLE_Field is
     (--  The I2C controller is not idle.
      CLEARED,
      --  The I2C controller is idle.
      SET)
     with Size => 1;
   for I2C0_MSR_IDLE_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C Bus is Busy Master State Machine will wait until this bit is cleared
   --  before starting a transaction. When first enabling the Master in multi
   --  master environments, FW should wait for one I2C clock period after
   --  setting ACTIVE high before writing to the MTCR register to start the
   --  transaction so that if SCL goes low it will trigger the BUSBSY.
   type I2C0_MSR_BUSBSY_Field is
     (--  The I2C bus is idle.
      CLEARED,
      --  'This Status bit is set on a START or when SCL goes low. It is cleared on a
--  STOP, or when a SCL high bus busy timeout occurs and SCL and SDA are both
--  high. This status is cleared when the ACTIVE bit is low. Note that the
--  Master State Machine will wait until this bit is cleared before starting an
--  I2C transaction. When first enabling the Master in multi master
--  environments, FW should wait for one I2C clock period after setting ACTIVE
--  high before writing to the MTCR register to start the transaction so that
--  if SCL goes low it will trigger the BUSBSY.
      SET)
     with Size => 1;
   for I2C0_MSR_BUSBSY_Field use
     (CLEARED => 0,
      SET => 1);

   subtype I2C0_MSR_I2C0_MASTER[%s]_MBCNT_Field is HAL.UInt12;

   --  I2C Master Status Register
   type I2C0_MSR_I2C0_MASTER[%s]_Register is record
      --  Read-only. I2C Master FSM Busy The BUSY bit is set during an ongoing
      --  transaction, so is set during the transmit/receive of the amount of
      --  data set in MBLEN including START, RESTART, Address and STOP signal
      --  generation when required for the current transaction.
      BUSY           : I2C0_MSR_BUSY_Field;
      --  Read-only. Error The error can be from the slave address not being
      --  acknowledged or the transmit data not being acknowledged.
      ERR            : I2C0_MSR_ERR_Field;
      --  Read-only. Acknowledge Address
      ADRACK         : I2C0_MSR_ADRACK_Field;
      --  Read-only. Acknowledge Data
      DATACK         : I2C0_MSR_DATACK_Field;
      --  Read-only. Arbitration Lost
      ARBLST         : I2C0_MSR_ARBLST_Field;
      --  Read-only. I2C Idle
      IDLE           : I2C0_MSR_IDLE_Field;
      --  Read-only. I2C Bus is Busy Master State Machine will wait until this
      --  bit is cleared before starting a transaction. When first enabling the
      --  Master in multi master environments, FW should wait for one I2C clock
      --  period after setting ACTIVE high before writing to the MTCR register
      --  to start the transaction so that if SCL goes low it will trigger the
      --  BUSBSY.
      BUSBSY         : I2C0_MSR_BUSBSY_Field;
      --  unspecified
      Reserved_7_15  : HAL.UInt9;
      --  Read-only. I2C Master Transaction Count This field contains the
      --  current count-down value of the transaction.
      MBCNT          : I2C0_MSR_I2C0_MASTER[%s]_MBCNT_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MSR_I2C0_MASTER[%s]_Register use record
      BUSY           at 0 range 0 .. 0;
      ERR            at 0 range 1 .. 1;
      ADRACK         at 0 range 2 .. 2;
      DATACK         at 0 range 3 .. 3;
      ARBLST         at 0 range 4 .. 4;
      IDLE           at 0 range 5 .. 5;
      BUSBSY         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      MBCNT          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype I2C0_MRXDATA_I2C0_MASTER[%s]_VALUE_Field is HAL.UInt8;

   --  I2C Master RXData
   type I2C0_MRXDATA_I2C0_MASTER[%s]_Register is record
      --  Read-only. Received Data. This field contains the last received data.
      VALUE         : I2C0_MRXDATA_I2C0_MASTER[%s]_VALUE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MRXDATA_I2C0_MASTER[%s]_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C0_MTXDATA_I2C0_MASTER[%s]_VALUE_Field is HAL.UInt8;

   --  I2C Master TXData
   type I2C0_MTXDATA_I2C0_MASTER[%s]_Register is record
      --  Transmit Data This byte contains the data to be transferred during
      --  the next transaction.
      VALUE         : I2C0_MTXDATA_I2C0_MASTER[%s]_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MTXDATA_I2C0_MASTER[%s]_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C0_MTPR_I2C0_MASTER[%s]_TPR_Field is HAL.UInt7;

   --  I2C Master Timer Period
   type I2C0_MTPR_I2C0_MASTER[%s]_Register is record
      --  Timer Period This field is used in the equation to configure
      --  SCL_PERIOD : SCL_PERIOD = (1 + TPR ) * (SCL_LP + SCL_HP ) *
      --  INT_CLK_PRD where: SCL_PRD is the SCL line period (I2C clock). TPR is
      --  the Timer Period register value (range of 1 to 127). SCL_LP is the
      --  SCL Low period (fixed at 6). SCL_HP is the SCL High period (fixed at
      --  4). CLK_PRD is the functional clock period in ns.
      TPR           : I2C0_MTPR_I2C0_MASTER[%s]_TPR_Field := 16#1#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MTPR_I2C0_MASTER[%s]_Register use record
      TPR           at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Device Active After this bit has been set, it should not be set again
   --  unless it has been cleared by writing a 0 or by a reset, otherwise
   --  transfer failures may occur.
   type I2C0_MCR_ACTIVE_Field is
     (--  Disables the I2C master operation.
      DISABLE,
      --  Enables the I2C master operation.
      ENABLE)
     with Size => 1;
   for I2C0_MCR_ACTIVE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Multimaster mode. In Multimaster mode the SCL high time counts once the
   --  SCL line has been detected high. If this is not enabled the high time
   --  counts as soon as the SCL line has been set high by the I2C controller.
   type I2C0_MCR_MMST_Field is
     (--  Disable Multimaster mode.
      DISABLE,
      --  Enable Multimaster mode.
      ENABLE)
     with Size => 1;
   for I2C0_MCR_MMST_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Stretching. This bit controls the support for clock stretching of
   --  the I2C bus.
   type I2C0_MCR_CLKSTRETCH_Field is
     (--  Disables the clock stretching detection. This can be disabled if no slave
--  on the bus does support clock stretching, so that the maximum speed on the
--  bus can be reached.
      DISABLE,
      --  Enables the clock stretching detection. Enabling the clock stretching
--  ensures compliance to the I2C standard but could limit the speed due the
--  clock stretching.
      ENABLE)
     with Size => 1;
   for I2C0_MCR_CLKSTRETCH_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Loopback
   type I2C0_MCR_LPBK_Field is
     (--  Normal operation.
      DISABLE,
      --  The controller in a test mode loopback configuration.
      ENABLE)
     with Size => 1;
   for I2C0_MCR_LPBK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Master Configuration
   type I2C0_MCR_I2C0_MASTER[%s]_Register is record
      --  Device Active After this bit has been set, it should not be set again
      --  unless it has been cleared by writing a 0 or by a reset, otherwise
      --  transfer failures may occur.
      ACTIVE        : I2C0_MCR_ACTIVE_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Multimaster mode. In Multimaster mode the SCL high time counts once
      --  the SCL line has been detected high. If this is not enabled the high
      --  time counts as soon as the SCL line has been set high by the I2C
      --  controller.
      MMST          : I2C0_MCR_MMST_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  Clock Stretching. This bit controls the support for clock stretching
      --  of the I2C bus.
      CLKSTRETCH    : I2C0_MCR_CLKSTRETCH_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_3_7  : HAL.UInt5 := 16#0#;
      --  I2C Loopback
      LPBK          : I2C0_MCR_LPBK_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MCR_I2C0_MASTER[%s]_Register use record
      ACTIVE        at 0 range 0 .. 0;
      MMST          at 0 range 1 .. 1;
      CLKSTRETCH    at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      LPBK          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  I2C SCL Status
   type I2C0_MBMON_SCL_Field is
     (--  The I2CSCL signal is low.
      CLEARED,
      --  The I2CSCL signal is high. Note: During and right after reset, the SCL pin
--  is in GPIO input mode without the internal pull enabled. For proper I2C
--  operation, the user should have the external pull-up resistor in place
--  before starting any I2C operations.
      SET)
     with Size => 1;
   for I2C0_MBMON_SCL_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C SDA Status
   type I2C0_MBMON_SDA_Field is
     (--  The I2CSDA signal is low.
      CLEARED,
      --  The I2CSDA signal is high. Note: During and right after reset, the SDA pin
--  is in GPIO input mode without the internal pull enabled. For proper I2C
--  operation, the user should have the external pull-up resistor in place
--  before starting any I2C operations.
      SET)
     with Size => 1;
   for I2C0_MBMON_SDA_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C Master Bus Monitor
   type I2C0_MBMON_I2C0_MASTER[%s]_Register is record
      --  Read-only. I2C SCL Status
      SCL           : I2C0_MBMON_SCL_Field;
      --  Read-only. I2C SDA Status
      SDA           : I2C0_MBMON_SDA_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MBMON_I2C0_MASTER[%s]_Register use record
      SCL           at 0 range 0 .. 0;
      SDA           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TX FIFO Trigger Indicates at what fill level in the TX FIFO a trigger
   --  will be generated.
   type I2C0_MFIFOCTL_TXTRIG_Field is
     (--  Trigger when the TX FIFO is empty.
      EMPTY,
      --  Trigger when TX FIFO contains 1 byte
      LEVEL_1,
      --  Trigger when TX FIFO contains 2 byte
      LEVEL_2,
      --  Trigger when TX FIFO contains 3 byte
      LEVEL_3,
      --  Trigger when TX FIFO contains 4 byte
      LEVEL_4,
      --  Trigger when TX FIFO contains 5 byte
      LEVEL_5,
      --  Trigger when TX FIFO contains 6 byte
      LEVEL_6,
      --  Trigger when TX FIFO contains 7 byte
      LEVEL_7)
     with Size => 3;
   for I2C0_MFIFOCTL_TXTRIG_Field use
     (EMPTY => 0,
      LEVEL_1 => 1,
      LEVEL_2 => 2,
      LEVEL_3 => 3,
      LEVEL_4 => 4,
      LEVEL_5 => 5,
      LEVEL_6 => 6,
      LEVEL_7 => 7);

   --  TX FIFO Flush Setting this bit will Flush the TX FIFO. Before clearing
   --  this bit to stop Flush the TXFIFOCNT should be checked to be 8 and
   --  indicating that the Flush has completed.
   type I2C0_MFIFOCTL_TXFLUSH_Field is
     (--  Do not Flush FIFO
      NOFLUSH,
      --  Flush FIFO
      FLUSH)
     with Size => 1;
   for I2C0_MFIFOCTL_TXFLUSH_Field use
     (NOFLUSH => 0,
      FLUSH => 1);

   --  RX FIFO Trigger Indicates at what fill level in the RX FIFO a trigger
   --  will be generated. Note: Programming RXTRIG to 0x0 has no effect since
   --  no data is present to transfer out of RX FIFO.
   type I2C0_MFIFOCTL_RXTRIG_Field is
     (--  Trigger when RX FIFO contains >= 1 byte
      LEVEL_1,
      --  Trigger when RX FIFO contains >= 2 byte
      LEVEL_2,
      --  Trigger when RX FIFO contains >= 3 byte
      LEVEL_3,
      --  Trigger when RX FIFO contains >= 4 byte
      LEVEL_4,
      --  Trigger when RX FIFO contains >= 5 byte
      LEVEL_5,
      --  Trigger when RX FIFO contains >= 6 byte
      LEVEL_6,
      --  Trigger when RX FIFO contains >= 7 byte
      LEVEL_7,
      --  Trigger when RX FIFO contains >= 8 byte
      LEVEL_8)
     with Size => 3;
   for I2C0_MFIFOCTL_RXTRIG_Field use
     (LEVEL_1 => 0,
      LEVEL_2 => 1,
      LEVEL_3 => 2,
      LEVEL_4 => 3,
      LEVEL_5 => 4,
      LEVEL_6 => 5,
      LEVEL_7 => 6,
      LEVEL_8 => 7);

   --  RX FIFO Flush Setting this bit will Flush the RX FIFO. Before clearing
   --  this bit to stop Flush the RXFIFOCNT should be checked to be 0 and
   --  indicating that the Flush has completed.
   type I2C0_MFIFOCTL_RXFLUSH_Field is
     (--  Do not Flush FIFO
      NOFLUSH,
      --  Flush FIFO
      FLUSH)
     with Size => 1;
   for I2C0_MFIFOCTL_RXFLUSH_Field use
     (NOFLUSH => 0,
      FLUSH => 1);

   --  I2C Master FIFO Control
   type I2C0_MFIFOCTL_I2C0_MASTER[%s]_Register is record
      --  TX FIFO Trigger Indicates at what fill level in the TX FIFO a trigger
      --  will be generated.
      TXTRIG         : I2C0_MFIFOCTL_TXTRIG_Field := MSPMC1104_SVD.I2C.EMPTY;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  TX FIFO Flush Setting this bit will Flush the TX FIFO. Before
      --  clearing this bit to stop Flush the TXFIFOCNT should be checked to be
      --  8 and indicating that the Flush has completed.
      TXFLUSH        : I2C0_MFIFOCTL_TXFLUSH_Field :=
                        MSPMC1104_SVD.I2C.NOFLUSH;
      --  RX FIFO Trigger Indicates at what fill level in the RX FIFO a trigger
      --  will be generated. Note: Programming RXTRIG to 0x0 has no effect
      --  since no data is present to transfer out of RX FIFO.
      RXTRIG         : I2C0_MFIFOCTL_RXTRIG_Field :=
                        MSPMC1104_SVD.I2C.LEVEL_1;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  RX FIFO Flush Setting this bit will Flush the RX FIFO. Before
      --  clearing this bit to stop Flush the RXFIFOCNT should be checked to be
      --  0 and indicating that the Flush has completed.
      RXFLUSH        : I2C0_MFIFOCTL_RXFLUSH_Field :=
                        MSPMC1104_SVD.I2C.NOFLUSH;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MFIFOCTL_I2C0_MASTER[%s]_Register use record
      TXTRIG         at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXFLUSH        at 0 range 7 .. 7;
      RXTRIG         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      RXFLUSH        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C0_MFIFOSR_I2C0_MASTER[%s]_RXFIFOCNT_Field is HAL.UInt4;

   --  RX FIFO Flush When this bit is set a Flush operation for the RX FIFO is
   --  active. Clear the RXFLUSH bit in the control register to stop.
   type I2C0_MFIFOSR_RXFLUSH_Field is
     (--  FIFO Flush not active
      INACTIVE,
      --  FIFO Flush active
      ACTIVE)
     with Size => 1;
   for I2C0_MFIFOSR_RXFLUSH_Field use
     (INACTIVE => 0,
      ACTIVE => 1);

   subtype I2C0_MFIFOSR_I2C0_MASTER[%s]_TXFIFOCNT_Field is HAL.UInt4;

   --  TX FIFO Flush When this bit is set a Flush operation for the TX FIFO is
   --  active. Clear the TXFLUSH bit in the control register to stop.
   type I2C0_MFIFOSR_TXFLUSH_Field is
     (--  FIFO Flush not active
      INACTIVE,
      --  FIFO Flush active
      ACTIVE)
     with Size => 1;
   for I2C0_MFIFOSR_TXFLUSH_Field use
     (INACTIVE => 0,
      ACTIVE => 1);

   --  I2C Master FIFO Status Register
   type I2C0_MFIFOSR_I2C0_MASTER[%s]_Register is record
      --  Read-only. Number of Bytes which could be read from the RX FIFO
      RXFIFOCNT      : I2C0_MFIFOSR_I2C0_MASTER[%s]_RXFIFOCNT_Field;
      --  unspecified
      Reserved_4_6   : HAL.UInt3;
      --  Read-only. RX FIFO Flush When this bit is set a Flush operation for
      --  the RX FIFO is active. Clear the RXFLUSH bit in the control register
      --  to stop.
      RXFLUSH        : I2C0_MFIFOSR_RXFLUSH_Field;
      --  Read-only. Number of Bytes which could be put into the TX FIFO
      TXFIFOCNT      : I2C0_MFIFOSR_I2C0_MASTER[%s]_TXFIFOCNT_Field;
      --  unspecified
      Reserved_12_14 : HAL.UInt3;
      --  Read-only. TX FIFO Flush When this bit is set a Flush operation for
      --  the TX FIFO is active. Clear the TXFLUSH bit in the control register
      --  to stop.
      TXFLUSH        : I2C0_MFIFOSR_TXFLUSH_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MFIFOSR_I2C0_MASTER[%s]_Register use record
      RXFIFOCNT      at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      RXFLUSH        at 0 range 7 .. 7;
      TXFIFOCNT      at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      TXFLUSH        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C0_MASTER_I2CPECCTL_I2C0_MASTER[%s]_PECCNT_Field is HAL.UInt9;

   --  PEC Enable This bit enables the SMB Packet Error Checking (PEC). When
   --  enabled the PEC is calculated on all bits accept the Start, Stop, Ack
   --  and Nack. The PEC LSFR and the Byte Counter is set to 0 when the State
   --  Machine is in the IDLE state, which occur following a Stop or when a
   --  timeout occurs. The Counter is also set to 0 after the PEC byte is sent
   --  or received. Note that the NACK is automatically send following a PEC
   --  byte that results in a PEC error. The PEC Polynomial is x^8 + x^2 + x^1
   --  + 1.
   type I2C0_MASTER_I2CPECCTL_PECEN_Field is
     (--  PEC is disabled in master mode
      DISABLE,
      --  PEC is enabled in master mode
      ENABLE)
     with Size => 1;
   for I2C0_MASTER_I2CPECCTL_PECEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C master PEC control register
   type I2C0_MASTER_I2CPECCTL_I2C0_MASTER[%s]_Register is record
      --  PEC Count When this field is non zero, the number of I2C bytes are
      --  counted (Note that although the PEC is calculated on the I2C address
      --  it is not counted at a byte). When the byte count = PECCNT and the
      --  state machine is transmitting, the contents of the LSFR is loaded
      --  into the shift register instead of the byte received from the Tx
      --  FIFO. When the state machine is receiving, after the last bit of this
      --  byte is received the LSFR is checked and if it is non-zero, a PEC RX
      --  Error interrupt is generated. The I2C packet must be padded to
      --  include the PEC byte for both transmit and receive. In transmit mode
      --  the FIFO must be loaded with a dummy PEC byte. In receive mode the
      --  PEC byte will be passed to the Rx FIFO. In the normal Master use
      --  case, FW would set PECEN=1 and PECCNT=SMB packet length (Not
      --  including Slave Address byte, but including the PEC byte). FW would
      --  then configure DMA to allow the packet to complete unassisted and
      --  write MCTR to initiate the transaction. Note that when the byte count
      --  = PEC CNT, the byte count is reset to 0 and multiple PEC calculation
      --  can automatically occur within a single I2C transaction. Note that
      --  any write to the MASTER_I2CPECCTL Register will clear the current PEC
      --  Byte Count in the Master State Machine.
      PECCNT         : I2C0_MASTER_I2CPECCTL_I2C0_MASTER[%s]_PECCNT_Field :=
                        16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  PEC Enable This bit enables the SMB Packet Error Checking (PEC). When
      --  enabled the PEC is calculated on all bits accept the Start, Stop, Ack
      --  and Nack. The PEC LSFR and the Byte Counter is set to 0 when the
      --  State Machine is in the IDLE state, which occur following a Stop or
      --  when a timeout occurs. The Counter is also set to 0 after the PEC
      --  byte is sent or received. Note that the NACK is automatically send
      --  following a PEC byte that results in a PEC error. The PEC Polynomial
      --  is x^8 + x^2 + x^1 + 1.
      PECEN          : I2C0_MASTER_I2CPECCTL_PECEN_Field :=
                        MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MASTER_I2CPECCTL_I2C0_MASTER[%s]_Register use record
      PECCNT         at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PECEN          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype I2C0_MASTER_PECSR_I2C0_MASTER[%s]_PECBYTECNT_Field is HAL.UInt9;

   --  This status bit indicates if the PEC was checked in the transaction that
   --  occurred before the last Stop. Latched on Stop.
   type I2C0_MASTER_PECSR_PECSTS_CHECK_Field is
     (--  Indicates PEC was not checked in the transaction that occurred before the
--  last Stop
      CLEARED,
      --  Indicates if the PEC was checked in the transaction that occurred before
--  the last Stop
      SET)
     with Size => 1;
   for I2C0_MASTER_PECSR_PECSTS_CHECK_Field use
     (CLEARED => 0,
      SET => 1);

   --  This status bit indicates if a PEC check error occurred in the
   --  transaction that occurred before the last Stop. Latched on Stop.
   type I2C0_MASTER_PECSR_PECSTS_ERROR_Field is
     (--  Indicates PEC check error did not occurr in the transaction that occurred
--  before the last Stop
      CLEARED,
      --  Indicates if a PEC check error occurred in the transaction that occurred
--  before the last Stop
      SET)
     with Size => 1;
   for I2C0_MASTER_PECSR_PECSTS_ERROR_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C master PEC status register
   type I2C0_MASTER_PECSR_I2C0_MASTER[%s]_Register is record
      --  Read-only. PEC Byte Count	 This is the current PEC Byte Count of the
      --  Master State Machine.
      PECBYTECNT     : I2C0_MASTER_PECSR_I2C0_MASTER[%s]_PECBYTECNT_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This status bit indicates if the PEC was checked in the
      --  transaction that occurred before the last Stop. Latched on Stop.
      PECSTS_CHECK   : I2C0_MASTER_PECSR_PECSTS_CHECK_Field;
      --  Read-only. This status bit indicates if a PEC check error occurred in
      --  the transaction that occurred before the last Stop. Latched on Stop.
      PECSTS_ERROR   : I2C0_MASTER_PECSR_PECSTS_ERROR_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_MASTER_PECSR_I2C0_MASTER[%s]_Register use record
      PECBYTECNT     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PECSTS_CHECK   at 0 range 16 .. 16;
      PECSTS_ERROR   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   type I2C0_MASTER[%s]_Cluster is record
      --  I2C Master Slave Address Register
      I2C0_MSA              : aliased I2C0_MSA_I2C0_MASTER[%s]_Register;
      --  I2C Master Control Register
      I2C0_MCTR             : aliased I2C0_MCTR_I2C0_MASTER[%s]_Register;
      --  I2C Master Status Register
      I2C0_MSR              : aliased I2C0_MSR_I2C0_MASTER[%s]_Register;
      --  I2C Master RXData
      I2C0_MRXDATA          : aliased I2C0_MRXDATA_I2C0_MASTER[%s]_Register;
      --  I2C Master TXData
      I2C0_MTXDATA          : aliased I2C0_MTXDATA_I2C0_MASTER[%s]_Register;
      --  I2C Master Timer Period
      I2C0_MTPR             : aliased I2C0_MTPR_I2C0_MASTER[%s]_Register;
      --  I2C Master Configuration
      I2C0_MCR              : aliased I2C0_MCR_I2C0_MASTER[%s]_Register;
      --  I2C Master Bus Monitor
      I2C0_MBMON            : aliased I2C0_MBMON_I2C0_MASTER[%s]_Register;
      --  I2C Master FIFO Control
      I2C0_MFIFOCTL         : aliased I2C0_MFIFOCTL_I2C0_MASTER[%s]_Register;
      --  I2C Master FIFO Status Register
      I2C0_MFIFOSR          : aliased I2C0_MFIFOSR_I2C0_MASTER[%s]_Register;
      --  I2C master PEC control register
      I2C0_MASTER_I2CPECCTL : aliased I2C0_MASTER_I2CPECCTL_I2C0_MASTER[%s]_Register;
      --  I2C master PEC status register
      I2C0_MASTER_PECSR     : aliased I2C0_MASTER_PECSR_I2C0_MASTER[%s]_Register;
   end record
     with Size => 448;

   for I2C0_MASTER[%s]_Cluster use record
      I2C0_MSA              at 16#0# range 0 .. 31;
      I2C0_MCTR             at 16#4# range 0 .. 31;
      I2C0_MSR              at 16#8# range 0 .. 31;
      I2C0_MRXDATA          at 16#C# range 0 .. 31;
      I2C0_MTXDATA          at 16#10# range 0 .. 31;
      I2C0_MTPR             at 16#14# range 0 .. 31;
      I2C0_MCR              at 16#18# range 0 .. 31;
      I2C0_MBMON            at 16#24# range 0 .. 31;
      I2C0_MFIFOCTL         at 16#28# range 0 .. 31;
      I2C0_MFIFOSR          at 16#2C# range 0 .. 31;
      I2C0_MASTER_I2CPECCTL at 16#30# range 0 .. 31;
      I2C0_MASTER_PECSR     at 16#34# range 0 .. 31;
   end record;

   ----------------------------------------
   -- I2C0_SLAVE[%s] cluster's Registers --
   ----------------------------------------

   subtype I2C0_SOAR_I2C0_SLAVE[%s]_OAR_Field is HAL.UInt10;

   --  I2C Slave Own Address Enable
   type I2C0_SOAR_OAREN_Field is
     (--  Disable OAR address
      DISABLE,
      --  Enable OAR address
      ENABLE)
     with Size => 1;
   for I2C0_SOAR_OAREN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This bit selects the adressing mode to be used in slave mode. When 0,
   --  7-bit addressing is used. When 1, 10-bit addressing is used.
   type I2C0_SOAR_SMODE_Field is
     (--  Enable 7-bit addressing
      MODE7,
      --  Enable 10-bit addressing
      MODE10)
     with Size => 1;
   for I2C0_SOAR_SMODE_Field use
     (MODE7 => 0,
      MODE10 => 1);

   --  I2C Slave Own Address
   type I2C0_SOAR_I2C0_SLAVE[%s]_Register is record
      --  I2C Slave Own Address: This field specifies bits A9 through A0 of the
      --  slave address. In 7-bit addressing mode as selected by I2CSOAR.MODE
      --  bit, the top 3 bits are don't care
      OAR            : I2C0_SOAR_I2C0_SLAVE[%s]_OAR_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  I2C Slave Own Address Enable
      OAREN          : I2C0_SOAR_OAREN_Field := MSPMC1104_SVD.I2C.ENABLE;
      --  This bit selects the adressing mode to be used in slave mode. When 0,
      --  7-bit addressing is used. When 1, 10-bit addressing is used.
      SMODE          : I2C0_SOAR_SMODE_Field := MSPMC1104_SVD.I2C.MODE7;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SOAR_I2C0_SLAVE[%s]_Register use record
      OAR            at 0 range 0 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      OAREN          at 0 range 14 .. 14;
      SMODE          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C0_SOAR2_I2C0_SLAVE[%s]_OAR2_Field is HAL.UInt7;

   --  I2C Slave Own Address 2 Enable
   type I2C0_SOAR2_OAR2EN_Field is
     (--  The alternate address is disabled.
      DISABLE,
      --  Enables the use of the alternate address in the OAR2 field.
      ENABLE)
     with Size => 1;
   for I2C0_SOAR2_OAR2EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype I2C0_SOAR2_I2C0_SLAVE[%s]_OAR2_MASK_Field is HAL.UInt7;

   --  I2C Slave Own Address 2
   type I2C0_SOAR2_I2C0_SLAVE[%s]_Register is record
      --  I2C Slave Own Address 2 This field specifies the alternate OAR2
      --  address.
      OAR2           : I2C0_SOAR2_I2C0_SLAVE[%s]_OAR2_Field := 16#0#;
      --  I2C Slave Own Address 2 Enable
      OAR2EN         : I2C0_SOAR2_OAR2EN_Field := MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  I2C Slave Own Address 2 Mask: This field specifies bits A6 through A0
      --  of the slave address. The bits with value 1 in SOAR2.OAR2_MASK field
      --  will make the corresponding incoming address bits to match by default
      --  regardless of the value inside SOAR2.OAR2 i.e. corresponding
      --  SOAR2.OAR2 bit is a dont care.
      OAR2_MASK      : I2C0_SOAR2_I2C0_SLAVE[%s]_OAR2_MASK_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SOAR2_I2C0_SLAVE[%s]_Register use record
      OAR2           at 0 range 0 .. 6;
      OAR2EN         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      OAR2_MASK      at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Device Active. Setting this bit enables the slave functionality.
   type I2C0_SCTR_ACTIVE_Field is
     (--  Disables the I2C slave operation.
      DISABLE,
      --  Enables the I2C slave operation.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_ACTIVE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  General call response enable Modify only when UCSWRST = 1. 0b = Do not
   --  respond to a general call 1b = Respond to a general call
   type I2C0_SCTR_GENCALL_Field is
     (--  Do not respond to a general call
      DISABLE,
      --  Respond to a general call
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_GENCALL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Slave Clock Stretch Enable
   type I2C0_SCTR_SCLKSTRETCH_Field is
     (--  Slave clock stretching is disabled
      DISABLE,
      --  Slave clock stretching is enabled
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_SCLKSTRETCH_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Tx Empty Interrupt on TREQ
   type I2C0_SCTR_TXEMPTY_ON_TREQ_Field is
     (--  When 0, RIS:STXEMPTY will be set when only the Slave TX FIFO is empty. This
--  allows the STXEMPTY interrupt to be used to indicate that the I2C bus is
--  being clock stretched and that Slave TX data is required.
      DISABLE,
      --  When 1, RIS:STXEMPTY will be set when the Slave State Machine is in the
--  TX_WAIT state which occurs when the TX FIFO is empty AND the I2C
--  transaction is clock stretched waiting for the FIFO to receive data.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_TXEMPTY_ON_TREQ_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Tx Trigger when slave FSM is in Tx Mode
   type I2C0_SCTR_TXTRIG_TXMODE_Field is
     (--  No special behavior
      DISABLE,
      --  When 1, RIS:TXFIFOTRG will be set when the Slave TX FIFO has reached the
--  trigger level AND the Slave State Machine is in the TXMODE as defined in
--  the SSR register. When cleared RIS:TXFIFOTRG will be set when the Slave TX
--  FIFO is at or above the trigger level. This setting can be used to hold off
--  the TX DMA until a transaction starts. This allows the DMA to be configured
--  when the I2C is idle but have it wait till the transaction starts to load
--  the Slave TX FIFO, so it can load from a memory buffer that might be
--  changing over time.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_TXTRIG_TXMODE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Tx transfer waits when stale data in Tx FIFO. This prevents stale bytes
   --  left in the TX FIFO from automatically being sent on the next I2C
   --  packet. Note: this should be used with TXEMPTY_ON_TREQ set to prevent
   --  the Slave State Machine from waiting for TX FIFO data without an
   --  interrupt notification when the FIFO data is stale.
   type I2C0_SCTR_TXWAIT_STALE_TXFIFO_Field is
     (--  When 0, the TX FIFO empty signal to the Slave State Machine indicates that
--  the TX FIFO is empty.
      DISABLE,
      --  When 1, the TX FIFO empty signal to the Slave State Machine will indicate
--  that the TX FIFO is empty or that the TX FIFO data is stale. The TX FIFO
--  data is determined to be stale when there is data in the TX FIFO when the
--  Slave State Machine leaves the TXMODE as defined in the SSR register. This
--  can occur is a Stop or timeout occur when there are bytes left in the TX
--  FIFO.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_TXWAIT_STALE_TXFIFO_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Rx full interrupt generated on RREQ condition as indicated in SSR
   type I2C0_SCTR_RXFULL_ON_RREQ_Field is
     (--  When 0, RIS:SRXFULL will be set when only the Slave RX FIFO is full. This
--  allows the SRXFULL interrupt to be used to indicate that the I2C bus is
--  being clock stretched and that the FW must either read the RX FIFO or
--  ACK/NACK the current Rx byte.
      DISABLE,
      --  When 1, RIS:SRXFULL will be set when the Slave State Machine is in the
--  RX_WAIT or RX_ACK_WAIT states which occurs when the I2C transaction is
--  clock stretched because the RX FIFO is full or the ACKOEN has been set and
--  the state machine is waiting for FW to ACK/NACK the current byte.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_RXFULL_ON_RREQ_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable Default Host Address
   type I2C0_SCTR_EN_DEFHOSTADR_Field is
     (--  When this bit is 0, the default host address is not matched NOTE: it may
--  still be matched if programmed inside SOAR/SOAR2
      DISABLE,
      --  When this bit is 1, default host address of 7h000_1000 is always matched by
--  the slave address match logic.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_EN_DEFHOSTADR_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable Alert Response Address
   type I2C0_SCTR_EN_ALRESPADR_Field is
     (--  When this bit is 0, the alert response address is not matched. NOTE: it may
--  still be matched if programmed inside SOAR/SOAR2
      DISABLE,
      --  When this bit is 1, alert response address of 7h000_1100 is always matched
--  by the slave address match logic.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_EN_ALRESPADR_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable Deault device address
   type I2C0_SCTR_EN_DEFDEVADR_Field is
     (--  When this bit is 0, the default device address is not matched. NOTE: it may
--  still be matched if programmed inside SOAR/SOAR2.
      DISABLE,
      --  When this bit is 1, default device address of 7h110_0001 is always matched
--  by the slave address match logic.
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_EN_DEFDEVADR_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Slave Wakeup Enable
   type I2C0_SCTR_SWUEN_Field is
     (--  When 0, the slave is not allowed to clock stretch on START detection
      DISABLE,
      --  When 1, the slave is allowed to clock stretch on START detection and wait
--  for faster clock to be abvailable. This allows clean wake up support for
--  I2C in low power mode use cases
      ENABLE)
     with Size => 1;
   for I2C0_SCTR_SWUEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Slave Control Register
   type I2C0_SCTR_I2C0_SLAVE[%s]_Register is record
      --  Device Active. Setting this bit enables the slave functionality.
      ACTIVE              : I2C0_SCTR_ACTIVE_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  General call response enable Modify only when UCSWRST = 1. 0b = Do
      --  not respond to a general call 1b = Respond to a general call
      GENCALL             : I2C0_SCTR_GENCALL_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Slave Clock Stretch Enable
      SCLKSTRETCH         : I2C0_SCTR_SCLKSTRETCH_Field :=
                             MSPMC1104_SVD.I2C.ENABLE;
      --  Tx Empty Interrupt on TREQ
      TXEMPTY_ON_TREQ     : I2C0_SCTR_TXEMPTY_ON_TREQ_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Tx Trigger when slave FSM is in Tx Mode
      TXTRIG_TXMODE       : I2C0_SCTR_TXTRIG_TXMODE_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Tx transfer waits when stale data in Tx FIFO. This prevents stale
      --  bytes left in the TX FIFO from automatically being sent on the next
      --  I2C packet. Note: this should be used with TXEMPTY_ON_TREQ set to
      --  prevent the Slave State Machine from waiting for TX FIFO data without
      --  an interrupt notification when the FIFO data is stale.
      TXWAIT_STALE_TXFIFO : I2C0_SCTR_TXWAIT_STALE_TXFIFO_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Rx full interrupt generated on RREQ condition as indicated in SSR
      RXFULL_ON_RREQ      : I2C0_SCTR_RXFULL_ON_RREQ_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Enable Default Host Address
      EN_DEFHOSTADR       : I2C0_SCTR_EN_DEFHOSTADR_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Enable Alert Response Address
      EN_ALRESPADR        : I2C0_SCTR_EN_ALRESPADR_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Enable Deault device address
      EN_DEFDEVADR        : I2C0_SCTR_EN_DEFDEVADR_Field :=
                             MSPMC1104_SVD.I2C.DISABLE;
      --  Slave Wakeup Enable
      SWUEN               : I2C0_SCTR_SWUEN_Field := MSPMC1104_SVD.I2C.ENABLE;
      --  unspecified
      Reserved_11_31      : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SCTR_I2C0_SLAVE[%s]_Register use record
      ACTIVE              at 0 range 0 .. 0;
      GENCALL             at 0 range 1 .. 1;
      SCLKSTRETCH         at 0 range 2 .. 2;
      TXEMPTY_ON_TREQ     at 0 range 3 .. 3;
      TXTRIG_TXMODE       at 0 range 4 .. 4;
      TXWAIT_STALE_TXFIFO at 0 range 5 .. 5;
      RXFULL_ON_RREQ      at 0 range 6 .. 6;
      EN_DEFHOSTADR       at 0 range 7 .. 7;
      EN_ALRESPADR        at 0 range 8 .. 8;
      EN_DEFDEVADR        at 0 range 9 .. 9;
      SWUEN               at 0 range 10 .. 10;
      Reserved_11_31      at 0 range 11 .. 31;
   end record;

   --  Receive Request
   type I2C0_SSR_RREQ_Field is
     (--  No outstanding receive data.
      CLEARED,
      --  The I2C controller has outstanding receive data from the I2C master and is
--  using clock stretching to delay the master until the data has been read
--  from the SRXDATA FIFO (Slave RX FIFO is full).
      SET)
     with Size => 1;
   for I2C0_SSR_RREQ_Field use
     (CLEARED => 0,
      SET => 1);

   --  Transmit Request
   type I2C0_SSR_TREQ_Field is
     (--  No outstanding transmit request.
      CLEARED,
      --  The I2C controller has been addressed as a slave transmitter and is using
--  clock stretching to delay the master until data has been written to the
--  STXDATA FIFO (Slave TX FIFO is empty).
      SET)
     with Size => 1;
   for I2C0_SSR_TREQ_Field use
     (CLEARED => 0,
      SET => 1);

   --  Slave FSM is in Rx MODE
   type I2C0_SSR_RXMODE_Field is
     (--  The Slave State Machine is not in the RX_DATA, RX_ACK, RX_WAIT, RX_ACK_WAIT
--  or ADDR_ACK state with the bus direction set to write.
      CLEARED,
      --  The Slave State Machine is in the RX_DATA, RX_ACK, RX_WAIT, RX_ACK_WAIT or
--  ADDR_ACK state with the bus direction set to write.
      SET)
     with Size => 1;
   for I2C0_SSR_RXMODE_Field use
     (CLEARED => 0,
      SET => 1);

   --  OAR2 Address Matched This bit gets reevaluated after every address
   --  comparison.
   type I2C0_SSR_OAR2SEL_Field is
     (--  Either the OAR2 address is not matched or the match is in legacy mode.
      CLEARED,
      --  OAR2 address matched and ACKed by the slave.
      SET)
     with Size => 1;
   for I2C0_SSR_OAR2SEL_Field use
     (CLEARED => 0,
      SET => 1);

   --  Quick Command Status Value Description: 0: The last transaction was a
   --  normal transaction or a transaction has not occurred. 1: The last
   --  transaction was a Quick Command transaction
   type I2C0_SSR_QCMDST_Field is
     (--  The last transaction was a normal transaction or a transaction has not
--  occurred.
      CLEARED,
      --  The last transaction was a Quick Command transaction.
      SET)
     with Size => 1;
   for I2C0_SSR_QCMDST_Field use
     (CLEARED => 0,
      SET => 1);

   --  Quick Command Read / Write This bit only has meaning when the QCMDST bit
   --  is set. Value Description: 0: Quick command was a write 1: Quick command
   --  was a read
   type I2C0_SSR_QCMDRW_Field is
     (--  Quick command was a write
      CLEARED,
      --  Quick command was a read
      SET)
     with Size => 1;
   for I2C0_SSR_QCMDRW_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C bus is busy
   type I2C0_SSR_BUSBSY_Field is
     (--  The I2C Bus is not busy
      CLEARED,
      --  The I2C Bus is busy. This is cleared on a timeout.
      SET)
     with Size => 1;
   for I2C0_SSR_BUSBSY_Field use
     (CLEARED => 0,
      SET => 1);

   --  Slave FSM is in TX MODE
   type I2C0_SSR_TXMODE_Field is
     (--  The Slave State Machine is not in TX_DATA, TX_WAIT, TX_ACK or ADDR_ACK
--  state with the bus direction set to read.
      CLEARED,
      --  The Slave State Machine is in TX_DATA, TX_WAIT, TX_ACK or ADDR_ACK state
--  with the bus direction set to read.
      SET)
     with Size => 1;
   for I2C0_SSR_TXMODE_Field use
     (CLEARED => 0,
      SET => 1);

   --  Stale Tx FIFO
   type I2C0_SSR_STALE_TXFIFO_Field is
     (--  Tx FIFO is not stale
      CLEARED,
      --  The TX FIFO is stale. This occurs when the TX FIFO was not emptied during
--  the previous I2C transaction.
      SET)
     with Size => 1;
   for I2C0_SSR_STALE_TXFIFO_Field use
     (CLEARED => 0,
      SET => 1);

   subtype I2C0_SSR_I2C0_SLAVE[%s]_ADDRMATCH_Field is HAL.UInt10;

   --  I2C Slave Status Register
   type I2C0_SSR_I2C0_SLAVE[%s]_Register is record
      --  Read-only. Receive Request
      RREQ           : I2C0_SSR_RREQ_Field;
      --  Read-only. Transmit Request
      TREQ           : I2C0_SSR_TREQ_Field;
      --  Read-only. Slave FSM is in Rx MODE
      RXMODE         : I2C0_SSR_RXMODE_Field;
      --  Read-only. OAR2 Address Matched This bit gets reevaluated after every
      --  address comparison.
      OAR2SEL        : I2C0_SSR_OAR2SEL_Field;
      --  Read-only. Quick Command Status Value Description: 0: The last
      --  transaction was a normal transaction or a transaction has not
      --  occurred. 1: The last transaction was a Quick Command transaction
      QCMDST         : I2C0_SSR_QCMDST_Field;
      --  Read-only. Quick Command Read / Write This bit only has meaning when
      --  the QCMDST bit is set. Value Description: 0: Quick command was a
      --  write 1: Quick command was a read
      QCMDRW         : I2C0_SSR_QCMDRW_Field;
      --  Read-only. I2C bus is busy
      BUSBSY         : I2C0_SSR_BUSBSY_Field;
      --  Read-only. Slave FSM is in TX MODE
      TXMODE         : I2C0_SSR_TXMODE_Field;
      --  Read-only. Stale Tx FIFO
      STALE_TXFIFO   : I2C0_SSR_STALE_TXFIFO_Field;
      --  Read-only. Indicates the address for which slave address match
      --  happened
      ADDRMATCH      : I2C0_SSR_I2C0_SLAVE[%s]_ADDRMATCH_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SSR_I2C0_SLAVE[%s]_Register use record
      RREQ           at 0 range 0 .. 0;
      TREQ           at 0 range 1 .. 1;
      RXMODE         at 0 range 2 .. 2;
      OAR2SEL        at 0 range 3 .. 3;
      QCMDST         at 0 range 4 .. 4;
      QCMDRW         at 0 range 5 .. 5;
      BUSBSY         at 0 range 6 .. 6;
      TXMODE         at 0 range 7 .. 7;
      STALE_TXFIFO   at 0 range 8 .. 8;
      ADDRMATCH      at 0 range 9 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype I2C0_SRXDATA_I2C0_SLAVE[%s]_VALUE_Field is HAL.UInt8;

   --  I2C Slave RXData
   type I2C0_SRXDATA_I2C0_SLAVE[%s]_Register is record
      --  Read-only. Received Data. This field contains the last received data.
      VALUE         : I2C0_SRXDATA_I2C0_SLAVE[%s]_VALUE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SRXDATA_I2C0_SLAVE[%s]_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype I2C0_STXDATA_I2C0_SLAVE[%s]_VALUE_Field is HAL.UInt8;

   --  I2C Slave TXData
   type I2C0_STXDATA_I2C0_SLAVE[%s]_Register is record
      --  Transmit Data This byte contains the data to be transferred during
      --  the next transaction.
      VALUE         : I2C0_STXDATA_I2C0_SLAVE[%s]_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_STXDATA_I2C0_SLAVE[%s]_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  I2C Slave ACK Override Enable
   type I2C0_SACKCTL_ACKOEN_Field is
     (--  A response in not provided.
      DISABLE,
      --  An ACK or NACK is sent according to the value written to the ACKOVAL bit.
      ENABLE)
     with Size => 1;
   for I2C0_SACKCTL_ACKOEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Slave ACK Override Value Note: for General Call this bit will be
   --  ignored if set to NACK and slave continues to receive data.
   type I2C0_SACKCTL_ACKOVAL_Field is
     (--  An ACK is sent indicating valid data or command.
      DISABLE,
      --  A NACK is sent indicating invalid data or command.
      ENABLE)
     with Size => 1;
   for I2C0_SACKCTL_ACKOVAL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  When set this bit will automatically turn on the Slave ACKOEN field
   --  following a Start Condition.
   type I2C0_SACKCTL_ACKOEN_ON_START_Field is
     (--  No special behavior
      DISABLE,
      --  When set this bit will automatically turn on the Slave ACKOEN field
--  following a Start Condition.
      ENABLE)
     with Size => 1;
   for I2C0_SACKCTL_ACKOEN_ON_START_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  When set this bit will automatically turn on the Slave ACKOEN field
   --  following the ACK/NACK of the byte received just prior to the PEC byte.
   --  Note that when ACKOEN is set the PEC byte will not automatically be
   --  ACKed/NACKed by the State Machine and FW must perform this function by
   --  writing SLAVE_SACKCTL.
   type I2C0_SACKCTL_ACKOEN_ON_PECNEXT_Field is
     (--  No special behavior
      DISABLE,
      --  When set this bit will automatically turn on the Slave ACKOEN field
--  following the ACK/NACK of the byte received just prior to the PEC byte.
--  Note that when ACKOEN is set the PEC byte will not automatically be
--  ACKed/NACKed by the State Machine and FW must perform this function by
--  writing SLAVE_SACKCTL.
      ENABLE)
     with Size => 1;
   for I2C0_SACKCTL_ACKOEN_ON_PECNEXT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  When set this bit will automatically turn on the Slave ACKOEN field
   --  following the ACK/NACK of the received PEC byte.
   type I2C0_SACKCTL_ACKOEN_ON_PECDONE_Field is
     (--  No special behavior
      DISABLE,
      --  When set this bit will automatically turn on the Slave ACKOEN field
--  following the ACK/NACK of the received PEC byte.
      ENABLE)
     with Size => 1;
   for I2C0_SACKCTL_ACKOEN_ON_PECDONE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Slave ACK Control
   type I2C0_SACKCTL_I2C0_SLAVE[%s]_Register is record
      --  I2C Slave ACK Override Enable
      ACKOEN            : I2C0_SACKCTL_ACKOEN_Field :=
                           MSPMC1104_SVD.I2C.DISABLE;
      --  I2C Slave ACK Override Value Note: for General Call this bit will be
      --  ignored if set to NACK and slave continues to receive data.
      ACKOVAL           : I2C0_SACKCTL_ACKOVAL_Field :=
                           MSPMC1104_SVD.I2C.DISABLE;
      --  When set this bit will automatically turn on the Slave ACKOEN field
      --  following a Start Condition.
      ACKOEN_ON_START   : I2C0_SACKCTL_ACKOEN_ON_START_Field :=
                           MSPMC1104_SVD.I2C.DISABLE;
      --  When set this bit will automatically turn on the Slave ACKOEN field
      --  following the ACK/NACK of the byte received just prior to the PEC
      --  byte. Note that when ACKOEN is set the PEC byte will not
      --  automatically be ACKed/NACKed by the State Machine and FW must
      --  perform this function by writing SLAVE_SACKCTL.
      ACKOEN_ON_PECNEXT : I2C0_SACKCTL_ACKOEN_ON_PECNEXT_Field :=
                           MSPMC1104_SVD.I2C.DISABLE;
      --  When set this bit will automatically turn on the Slave ACKOEN field
      --  following the ACK/NACK of the received PEC byte.
      ACKOEN_ON_PECDONE : I2C0_SACKCTL_ACKOEN_ON_PECDONE_Field :=
                           MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_5_31     : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SACKCTL_I2C0_SLAVE[%s]_Register use record
      ACKOEN            at 0 range 0 .. 0;
      ACKOVAL           at 0 range 1 .. 1;
      ACKOEN_ON_START   at 0 range 2 .. 2;
      ACKOEN_ON_PECNEXT at 0 range 3 .. 3;
      ACKOEN_ON_PECDONE at 0 range 4 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   --  TX FIFO Trigger Indicates at what fill level in the TX FIFO a trigger
   --  will be generated.
   type I2C0_SFIFOCTL_TXTRIG_Field is
     (--  Reset value for the field
      I2C0_SFIFOCTL_TXTRIG_Field_Reset,
      --  Trigger when TX FIFO contains 4 byte
      LEVEL_4,
      --  Trigger when TX FIFO contains 5 byte
      LEVEL_5,
      --  Trigger when TX FIFO contains 6 byte
      LEVEL_6,
      --  Trigger when TX FIFO contains 7 byte
      LEVEL_7)
     with Size => 3;
   for I2C0_SFIFOCTL_TXTRIG_Field use
     (I2C0_SFIFOCTL_TXTRIG_Field_Reset => 0,
      LEVEL_4 => 4,
      LEVEL_5 => 5,
      LEVEL_6 => 6,
      LEVEL_7 => 7);

   --  TX FIFO Flush Setting this bit will Flush the TX FIFO. Before clearing
   --  this bit to stop Flush the TXFIFOCNT should be checked to be 8 and
   --  indicating that the Flush has completed.
   type I2C0_SFIFOCTL_TXFLUSH_Field is
     (--  Do not Flush FIFO
      NOFLUSH,
      --  Flush FIFO
      FLUSH)
     with Size => 1;
   for I2C0_SFIFOCTL_TXFLUSH_Field use
     (NOFLUSH => 0,
      FLUSH => 1);

   --  RX FIFO Trigger Indicates at what fill level in the RX FIFO a trigger
   --  will be generated. Note: Programming RXTRIG to 0x0 has no effect since
   --  no data is present to transfer out of RX FIFO.
   type I2C0_SFIFOCTL_RXTRIG_Field is
     (--  Reset value for the field
      I2C0_SFIFOCTL_RXTRIG_Field_Reset,
      --  Trigger when RX FIFO contains >= 5 byte
      LEVEL_5,
      --  Trigger when RX FIFO contains >= 6 byte
      LEVEL_6,
      --  Trigger when RX FIFO contains >= 7 byte
      LEVEL_7,
      --  Trigger when RX FIFO contains >= 8 byte
      LEVEL_8)
     with Size => 3;
   for I2C0_SFIFOCTL_RXTRIG_Field use
     (I2C0_SFIFOCTL_RXTRIG_Field_Reset => 0,
      LEVEL_5 => 4,
      LEVEL_6 => 5,
      LEVEL_7 => 6,
      LEVEL_8 => 7);

   --  RX FIFO Flush Setting this bit will Flush the RX FIFO. Before clearing
   --  this bit to stop Flush the RXFIFOCNT should be checked to be 0 and
   --  indicating that the Flush has completed.
   type I2C0_SFIFOCTL_RXFLUSH_Field is
     (--  Do not Flush FIFO
      NOFLUSH,
      --  Flush FIFO
      FLUSH)
     with Size => 1;
   for I2C0_SFIFOCTL_RXFLUSH_Field use
     (NOFLUSH => 0,
      FLUSH => 1);

   --  I2C Slave FIFO Control
   type I2C0_SFIFOCTL_I2C0_SLAVE[%s]_Register is record
      --  TX FIFO Trigger Indicates at what fill level in the TX FIFO a trigger
      --  will be generated.
      TXTRIG         : I2C0_SFIFOCTL_TXTRIG_Field :=
                        I2C0_SFIFOCTL_TXTRIG_Field_Reset;
      --  unspecified
      Reserved_3_6   : HAL.UInt4 := 16#0#;
      --  TX FIFO Flush Setting this bit will Flush the TX FIFO. Before
      --  clearing this bit to stop Flush the TXFIFOCNT should be checked to be
      --  8 and indicating that the Flush has completed.
      TXFLUSH        : I2C0_SFIFOCTL_TXFLUSH_Field :=
                        MSPMC1104_SVD.I2C.NOFLUSH;
      --  RX FIFO Trigger Indicates at what fill level in the RX FIFO a trigger
      --  will be generated. Note: Programming RXTRIG to 0x0 has no effect
      --  since no data is present to transfer out of RX FIFO.
      RXTRIG         : I2C0_SFIFOCTL_RXTRIG_Field :=
                        I2C0_SFIFOCTL_RXTRIG_Field_Reset;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  RX FIFO Flush Setting this bit will Flush the RX FIFO. Before
      --  clearing this bit to stop Flush the RXFIFOCNT should be checked to be
      --  0 and indicating that the Flush has completed.
      RXFLUSH        : I2C0_SFIFOCTL_RXFLUSH_Field :=
                        MSPMC1104_SVD.I2C.NOFLUSH;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SFIFOCTL_I2C0_SLAVE[%s]_Register use record
      TXTRIG         at 0 range 0 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXFLUSH        at 0 range 7 .. 7;
      RXTRIG         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      RXFLUSH        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C0_SFIFOSR_I2C0_SLAVE[%s]_RXFIFOCNT_Field is HAL.UInt4;

   --  RX FIFO Flush When this bit is set a Flush operation for the RX FIFO is
   --  active. Clear the RXFLUSH bit in the control register to stop.
   type I2C0_SFIFOSR_RXFLUSH_Field is
     (--  FIFOFlush not active
      INACTIVE,
      --  FIFO Flush active
      ACTIVE)
     with Size => 1;
   for I2C0_SFIFOSR_RXFLUSH_Field use
     (INACTIVE => 0,
      ACTIVE => 1);

   subtype I2C0_SFIFOSR_I2C0_SLAVE[%s]_TXFIFOCNT_Field is HAL.UInt4;

   --  TX FIFO Flush When this bit is set a Flush operation for the TX FIFO is
   --  active. Clear the TXFLUSH bit in the control register to stop.
   type I2C0_SFIFOSR_TXFLUSH_Field is
     (--  FIFO Flush not active
      INACTIVE,
      --  FIFO Flush active
      ACTIVE)
     with Size => 1;
   for I2C0_SFIFOSR_TXFLUSH_Field use
     (INACTIVE => 0,
      ACTIVE => 1);

   --  I2C Slave FIFO Status Register
   type I2C0_SFIFOSR_I2C0_SLAVE[%s]_Register is record
      --  Read-only. Number of Bytes which could be read from the RX FIFO
      RXFIFOCNT      : I2C0_SFIFOSR_I2C0_SLAVE[%s]_RXFIFOCNT_Field;
      --  unspecified
      Reserved_4_6   : HAL.UInt3;
      --  Read-only. RX FIFO Flush When this bit is set a Flush operation for
      --  the RX FIFO is active. Clear the RXFLUSH bit in the control register
      --  to stop.
      RXFLUSH        : I2C0_SFIFOSR_RXFLUSH_Field;
      --  Read-only. Number of Bytes which could be put into the TX FIFO
      TXFIFOCNT      : I2C0_SFIFOSR_I2C0_SLAVE[%s]_TXFIFOCNT_Field;
      --  unspecified
      Reserved_12_14 : HAL.UInt3;
      --  Read-only. TX FIFO Flush When this bit is set a Flush operation for
      --  the TX FIFO is active. Clear the TXFLUSH bit in the control register
      --  to stop.
      TXFLUSH        : I2C0_SFIFOSR_TXFLUSH_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SFIFOSR_I2C0_SLAVE[%s]_Register use record
      RXFIFOCNT      at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      RXFLUSH        at 0 range 7 .. 7;
      TXFIFOCNT      at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      TXFLUSH        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2C0_SLAVE_PECCTL_I2C0_SLAVE[%s]_PECCNT_Field is HAL.UInt9;

   --  PEC Enable This bit enables the SMB Packet Error Checking (PEC). When
   --  enabled the PEC is calculated on all bits accept the Start, Stop, Ack
   --  and Nack. The PEC LSFR and the Byte Counter is set to 0 when the State
   --  Machine is in the IDLE state, which occur following a Stop or when a
   --  timeout occurs. The Counter is also set to 0 after the PEC byte is sent
   --  or received. Note that the NACK is automatically send following a PEC
   --  byte that results in a PEC error. The PEC Polynomial is x^8 + x^2 + x^1
   --  + 1.
   type I2C0_SLAVE_PECCTL_PECEN_Field is
     (--  PEC transmission and check is disabled
      DISABLE,
      --  PEC transmission and check is enabled
      ENABLE)
     with Size => 1;
   for I2C0_SLAVE_PECCTL_PECEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  I2C Slave PEC control register
   type I2C0_SLAVE_PECCTL_I2C0_SLAVE[%s]_Register is record
      --  When this field is non zero, the number of I2C data bytes are
      --  counted. When the byte count = PECCNT and the state machine is
      --  transmitting, the contents of the LSFR is loaded into the shift
      --  register instead of the byte received from the Tx FIFO. When the
      --  state machine is receiving, after the last bit of this byte is
      --  received the LSFR is checked and if it is non-zero, a PEC RX Error
      --  interrupt is generated. The I2C packet must be padded to include the
      --  PEC byte for both transmit and receive. In transmit mode the FIFO
      --  must be loaded with a dummy PEC byte. In receive mode the PEC byte
      --  will be passed to the Rx FIFO. In the normal Slave use case, FW would
      --  set PECEN=1 and PECCNT=0 and use the ACKOEN until the remaining SMB
      --  packet length is known. FW would then set the PECCNT to the remaining
      --  packet length (Including PEC bye). FW would then configure DMA to
      --  allow the packet to complete unassisted and exit NoAck mode. Note
      --  that when the byte count = PEC CNT, the byte count is reset to 0 and
      --  multiple PEC calculation can automatically occur within a single I2C
      --  transaction
      PECCNT         : I2C0_SLAVE_PECCTL_I2C0_SLAVE[%s]_PECCNT_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  PEC Enable This bit enables the SMB Packet Error Checking (PEC). When
      --  enabled the PEC is calculated on all bits accept the Start, Stop, Ack
      --  and Nack. The PEC LSFR and the Byte Counter is set to 0 when the
      --  State Machine is in the IDLE state, which occur following a Stop or
      --  when a timeout occurs. The Counter is also set to 0 after the PEC
      --  byte is sent or received. Note that the NACK is automatically send
      --  following a PEC byte that results in a PEC error. The PEC Polynomial
      --  is x^8 + x^2 + x^1 + 1.
      PECEN          : I2C0_SLAVE_PECCTL_PECEN_Field :=
                        MSPMC1104_SVD.I2C.DISABLE;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SLAVE_PECCTL_I2C0_SLAVE[%s]_Register use record
      PECCNT         at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PECEN          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype I2C0_SLAVE_PECSR_I2C0_SLAVE[%s]_PECBYTECNT_Field is HAL.UInt9;

   --  This status bit indicates if the PEC was checked in the transaction that
   --  occurred before the last Stop. Latched on Stop.
   type I2C0_SLAVE_PECSR_PECSTS_CHECK_Field is
     (--  Indicates PEC was not checked in the transaction that occurred before the
--  last Stop
      CLEARED,
      --  Indicates PEC was checked in the transaction that occurred before the last
--  Stop
      SET)
     with Size => 1;
   for I2C0_SLAVE_PECSR_PECSTS_CHECK_Field use
     (CLEARED => 0,
      SET => 1);

   --  This status bit indicates if a PEC check error occurred in the
   --  transaction that occurred before the last Stop. Latched on Stop.
   type I2C0_SLAVE_PECSR_PECSTS_ERROR_Field is
     (--  Indicates PEC check error did not occurr in the transaction that occurred
--  before the last Stop
      CLEARED,
      --  Indicates PEC check error occurred in the transaction that occurred before
--  the last Stop
      SET)
     with Size => 1;
   for I2C0_SLAVE_PECSR_PECSTS_ERROR_Field use
     (CLEARED => 0,
      SET => 1);

   --  I2C slave PEC status register
   type I2C0_SLAVE_PECSR_I2C0_SLAVE[%s]_Register is record
      --  Read-only. This is the current PEC Byte Count of the Slave State
      --  Machine.
      PECBYTECNT     : I2C0_SLAVE_PECSR_I2C0_SLAVE[%s]_PECBYTECNT_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This status bit indicates if the PEC was checked in the
      --  transaction that occurred before the last Stop. Latched on Stop.
      PECSTS_CHECK   : I2C0_SLAVE_PECSR_PECSTS_CHECK_Field;
      --  Read-only. This status bit indicates if a PEC check error occurred in
      --  the transaction that occurred before the last Stop. Latched on Stop.
      PECSTS_ERROR   : I2C0_SLAVE_PECSR_PECSTS_ERROR_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2C0_SLAVE_PECSR_I2C0_SLAVE[%s]_Register use record
      PECBYTECNT     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PECSTS_CHECK   at 0 range 16 .. 16;
      PECSTS_ERROR   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   type I2C0_SLAVE[%s]_Cluster is record
      --  I2C Slave Own Address
      I2C0_SOAR         : aliased I2C0_SOAR_I2C0_SLAVE[%s]_Register;
      --  I2C Slave Own Address 2
      I2C0_SOAR2        : aliased I2C0_SOAR2_I2C0_SLAVE[%s]_Register;
      --  I2C Slave Control Register
      I2C0_SCTR         : aliased I2C0_SCTR_I2C0_SLAVE[%s]_Register;
      --  I2C Slave Status Register
      I2C0_SSR          : aliased I2C0_SSR_I2C0_SLAVE[%s]_Register;
      --  I2C Slave RXData
      I2C0_SRXDATA      : aliased I2C0_SRXDATA_I2C0_SLAVE[%s]_Register;
      --  I2C Slave TXData
      I2C0_STXDATA      : aliased I2C0_STXDATA_I2C0_SLAVE[%s]_Register;
      --  I2C Slave ACK Control
      I2C0_SACKCTL      : aliased I2C0_SACKCTL_I2C0_SLAVE[%s]_Register;
      --  I2C Slave FIFO Control
      I2C0_SFIFOCTL     : aliased I2C0_SFIFOCTL_I2C0_SLAVE[%s]_Register;
      --  I2C Slave FIFO Status Register
      I2C0_SFIFOSR      : aliased I2C0_SFIFOSR_I2C0_SLAVE[%s]_Register;
      --  I2C Slave PEC control register
      I2C0_SLAVE_PECCTL : aliased I2C0_SLAVE_PECCTL_I2C0_SLAVE[%s]_Register;
      --  I2C slave PEC status register
      I2C0_SLAVE_PECSR  : aliased I2C0_SLAVE_PECSR_I2C0_SLAVE[%s]_Register;
   end record
     with Size => 352;

   for I2C0_SLAVE[%s]_Cluster use record
      I2C0_SOAR         at 16#0# range 0 .. 31;
      I2C0_SOAR2        at 16#4# range 0 .. 31;
      I2C0_SCTR         at 16#8# range 0 .. 31;
      I2C0_SSR          at 16#C# range 0 .. 31;
      I2C0_SRXDATA      at 16#10# range 0 .. 31;
      I2C0_STXDATA      at 16#14# range 0 .. 31;
      I2C0_SACKCTL      at 16#18# range 0 .. 31;
      I2C0_SFIFOCTL     at 16#1C# range 0 .. 31;
      I2C0_SFIFOSR      at 16#20# range 0 .. 31;
      I2C0_SLAVE_PECCTL at 16#24# range 0 .. 31;
      I2C0_SLAVE_PECSR  at 16#28# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type I2C0_Peripheral is record
      I2C0_GPRCM[%s]      : aliased I2C0_GPRCM[%s]_Cluster;
      --  Clock Divider
      I2C0_CLKDIV         : aliased I2C0_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      I2C0_CLKSEL         : aliased I2C0_CLKSEL_Register;
      --  Peripheral Debug Control
      I2C0_PDBGCTL        : aliased I2C0_PDBGCTL_Register;
      I2C0_INT_EVENT0[%s] : aliased I2C0_INT_EVENT0[%s]_Cluster;
      I2C0_INT_EVENT1[%s] : aliased I2C0_INT_EVENT1[%s]_Cluster;
      I2C0_INT_EVENT2[%s] : aliased I2C0_INT_EVENT2[%s]_Cluster;
      --  Event Mode
      I2C0_EVT_MODE       : aliased I2C0_EVT_MODE_Register;
      --  Interrupt control register
      I2C0_INTCTL         : aliased I2C0_INTCTL_Register;
      --  Module Description
      I2C0_DESC           : aliased I2C0_DESC_Register;
      --  I2C Glitch Filter Control
      I2C0_GFCTL          : aliased I2C0_GFCTL_Register;
      --  I2C Timeout Count Control Register
      I2C0_TIMEOUT_CTL    : aliased I2C0_TIMEOUT_CTL_Register;
      --  I2C Timeout Count Register
      I2C0_TIMEOUT_CNT    : aliased I2C0_TIMEOUT_CNT_Register;
      I2C0_MASTER[%s]     : aliased I2C0_MASTER[%s]_Cluster;
      I2C0_SLAVE[%s]      : aliased I2C0_SLAVE[%s]_Cluster;
   end record
     with Volatile;

   for I2C0_Peripheral use record
      I2C0_GPRCM[%s]      at 16#800# range 0 .. 191;
      I2C0_CLKDIV         at 16#1000# range 0 .. 31;
      I2C0_CLKSEL         at 16#1004# range 0 .. 31;
      I2C0_PDBGCTL        at 16#1018# range 0 .. 31;
      I2C0_INT_EVENT0[%s] at 16#1020# range 0 .. 351;
      I2C0_INT_EVENT1[%s] at 16#1050# range 0 .. 351;
      I2C0_INT_EVENT2[%s] at 16#1080# range 0 .. 351;
      I2C0_EVT_MODE       at 16#10E0# range 0 .. 31;
      I2C0_INTCTL         at 16#10E4# range 0 .. 31;
      I2C0_DESC           at 16#10FC# range 0 .. 31;
      I2C0_GFCTL          at 16#1200# range 0 .. 31;
      I2C0_TIMEOUT_CTL    at 16#1204# range 0 .. 31;
      I2C0_TIMEOUT_CNT    at 16#1208# range 0 .. 31;
      I2C0_MASTER[%s]     at 16#1210# range 0 .. 447;
      I2C0_SLAVE[%s]      at 16#1250# range 0 .. 351;
   end record;

   --  PERIPHERALREGION
   I2C0_Periph : aliased I2C0_Peripheral
     with Import, Address => I2C0_Base;

end MSPMC1104_SVD.I2C;
