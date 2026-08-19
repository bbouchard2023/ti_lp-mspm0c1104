pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.SPI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------------------------
   -- SPI0_GPRCM[%s] cluster's Registers --
   ----------------------------------------

   --  Enable the power
   type SPI0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for SPI0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type SPI0_PWREN_SPI0_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : SPI0_PWREN_ENABLE_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PWREN_SPI0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type SPI0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for SPI0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type SPI0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for SPI0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type SPI0_RSTCTL_SPI0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : SPI0_RSTCTL_RESETASSERT_Field := MSPMC1104_SVD.SPI.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : SPI0_RSTCTL_RESETSTKYCLR_Field := MSPMC1104_SVD.SPI.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RSTCTL_SPI0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Async Clock Request is blocked from starting SYSOSC or forcing bus clock
   --  to 32MHz
   type SPI0_CLKCFG_BLOCKASYNC_Field is
     (--  Not block async clock request
      DISABLE,
      --  Block async clock request
      ENABLE)
     with Size => 1;
   for SPI0_CLKCFG_BLOCKASYNC_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Peripheral Clock Configuration Register
   type SPI0_CLKCFG_SPI0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_7  : HAL.UInt8 := 16#0#;
      --  Async Clock Request is blocked from starting SYSOSC or forcing bus
      --  clock to 32MHz
      BLOCKASYNC    : SPI0_CLKCFG_BLOCKASYNC_Field :=
                       MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CLKCFG_SPI0_GPRCM[%s]_Register use record
      Reserved_0_7  at 0 range 0 .. 7;
      BLOCKASYNC    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type SPI0_GPRCM_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for SPI0_GPRCM_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type SPI0_GPRCM_STAT_SPI0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : SPI0_GPRCM_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_GPRCM_STAT_SPI0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type SPI0_GPRCM[%s]_Cluster is record
      --  Power enable
      SPI0_PWREN      : aliased SPI0_PWREN_SPI0_GPRCM[%s]_Register;
      --  Reset Control
      SPI0_RSTCTL     : aliased SPI0_RSTCTL_SPI0_GPRCM[%s]_Register;
      --  Peripheral Clock Configuration Register
      SPI0_CLKCFG     : aliased SPI0_CLKCFG_SPI0_GPRCM[%s]_Register;
      --  Status Register
      SPI0_GPRCM_STAT : aliased SPI0_GPRCM_STAT_SPI0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for SPI0_GPRCM[%s]_Cluster use record
      SPI0_PWREN      at 16#0# range 0 .. 31;
      SPI0_RSTCTL     at 16#4# range 0 .. 31;
      SPI0_CLKCFG     at 16#8# range 0 .. 31;
      SPI0_GPRCM_STAT at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type SPI0_CLKDIV_RATIO_Field is
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
   for SPI0_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type SPI0_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : SPI0_CLKDIV_RATIO_Field := MSPMC1104_SVD.SPI.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects LFCLK as clock source if enabled
   type SPI0_CLKSEL_LFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for SPI0_CLKSEL_LFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects MFCLK as clock source if enabled
   type SPI0_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for SPI0_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects SYSCLK as clock source if enabled
   type SPI0_CLKSEL_SYSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for SPI0_CLKSEL_SYSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type SPI0_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : SPI0_CLKSEL_LFCLK_SEL_Field :=
                       MSPMC1104_SVD.SPI.DISABLE;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : SPI0_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.SPI.DISABLE;
      --  Selects SYSCLK as clock source if enabled
      SYSCLK_SEL    : SPI0_CLKSEL_SYSCLK_SEL_Field :=
                       MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      SYSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type SPI0_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for SPI0_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type SPI0_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for SPI0_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type SPI0_PDBGCTL_Register is record
      --  Free run control
      FREE          : SPI0_PDBGCTL_FREE_Field := MSPMC1104_SVD.SPI.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : SPI0_PDBGCTL_SOFT_Field := MSPMC1104_SVD.SPI.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------------------------------
   -- SPI0_INT_EVENT0[%s] cluster's Registers --
   ---------------------------------------------

   --  Interrupt index status
   type SPI0_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  RX FIFO Overflow Event/interrupt pending
      RXFIFO_OFV_EVT,
      --  Transmit Parity Event/interrupt pending
      PER_EVT,
      --  SPI receive time-out interrupt
      RTOUT_EVT,
      --  Receive Event/interrupt pending
      RX_EVT,
      --  Transmit Event/interrupt pending
      TX_EVT,
      --  Transmit Buffer Empty Event/interrupt pending
      TX_EMPTY,
      --  End of Transmit Event/interrupt pending
      IDLE_EVT,
      --  DMA Done for Receive Event/interrupt pending
      DMA_DONE_RX_EVT,
      --  DMA Done for Transmit Event/interrupt pending
      DMA_DONE_TX_EVT,
      --  TX FIFO underflow interrupt
      TXFIFO_UNF_EVT,
      --  RX FIFO Full Interrupt
      RXFULL_EVT)
     with Size => 8;
   for SPI0_IIDX_STAT_Field use
     (NO_INTR => 0,
      RXFIFO_OFV_EVT => 1,
      PER_EVT => 2,
      RTOUT_EVT => 3,
      RX_EVT => 4,
      TX_EVT => 5,
      TX_EMPTY => 6,
      IDLE_EVT => 7,
      DMA_DONE_RX_EVT => 8,
      DMA_DONE_TX_EVT => 9,
      TXFIFO_UNF_EVT => 10,
      RXFULL_EVT => 11);

   --  Interrupt Index Register
   type SPI0_IIDX_SPI0_INT_EVENT0[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT          : SPI0_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IIDX_SPI0_INT_EVENT0[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RXFIFO overflow event mask.
   type SPI0_IMASK_RXFIFO_OVF_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_RXFIFO_OVF_Field use
     (CLR => 0,
      SET => 1);

   --  Parity error event mask.
   type SPI0_IMASK_PER_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_PER_Field use
     (CLR => 0,
      SET => 1);

   --  Enable SPI Receive Time-Out event mask.
   type SPI0_IMASK_RTOUT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  Receive FIFO event.This interrupt is set if the selected Receive FIFO
   --  level has been reached
   type SPI0_IMASK_RX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO event mask.
   type SPI0_IMASK_TX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty event mask.
   type SPI0_IMASK_TXEMPTY_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_TXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  SPI Idle event mask.
   type SPI0_IMASK_IDLE_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_IDLE_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done 1 event for RX event mask.
   type SPI0_IMASK_DMA_DONE_RX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done 1 event for TX event mask.
   type SPI0_IMASK_DMA_DONE_TX_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  TX FIFO underflow interrupt mask
   type SPI0_IMASK_TXFIFO_UNF_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_TXFIFO_UNF_Field use
     (CLR => 0,
      SET => 1);

   --  RX FIFO Full Interrupt Mask
   type SPI0_IMASK_RXFULL_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_IMASK_RXFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type SPI0_IMASK_SPI0_INT_EVENT0[%s]_Register is record
      --  RXFIFO overflow event mask.
      RXFIFO_OVF     : SPI0_IMASK_RXFIFO_OVF_Field := MSPMC1104_SVD.SPI.CLR;
      --  Parity error event mask.
      PER            : SPI0_IMASK_PER_Field := MSPMC1104_SVD.SPI.CLR;
      --  Enable SPI Receive Time-Out event mask.
      RTOUT          : SPI0_IMASK_RTOUT_Field := MSPMC1104_SVD.SPI.CLR;
      --  Receive FIFO event.This interrupt is set if the selected Receive FIFO
      --  level has been reached
      RX             : SPI0_IMASK_RX_Field := MSPMC1104_SVD.SPI.CLR;
      --  Transmit FIFO event mask.
      TX             : SPI0_IMASK_TX_Field := MSPMC1104_SVD.SPI.CLR;
      --  Transmit FIFO Empty event mask.
      TXEMPTY        : SPI0_IMASK_TXEMPTY_Field := MSPMC1104_SVD.SPI.CLR;
      --  SPI Idle event mask.
      IDLE           : SPI0_IMASK_IDLE_Field := MSPMC1104_SVD.SPI.CLR;
      --  DMA Done 1 event for RX event mask.
      DMA_DONE_RX    : SPI0_IMASK_DMA_DONE_RX_Field := MSPMC1104_SVD.SPI.CLR;
      --  DMA Done 1 event for TX event mask.
      DMA_DONE_TX    : SPI0_IMASK_DMA_DONE_TX_Field := MSPMC1104_SVD.SPI.CLR;
      --  TX FIFO underflow interrupt mask
      TXFIFO_UNF     : SPI0_IMASK_TXFIFO_UNF_Field := MSPMC1104_SVD.SPI.CLR;
      --  RX FIFO Full Interrupt Mask
      RXFULL         : SPI0_IMASK_RXFULL_Field := MSPMC1104_SVD.SPI.CLR;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IMASK_SPI0_INT_EVENT0[%s]_Register use record
      RXFIFO_OVF     at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      RTOUT          at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      TX             at 0 range 4 .. 4;
      TXEMPTY        at 0 range 5 .. 5;
      IDLE           at 0 range 6 .. 6;
      DMA_DONE_RX    at 0 range 7 .. 7;
      DMA_DONE_TX    at 0 range 8 .. 8;
      TXFIFO_UNF     at 0 range 9 .. 9;
      RXFULL         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RXFIFO overflow event. This interrupt is set if an RX FIFO overflow has
   --  been detected.
   type SPI0_RIS_RXFIFO_OVF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_RXFIFO_OVF_Field use
     (CLR => 0,
      SET => 1);

   --  Parity error event: this bit is set if a Parity error has been detected
   type SPI0_RIS_PER_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_PER_Field use
     (CLR => 0,
      SET => 1);

   --  SPI Receive Time-Out event.
   type SPI0_RIS_RTOUT_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  Receive FIFO event.This interrupt is set if the selected Receive FIFO
   --  level has been reached
   type SPI0_RIS_RX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO event..This interrupt is set if the selected Transmit FIFO
   --  level has been reached.
   type SPI0_RIS_TX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Transmit FIFO Empty interrupt mask. This interrupt is set if all data in
   --  the Transmit FIFO have been move to the shift register.
   type SPI0_RIS_TXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_TXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  SPI has done finished transfers and changed into IDLE mode. This bit is
   --  set when BUSY goes low.
   type SPI0_RIS_IDLE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_IDLE_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done 1 event for RX. This interrupt is set if the RX DMA channel
   --  sends the DONE signal. This allows the handling of the DMA event inside
   --  the mapped peripheral.
   type SPI0_RIS_DMA_DONE_RX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  DMA Done 1 event for TX. This interrupt is set if the TX DMA channel
   --  sends the DONE signal. This allows the handling of the DMA event inside
   --  the mapped peripheral.
   type SPI0_RIS_DMA_DONE_TX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  TX FIFO Underflow Interrupt
   type SPI0_RIS_TXFIFO_UNF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_TXFIFO_UNF_Field use
     (CLR => 0,
      SET => 1);

   --  RX FIFO Full Interrupt
   type SPI0_RIS_RXFULL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_RIS_RXFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type SPI0_RIS_SPI0_INT_EVENT0[%s]_Register is record
      --  Read-only. RXFIFO overflow event. This interrupt is set if an RX FIFO
      --  overflow has been detected.
      RXFIFO_OVF     : SPI0_RIS_RXFIFO_OVF_Field;
      --  Read-only. Parity error event: this bit is set if a Parity error has
      --  been detected
      PER            : SPI0_RIS_PER_Field;
      --  Read-only. SPI Receive Time-Out event.
      RTOUT          : SPI0_RIS_RTOUT_Field;
      --  Read-only. Receive FIFO event.This interrupt is set if the selected
      --  Receive FIFO level has been reached
      RX             : SPI0_RIS_RX_Field;
      --  Read-only. Transmit FIFO event..This interrupt is set if the selected
      --  Transmit FIFO level has been reached.
      TX             : SPI0_RIS_TX_Field;
      --  Read-only. Transmit FIFO Empty interrupt mask. This interrupt is set
      --  if all data in the Transmit FIFO have been move to the shift
      --  register.
      TXEMPTY        : SPI0_RIS_TXEMPTY_Field;
      --  Read-only. SPI has done finished transfers and changed into IDLE
      --  mode. This bit is set when BUSY goes low.
      IDLE           : SPI0_RIS_IDLE_Field;
      --  Read-only. DMA Done 1 event for RX. This interrupt is set if the RX
      --  DMA channel sends the DONE signal. This allows the handling of the
      --  DMA event inside the mapped peripheral.
      DMA_DONE_RX    : SPI0_RIS_DMA_DONE_RX_Field;
      --  Read-only. DMA Done 1 event for TX. This interrupt is set if the TX
      --  DMA channel sends the DONE signal. This allows the handling of the
      --  DMA event inside the mapped peripheral.
      DMA_DONE_TX    : SPI0_RIS_DMA_DONE_TX_Field;
      --  Read-only. TX FIFO Underflow Interrupt
      TXFIFO_UNF     : SPI0_RIS_TXFIFO_UNF_Field;
      --  Read-only. RX FIFO Full Interrupt
      RXFULL         : SPI0_RIS_RXFULL_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RIS_SPI0_INT_EVENT0[%s]_Register use record
      RXFIFO_OVF     at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      RTOUT          at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      TX             at 0 range 4 .. 4;
      TXEMPTY        at 0 range 5 .. 5;
      IDLE           at 0 range 6 .. 6;
      DMA_DONE_RX    at 0 range 7 .. 7;
      DMA_DONE_TX    at 0 range 8 .. 8;
      TXFIFO_UNF     at 0 range 9 .. 9;
      RXFULL         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Masked RXFIFO overflow event. This interrupt is set if an RX FIFO
   --  overflow has been detected.
   type SPI0_MIS_RXFIFO_OVF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_RXFIFO_OVF_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Parity error event: this bit if a Parity error has been detected
   type SPI0_MIS_PER_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_PER_Field use
     (CLR => 0,
      SET => 1);

   --  Masked SPI Receive Time-Out Interrupt.
   type SPI0_MIS_RTOUT_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_MIS_RTOUT_Field use
     (CLR => 0,
      SET => 1);

   --  Masked receive FIFO event.This interrupt is set if the selected Receive
   --  FIFO level has been reached
   type SPI0_MIS_RX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Transmit FIFO event. This interrupt is set if the selected
   --  Transmit FIFO level has been reached.
   type SPI0_MIS_TX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_TX_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Transmit FIFO Empty event.
   type SPI0_MIS_TXEMPTY_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_TXEMPTY_Field use
     (CLR => 0,
      SET => 1);

   --  Masked SPI IDLE mode event.
   type SPI0_MIS_IDLE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_IDLE_Field use
     (CLR => 0,
      SET => 1);

   --  Masked DMA Done 1 event for RX.
   type SPI0_MIS_DMA_DONE_RX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_DMA_DONE_RX_Field use
     (CLR => 0,
      SET => 1);

   --  Masked DMA Done 1 event for TX.
   type SPI0_MIS_DMA_DONE_TX_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_DMA_DONE_TX_Field use
     (CLR => 0,
      SET => 1);

   --  TX FIFO underflow interrupt
   type SPI0_MIS_TXFIFO_UNF_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_TXFIFO_UNF_Field use
     (CLR => 0,
      SET => 1);

   --  RX FIFO Full Interrupt
   type SPI0_MIS_RXFULL_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for SPI0_MIS_RXFULL_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type SPI0_MIS_SPI0_INT_EVENT0[%s]_Register is record
      --  Read-only. Masked RXFIFO overflow event. This interrupt is set if an
      --  RX FIFO overflow has been detected.
      RXFIFO_OVF     : SPI0_MIS_RXFIFO_OVF_Field;
      --  Read-only. Masked Parity error event: this bit if a Parity error has
      --  been detected
      PER            : SPI0_MIS_PER_Field;
      --  Read-only. Masked SPI Receive Time-Out Interrupt.
      RTOUT          : SPI0_MIS_RTOUT_Field;
      --  Read-only. Masked receive FIFO event.This interrupt is set if the
      --  selected Receive FIFO level has been reached
      RX             : SPI0_MIS_RX_Field;
      --  Read-only. Masked Transmit FIFO event. This interrupt is set if the
      --  selected Transmit FIFO level has been reached.
      TX             : SPI0_MIS_TX_Field;
      --  Read-only. Masked Transmit FIFO Empty event.
      TXEMPTY        : SPI0_MIS_TXEMPTY_Field;
      --  Read-only. Masked SPI IDLE mode event.
      IDLE           : SPI0_MIS_IDLE_Field;
      --  Read-only. Masked DMA Done 1 event for RX.
      DMA_DONE_RX    : SPI0_MIS_DMA_DONE_RX_Field;
      --  Read-only. Masked DMA Done 1 event for TX.
      DMA_DONE_TX    : SPI0_MIS_DMA_DONE_TX_Field;
      --  Read-only. TX FIFO underflow interrupt
      TXFIFO_UNF     : SPI0_MIS_TXFIFO_UNF_Field;
      --  Read-only. RX FIFO Full Interrupt
      RXFULL         : SPI0_MIS_RXFULL_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_MIS_SPI0_INT_EVENT0[%s]_Register use record
      RXFIFO_OVF     at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      RTOUT          at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      TX             at 0 range 4 .. 4;
      TXEMPTY        at 0 range 5 .. 5;
      IDLE           at 0 range 6 .. 6;
      DMA_DONE_RX    at 0 range 7 .. 7;
      DMA_DONE_TX    at 0 range 8 .. 8;
      TXFIFO_UNF     at 0 range 9 .. 9;
      RXFULL         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Set RXFIFO overflow event.
   type SPI0_ISET_RXFIFO_OVF_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_RXFIFO_OVF_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Parity error event.
   type SPI0_ISET_PER_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_PER_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set SPI Receive Time-Out Event.
   type SPI0_ISET_RTOUT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for SPI0_ISET_RTOUT_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Receive FIFO event.
   type SPI0_ISET_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_RX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Transmit FIFO event.
   type SPI0_ISET_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_TX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set Transmit FIFO Empty event.
   type SPI0_ISET_TXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_TXEMPTY_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set SPI IDLE mode event.
   type SPI0_ISET_IDLE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_IDLE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set DMA Done 1 event for RX.
   type SPI0_ISET_DMA_DONE_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_DMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set DMA Done 1 event for TX.
   type SPI0_ISET_DMA_DONE_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_DMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set TX FIFO Underflow Event
   type SPI0_ISET_TXFIFO_UNF_Field is
     (--  Writing has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_TXFIFO_UNF_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Set RX FIFO Full Event
   type SPI0_ISET_RXFULL_Field is
     (--  Writing has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for SPI0_ISET_RXFULL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type SPI0_ISET_SPI0_INT_EVENT0[%s]_Register is record
      --  Write-only. Set RXFIFO overflow event.
      RXFIFO_OVF     : SPI0_ISET_RXFIFO_OVF_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set Parity error event.
      PER            : SPI0_ISET_PER_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set SPI Receive Time-Out Event.
      RTOUT          : SPI0_ISET_RTOUT_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set Receive FIFO event.
      RX             : SPI0_ISET_RX_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set Transmit FIFO event.
      TX             : SPI0_ISET_TX_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set Transmit FIFO Empty event.
      TXEMPTY        : SPI0_ISET_TXEMPTY_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set SPI IDLE mode event.
      IDLE           : SPI0_ISET_IDLE_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set DMA Done 1 event for RX.
      DMA_DONE_RX    : SPI0_ISET_DMA_DONE_RX_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set DMA Done 1 event for TX.
      DMA_DONE_TX    : SPI0_ISET_DMA_DONE_TX_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set TX FIFO Underflow Event
      TXFIFO_UNF     : SPI0_ISET_TXFIFO_UNF_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Set RX FIFO Full Event
      RXFULL         : SPI0_ISET_RXFULL_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_ISET_SPI0_INT_EVENT0[%s]_Register use record
      RXFIFO_OVF     at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      RTOUT          at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      TX             at 0 range 4 .. 4;
      TXEMPTY        at 0 range 5 .. 5;
      IDLE           at 0 range 6 .. 6;
      DMA_DONE_RX    at 0 range 7 .. 7;
      DMA_DONE_TX    at 0 range 8 .. 8;
      TXFIFO_UNF     at 0 range 9 .. 9;
      RXFULL         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Clear RXFIFO overflow event.
   type SPI0_ICLR_RXFIFO_OVF_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_RXFIFO_OVF_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Parity error event.
   type SPI0_ICLR_PER_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_PER_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear SPI Receive Time-Out Event.
   type SPI0_ICLR_RTOUT_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt Mask
      CLR)
     with Size => 1;
   for SPI0_ICLR_RTOUT_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Receive FIFO event.
   type SPI0_ICLR_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_RX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Transmit FIFO event.
   type SPI0_ICLR_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_TX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear Transmit FIFO Empty event.
   type SPI0_ICLR_TXEMPTY_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_TXEMPTY_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear SPI IDLE mode event.
   type SPI0_ICLR_IDLE_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_IDLE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear DMA Done 1 event for RX.
   type SPI0_ICLR_DMA_DONE_RX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_DMA_DONE_RX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear DMA Done 1 event for TX.
   type SPI0_ICLR_DMA_DONE_TX_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_DMA_DONE_TX_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear TXFIFO underflow event
   type SPI0_ICLR_TXFIFO_UNF_Field is
     (--  Writing has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_TXFIFO_UNF_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clear RX FIFO underflow event
   type SPI0_ICLR_RXFULL_Field is
     (--  Writing has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for SPI0_ICLR_RXFULL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type SPI0_ICLR_SPI0_INT_EVENT0[%s]_Register is record
      --  Write-only. Clear RXFIFO overflow event.
      RXFIFO_OVF     : SPI0_ICLR_RXFIFO_OVF_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear Parity error event.
      PER            : SPI0_ICLR_PER_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear SPI Receive Time-Out Event.
      RTOUT          : SPI0_ICLR_RTOUT_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear Receive FIFO event.
      RX             : SPI0_ICLR_RX_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear Transmit FIFO event.
      TX             : SPI0_ICLR_TX_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear Transmit FIFO Empty event.
      TXEMPTY        : SPI0_ICLR_TXEMPTY_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear SPI IDLE mode event.
      IDLE           : SPI0_ICLR_IDLE_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear DMA Done 1 event for RX.
      DMA_DONE_RX    : SPI0_ICLR_DMA_DONE_RX_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear DMA Done 1 event for TX.
      DMA_DONE_TX    : SPI0_ICLR_DMA_DONE_TX_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear TXFIFO underflow event
      TXFIFO_UNF     : SPI0_ICLR_TXFIFO_UNF_Field :=
                        MSPMC1104_SVD.SPI.NO_EFFECT;
      --  Write-only. Clear RX FIFO underflow event
      RXFULL         : SPI0_ICLR_RXFULL_Field := MSPMC1104_SVD.SPI.NO_EFFECT;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_ICLR_SPI0_INT_EVENT0[%s]_Register use record
      RXFIFO_OVF     at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      RTOUT          at 0 range 2 .. 2;
      RX             at 0 range 3 .. 3;
      TX             at 0 range 4 .. 4;
      TXEMPTY        at 0 range 5 .. 5;
      IDLE           at 0 range 6 .. 6;
      DMA_DONE_RX    at 0 range 7 .. 7;
      DMA_DONE_TX    at 0 range 8 .. 8;
      TXFIFO_UNF     at 0 range 9 .. 9;
      RXFULL         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   type SPI0_INT_EVENT0[%s]_Cluster is record
      --  Interrupt Index Register
      SPI0_IIDX  : aliased SPI0_IIDX_SPI0_INT_EVENT0[%s]_Register;
      --  Interrupt mask
      SPI0_IMASK : aliased SPI0_IMASK_SPI0_INT_EVENT0[%s]_Register;
      --  Raw interrupt status
      SPI0_RIS   : aliased SPI0_RIS_SPI0_INT_EVENT0[%s]_Register;
      --  Masked interrupt status
      SPI0_MIS   : aliased SPI0_MIS_SPI0_INT_EVENT0[%s]_Register;
      --  Interrupt set
      SPI0_ISET  : aliased SPI0_ISET_SPI0_INT_EVENT0[%s]_Register;
      --  Interrupt clear
      SPI0_ICLR  : aliased SPI0_ICLR_SPI0_INT_EVENT0[%s]_Register;
   end record
     with Size => 352;

   for SPI0_INT_EVENT0[%s]_Cluster use record
      SPI0_IIDX  at 16#0# range 0 .. 31;
      SPI0_IMASK at 16#8# range 0 .. 31;
      SPI0_RIS   at 16#10# range 0 .. 31;
      SPI0_MIS   at 16#18# range 0 .. 31;
      SPI0_ISET  at 16#20# range 0 .. 31;
      SPI0_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT0]
   type SPI0_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for SPI0_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT1]
   type SPI0_EVT_MODE_INT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for SPI0_EVT_MODE_INT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT2]
   type SPI0_EVT_MODE_INT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for SPI0_EVT_MODE_INT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type SPI0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT0]
      INT0_CFG      : SPI0_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT1]
      INT1_CFG      : SPI0_EVT_MODE_INT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT2]
      INT2_CFG      : SPI0_EVT_MODE_INT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      INT1_CFG      at 0 range 2 .. 3;
      INT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Writing a 1 to this field re-evaluates the interrupt sources.
   type SPI0_INTCTL_INTEVAL_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      EVAL)
     with Size => 1;
   for SPI0_INTCTL_INTEVAL_Field use
     (DISABLE => 0,
      EVAL => 1);

   --  Interrupt control register
   type SPI0_INTCTL_Register is record
      --  Write-only. Writing a 1 to this field re-evaluates the interrupt
      --  sources.
      INTEVAL       : SPI0_INTCTL_INTEVAL_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_INTCTL_Register use record
      INTEVAL       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Data Size Select. Values 0 - 2 are reserved and shall not be used. 3h =
   --  4_BIT : 4-bit data SPI allows only values up to 16 Bit
   type SPI0_CTL0_DSS_Field is
     (--  Reset value for the field
      SPI0_CTL0_DSS_Field_Reset,
      --  Data Size Select bits: 4
      DSS_4,
      --  Data Size Select bits: 5
      DSS_5,
      --  Data Size Select bits: 6
      DSS_6,
      --  Data Size Select bits: 7
      DSS_7,
      --  Data Size Select bits: 8
      DSS_8,
      --  Data Size Select bits: 9
      DSS_9,
      --  Data Size Select bits: 10
      DSS_10,
      --  Data Size Select bits: 11
      DSS_11,
      --  Data Size Select bits: 12
      DSS_12,
      --  Data Size Select bits: 13
      DSS_13,
      --  Data Size Select bits: 14
      DSS_14,
      --  Data Size Select bits: 15
      DSS_15,
      --  Data Size Select bits: 16
      DSS_16,
      --  Data Size Select bits: 32
      DSS_32)
     with Size => 5;
   for SPI0_CTL0_DSS_Field use
     (SPI0_CTL0_DSS_Field_Reset => 0,
      DSS_4 => 3,
      DSS_5 => 4,
      DSS_6 => 5,
      DSS_7 => 6,
      DSS_8 => 7,
      DSS_9 => 8,
      DSS_10 => 9,
      DSS_11 => 10,
      DSS_12 => 11,
      DSS_13 => 12,
      DSS_14 => 13,
      DSS_15 => 14,
      DSS_16 => 15,
      DSS_32 => 31);

   --  Frame format Select
   type SPI0_CTL0_FRF_Field is
     (--  Motorola SPI frame format (3 wire mode)
      MOTOROLA_3WIRE,
      --  Motorola SPI frame format (4 wire mode)
      MOTOROLA_4WIRE,
      --  TI synchronous serial frame format
      TI_SYNC,
      --  National Microwire frame format
      MIRCOWIRE)
     with Size => 2;
   for SPI0_CTL0_FRF_Field use
     (MOTOROLA_3WIRE => 0,
      MOTOROLA_4WIRE => 1,
      TI_SYNC => 2,
      MIRCOWIRE => 3);

   --  Packing Enable. When 1, packing feature is enabled inside the IP When 0,
   --  packing feature is disabled inside the IP
   type SPI0_CTL0_PACKEN_Field is
     (--  Packing feature disabled
      DISABLED,
      --  Packing feature enabled
      ENABLED)
     with Size => 1;
   for SPI0_CTL0_PACKEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  CLKOUT polarity (Motorola SPI frame format only)
   type SPI0_CTL0_SPO_Field is
     (--  SPI produces a steady state LOW value on the CLKOUT
      LOW,
      --  SPI produces a steady state HIGH value on the CLKOUT
      HIGH)
     with Size => 1;
   for SPI0_CTL0_SPO_Field use
     (LOW => 0,
      HIGH => 1);

   --  CLKOUT phase (Motorola SPI frame format only) This bit selects the clock
   --  edge that captures data and enables it to change state. It has the most
   --  impact on the first bit transmitted by either permitting or not
   --  permitting a clock transition before the first data capture edge.
   type SPI0_CTL0_SPH_Field is
     (--  Data is captured on the first clock edge transition.
      FIRST,
      --  Data is captured on the second clock edge transition.
      SECOND)
     with Size => 1;
   for SPI0_CTL0_SPH_Field use
     (FIRST => 0,
      SECOND => 1);

   --  Select the CS line to control on data transfer This bit is applicable
   --  for both controller/target mode
   type SPI0_CTL0_CSSEL_Field is
     (--  CS line select: 0
      CSSEL_0,
      --  CS line select: 1
      CSSEL_1,
      --  CS line select: 2
      CSSEL_2,
      --  CS line select: 3
      CSSEL_3)
     with Size => 2;
   for SPI0_CTL0_CSSEL_Field use
     (CSSEL_0 => 0,
      CSSEL_1 => 1,
      CSSEL_2 => 2,
      CSSEL_3 => 3);

   --  Clear shift register counter on CS inactive This bit is relevant only in
   --  the peripheral, CTL1.CP=0.
   type SPI0_CTL0_CSCLR_Field is
     (--  Disable automatic clear of shift register when CS goes to disable.
      DISABLE,
      --  Enable automatic clear of shift register when CS goes to disable.
      ENABLE)
     with Size => 1;
   for SPI0_CTL0_CSCLR_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SPI control register 0
   type SPI0_CTL0_Register is record
      --  Data Size Select. Values 0 - 2 are reserved and shall not be used. 3h
      --  = 4_BIT : 4-bit data SPI allows only values up to 16 Bit
      DSS            : SPI0_CTL0_DSS_Field := SPI0_CTL0_DSS_Field_Reset;
      --  Frame format Select
      FRF            : SPI0_CTL0_FRF_Field :=
                        MSPMC1104_SVD.SPI.MOTOROLA_3WIRE;
      --  Packing Enable. When 1, packing feature is enabled inside the IP When
      --  0, packing feature is disabled inside the IP
      PACKEN         : SPI0_CTL0_PACKEN_Field := MSPMC1104_SVD.SPI.DISABLED;
      --  CLKOUT polarity (Motorola SPI frame format only)
      SPO            : SPI0_CTL0_SPO_Field := MSPMC1104_SVD.SPI.LOW;
      --  CLKOUT phase (Motorola SPI frame format only) This bit selects the
      --  clock edge that captures data and enables it to change state. It has
      --  the most impact on the first bit transmitted by either permitting or
      --  not permitting a clock transition before the first data capture edge.
      SPH            : SPI0_CTL0_SPH_Field := MSPMC1104_SVD.SPI.FIRST;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Select the CS line to control on data transfer This bit is applicable
      --  for both controller/target mode
      CSSEL          : SPI0_CTL0_CSSEL_Field := MSPMC1104_SVD.SPI.CSSEL_0;
      --  Clear shift register counter on CS inactive This bit is relevant only
      --  in the peripheral, CTL1.CP=0.
      CSCLR          : SPI0_CTL0_CSCLR_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CTL0_Register use record
      DSS            at 0 range 0 .. 4;
      FRF            at 0 range 5 .. 6;
      PACKEN         at 0 range 7 .. 7;
      SPO            at 0 range 8 .. 8;
      SPH            at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CSSEL          at 0 range 12 .. 13;
      CSCLR          at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  SPI enable
   type SPI0_CTL1_ENABLE_Field is
     (--  Disable module function
      DISABLE,
      --  Enable module function
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Loop back mode
   type SPI0_CTL1_LBM_Field is
     (--  Disable loopback mode
      DISABLE,
      --  Enable loopback mode
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_LBM_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Controller or peripheral mode select. This bit can be modified only when
   --  SPI is disabled, CTL1.ENABLE=0.
   type SPI0_CTL1_CP_Field is
     (--  Select Peripheral mode
      DISABLE,
      --  Select Controller Mode
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_CP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Peripheral-mode: Data output disabled This bit is relevant only in
   --  Peripheral mode. In multiple-peripheral system topologies, SPI
   --  controller can broadcast a message to all peripherals, while only one
   --  peripheral drives the line. POD can be used by the SPI peripheral to
   --  disable driving data on the line.
   type SPI0_CTL1_POD_Field is
     (--  SPI can drive the MISO output in peripheral mode.
      DISABLE,
      --  SPI cannot drive the MISO output in peripheral mode.
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_POD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  MSB first select. Controls the direction of the receive and transmit
   --  shift register.
   type SPI0_CTL1_MSB_Field is
     (--  LSB first
      DISABLE,
      --  MSB first
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_MSB_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Parity receive enable If enabled, parity reception check will be done
   --  for both controller and peripheral modes In case of a parity miss-match
   --  the parity error flag RIS.PER will be set.
   type SPI0_CTL1_PREN_Field is
     (--  Disable Parity receive function
      DISABLE,
      --  Enable Parity receive function
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_PREN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Even Parity Select
   type SPI0_CTL1_PES_Field is
     (--  Odd Parity mode
      DISABLE,
      --  Even Parity mode
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_PES_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Parity transmit enable If enabled, parity transmission will be done for
   --  both controller and peripheral modes.
   type SPI0_CTL1_PTEN_Field is
     (--  Parity transmission is disabled
      DISABLE,
      --  Parity transmission is enabled
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_PTEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Command/Data Mode enable
   type SPI0_CTL1_CDENABLE_Field is
     (--  CS3 is used for Chip Select
      DISABLE,
      --  CS3 is used as CD signal
      ENABLE)
     with Size => 1;
   for SPI0_CTL1_CDENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Command/Data Mode Value When CTL1.CDENABLE is 1, CS3 line is used as C/D
   --  signal to distinguish between Command (C/D low) and Data (C/D high)
   --  information. When a value is written into the CTL1.CDMODE bits, the C/D
   --  (CS3) line will go low for the given numbers of byte which are sent by
   --  the SPI, starting with the next value to be transmitted after which, C/D
   --  line will go high automatically 0: Manual mode with C/D signal as High
   --  1-14: C/D is low while this number of bytes are being sent after which,
   --  this field sets to 0 and C/D goes high. Reading this field at any time
   --  returns the remaining number of command bytes. 15: Manual mode with C/D
   --  signal as Low.
   type SPI0_CTL1_CDMODE_Field is
     (--  Manual mode: Data
      DATA,
      --  Manual mode: Command
      COMMAND)
     with Size => 4;
   for SPI0_CTL1_CDMODE_Field use
     (DATA => 0,
      COMMAND => 15);

   --  Counter to repeat last transfer 0: repeat last transfer is disabled. x:
   --  repeat the last transfer with the given number. The transfer will be
   --  started with writing a data into the TX Buffer. Sending the data will be
   --  repeated with the given value, so the data will be transferred X+1 times
   --  in total. The behavior is identical as if the data would be written into
   --  the TX Buffer that many times as defined by the value here. It can be
   --  used to clean a transfer or to pull a certain amount of data by a
   --  peripheral.
   type SPI0_CTL1_REPEATTX_Field is
     (--  REPEATTX disable
      DISABLE)
     with Size => 8;
   for SPI0_CTL1_REPEATTX_Field use
     (DISABLE => 0);

   subtype SPI0_CTL1_RXTIMEOUT_Field is HAL.UInt6;

   --  SPI control register 1
   type SPI0_CTL1_Register is record
      --  SPI enable
      ENABLE         : SPI0_CTL1_ENABLE_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Loop back mode
      LBM            : SPI0_CTL1_LBM_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Controller or peripheral mode select. This bit can be modified only
      --  when SPI is disabled, CTL1.ENABLE=0.
      CP             : SPI0_CTL1_CP_Field := MSPMC1104_SVD.SPI.ENABLE;
      --  Peripheral-mode: Data output disabled This bit is relevant only in
      --  Peripheral mode. In multiple-peripheral system topologies, SPI
      --  controller can broadcast a message to all peripherals, while only one
      --  peripheral drives the line. POD can be used by the SPI peripheral to
      --  disable driving data on the line.
      POD            : SPI0_CTL1_POD_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  MSB first select. Controls the direction of the receive and transmit
      --  shift register.
      MSB            : SPI0_CTL1_MSB_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Parity receive enable If enabled, parity reception check will be done
      --  for both controller and peripheral modes In case of a parity
      --  miss-match the parity error flag RIS.PER will be set.
      PREN           : SPI0_CTL1_PREN_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Even Parity Select
      PES            : SPI0_CTL1_PES_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Parity transmit enable If enabled, parity transmission will be done
      --  for both controller and peripheral modes.
      PTEN           : SPI0_CTL1_PTEN_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Command/Data Mode enable
      CDENABLE       : SPI0_CTL1_CDENABLE_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Command/Data Mode Value When CTL1.CDENABLE is 1, CS3 line is used as
      --  C/D signal to distinguish between Command (C/D low) and Data (C/D
      --  high) information. When a value is written into the CTL1.CDMODE bits,
      --  the C/D (CS3) line will go low for the given numbers of byte which
      --  are sent by the SPI, starting with the next value to be transmitted
      --  after which, C/D line will go high automatically 0: Manual mode with
      --  C/D signal as High 1-14: C/D is low while this number of bytes are
      --  being sent after which, this field sets to 0 and C/D goes high.
      --  Reading this field at any time returns the remaining number of
      --  command bytes. 15: Manual mode with C/D signal as Low.
      CDMODE         : SPI0_CTL1_CDMODE_Field := MSPMC1104_SVD.SPI.DATA;
      --  Counter to repeat last transfer 0: repeat last transfer is disabled.
      --  x: repeat the last transfer with the given number. The transfer will
      --  be started with writing a data into the TX Buffer. Sending the data
      --  will be repeated with the given value, so the data will be
      --  transferred X+1 times in total. The behavior is identical as if the
      --  data would be written into the TX Buffer that many times as defined
      --  by the value here. It can be used to clean a transfer or to pull a
      --  certain amount of data by a peripheral.
      REPEATTX       : SPI0_CTL1_REPEATTX_Field := MSPMC1104_SVD.SPI.DISABLE;
      --  Receive Timeout (only for Peripheral mode) Defines the number of
      --  Clock Cycles before after which the Receive Timeout flag RTOUT is
      --  set. The time is calculated using the control register for the clock
      --  selection and divider in the Controller mode configuration. A value
      --  of 0 disables this function.
      RXTIMEOUT      : SPI0_CTL1_RXTIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CTL1_Register use record
      ENABLE         at 0 range 0 .. 0;
      LBM            at 0 range 1 .. 1;
      CP             at 0 range 2 .. 2;
      POD            at 0 range 3 .. 3;
      MSB            at 0 range 4 .. 4;
      PREN           at 0 range 5 .. 5;
      PES            at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PTEN           at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      CDENABLE       at 0 range 11 .. 11;
      CDMODE         at 0 range 12 .. 15;
      REPEATTX       at 0 range 16 .. 23;
      RXTIMEOUT      at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SPI0_CLKCTL_SCR_Field is HAL.UInt10;
   subtype SPI0_CLKCTL_DSAMPLE_Field is HAL.UInt4;

   --  Clock prescaler and divider register.
   type SPI0_CLKCTL_Register is record
      --  Serial clock divider: This is used to generate the transmit and
      --  receive bit rate of the SPI. The SPI bit rate is (SPI's functional
      --  clock frequency)/((SCR+1)*2). SCR is a value from 0-1023.
      SCR            : SPI0_CLKCTL_SCR_Field := 16#0#;
      --  unspecified
      Reserved_10_27 : HAL.UInt18 := 16#0#;
      --  Delayed sampling value. In controller mode the data on the input pin
      --  will be delayed sampled by the defined clock cycles of internal
      --  functional clock hence relaxing the setup time of input data. This
      --  setting is useful in systems where the board delays and external
      --  peripheral delays are more than the input setup time of the
      --  controller. Please refer to the datasheet for values of controller
      --  input setup time and assess what DSAMPLE value meets the requirement
      --  of the system. Note: High values of DSAMPLE can cause HOLD time
      --  violations and must be factored in the calculations.
      DSAMPLE        : SPI0_CLKCTL_DSAMPLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_CLKCTL_Register use record
      SCR            at 0 range 0 .. 9;
      Reserved_10_27 at 0 range 10 .. 27;
      DSAMPLE        at 0 range 28 .. 31;
   end record;

   --  SPI Transmit Interrupt FIFO Level Select The trigger points for the
   --  transmit interrupt are as follows:
   type SPI0_IFLS_TXIFLSEL_Field is
     (--  Reserved
      LVL_OFF,
      --  TX FIFO <= 3/4 empty
      LVL_3_4,
      --  TX FIFO <= 1/2 empty (default)
      LVL_1_2,
      --  TX FIFO <= 1/4 empty
      LVL_1_4,
      --  Reserved
      LVL_RES4,
      --  TX FIFO is empty
      LVL_EMPTY,
      --  Reserved
      LVL_RES6,
      --  Trigger when TX FIFO has >= 1 frame free Should be used with DMA
      LEVEL_1)
     with Size => 3;
   for SPI0_IFLS_TXIFLSEL_Field use
     (LVL_OFF => 0,
      LVL_3_4 => 1,
      LVL_1_2 => 2,
      LVL_1_4 => 3,
      LVL_RES4 => 4,
      LVL_EMPTY => 5,
      LVL_RES6 => 6,
      LEVEL_1 => 7);

   --  SPI Receive Interrupt FIFO Level Select The trigger points for the
   --  receive interrupt are as follows:
   type SPI0_IFLS_RXIFLSEL_Field is
     (--  Reserved
      LVL_OFF,
      --  RX FIFO >= 1/4 full
      LVL_1_4,
      --  RX FIFO >= 1/2 full (default)
      LVL_1_2,
      --  RX FIFO >= 3/4 full
      LVL_3_4,
      --  Reserved
      LVL_RES4,
      --  RX FIFO is full
      LVL_FULL,
      --  Reserved
      LVL_RES6,
      --  Trigger when RX FIFO contains >= 1 frame
      LEVEL_1)
     with Size => 3;
   for SPI0_IFLS_RXIFLSEL_Field use
     (LVL_OFF => 0,
      LVL_1_4 => 1,
      LVL_1_2 => 2,
      LVL_3_4 => 3,
      LVL_RES4 => 4,
      LVL_FULL => 5,
      LVL_RES6 => 6,
      LEVEL_1 => 7);

   --  Interrupt FIFO Level Select Register
   type SPI0_IFLS_Register is record
      --  SPI Transmit Interrupt FIFO Level Select The trigger points for the
      --  transmit interrupt are as follows:
      TXIFLSEL      : SPI0_IFLS_TXIFLSEL_Field := MSPMC1104_SVD.SPI.LVL_1_2;
      --  SPI Receive Interrupt FIFO Level Select The trigger points for the
      --  receive interrupt are as follows:
      RXIFLSEL      : SPI0_IFLS_RXIFLSEL_Field := MSPMC1104_SVD.SPI.LVL_1_2;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_IFLS_Register use record
      TXIFLSEL      at 0 range 0 .. 2;
      RXIFLSEL      at 0 range 3 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Transmit FIFO empty.
   type SPI0_STAT_TFE_Field is
     (--  Transmit FIFO is not empty.
      NOT_EMPTY,
      --  Transmit FIFO is empty.
      EMPTY)
     with Size => 1;
   for SPI0_STAT_TFE_Field use
     (NOT_EMPTY => 0,
      EMPTY => 1);

   --  Transmit FIFO not full
   type SPI0_STAT_TNF_Field is
     (--  Transmit FIFO is full.
      FULL,
      --  Transmit FIFO is not full.
      NOT_FULL)
     with Size => 1;
   for SPI0_STAT_TNF_Field use
     (FULL => 0,
      NOT_FULL => 1);

   --  Receive FIFO empty.
   type SPI0_STAT_RFE_Field is
     (--  Receive FIFO is not empty.
      NOT_EMPTY,
      --  Receive FIFO is empty.
      EMPTY)
     with Size => 1;
   for SPI0_STAT_RFE_Field use
     (NOT_EMPTY => 0,
      EMPTY => 1);

   --  Receive FIFO not full
   type SPI0_STAT_RNF_Field is
     (--  Receive FIFO is full.
      FULL,
      --  Receive FIFO is not full.
      NOT_FULL)
     with Size => 1;
   for SPI0_STAT_RNF_Field use
     (FULL => 0,
      NOT_FULL => 1);

   --  Busy
   type SPI0_STAT_BUSY_Field is
     (--  SPI is in idle mode.
      IDLE,
      --  SPI is currently transmitting and/or receiving data, or transmit FIFO is
--  not empty.
      ACTIVE)
     with Size => 1;
   for SPI0_STAT_BUSY_Field use
     (IDLE => 0,
      ACTIVE => 1);

   --  Status Register
   type SPI0_STAT_Register is record
      --  Read-only. Transmit FIFO empty.
      TFE           : SPI0_STAT_TFE_Field;
      --  Read-only. Transmit FIFO not full
      TNF           : SPI0_STAT_TNF_Field;
      --  Read-only. Receive FIFO empty.
      RFE           : SPI0_STAT_RFE_Field;
      --  Read-only. Receive FIFO not full
      RNF           : SPI0_STAT_RNF_Field;
      --  Read-only. Busy
      BUSY          : SPI0_STAT_BUSY_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_STAT_Register use record
      TFE           at 0 range 0 .. 0;
      TNF           at 0 range 1 .. 1;
      RFE           at 0 range 2 .. 2;
      RNF           at 0 range 3 .. 3;
      BUSY          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SPI0_RXDATA_DATA_Field is HAL.UInt16;

   --  RXDATA Register
   type SPI0_RXDATA_Register is record
      --  Read-only. Received Data When PACKEN=1,two entries of the FIFO are
      --  returned as a 32-bit value. When PACKEN=0, 1 entry of FIFO is
      --  returned as 16-bit value. As data values are removed by the receive
      --  logic from the incoming data frame, they are placed into the entry in
      --  the receive FIFO, pointed to by the current FIFO write pointer.
      --  Received data less than 16 bits is automatically right justified in
      --  the receive buffer.
      DATA           : SPI0_RXDATA_DATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_RXDATA_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SPI0_TXDATA_DATA_Field is HAL.UInt16;

   --  TXDATA Register
   type SPI0_TXDATA_Register is record
      --  Transmit Data When read, last written value will be returned. If the
      --  last write to this field was a 32-bit write (with PACKEN=1), 32-bits
      --  will be returned and if the last write was a 16-bit write (PACKEN=0),
      --  those 16-bits will be returned. When written, one or two FIFO entries
      --  will be written depending on PACKEN value. Data values are removed
      --  from the transmit FIFO one value at a time by the transmit logic. It
      --  is loaded into the transmit serial shifter, then serially shifted out
      --  onto the TXD output pin at the programmed bit rate. When a data size
      --  of less than 16 bits is selected, the user must right-justify data
      --  written to the transmit FIFO. The transmit logic ignores the unused
      --  bits.
      DATA           : SPI0_TXDATA_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPI0_TXDATA_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type SPI0_Peripheral is record
      SPI0_GPRCM[%s]      : aliased SPI0_GPRCM[%s]_Cluster;
      --  Clock Divider
      SPI0_CLKDIV         : aliased SPI0_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      SPI0_CLKSEL         : aliased SPI0_CLKSEL_Register;
      --  Peripheral Debug Control
      SPI0_PDBGCTL        : aliased SPI0_PDBGCTL_Register;
      SPI0_INT_EVENT0[%s] : aliased SPI0_INT_EVENT0[%s]_Cluster;
      --  Event Mode
      SPI0_EVT_MODE       : aliased SPI0_EVT_MODE_Register;
      --  Interrupt control register
      SPI0_INTCTL         : aliased SPI0_INTCTL_Register;
      --  SPI control register 0
      SPI0_CTL0           : aliased SPI0_CTL0_Register;
      --  SPI control register 1
      SPI0_CTL1           : aliased SPI0_CTL1_Register;
      --  Clock prescaler and divider register.
      SPI0_CLKCTL         : aliased SPI0_CLKCTL_Register;
      --  Interrupt FIFO Level Select Register
      SPI0_IFLS           : aliased SPI0_IFLS_Register;
      --  Status Register
      SPI0_STAT           : aliased SPI0_STAT_Register;
      --  RXDATA Register
      SPI0_RXDATA         : aliased SPI0_RXDATA_Register;
      --  TXDATA Register
      SPI0_TXDATA         : aliased SPI0_TXDATA_Register;
   end record
     with Volatile;

   for SPI0_Peripheral use record
      SPI0_GPRCM[%s]      at 16#800# range 0 .. 191;
      SPI0_CLKDIV         at 16#1000# range 0 .. 31;
      SPI0_CLKSEL         at 16#1004# range 0 .. 31;
      SPI0_PDBGCTL        at 16#1018# range 0 .. 31;
      SPI0_INT_EVENT0[%s] at 16#1020# range 0 .. 351;
      SPI0_EVT_MODE       at 16#10E0# range 0 .. 31;
      SPI0_INTCTL         at 16#10E4# range 0 .. 31;
      SPI0_CTL0           at 16#1100# range 0 .. 31;
      SPI0_CTL1           at 16#1104# range 0 .. 31;
      SPI0_CLKCTL         at 16#1108# range 0 .. 31;
      SPI0_IFLS           at 16#110C# range 0 .. 31;
      SPI0_STAT           at 16#1110# range 0 .. 31;
      SPI0_RXDATA         at 16#1130# range 0 .. 31;
      SPI0_TXDATA         at 16#1140# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   SPI0_Periph : aliased SPI0_Peripheral
     with Import, Address => SPI0_Base;

end MSPMC1104_SVD.SPI;
