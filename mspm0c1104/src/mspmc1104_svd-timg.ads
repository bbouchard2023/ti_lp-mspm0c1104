pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.TIMG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG8_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG8_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subsciber Port 0
   type TIMG8_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG8_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG8_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG8_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type TIMG8_FSUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG8_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG8_FPUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG8_FPUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 0
   type TIMG8_FPUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG8_FPUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_FPUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG8_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG8_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 1
   type TIMG8_FPUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG8_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------------------------------
   -- TIMG8_GPRCM[%s] cluster's Registers --
   -----------------------------------------

   --  Enable the power
   type TIMG8_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for TIMG8_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type TIMG8_PWREN_TIMG8_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : TIMG8_PWREN_ENABLE_Field := MSPMC1104_SVD.TIMG.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_PWREN_TIMG8_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type TIMG8_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for TIMG8_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type TIMG8_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for TIMG8_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type TIMG8_RSTCTL_TIMG8_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : TIMG8_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.TIMG.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : TIMG8_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.TIMG.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_RSTCTL_TIMG8_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type TIMG8_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for TIMG8_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type TIMG8_STAT_TIMG8_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : TIMG8_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_STAT_TIMG8_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type TIMG8_GPRCM[%s]_Cluster is record
      --  Power enable
      TIMG8_PWREN  : aliased TIMG8_PWREN_TIMG8_GPRCM[%s]_Register;
      --  Reset Control
      TIMG8_RSTCTL : aliased TIMG8_RSTCTL_TIMG8_GPRCM[%s]_Register;
      --  Status Register
      TIMG8_STAT   : aliased TIMG8_STAT_TIMG8_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for TIMG8_GPRCM[%s]_Cluster use record
      TIMG8_PWREN  at 16#0# range 0 .. 31;
      TIMG8_RSTCTL at 16#4# range 0 .. 31;
      TIMG8_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type TIMG8_CLKDIV_RATIO_Field is
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
   for TIMG8_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type TIMG8_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : TIMG8_CLKDIV_RATIO_Field := MSPMC1104_SVD.TIMG.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects LFCLK as clock source if enabled
   type TIMG8_CLKSEL_LFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG8_CLKSEL_LFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects MFCLK as clock source if enabled
   type TIMG8_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG8_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects BUSCLK as clock source if enabled
   type TIMG8_CLKSEL_BUSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG8_CLKSEL_BUSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type TIMG8_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : TIMG8_CLKSEL_LFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : TIMG8_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  Selects BUSCLK as clock source if enabled
      BUSCLK_SEL    : TIMG8_CLKSEL_BUSCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type TIMG8_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for TIMG8_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type TIMG8_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for TIMG8_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type TIMG8_PDBGCTL_Register is record
      --  Free run control
      FREE          : TIMG8_PDBGCTL_FREE_Field := MSPMC1104_SVD.TIMG.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : TIMG8_PDBGCTL_SOFT_Field :=
                       MSPMC1104_SVD.TIMG.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------------------------------
   -- TIMG8_INT_EVENT cluster's Registers --
   -----------------------------------------

   --  Interrupt index status
   type TIMG8_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Interrupt Source: Zero event
      Z,
      --  REPLACE THIS WITH AN ACTUAL IRQ NAME
      L,
      --  Interrupt Source: Capture or compare down event (CCD0)
      CCD0,
      --  Interrupt Source: Capture or compare down event (CCD1)
      CCD1,
      --  Interrupt Source: Capture or compare down event (CCD2)
      CCD2,
      --  Interrupt Source: Capture or compare down event (CCD3)
      CCD3,
      --  Interrupt Source: Capture or compare up event (CCU0)
      CCU0,
      --  Interrupt Source: Capture or compare up event (CCU1)
      CCU1,
      --  Interrupt Source: Capture or compare up event (CCU2)
      CCU2,
      --  Interrupt Source: Capture or compare up event (CCU3)
      CCU3,
      --  Interrupt Source: Compare down event (CCD4)
      CCD4,
      --  Interrupt Source: Compare down event (CCD5)
      CCD5,
      --  Interrupt Source: Compare down event (CCU4)
      CCU4,
      --  Interrupt Source: Compare down event (CCU5)
      CCU5,
      --  Interrupt Source: Fault Event generated an interrupt.
      F,
      --  Interrupt Source: Trigger overflow
      TOV,
      --  Repeat Counter Zero
      REPC,
      --  Interrupt Source: Direction Change
      DC,
      --  QEI Incorrect state transition error
      QEIERR)
     with Size => 8;
   for TIMG8_IIDX_STAT_Field use
     (NO_INTR => 0,
      Z => 1,
      L => 2,
      CCD0 => 5,
      CCD1 => 6,
      CCD2 => 7,
      CCD3 => 8,
      CCU0 => 9,
      CCU1 => 10,
      CCU2 => 11,
      CCU3 => 12,
      CCD4 => 13,
      CCD5 => 14,
      CCU4 => 15,
      CCU5 => 16,
      F => 25,
      TOV => 26,
      REPC => 27,
      DC => 28,
      QEIERR => 29);

   --  Interrupt index
   type TIMG8_IIDX_TIMG8_INT_EVENT_Register is record
      --  Read-only. Interrupt index status
      STAT          : TIMG8_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_IIDX_TIMG8_INT_EVENT_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Zero Event mask
   type TIMG8_IMASK_Z_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG8_IMASK_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load Event mask
   type TIMG8_IMASK_L_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG8_IMASK_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or Compare DN event mask CCP0
   type TIMG8_IMASK_CCD0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG8_IMASK_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_IMASK_TIMG8_INT_EVENT_CCD array
   type TIMG8_IMASK_TIMG8_INT_EVENT_CCD_Field_Array is array (0 .. 1)
     of TIMG8_IMASK_CCD0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_IMASK_TIMG8_INT_EVENT_CCD
   type TIMG8_IMASK_TIMG8_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMG8_IMASK_TIMG8_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_IMASK_TIMG8_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capture or Compare UP event mask CCP0
   type TIMG8_IMASK_CCU0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG8_IMASK_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_IMASK_TIMG8_INT_EVENT_CCU array
   type TIMG8_IMASK_TIMG8_INT_EVENT_CCU_Field_Array is array (0 .. 1)
     of TIMG8_IMASK_CCU0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_IMASK_TIMG8_INT_EVENT_CCU
   type TIMG8_IMASK_TIMG8_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMG8_IMASK_TIMG8_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_IMASK_TIMG8_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Trigger Overflow Event mask
   type TIMG8_IMASK_TOV_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG8_IMASK_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Direction Change Event mask
   type TIMG8_IMASK_DC_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG8_IMASK_DC_Field use
     (CLR => 0,
      SET => 1);

   --  QEIERR Event mask
   type TIMG8_IMASK_QEIERR_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG8_IMASK_QEIERR_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type TIMG8_IMASK_TIMG8_INT_EVENT_Register is record
      --  Zero Event mask
      Z              : TIMG8_IMASK_Z_Field := MSPMC1104_SVD.TIMG.CLR;
      --  Load Event mask
      L              : TIMG8_IMASK_L_Field := MSPMC1104_SVD.TIMG.CLR;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Capture or Compare DN event mask CCP0
      CCD            : TIMG8_IMASK_TIMG8_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Capture or Compare UP event mask CCP0
      CCU            : TIMG8_IMASK_TIMG8_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_24 : HAL.UInt15 := 16#0#;
      --  Trigger Overflow Event mask
      TOV            : TIMG8_IMASK_TOV_Field := MSPMC1104_SVD.TIMG.CLR;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Direction Change Event mask
      DC             : TIMG8_IMASK_DC_Field := MSPMC1104_SVD.TIMG.CLR;
      --  QEIERR Event mask
      QEIERR         : TIMG8_IMASK_QEIERR_Field := MSPMC1104_SVD.TIMG.CLR;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_IMASK_TIMG8_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CCU            at 0 range 8 .. 9;
      Reserved_10_24 at 0 range 10 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DC             at 0 range 27 .. 27;
      QEIERR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMG8_RIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMG8_RIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMG8_RIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_RIS_TIMG8_INT_EVENT_CCD array
   type TIMG8_RIS_TIMG8_INT_EVENT_CCD_Field_Array is array (0 .. 1)
     of TIMG8_RIS_CCD0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_RIS_TIMG8_INT_EVENT_CCD
   type TIMG8_RIS_TIMG8_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMG8_RIS_TIMG8_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_RIS_TIMG8_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMG8_RIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_RIS_TIMG8_INT_EVENT_CCU array
   type TIMG8_RIS_TIMG8_INT_EVENT_CCU_Field_Array is array (0 .. 1)
     of TIMG8_RIS_CCU0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_RIS_TIMG8_INT_EVENT_CCU
   type TIMG8_RIS_TIMG8_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMG8_RIS_TIMG8_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_RIS_TIMG8_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Trigger overflow
   type TIMG8_RIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Direction Change
   type TIMG8_RIS_DC_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_DC_Field use
     (CLR => 0,
      SET => 1);

   --  QEIERR, set on an incorrect state transition on the encoder interface.
   type TIMG8_RIS_QEIERR_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_RIS_QEIERR_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type TIMG8_RIS_TIMG8_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMG8_RIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMG8_RIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMG8_RIS_TIMG8_INT_EVENT_CCD_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMG8_RIS_TIMG8_INT_EVENT_CCU_Field;
      --  unspecified
      Reserved_10_24 : HAL.UInt15;
      --  Read-only. Trigger overflow
      TOV            : TIMG8_RIS_TOV_Field;
      --  unspecified
      Reserved_26_26 : HAL.Bit;
      --  Read-only. Direction Change
      DC             : TIMG8_RIS_DC_Field;
      --  Read-only. QEIERR, set on an incorrect state transition on the
      --  encoder interface.
      QEIERR         : TIMG8_RIS_QEIERR_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_RIS_TIMG8_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CCU            at 0 range 8 .. 9;
      Reserved_10_24 at 0 range 10 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DC             at 0 range 27 .. 27;
      QEIERR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMG8_MIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMG8_MIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMG8_MIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_MIS_TIMG8_INT_EVENT_CCD array
   type TIMG8_MIS_TIMG8_INT_EVENT_CCD_Field_Array is array (0 .. 1)
     of TIMG8_MIS_CCD0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_MIS_TIMG8_INT_EVENT_CCD
   type TIMG8_MIS_TIMG8_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMG8_MIS_TIMG8_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_MIS_TIMG8_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMG8_MIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG8_MIS_TIMG8_INT_EVENT_CCU array
   type TIMG8_MIS_TIMG8_INT_EVENT_CCU_Field_Array is array (0 .. 1)
     of TIMG8_MIS_CCU0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_MIS_TIMG8_INT_EVENT_CCU
   type TIMG8_MIS_TIMG8_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMG8_MIS_TIMG8_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_MIS_TIMG8_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Trigger overflow
   type TIMG8_MIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Direction Change
   type TIMG8_MIS_DC_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_DC_Field use
     (CLR => 0,
      SET => 1);

   --  QEIERR
   type TIMG8_MIS_QEIERR_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_MIS_QEIERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type TIMG8_MIS_TIMG8_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMG8_MIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMG8_MIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMG8_MIS_TIMG8_INT_EVENT_CCD_Field;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMG8_MIS_TIMG8_INT_EVENT_CCU_Field;
      --  unspecified
      Reserved_10_24 : HAL.UInt15;
      --  Read-only. Trigger overflow
      TOV            : TIMG8_MIS_TOV_Field;
      --  unspecified
      Reserved_26_26 : HAL.Bit;
      --  Read-only. Direction Change
      DC             : TIMG8_MIS_DC_Field;
      --  Read-only. QEIERR
      QEIERR         : TIMG8_MIS_QEIERR_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_MIS_TIMG8_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CCU            at 0 range 8 .. 9;
      Reserved_10_24 at 0 range 10 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DC             at 0 range 27 .. 27;
      QEIERR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Zero event SET
   type TIMG8_ISET_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_Z_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Load event SET
   type TIMG8_ISET_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_L_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Capture or compare down event SET
   type TIMG8_ISET_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_CCD0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMG8_ISET_TIMG8_INT_EVENT_CCD array
   type TIMG8_ISET_TIMG8_INT_EVENT_CCD_Field_Array is array (0 .. 1)
     of TIMG8_ISET_CCD0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_ISET_TIMG8_INT_EVENT_CCD
   type TIMG8_ISET_TIMG8_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMG8_ISET_TIMG8_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_ISET_TIMG8_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capture or compare up event SET
   type TIMG8_ISET_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_CCU0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMG8_ISET_TIMG8_INT_EVENT_CCU array
   type TIMG8_ISET_TIMG8_INT_EVENT_CCU_Field_Array is array (0 .. 1)
     of TIMG8_ISET_CCU0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_ISET_TIMG8_INT_EVENT_CCU
   type TIMG8_ISET_TIMG8_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMG8_ISET_TIMG8_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_ISET_TIMG8_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Trigger Overflow event SET
   type TIMG8_ISET_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_TOV_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Direction Change event SET
   type TIMG8_ISET_DC_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_DC_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  QEIERR event SET
   type TIMG8_ISET_QEIERR_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG8_ISET_QEIERR_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type TIMG8_ISET_TIMG8_INT_EVENT_Register is record
      --  Write-only. Zero event SET
      Z              : TIMG8_ISET_Z_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. Load event SET
      L              : TIMG8_ISET_L_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event SET
      CCD            : TIMG8_ISET_TIMG8_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare up event SET
      CCU            : TIMG8_ISET_TIMG8_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_24 : HAL.UInt15 := 16#0#;
      --  Write-only. Trigger Overflow event SET
      TOV            : TIMG8_ISET_TOV_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Write-only. Direction Change event SET
      DC             : TIMG8_ISET_DC_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. QEIERR event SET
      QEIERR         : TIMG8_ISET_QEIERR_Field :=
                        MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_ISET_TIMG8_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CCU            at 0 range 8 .. 9;
      Reserved_10_24 at 0 range 10 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DC             at 0 range 27 .. 27;
      QEIERR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Zero event CLEAR
   type TIMG8_ICLR_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_Z_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Load event CLEAR
   type TIMG8_ICLR_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_L_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Capture or compare down event CLEAR
   type TIMG8_ICLR_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_CCD0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMG8_ICLR_TIMG8_INT_EVENT_CCD array
   type TIMG8_ICLR_TIMG8_INT_EVENT_CCD_Field_Array is array (0 .. 1)
     of TIMG8_ICLR_CCD0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_ICLR_TIMG8_INT_EVENT_CCD
   type TIMG8_ICLR_TIMG8_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMG8_ICLR_TIMG8_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_ICLR_TIMG8_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Capture or compare up event CLEAR
   type TIMG8_ICLR_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_CCU0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMG8_ICLR_TIMG8_INT_EVENT_CCU array
   type TIMG8_ICLR_TIMG8_INT_EVENT_CCU_Field_Array is array (0 .. 1)
     of TIMG8_ICLR_CCU0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_ICLR_TIMG8_INT_EVENT_CCU
   type TIMG8_ICLR_TIMG8_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMG8_ICLR_TIMG8_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_ICLR_TIMG8_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Trigger Overflow event CLEAR
   type TIMG8_ICLR_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_TOV_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Direction Change event CLEAR
   type TIMG8_ICLR_DC_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_DC_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  QEIERR event CLEAR
   type TIMG8_ICLR_QEIERR_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG8_ICLR_QEIERR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type TIMG8_ICLR_TIMG8_INT_EVENT_Register is record
      --  Write-only. Zero event CLEAR
      Z              : TIMG8_ICLR_Z_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. Load event CLEAR
      L              : TIMG8_ICLR_L_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event CLEAR
      CCD            : TIMG8_ICLR_TIMG8_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare up event CLEAR
      CCU            : TIMG8_ICLR_TIMG8_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_24 : HAL.UInt15 := 16#0#;
      --  Write-only. Trigger Overflow event CLEAR
      TOV            : TIMG8_ICLR_TOV_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Write-only. Direction Change event CLEAR
      DC             : TIMG8_ICLR_DC_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. QEIERR event CLEAR
      QEIERR         : TIMG8_ICLR_QEIERR_Field :=
                        MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_ICLR_TIMG8_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CCU            at 0 range 8 .. 9;
      Reserved_10_24 at 0 range 10 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      DC             at 0 range 27 .. 27;
      QEIERR         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type TIMG8_INT_EVENT_Cluster is record
      --  Interrupt index
      TIMG8_IIDX  : aliased TIMG8_IIDX_TIMG8_INT_EVENT_Register;
      --  Interrupt mask
      TIMG8_IMASK : aliased TIMG8_IMASK_TIMG8_INT_EVENT_Register;
      --  Raw interrupt status
      TIMG8_RIS   : aliased TIMG8_RIS_TIMG8_INT_EVENT_Register;
      --  Masked interrupt status
      TIMG8_MIS   : aliased TIMG8_MIS_TIMG8_INT_EVENT_Register;
      --  Interrupt set
      TIMG8_ISET  : aliased TIMG8_ISET_TIMG8_INT_EVENT_Register;
      --  Interrupt clear
      TIMG8_ICLR  : aliased TIMG8_ICLR_TIMG8_INT_EVENT_Register;
   end record
     with Size => 352;

   for TIMG8_INT_EVENT_Cluster use record
      TIMG8_IIDX  at 16#0# range 0 .. 31;
      TIMG8_IMASK at 16#8# range 0 .. 31;
      TIMG8_RIS   at 16#10# range 0 .. 31;
      TIMG8_MIS   at 16#18# range 0 .. 31;
      TIMG8_ISET  at 16#20# range 0 .. 31;
      TIMG8_ICLR  at 16#28# range 0 .. 31;
   end record;

   type TIMG8_INT_EVENT_Clusters is array (0 .. 2) of TIMG8_INT_EVENT_Cluster;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][0]
   type TIMG8_EVT_MODE_EVT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG8_EVT_MODE_EVT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMG8_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG8_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMG8_EVT_MODE_EVT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG8_EVT_MODE_EVT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type TIMG8_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][0]
      EVT0_CFG      : TIMG8_EVT_MODE_EVT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT1_CFG      : TIMG8_EVT_MODE_EVT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT2_CFG      : TIMG8_EVT_MODE_EVT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_EVT_MODE_Register use record
      EVT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      EVT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TIMG8_DESC_MINREV_Field is HAL.UInt4;
   subtype TIMG8_DESC_MAJREV_Field is HAL.UInt4;
   subtype TIMG8_DESC_INSTNUM_Field is HAL.UInt4;
   subtype TIMG8_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype TIMG8_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type TIMG8_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : TIMG8_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : TIMG8_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : TIMG8_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : TIMG8_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : TIMG8_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   ----------------------------------------------
   -- TIMG8_COMMONREGS[%s] cluster's Registers --
   ----------------------------------------------

   --  Counter CCP0
   type TIMG8_CCPD_C0CCP0_Field is
     (--  Input
      INPUT,
      --  Output
      OUTPUT)
     with Size => 1;
   for TIMG8_CCPD_C0CCP0_Field use
     (INPUT => 0,
      OUTPUT => 1);

   --  TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP array
   type TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP_Field_Array is array (0 .. 1)
     of TIMG8_CCPD_C0CCP0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP
   type TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  C0CCP as a value
            Val : HAL.UInt2;
         when True =>
            --  C0CCP as an array
            Arr : TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCP Direction
   type TIMG8_CCPD_TIMG8_COMMONREGS[%s]_Register is record
      --  Counter CCP0
      C0CCP         : TIMG8_CCPD_TIMG8_COMMONREGS[%s]_C0CCP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CCPD_TIMG8_COMMONREGS[%s]_Register use record
      C0CCP         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMG8_ODIS_C0CCP0_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[0].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[0] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMG8_ODIS_C0CCP0_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMG8_ODIS_C0CCP1_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[1].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[1] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMG8_ODIS_C0CCP1_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Output Disable
   type TIMG8_ODIS_TIMG8_COMMONREGS[%s]_Register is record
      --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP0        : TIMG8_ODIS_C0CCP0_Field :=
                       MSPMC1104_SVD.TIMG.CCP_OUTPUT_OCTL;
      --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP1        : TIMG8_ODIS_C0CCP1_Field :=
                       MSPMC1104_SVD.TIMG.CCP_OUTPUT_OCTL;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_ODIS_TIMG8_COMMONREGS[%s]_Register use record
      C0CCP0        at 0 range 0 .. 0;
      C0CCP1        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock Enable Disables the clock gating to the module. SW has to
   --  explicitly program the value to 0 to gate the clock.
   type TIMG8_CCLKCTL_CLKEN_Field is
     (--  Clock is disabled.
      DISABLED,
      --  Clock is enabled
      ENABLED)
     with Size => 1;
   for TIMG8_CCLKCTL_CLKEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Counter Clock Control Register
   type TIMG8_CCLKCTL_TIMG8_COMMONREGS[%s]_Register is record
      --  Clock Enable Disables the clock gating to the module. SW has to
      --  explicitly program the value to 0 to gate the clock.
      CLKEN         : TIMG8_CCLKCTL_CLKEN_Field :=
                       MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CCLKCTL_TIMG8_COMMONREGS[%s]_Register use record
      CLKEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TIMG8_CPS_TIMG8_COMMONREGS[%s]_PCNT_Field is HAL.UInt8;

   --  Clock Prescale Register
   type TIMG8_CPS_TIMG8_COMMONREGS[%s]_Register is record
      --  Pre-Scale Count This field specifies the pre-scale count value. The
      --  selected TIMCLK source is divided by a value of (PCNT+1). A PCNT
      --  value of 0 divides TIMCLK by 1, effectively bypassing the divider. A
      --  PCNT value of greater than 0 divides the TIMCLK source generating a
      --  slower clock
      PCNT          : TIMG8_CPS_TIMG8_COMMONREGS[%s]_PCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CPS_TIMG8_COMMONREGS[%s]_Register use record
      PCNT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIMG8_CPSV_TIMG8_COMMONREGS[%s]_CPSVAL_Field is HAL.UInt8;

   --  Clock prescale count status register
   type TIMG8_CPSV_TIMG8_COMMONREGS[%s]_Register is record
      --  Read-only. Current Prescale Count Value
      CPSVAL        : TIMG8_CPSV_TIMG8_COMMONREGS[%s]_CPSVAL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CPSV_TIMG8_COMMONREGS[%s]_Register use record
      CPSVAL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Timer Cross trigger enable. This field is used to enable whether the SW
   --  or HW logic can generate a timer cross trigger event in the system.
   --  These cross triggers are connected to the respective timer trigger in of
   --  the other timer IPs in the SOC power domain. The timer cross trigger is
   --  essentially the combined logic of the HW and SW conditions controlling
   --  EN bit in the CTRCTL register.
   type TIMG8_CTTRIGCTL_CTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMG8_CTTRIGCTL_CTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Enable the Input Trigger Conditions to the Timer module as a condition
   --  for Cross Triggers. Refer Figure 8 Cross Trigger Generation Path
   type TIMG8_CTTRIGCTL_EVTCTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMG8_CTTRIGCTL_EVTCTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Used to Select the subscriber port that should be used for input cross
   --  trigger. Refer Figure 8 Cross Trigger Generation Path
   type TIMG8_CTTRIGCTL_EVTCTTRIGSEL_Field is
     (--  Use FSUB0 as cross trigger source.
      FSUB0,
      --  Use FSUB1 as cross trigger source.
      FSUB1,
      --  Use Zero event as cross trigger source.
      Z,
      --  Use Load event as cross trigger source.
      L,
      --  Use CCD0 event as cross trigger source.
      CCD0,
      --  Use CCD1 event as cross trigger source.
      CCD1,
      --  Use CCD2 event as cross trigger source.
      CCD2,
      --  Use CCD3 event as cross trigger source.
      CCD3,
      --  Use CCU0 event as cross trigger source.
      CCU0,
      --  Use CCU1 event as cross trigger source.
      CCU1,
      --  Use CCU2 event as cross trigger source.
      CCU2,
      --  Use CCU3 event as cross trigger source.
      CCU3)
     with Size => 4;
   for TIMG8_CTTRIGCTL_EVTCTTRIGSEL_Field use
     (FSUB0 => 0,
      FSUB1 => 1,
      Z => 2,
      L => 3,
      CCD0 => 4,
      CCD1 => 5,
      CCD2 => 6,
      CCD3 => 7,
      CCU0 => 8,
      CCU1 => 9,
      CCU2 => 10,
      CCU3 => 11);

   --  Timer Cross Trigger Control Register
   type TIMG8_CTTRIGCTL_TIMG8_COMMONREGS[%s]_Register is record
      --  Timer Cross trigger enable. This field is used to enable whether the
      --  SW or HW logic can generate a timer cross trigger event in the
      --  system. These cross triggers are connected to the respective timer
      --  trigger in of the other timer IPs in the SOC power domain. The timer
      --  cross trigger is essentially the combined logic of the HW and SW
      --  conditions controlling EN bit in the CTRCTL register.
      CTEN           : TIMG8_CTTRIGCTL_CTEN_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  Enable the Input Trigger Conditions to the Timer module as a
      --  condition for Cross Triggers. Refer Figure 8 Cross Trigger Generation
      --  Path
      EVTCTEN        : TIMG8_CTTRIGCTL_EVTCTEN_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Used to Select the subscriber port that should be used for input
      --  cross trigger. Refer Figure 8 Cross Trigger Generation Path
      EVTCTTRIGSEL   : TIMG8_CTTRIGCTL_EVTCTTRIGSEL_Field :=
                        MSPMC1104_SVD.TIMG.FSUB0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CTTRIGCTL_TIMG8_COMMONREGS[%s]_Register use record
      CTEN           at 0 range 0 .. 0;
      EVTCTEN        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      EVTCTTRIGSEL   at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Generate Cross Trigger This bit when programmed will generate a
   --  synchronized trigger condition all the cross trigger enabled Timer
   --  instances including current timer instance.
   type TIMG8_CTTRIG_TRIG_Field is
     (--  Cross trigger generation disabled
      DISABLED,
      --  Generate Cross trigger pulse
      GENERATE)
     with Size => 1;
   for TIMG8_CTTRIG_TRIG_Field use
     (DISABLED => 0,
      GENERATE => 1);

   --  Timer Cross Trigger Register
   type TIMG8_CTTRIG_TIMG8_COMMONREGS[%s]_Register is record
      --  Write-only. Generate Cross Trigger This bit when programmed will
      --  generate a synchronized trigger condition all the cross trigger
      --  enabled Timer instances including current timer instance.
      TRIG          : TIMG8_CTTRIG_TRIG_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CTTRIG_TIMG8_COMMONREGS[%s]_Register use record
      TRIG          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type TIMG8_COMMONREGS[%s]_Cluster is record
      --  CCP Direction
      TIMG8_CCPD      : aliased TIMG8_CCPD_TIMG8_COMMONREGS[%s]_Register;
      --  Output Disable
      TIMG8_ODIS      : aliased TIMG8_ODIS_TIMG8_COMMONREGS[%s]_Register;
      --  Counter Clock Control Register
      TIMG8_CCLKCTL   : aliased TIMG8_CCLKCTL_TIMG8_COMMONREGS[%s]_Register;
      --  Clock Prescale Register
      TIMG8_CPS       : aliased TIMG8_CPS_TIMG8_COMMONREGS[%s]_Register;
      --  Clock prescale count status register
      TIMG8_CPSV      : aliased TIMG8_CPSV_TIMG8_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Control Register
      TIMG8_CTTRIGCTL : aliased TIMG8_CTTRIGCTL_TIMG8_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Register
      TIMG8_CTTRIG    : aliased TIMG8_CTTRIG_TIMG8_COMMONREGS[%s]_Register;
   end record
     with Size => 256;

   for TIMG8_COMMONREGS[%s]_Cluster use record
      TIMG8_CCPD      at 16#0# range 0 .. 31;
      TIMG8_ODIS      at 16#4# range 0 .. 31;
      TIMG8_CCLKCTL   at 16#8# range 0 .. 31;
      TIMG8_CPS       at 16#C# range 0 .. 31;
      TIMG8_CPSV      at 16#10# range 0 .. 31;
      TIMG8_CTTRIGCTL at 16#14# range 0 .. 31;
      TIMG8_CTTRIG    at 16#1C# range 0 .. 31;
   end record;

   -----------------------------------------------
   -- TIMG8_COUNTERREGS[%s] cluster's Registers --
   -----------------------------------------------

   subtype TIMG8_CTR_TIMG8_COUNTERREGS[%s]_CCTR_Field is HAL.UInt16;

   --  Counter Register
   type TIMG8_CTR_TIMG8_COUNTERREGS[%s]_Register is record
      --  Current Counter value
      CCTR           : TIMG8_CTR_TIMG8_COUNTERREGS[%s]_CCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CTR_TIMG8_COUNTERREGS[%s]_Register use record
      CCTR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter Enable. This bit allows the timer to advance This bit is
   --  automatically cleared if REPEAT=0 (do not automatically reload) and the
   --  counter value equals zero. CPU Write: A register write that sets the EN
   --  bit, the counter value is set per the CVAE value. Hardware: This bit may
   --  also be set as the result of an LCOND or ZCOND condition being met and
   --  the counter value changed to the load value or zero value, respectively.
   type TIMG8_CTRCTL_EN_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for TIMG8_CTRCTL_EN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Repeat. The repeat bit controls whether the counter continues to advance
   --  following a zero event, or the exiting of a debug or fault condition. If
   --  counting down, a zero event is followed by a load at the next advance
   --  condition. If counting up-down, a zero event is followed by an advance
   --  event (+1). The intent of encoding 3 is that if the debug condition is
   --  in effect, the generation of the load pulse is deferred until the debug
   --  condition is over. This allows the counter to reach zero before counting
   --  is suspended.
   type TIMG8_CTRCTL_REPEAT_Field is
     (--  Does not automatically advance following a zero event.
      REPEAT_0,
      --  Continues to advance following a zero event.
      REPEAT_1,
      --  Reserved
      REPEAT_2,
      --  Continues to advance following a zero event if the debug mode is not in
--  effect, or following the release of the debug mode.
      REPEAT_3,
      --  Reserved
      REPEAT_4)
     with Size => 3;
   for TIMG8_CTRCTL_REPEAT_Field use
     (REPEAT_0 => 0,
      REPEAT_1 => 1,
      REPEAT_2 => 2,
      REPEAT_3 => 3,
      REPEAT_4 => 4);

   --  Count Mode
   type TIMG8_CTRCTL_CM_Field is
     (--  Down
      DOWN,
      --  Up/Down
      UP_DOWN,
      --  Counter counts up.
      UP)
     with Size => 2;
   for TIMG8_CTRCTL_CM_Field use
     (DOWN => 0,
      UP_DOWN => 1,
      UP => 2);

   --  Counter Load Control. This field specifies what controls the counter
   --  operation with respect to setting the counter to the LD register value.
   --  Encodings 1-3 are present based on the CCPC parameter value. Bits 4-5
   --  are present based on the HQEI parameter value. Any encodings not
   --  provided are documented as reserved.
   type TIMG8_CTRCTL_CLC_Field is
     (--  CCCTL_0 LCOND
      CCCTL0_LCOND,
      --  CCCTL_1 LCOND
      CCCTL1_LCOND,
      --  CCCTL_2 LCOND This value exists when there are 4 channels.
      CCCTL2_LCOND,
      --  CCCTL_3 LCOND This value exists when there are 4 channels.
      CCCTL3_LCOND,
      --  Controlled by 2 input QEI mode. This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3 input QEI mode. This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG8_CTRCTL_CLC_Field_Reset)
     with Size => 3;
   for TIMG8_CTRCTL_CLC_Field use
     (CCCTL0_LCOND => 0,
      CCCTL1_LCOND => 1,
      CCCTL2_LCOND => 2,
      CCCTL3_LCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG8_CTRCTL_CLC_Field_Reset => 7);

   --  Counter Advance Control. This field specifies what controls the counter
   --  operation with respect to advancing (incrementing or decrementing) the
   --  counter value. Encodings 1-3 are present based on the CCPC parameter
   --  value. Bits 4-5 are present based on the HQEI parameter value. Any
   --  encodings not provided are documented as reserved.
   type TIMG8_CTRCTL_CAC_Field is
     (--  CCCTL_0 ACOND
      CCCTL0_ACOND,
      --  CCCTL_1 ACOND
      CCCTL1_ACOND,
      --  CCCTL_2 ACOND This value exists when there are 4 channels.
      CCCTL2_ACOND,
      --  CCCTL_3 ACOND This value exists when there are 4 channels.
      CCCTL3_ACOND,
      --  Controlled by 2-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG8_CTRCTL_CAC_Field_Reset)
     with Size => 3;
   for TIMG8_CTRCTL_CAC_Field use
     (CCCTL0_ACOND => 0,
      CCCTL1_ACOND => 1,
      CCCTL2_ACOND => 2,
      CCCTL3_ACOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG8_CTRCTL_CAC_Field_Reset => 7);

   --  Counter Zero Control This field specifies what controls the counter
   --  operation with respect to zeroing the counter value. Encodings 1-3 are
   --  present based on the CCPC parameter value. Bits 4-5 are present based on
   --  the HQEI parameter value. Any encodings not provided are documented as
   --  reserved.
   type TIMG8_CTRCTL_CZC_Field is
     (--  CCCTL_0 ZCOND
      CCCTL0_ZCOND,
      --  CCCTL_1 ZCOND
      CCCTL1_ZCOND,
      --  CCCTL_2 ZCOND This value exists when there are 4 channels.
      CCCTL2_ZCOND,
      --  CCCTL_3 ZCOND This value exists when there are 4 channels.
      CCCTL3_ZCOND,
      --  Controlled by 2-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG8_CTRCTL_CZC_Field_Reset)
     with Size => 3;
   for TIMG8_CTRCTL_CZC_Field use
     (CCCTL0_ZCOND => 0,
      CCCTL1_ZCOND => 1,
      CCCTL2_ZCOND => 2,
      CCCTL3_ZCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG8_CTRCTL_CZC_Field_Reset => 7);

   --  Debug Resume Behavior This bit specifies what the device does following
   --  the release/exit of debug mode.
   type TIMG8_CTRCTL_DRB_Field is
     (--  Resume counting
      RESUME,
      --  Perform the action as specified by the CVAE field.
      CVAE_ACTION)
     with Size => 1;
   for TIMG8_CTRCTL_DRB_Field use
     (RESUME => 0,
      CVAE_ACTION => 1);

   --  Counter Value After Enable. This field specifies the initialization
   --  condition of the counter when the EN bit is changed from 0 to 1 by a
   --  write to the CTRCTL register. Note that an external event can also cause
   --  the EN bit to go active.
   type TIMG8_CTRCTL_CVAE_Field is
     (--  The counter is set to the LOAD register value
      LDVAL,
      --  The counter value is unchanged from its current value which could have been
--  initialized by software
      NOCHANGE,
      --  The counter is set to zero
      ZEROVAL)
     with Size => 2;
   for TIMG8_CTRCTL_CVAE_Field use
     (LDVAL => 0,
      NOCHANGE => 1,
      ZEROVAL => 2);

   --  Counter Control Register
   type TIMG8_CTRCTL_TIMG8_COUNTERREGS[%s]_Register is record
      --  Counter Enable. This bit allows the timer to advance This bit is
      --  automatically cleared if REPEAT=0 (do not automatically reload) and
      --  the counter value equals zero. CPU Write: A register write that sets
      --  the EN bit, the counter value is set per the CVAE value. Hardware:
      --  This bit may also be set as the result of an LCOND or ZCOND condition
      --  being met and the counter value changed to the load value or zero
      --  value, respectively.
      EN             : TIMG8_CTRCTL_EN_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  Repeat. The repeat bit controls whether the counter continues to
      --  advance following a zero event, or the exiting of a debug or fault
      --  condition. If counting down, a zero event is followed by a load at
      --  the next advance condition. If counting up-down, a zero event is
      --  followed by an advance event (+1). The intent of encoding 3 is that
      --  if the debug condition is in effect, the generation of the load pulse
      --  is deferred until the debug condition is over. This allows the
      --  counter to reach zero before counting is suspended.
      REPEAT         : TIMG8_CTRCTL_REPEAT_Field :=
                        MSPMC1104_SVD.TIMG.REPEAT_0;
      --  Count Mode
      CM             : TIMG8_CTRCTL_CM_Field := MSPMC1104_SVD.TIMG.DOWN;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Counter Load Control. This field specifies what controls the counter
      --  operation with respect to setting the counter to the LD register
      --  value. Encodings 1-3 are present based on the CCPC parameter value.
      --  Bits 4-5 are present based on the HQEI parameter value. Any encodings
      --  not provided are documented as reserved.
      CLC            : TIMG8_CTRCTL_CLC_Field := TIMG8_CTRCTL_CLC_Field_Reset;
      --  Counter Advance Control. This field specifies what controls the
      --  counter operation with respect to advancing (incrementing or
      --  decrementing) the counter value. Encodings 1-3 are present based on
      --  the CCPC parameter value. Bits 4-5 are present based on the HQEI
      --  parameter value. Any encodings not provided are documented as
      --  reserved.
      CAC            : TIMG8_CTRCTL_CAC_Field := TIMG8_CTRCTL_CAC_Field_Reset;
      --  Counter Zero Control This field specifies what controls the counter
      --  operation with respect to zeroing the counter value. Encodings 1-3
      --  are present based on the CCPC parameter value. Bits 4-5 are present
      --  based on the HQEI parameter value. Any encodings not provided are
      --  documented as reserved.
      CZC            : TIMG8_CTRCTL_CZC_Field := TIMG8_CTRCTL_CZC_Field_Reset;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Debug Resume Behavior This bit specifies what the device does
      --  following the release/exit of debug mode.
      DRB            : TIMG8_CTRCTL_DRB_Field := MSPMC1104_SVD.TIMG.RESUME;
      --  unspecified
      Reserved_18_27 : HAL.UInt10 := 16#0#;
      --  Counter Value After Enable. This field specifies the initialization
      --  condition of the counter when the EN bit is changed from 0 to 1 by a
      --  write to the CTRCTL register. Note that an external event can also
      --  cause the EN bit to go active.
      CVAE           : TIMG8_CTRCTL_CVAE_Field := MSPMC1104_SVD.TIMG.LDVAL;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CTRCTL_TIMG8_COUNTERREGS[%s]_Register use record
      EN             at 0 range 0 .. 0;
      REPEAT         at 0 range 1 .. 3;
      CM             at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CLC            at 0 range 7 .. 9;
      CAC            at 0 range 10 .. 12;
      CZC            at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DRB            at 0 range 17 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      CVAE           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIMG8_LOAD_TIMG8_COUNTERREGS[%s]_LD_Field is HAL.UInt16;

   --  Load Register
   type TIMG8_LOAD_TIMG8_COUNTERREGS[%s]_Register is record
      --  Load Value
      LD             : TIMG8_LOAD_TIMG8_COUNTERREGS[%s]_LD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_LOAD_TIMG8_COUNTERREGS[%s]_Register use record
      LD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_CCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_Register;

   --  Capture Condition. #br# Specifies the condition that generates a capture
   --  pulse. 4h-Fh = Reserved
   type TIMG8_CCCTL_01_CCOND_Field is
     (--  None (never captures)
      NOCAPTURE,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG8_CCCTL_01_CCOND_Field use
     (NOCAPTURE => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Advance Condition. #br# Specifies the condition that generates an
   --  advance pulse. 6h-Fh = Reserved
   type TIMG8_CCCTL_01_ACOND_Field is
     (--  Each TIMCLK
      TIMCLK,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE,
      --  CCP High or Trigger assertion (level)
      CC_TRIG_HIGH)
     with Size => 3;
   for TIMG8_CCCTL_01_ACOND_Field use
     (TIMCLK => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3,
      CC_TRIG_HIGH => 5);

   --  Load Condition. #br# Specifies the condition that generates a load
   --  pulse. 4h-Fh = Reserved
   type TIMG8_CCCTL_01_LCOND_Field is
     (--  Reset value for the field
      TIMG8_CCCTL_01_LCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG8_CCCTL_01_LCOND_Field use
     (TIMG8_CCCTL_01_LCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Zero Condition. #br# This field specifies the condition that generates a
   --  zero pulse. 4h-Fh = Reserved
   type TIMG8_CCCTL_01_ZCOND_Field is
     (--  Reset value for the field
      TIMG8_CCCTL_01_ZCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG8_CCCTL_01_ZCOND_Field use
     (TIMG8_CCCTL_01_ZCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Capture or Compare. #br# Specifies whether the corresponding CC register
   --  is used as a capture register or a compare register (never both).
   type TIMG8_CCCTL_01_COC_Field is
     (--  Compare
      COMPARE,
      --  Capture
      CAPTURE)
     with Size => 1;
   for TIMG8_CCCTL_01_COC_Field use
     (COMPARE => 0,
      CAPTURE => 1);

   --  Selects the source second CCU event.
   type TIMG8_CCCTL_01_CC2SELU_Field is
     (--  Selects CCU from CC0.
      SEL_CCU0,
      --  Selects CCU from CC1.
      SEL_CCU1,
      --  Selects CCU from CC2.
      SEL_CCU2,
      --  Selects CCU from CC3.
      SEL_CCU3,
      --  Selects CCU from CC4.
      SEL_CCU4,
      --  Selects CCU from CC5.
      SEL_CCU5)
     with Size => 3;
   for TIMG8_CCCTL_01_CC2SELU_Field use
     (SEL_CCU0 => 0,
      SEL_CCU1 => 1,
      SEL_CCU2 => 2,
      SEL_CCU3 => 3,
      SEL_CCU4 => 4,
      SEL_CCU5 => 5);

   --  CCACT shadow register Update Method This field controls how updates to
   --  the CCCACT shadow register are performed
   type TIMG8_CCCTL_01_CCACTUPD_Field is
     (--  Value written to the CCACT register has immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCACTx_y register are stored in shadow
--  register and transferred to CCACTx_y in the TIMCLK cycle following CTR
--  equals 0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals 0 or CTR. Equals LDn. Note this update mechanism is
--  defined for use only in configurations using up/down counting. This mode is
--  not intended for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCACTx_y
--  register are stored in shadow register and transferred to CCACTx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  On a TRIG pulse, the value stored in CCACTx_y shadow register is loaded
--  into CCACTx_y active register.
      TRIG)
     with Size => 3;
   for TIMG8_CCCTL_01_CCACTUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCD event.
   type TIMG8_CCCTL_01_CC2SELD_Field is
     (--  Selects CCD from CC0.
      SEL_CCD0,
      --  Selects CCD from CC1.
      SEL_CCD1,
      --  Selects CCD from CC2.
      SEL_CCD2,
      --  Selects CCD from CC3.
      SEL_CCD3,
      --  Selects CCD from CC4.
      SEL_CCD4,
      --  Selects CCD from CC5.
      SEL_CCD5)
     with Size => 3;
   for TIMG8_CCCTL_01_CC2SELD_Field use
     (SEL_CCD0 => 0,
      SEL_CCD1 => 1,
      SEL_CCD2 => 2,
      SEL_CCD3 => 3,
      SEL_CCD4 => 4,
      SEL_CCD5 => 5);

   --  Capture or Compare Control Registers
   type TIMG8_CCCTL_01_TIMG8_COUNTERREGS[%s]_Register is record
      --  Capture Condition. #br# Specifies the condition that generates a
      --  capture pulse. 4h-Fh = Reserved
      CCOND          : TIMG8_CCCTL_01_CCOND_Field :=
                        MSPMC1104_SVD.TIMG.NOCAPTURE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Advance Condition. #br# Specifies the condition that generates an
      --  advance pulse. 6h-Fh = Reserved
      ACOND          : TIMG8_CCCTL_01_ACOND_Field :=
                        MSPMC1104_SVD.TIMG.TIMCLK;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Load Condition. #br# Specifies the condition that generates a load
      --  pulse. 4h-Fh = Reserved
      LCOND          : TIMG8_CCCTL_01_LCOND_Field :=
                        TIMG8_CCCTL_01_LCOND_Field_Reset;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Zero Condition. #br# This field specifies the condition that
      --  generates a zero pulse. 4h-Fh = Reserved
      ZCOND          : TIMG8_CCCTL_01_ZCOND_Field :=
                        TIMG8_CCCTL_01_ZCOND_Field_Reset;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Capture or Compare. #br# Specifies whether the corresponding CC
      --  register is used as a capture register or a compare register (never
      --  both).
      COC            : TIMG8_CCCTL_01_COC_Field := MSPMC1104_SVD.TIMG.COMPARE;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Selects the source second CCU event.
      CC2SELU        : TIMG8_CCCTL_01_CC2SELU_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCU0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  CCACT shadow register Update Method This field controls how updates
      --  to the CCCACT shadow register are performed
      CCACTUPD       : TIMG8_CCCTL_01_CCACTUPD_Field :=
                        MSPMC1104_SVD.TIMG.Immediately;
      --  Selects the source second CCD event.
      CC2SELD        : TIMG8_CCCTL_01_CC2SELD_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCD0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CCCTL_01_TIMG8_COUNTERREGS[%s]_Register use record
      CCOND          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACOND          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LCOND          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ZCOND          at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      COC            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      CC2SELU        at 0 range 22 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CCACTUPD       at 0 range 26 .. 28;
      CC2SELD        at 0 range 29 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMG8_CCCTL_01_TIMG8_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG8_CCCTL_01_TIMG8_COUNTERREGS[%s]_Register;

   --  CCP Output Source
   type TIMG8_OCTL_01_CCPO_Field is
     (--  Signal generator value (for example, PWM, triggered PWM)
      FUNCVAL,
      --  Load condition
      LOAD,
      --  Compare value = counter condition
      CMPVAL,
      --  Zero condition
      ZERO,
      --  Capture condition
      CAPCOND,
      --  Fault Condition
      FAULTCOND,
      --  Mirror CCP of first capture and compare register in counter group
      CC0_MIRROR_ALL,
      --  Mirror CCP of second capture and compare register in counter group
      CC1_MIRROR_ALL,
      --  Deadband Inserted Output
      DEADBAND,
      --  Counter direction
      CNTDIR)
     with Size => 4;
   for TIMG8_OCTL_01_CCPO_Field use
     (FUNCVAL => 0,
      LOAD => 1,
      CMPVAL => 2,
      ZERO => 4,
      CAPCOND => 5,
      FAULTCOND => 6,
      CC0_MIRROR_ALL => 8,
      CC1_MIRROR_ALL => 9,
      DEADBAND => 12,
      CNTDIR => 13);

   --  CCP Output Invert The output as selected by CCPO is conditionally
   --  inverted.
   type TIMG8_OCTL_01_CCPOINV_Field is
     (--  No inversion
      NOINV,
      --  Invert
      INV)
     with Size => 1;
   for TIMG8_OCTL_01_CCPOINV_Field use
     (NOINV => 0,
      INV => 1);

   --  CCP Initial Value This bit specifies the logical value put on the signal
   --  generator state while the counter is disabled (CTRCTL.EN == 0).
   type TIMG8_OCTL_01_CCPIV_Field is
     (--  Low
      LOW,
      --  High
      HIGH)
     with Size => 1;
   for TIMG8_OCTL_01_CCPIV_Field use
     (LOW => 0,
      HIGH => 1);

   --  CCP Output Control Registers
   type TIMG8_OCTL_01_TIMG8_COUNTERREGS[%s]_Register is record
      --  CCP Output Source
      CCPO          : TIMG8_OCTL_01_CCPO_Field := MSPMC1104_SVD.TIMG.FUNCVAL;
      --  CCP Output Invert The output as selected by CCPO is conditionally
      --  inverted.
      CCPOINV       : TIMG8_OCTL_01_CCPOINV_Field := MSPMC1104_SVD.TIMG.NOINV;
      --  CCP Initial Value This bit specifies the logical value put on the
      --  signal generator state while the counter is disabled (CTRCTL.EN ==
      --  0).
      CCPIV         : TIMG8_OCTL_01_CCPIV_Field := MSPMC1104_SVD.TIMG.LOW;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_OCTL_01_TIMG8_COUNTERREGS[%s]_Register use record
      CCPO          at 0 range 0 .. 3;
      CCPOINV       at 0 range 4 .. 4;
      CCPIV         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CCP Output Control Registers
   type TIMG8_OCTL_01_TIMG8_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG8_OCTL_01_TIMG8_COUNTERREGS[%s]_Register;

   --  CCP Output Action on Zero Specifies what changes occur to CCP output as
   --  the result of a zero event.
   type TIMG8_CCACT_01_ZACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_ZACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Load Specifies what changes occur to CCP output as
   --  the result of a load event.
   type TIMG8_CCACT_01_LACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_LACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Down) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting down.
   type TIMG8_CCACT_01_CDACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_CDACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Up) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting up.
   type TIMG8_CCACT_01_CUACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_CUACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2D event.
   type TIMG8_CCACT_01_CC2DACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_CC2DACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2U event.
   type TIMG8_CCACT_01_CC2UACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG8_CCACT_01_CC2UACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMG8_CCACT_01_SWFRCACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMG8_CCACT_01_SWFRCACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  Capture or Compare Action Registers
   type TIMG8_CCACT_01_TIMG8_COUNTERREGS[%s]_Register is record
      --  CCP Output Action on Zero Specifies what changes occur to CCP output
      --  as the result of a zero event.
      ZACT           : TIMG8_CCACT_01_ZACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  CCP Output Action on Load Specifies what changes occur to CCP output
      --  as the result of a load event.
      LACT           : TIMG8_CCACT_01_LACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Down) This field describes the
      --  resulting action of the signal generator upon detecting a compare
      --  event while counting down.
      CDACT          : TIMG8_CCACT_01_CDACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Up) This field describes the resulting
      --  action of the signal generator upon detecting a compare event while
      --  counting up.
      CUACT          : TIMG8_CCACT_01_CUACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2D event.
      CC2DACT        : TIMG8_CCACT_01_CC2DACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2U event.
      CC2UACT        : TIMG8_CCACT_01_CC2UACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  CCP Output Action on Software Force Output This field describes the
      --  resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT       : TIMG8_CCACT_01_SWFRCACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_CCACT_01_TIMG8_COUNTERREGS[%s]_Register use record
      ZACT           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LACT           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CDACT          at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CUACT          at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CC2DACT        at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC2UACT        at 0 range 15 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      SWFRCACT       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Capture or Compare Action Registers
   type TIMG8_CCACT_01_TIMG8_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG8_CCACT_01_TIMG8_COUNTERREGS[%s]_Register;

   --  Input Select (CCP0) This field selects the input source to the filter
   --  input. 4h-7h = Reserved
   type TIMG8_IFCTL_01_ISEL_Field is
     (--  CCP of the corresponding capture compare unit
      CCPX_INPUT,
      --  Input pair CCPX of the capture compare unit. For CCP0 input pair is CCP1
--  and for CCP1 input pair is CCP0.
      CCPX_INPUT_PAIR,
      --  CCP0 of the counter
      CCP0_INPUT,
      --  Trigger
      TRIG_INPUT,
      --  XOR of CCP inputs as input source.
      CCP_XOR,
      --  subscriber 0 event as input source.
      FSUB0,
      --  subscriber 1 event as input source.
      FSUB1,
      --  Comparator 0 output.
      COMP0,
      --  Comparator 1 output.
      COMP1,
      --  Comparator 2 output.
      COMP2)
     with Size => 4;
   for TIMG8_IFCTL_01_ISEL_Field use
     (CCPX_INPUT => 0,
      CCPX_INPUT_PAIR => 1,
      CCP0_INPUT => 2,
      TRIG_INPUT => 3,
      CCP_XOR => 4,
      FSUB0 => 5,
      FSUB1 => 6,
      COMP0 => 7,
      COMP1 => 8,
      COMP2 => 9);

   --  Input Inversion This bit controls whether the selected input is
   --  inverted.
   type TIMG8_IFCTL_01_INV_Field is
     (--  Noninverted
      NOINVERT,
      --  Inverted
      INVERT)
     with Size => 1;
   for TIMG8_IFCTL_01_INV_Field use
     (NOINVERT => 0,
      INVERT => 1);

   --  Filter Period. This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMG8_IFCTL_01_FP_Field is
     (--  The division factor is 3
      Val_3,
      --  The division factor is 5
      Val_5,
      --  The division factor is 8
      Val_8)
     with Size => 2;
   for TIMG8_IFCTL_01_FP_Field use
     (Val_3 => 0,
      Val_5 => 1,
      Val_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMG8_IFCTL_01_CPV_Field is
     (--  Consecutive Periods The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      Consecutive,
      --  Voting The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output.
      Voting)
     with Size => 1;
   for TIMG8_IFCTL_01_CPV_Field use
     (Consecutive => 0,
      Voting => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to the edge detect.
   type TIMG8_IFCTL_01_FE_Field is
     (--  Bypass.
      DISABLED,
      --  Filtered.
      ENABLED)
     with Size => 1;
   for TIMG8_IFCTL_01_FE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Input Filter Control Register
   type TIMG8_IFCTL_01_TIMG8_COUNTERREGS[%s]_Register is record
      --  Input Select (CCP0) This field selects the input source to the filter
      --  input. 4h-7h = Reserved
      ISEL           : TIMG8_IFCTL_01_ISEL_Field :=
                        MSPMC1104_SVD.TIMG.CCPX_INPUT;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Input Inversion This bit controls whether the selected input is
      --  inverted.
      INV            : TIMG8_IFCTL_01_INV_Field :=
                        MSPMC1104_SVD.TIMG.NOINVERT;
      --  Filter Period. This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP             : TIMG8_IFCTL_01_FP_Field := MSPMC1104_SVD.TIMG.Val_3;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV            : TIMG8_IFCTL_01_CPV_Field :=
                        MSPMC1104_SVD.TIMG.Consecutive;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to the edge detect.
      FE             : TIMG8_IFCTL_01_FE_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_IFCTL_01_TIMG8_COUNTERREGS[%s]_Register use record
      ISEL           at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      INV            at 0 range 7 .. 7;
      FP             at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CPV            at 0 range 11 .. 11;
      FE             at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Input Filter Control Register
   type TIMG8_IFCTL_01_TIMG8_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG8_IFCTL_01_TIMG8_COUNTERREGS[%s]_Register;

   --  External Trigger Select. #br# This selects which System Event is used if
   --  the input filter selects trigger. Triggers 0-15 are used to connect
   --  triggers generated by other timer modules in the same power domain.
   --  Refer to the SoC datasheet to get details. Triggers 16 and 17 are
   --  connected to event manager subscriber ports. Event lines 18-31 are
   --  reserved for future use.
   type TIMG8_TSEL_ETSEL_Field is
     (--  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG0,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG1,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG2,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG3,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG4,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG5,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG6,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG7,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG8,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG9,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG10,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG11,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG12,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG13,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG14,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG15,
      --  TRIG_SUBx = External trigger input from subscriber port x.
      TRIG_SUB0,
      --  TRIG_SUBx = External trigger input from subscriber port x.
      TRIG_SUB1)
     with Size => 5;
   for TIMG8_TSEL_ETSEL_Field use
     (TRIG0 => 0,
      TRIG1 => 1,
      TRIG2 => 2,
      TRIG3 => 3,
      TRIG4 => 4,
      TRIG5 => 5,
      TRIG6 => 6,
      TRIG7 => 7,
      TRIG8 => 8,
      TRIG9 => 9,
      TRIG10 => 10,
      TRIG11 => 11,
      TRIG12 => 12,
      TRIG13 => 13,
      TRIG14 => 14,
      TRIG15 => 15,
      TRIG_SUB0 => 16,
      TRIG_SUB1 => 17);

   --  Trigger Enable. This selects whether a trigger is enabled or not for
   --  this counter 0x0 = Triggers are not used 0x1 = Triggers are used as
   --  selected by the ETSEL field
   type TIMG8_TSEL_TE_Field is
     (--  Triggers are not used.
      DISABLED,
      --  Triggers are used as selected by the IE, ITSEL and ETSEL fields.
      ENABLED)
     with Size => 1;
   for TIMG8_TSEL_TE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Trigger Select
   type TIMG8_TSEL_TIMG8_COUNTERREGS[%s]_Register is record
      --  External Trigger Select. #br# This selects which System Event is used
      --  if the input filter selects trigger. Triggers 0-15 are used to
      --  connect triggers generated by other timer modules in the same power
      --  domain. Refer to the SoC datasheet to get details. Triggers 16 and 17
      --  are connected to event manager subscriber ports. Event lines 18-31
      --  are reserved for future use.
      ETSEL          : TIMG8_TSEL_ETSEL_Field := MSPMC1104_SVD.TIMG.TRIG0;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Trigger Enable. This selects whether a trigger is enabled or not for
      --  this counter 0x0 = Triggers are not used 0x1 = Triggers are used as
      --  selected by the ETSEL field
      TE             : TIMG8_TSEL_TE_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_TSEL_TIMG8_COUNTERREGS[%s]_Register use record
      ETSEL          at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      TE             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Direction of count
   type TIMG8_QDIR_DIR_Field is
     (--  Down (Phase B leads Phase A)
      DOWN,
      --  Up (Phase A leads Phase B)
      UP)
     with Size => 1;
   for TIMG8_QDIR_DIR_Field use
     (DOWN => 0,
      UP => 1);

   --  Count Direction Register
   type TIMG8_QDIR_TIMG8_COUNTERREGS[%s]_Register is record
      --  Read-only. Direction of count
      DIR           : TIMG8_QDIR_DIR_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG8_QDIR_TIMG8_COUNTERREGS[%s]_Register use record
      DIR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type TIMG8_COUNTERREGS[%s]_Cluster is record
      --  Counter Register
      TIMG8_CTR      : aliased TIMG8_CTR_TIMG8_COUNTERREGS[%s]_Register;
      --  Counter Control Register
      TIMG8_CTRCTL   : aliased TIMG8_CTRCTL_TIMG8_COUNTERREGS[%s]_Register;
      --  Load Register
      TIMG8_LOAD     : aliased TIMG8_LOAD_TIMG8_COUNTERREGS[%s]_Register;
      --  Capture or Compare Register 0 to Capture or Compare Register 1
      TIMG8_CC_01    : aliased TIMG8_CC_01_TIMG8_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMG8_CCCTL_01 : aliased TIMG8_CCCTL_01_TIMG8_COUNTERREGS[%s]_Registers;
      --  CCP Output Control Registers
      TIMG8_OCTL_01  : aliased TIMG8_OCTL_01_TIMG8_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Action Registers
      TIMG8_CCACT_01 : aliased TIMG8_CCACT_01_TIMG8_COUNTERREGS[%s]_Registers;
      --  Input Filter Control Register
      TIMG8_IFCTL_01 : aliased TIMG8_IFCTL_01_TIMG8_COUNTERREGS[%s]_Registers;
      --  Trigger Select
      TIMG8_TSEL     : aliased TIMG8_TSEL_TIMG8_COUNTERREGS[%s]_Register;
      --  Count Direction Register
      TIMG8_QDIR     : aliased TIMG8_QDIR_TIMG8_COUNTERREGS[%s]_Register;
   end record
     with Size => 1536;

   for TIMG8_COUNTERREGS[%s]_Cluster use record
      TIMG8_CTR      at 16#0# range 0 .. 31;
      TIMG8_CTRCTL   at 16#4# range 0 .. 31;
      TIMG8_LOAD     at 16#8# range 0 .. 31;
      TIMG8_CC_01    at 16#10# range 0 .. 63;
      TIMG8_CCCTL_01 at 16#30# range 0 .. 63;
      TIMG8_OCTL_01  at 16#50# range 0 .. 63;
      TIMG8_CCACT_01 at 16#70# range 0 .. 63;
      TIMG8_IFCTL_01 at 16#80# range 0 .. 63;
      TIMG8_TSEL     at 16#B0# range 0 .. 31;
      TIMG8_QDIR     at 16#BC# range 0 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG14_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG14_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subsciber Port 0
   type TIMG14_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG14_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG14_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG14_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type TIMG14_FSUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG14_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG14_FPUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG14_FPUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 0
   type TIMG14_FPUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG14_FPUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_FPUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMG14_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMG14_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 1
   type TIMG14_FPUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMG14_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMG.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------------------------
   -- TIMG14_GPRCM[%s] cluster's Registers --
   ------------------------------------------

   --  Enable the power
   type TIMG14_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for TIMG14_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type TIMG14_PWREN_TIMG14_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : TIMG14_PWREN_ENABLE_Field := MSPMC1104_SVD.TIMG.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_PWREN_TIMG14_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type TIMG14_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for TIMG14_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type TIMG14_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for TIMG14_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type TIMG14_RSTCTL_TIMG14_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : TIMG14_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.TIMG.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : TIMG14_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.TIMG.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_RSTCTL_TIMG14_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type TIMG14_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for TIMG14_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type TIMG14_STAT_TIMG14_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : TIMG14_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_STAT_TIMG14_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type TIMG14_GPRCM[%s]_Cluster is record
      --  Power enable
      TIMG14_PWREN  : aliased TIMG14_PWREN_TIMG14_GPRCM[%s]_Register;
      --  Reset Control
      TIMG14_RSTCTL : aliased TIMG14_RSTCTL_TIMG14_GPRCM[%s]_Register;
      --  Status Register
      TIMG14_STAT   : aliased TIMG14_STAT_TIMG14_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for TIMG14_GPRCM[%s]_Cluster use record
      TIMG14_PWREN  at 16#0# range 0 .. 31;
      TIMG14_RSTCTL at 16#4# range 0 .. 31;
      TIMG14_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type TIMG14_CLKDIV_RATIO_Field is
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
   for TIMG14_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type TIMG14_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : TIMG14_CLKDIV_RATIO_Field :=
                       MSPMC1104_SVD.TIMG.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects LFCLK as clock source if enabled
   type TIMG14_CLKSEL_LFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG14_CLKSEL_LFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects MFCLK as clock source if enabled
   type TIMG14_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG14_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects BUSCLK as clock source if enabled
   type TIMG14_CLKSEL_BUSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMG14_CLKSEL_BUSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type TIMG14_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : TIMG14_CLKSEL_LFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : TIMG14_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  Selects BUSCLK as clock source if enabled
      BUSCLK_SEL    : TIMG14_CLKSEL_BUSCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMG.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type TIMG14_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for TIMG14_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type TIMG14_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for TIMG14_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type TIMG14_PDBGCTL_Register is record
      --  Free run control
      FREE          : TIMG14_PDBGCTL_FREE_Field := MSPMC1104_SVD.TIMG.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : TIMG14_PDBGCTL_SOFT_Field :=
                       MSPMC1104_SVD.TIMG.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ------------------------------------------
   -- TIMG14_INT_EVENT cluster's Registers --
   ------------------------------------------

   --  Interrupt index status
   type TIMG14_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Interrupt Source: Zero event
      Z,
      --  REPLACE THIS WITH AN ACTUAL IRQ NAME
      L,
      --  Interrupt Source: Capture or compare down event (CCD0)
      CCD0,
      --  Interrupt Source: Capture or compare down event (CCD1)
      CCD1,
      --  Interrupt Source: Capture or compare down event (CCD2)
      CCD2,
      --  Interrupt Source: Capture or compare down event (CCD3)
      CCD3,
      --  Interrupt Source: Capture or compare up event (CCU0)
      CCU0,
      --  Interrupt Source: Capture or compare up event (CCU1)
      CCU1,
      --  Interrupt Source: Capture or compare up event (CCU2)
      CCU2,
      --  Interrupt Source: Capture or compare up event (CCU3)
      CCU3,
      --  Interrupt Source: Compare down event (CCD4)
      CCD4,
      --  Interrupt Source: Compare down event (CCD5)
      CCD5,
      --  Interrupt Source: Compare down event (CCU4)
      CCU4,
      --  Interrupt Source: Compare down event (CCU5)
      CCU5,
      --  Interrupt Source: Fault Event generated an interrupt.
      F,
      --  Interrupt Source: Trigger overflow
      TOV,
      --  Repeat Counter Zero
      REPC,
      --  Interrupt Source: Direction Change
      DC,
      --  QEI Incorrect state transition error
      QEIERR)
     with Size => 8;
   for TIMG14_IIDX_STAT_Field use
     (NO_INTR => 0,
      Z => 1,
      L => 2,
      CCD0 => 5,
      CCD1 => 6,
      CCD2 => 7,
      CCD3 => 8,
      CCU0 => 9,
      CCU1 => 10,
      CCU2 => 11,
      CCU3 => 12,
      CCD4 => 13,
      CCD5 => 14,
      CCU4 => 15,
      CCU5 => 16,
      F => 25,
      TOV => 26,
      REPC => 27,
      DC => 28,
      QEIERR => 29);

   --  Interrupt index
   type TIMG14_IIDX_TIMG14_INT_EVENT_Register is record
      --  Read-only. Interrupt index status
      STAT          : TIMG14_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_IIDX_TIMG14_INT_EVENT_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Zero Event mask
   type TIMG14_IMASK_Z_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG14_IMASK_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load Event mask
   type TIMG14_IMASK_L_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG14_IMASK_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or Compare DN event mask CCP0
   type TIMG14_IMASK_CCD0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG14_IMASK_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_IMASK_TIMG14_INT_EVENT_CCD array
   type TIMG14_IMASK_TIMG14_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMG14_IMASK_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_IMASK_TIMG14_INT_EVENT_CCD
   type TIMG14_IMASK_TIMG14_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMG14_IMASK_TIMG14_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_IMASK_TIMG14_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or Compare UP event mask CCP0
   type TIMG14_IMASK_CCU0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMG14_IMASK_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_IMASK_TIMG14_INT_EVENT_CCU array
   type TIMG14_IMASK_TIMG14_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMG14_IMASK_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_IMASK_TIMG14_INT_EVENT_CCU
   type TIMG14_IMASK_TIMG14_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMG14_IMASK_TIMG14_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_IMASK_TIMG14_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Trigger Overflow Event mask
   type TIMG14_IMASK_TOV_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMG14_IMASK_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type TIMG14_IMASK_TIMG14_INT_EVENT_Register is record
      --  Zero Event mask
      Z              : TIMG14_IMASK_Z_Field := MSPMC1104_SVD.TIMG.CLR;
      --  Load Event mask
      L              : TIMG14_IMASK_L_Field := MSPMC1104_SVD.TIMG.CLR;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Capture or Compare DN event mask CCP0
      CCD            : TIMG14_IMASK_TIMG14_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Capture or Compare UP event mask CCP0
      CCU            : TIMG14_IMASK_TIMG14_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_24 : HAL.UInt13 := 16#0#;
      --  Trigger Overflow Event mask
      TOV            : TIMG14_IMASK_TOV_Field := MSPMC1104_SVD.TIMG.CLR;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_IMASK_TIMG14_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      Reserved_12_24 at 0 range 12 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMG14_RIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_RIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMG14_RIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_RIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMG14_RIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_RIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_RIS_TIMG14_INT_EVENT_CCD array
   type TIMG14_RIS_TIMG14_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMG14_RIS_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_RIS_TIMG14_INT_EVENT_CCD
   type TIMG14_RIS_TIMG14_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMG14_RIS_TIMG14_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_RIS_TIMG14_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMG14_RIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_RIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_RIS_TIMG14_INT_EVENT_CCU array
   type TIMG14_RIS_TIMG14_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMG14_RIS_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_RIS_TIMG14_INT_EVENT_CCU
   type TIMG14_RIS_TIMG14_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMG14_RIS_TIMG14_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_RIS_TIMG14_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Trigger overflow
   type TIMG14_RIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_RIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type TIMG14_RIS_TIMG14_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMG14_RIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMG14_RIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMG14_RIS_TIMG14_INT_EVENT_CCD_Field;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMG14_RIS_TIMG14_INT_EVENT_CCU_Field;
      --  unspecified
      Reserved_12_24 : HAL.UInt13;
      --  Read-only. Trigger overflow
      TOV            : TIMG14_RIS_TOV_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_RIS_TIMG14_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      Reserved_12_24 at 0 range 12 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMG14_MIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_MIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMG14_MIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_MIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMG14_MIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_MIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_MIS_TIMG14_INT_EVENT_CCD array
   type TIMG14_MIS_TIMG14_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMG14_MIS_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_MIS_TIMG14_INT_EVENT_CCD
   type TIMG14_MIS_TIMG14_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMG14_MIS_TIMG14_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_MIS_TIMG14_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMG14_MIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_MIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMG14_MIS_TIMG14_INT_EVENT_CCU array
   type TIMG14_MIS_TIMG14_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMG14_MIS_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_MIS_TIMG14_INT_EVENT_CCU
   type TIMG14_MIS_TIMG14_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMG14_MIS_TIMG14_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_MIS_TIMG14_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Trigger overflow
   type TIMG14_MIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_MIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type TIMG14_MIS_TIMG14_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMG14_MIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMG14_MIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMG14_MIS_TIMG14_INT_EVENT_CCD_Field;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMG14_MIS_TIMG14_INT_EVENT_CCU_Field;
      --  unspecified
      Reserved_12_24 : HAL.UInt13;
      --  Read-only. Trigger overflow
      TOV            : TIMG14_MIS_TOV_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_MIS_TIMG14_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      Reserved_12_24 at 0 range 12 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Zero event SET
   type TIMG14_ISET_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_ISET_Z_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Load event SET
   type TIMG14_ISET_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_ISET_L_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Capture or compare down event SET
   type TIMG14_ISET_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_ISET_CCD0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMG14_ISET_TIMG14_INT_EVENT_CCD array
   type TIMG14_ISET_TIMG14_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMG14_ISET_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_ISET_TIMG14_INT_EVENT_CCD
   type TIMG14_ISET_TIMG14_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMG14_ISET_TIMG14_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_ISET_TIMG14_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event SET
   type TIMG14_ISET_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_ISET_CCU0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMG14_ISET_TIMG14_INT_EVENT_CCU array
   type TIMG14_ISET_TIMG14_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMG14_ISET_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_ISET_TIMG14_INT_EVENT_CCU
   type TIMG14_ISET_TIMG14_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMG14_ISET_TIMG14_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_ISET_TIMG14_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Trigger Overflow event SET
   type TIMG14_ISET_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMG14_ISET_TOV_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type TIMG14_ISET_TIMG14_INT_EVENT_Register is record
      --  Write-only. Zero event SET
      Z              : TIMG14_ISET_Z_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. Load event SET
      L              : TIMG14_ISET_L_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event SET
      CCD            : TIMG14_ISET_TIMG14_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Capture or compare up event SET
      CCU            : TIMG14_ISET_TIMG14_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_24 : HAL.UInt13 := 16#0#;
      --  Write-only. Trigger Overflow event SET
      TOV            : TIMG14_ISET_TOV_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_ISET_TIMG14_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      Reserved_12_24 at 0 range 12 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Zero event CLEAR
   type TIMG14_ICLR_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG14_ICLR_Z_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Load event CLEAR
   type TIMG14_ICLR_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG14_ICLR_L_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Capture or compare down event CLEAR
   type TIMG14_ICLR_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG14_ICLR_CCD0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMG14_ICLR_TIMG14_INT_EVENT_CCD array
   type TIMG14_ICLR_TIMG14_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMG14_ICLR_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_ICLR_TIMG14_INT_EVENT_CCD
   type TIMG14_ICLR_TIMG14_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMG14_ICLR_TIMG14_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_ICLR_TIMG14_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event CLEAR
   type TIMG14_ICLR_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG14_ICLR_CCU0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMG14_ICLR_TIMG14_INT_EVENT_CCU array
   type TIMG14_ICLR_TIMG14_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMG14_ICLR_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMG14_ICLR_TIMG14_INT_EVENT_CCU
   type TIMG14_ICLR_TIMG14_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMG14_ICLR_TIMG14_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMG14_ICLR_TIMG14_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Trigger Overflow event CLEAR
   type TIMG14_ICLR_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMG14_ICLR_TOV_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type TIMG14_ICLR_TIMG14_INT_EVENT_Register is record
      --  Write-only. Zero event CLEAR
      Z              : TIMG14_ICLR_Z_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  Write-only. Load event CLEAR
      L              : TIMG14_ICLR_L_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event CLEAR
      CCD            : TIMG14_ICLR_TIMG14_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Capture or compare up event CLEAR
      CCU            : TIMG14_ICLR_TIMG14_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_24 : HAL.UInt13 := 16#0#;
      --  Write-only. Trigger Overflow event CLEAR
      TOV            : TIMG14_ICLR_TOV_Field := MSPMC1104_SVD.TIMG.NO_EFFECT;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_ICLR_TIMG14_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      Reserved_12_24 at 0 range 12 .. 24;
      TOV            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type TIMG14_INT_EVENT_Cluster is record
      --  Interrupt index
      TIMG14_IIDX  : aliased TIMG14_IIDX_TIMG14_INT_EVENT_Register;
      --  Interrupt mask
      TIMG14_IMASK : aliased TIMG14_IMASK_TIMG14_INT_EVENT_Register;
      --  Raw interrupt status
      TIMG14_RIS   : aliased TIMG14_RIS_TIMG14_INT_EVENT_Register;
      --  Masked interrupt status
      TIMG14_MIS   : aliased TIMG14_MIS_TIMG14_INT_EVENT_Register;
      --  Interrupt set
      TIMG14_ISET  : aliased TIMG14_ISET_TIMG14_INT_EVENT_Register;
      --  Interrupt clear
      TIMG14_ICLR  : aliased TIMG14_ICLR_TIMG14_INT_EVENT_Register;
   end record
     with Size => 352;

   for TIMG14_INT_EVENT_Cluster use record
      TIMG14_IIDX  at 16#0# range 0 .. 31;
      TIMG14_IMASK at 16#8# range 0 .. 31;
      TIMG14_RIS   at 16#10# range 0 .. 31;
      TIMG14_MIS   at 16#18# range 0 .. 31;
      TIMG14_ISET  at 16#20# range 0 .. 31;
      TIMG14_ICLR  at 16#28# range 0 .. 31;
   end record;

   type TIMG14_INT_EVENT_Clusters is array (0 .. 2)
     of TIMG14_INT_EVENT_Cluster;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][0]
   type TIMG14_EVT_MODE_EVT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG14_EVT_MODE_EVT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMG14_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG14_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMG14_EVT_MODE_EVT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMG14_EVT_MODE_EVT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type TIMG14_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][0]
      EVT0_CFG      : TIMG14_EVT_MODE_EVT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT1_CFG      : TIMG14_EVT_MODE_EVT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT2_CFG      : TIMG14_EVT_MODE_EVT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_EVT_MODE_Register use record
      EVT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      EVT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TIMG14_DESC_MINREV_Field is HAL.UInt4;
   subtype TIMG14_DESC_MAJREV_Field is HAL.UInt4;
   subtype TIMG14_DESC_INSTNUM_Field is HAL.UInt4;
   subtype TIMG14_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype TIMG14_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type TIMG14_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : TIMG14_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : TIMG14_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : TIMG14_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : TIMG14_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : TIMG14_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   -----------------------------------------------
   -- TIMG14_COMMONREGS[%s] cluster's Registers --
   -----------------------------------------------

   --  Counter CCP0
   type TIMG14_CCPD_C0CCP0_Field is
     (--  Input
      INPUT,
      --  Output
      OUTPUT)
     with Size => 1;
   for TIMG14_CCPD_C0CCP0_Field use
     (INPUT => 0,
      OUTPUT => 1);

   --  TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP array
   type TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP_Field_Array is array (0 .. 1)
     of TIMG14_CCPD_C0CCP0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP
   type TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  C0CCP as a value
            Val : HAL.UInt2;
         when True =>
            --  C0CCP as an array
            Arr : TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CCP Direction
   type TIMG14_CCPD_TIMG14_COMMONREGS[%s]_Register is record
      --  Counter CCP0
      C0CCP         : TIMG14_CCPD_TIMG14_COMMONREGS[%s]_C0CCP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCPD_TIMG14_COMMONREGS[%s]_Register use record
      C0CCP         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMG14_ODIS_C0CCP0_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[0].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[0] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMG14_ODIS_C0CCP0_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMG14_ODIS_C0CCP1_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[1].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[1] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMG14_ODIS_C0CCP1_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Output Disable
   type TIMG14_ODIS_TIMG14_COMMONREGS[%s]_Register is record
      --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP0        : TIMG14_ODIS_C0CCP0_Field :=
                       MSPMC1104_SVD.TIMG.CCP_OUTPUT_OCTL;
      --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP1        : TIMG14_ODIS_C0CCP1_Field :=
                       MSPMC1104_SVD.TIMG.CCP_OUTPUT_OCTL;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_ODIS_TIMG14_COMMONREGS[%s]_Register use record
      C0CCP0        at 0 range 0 .. 0;
      C0CCP1        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock Enable Disables the clock gating to the module. SW has to
   --  explicitly program the value to 0 to gate the clock.
   type TIMG14_CCLKCTL_CLKEN_Field is
     (--  Clock is disabled.
      DISABLED,
      --  Clock is enabled
      ENABLED)
     with Size => 1;
   for TIMG14_CCLKCTL_CLKEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Counter Clock Control Register
   type TIMG14_CCLKCTL_TIMG14_COMMONREGS[%s]_Register is record
      --  Clock Enable Disables the clock gating to the module. SW has to
      --  explicitly program the value to 0 to gate the clock.
      CLKEN         : TIMG14_CCLKCTL_CLKEN_Field :=
                       MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCLKCTL_TIMG14_COMMONREGS[%s]_Register use record
      CLKEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TIMG14_CPS_TIMG14_COMMONREGS[%s]_PCNT_Field is HAL.UInt8;

   --  Clock Prescale Register
   type TIMG14_CPS_TIMG14_COMMONREGS[%s]_Register is record
      --  Pre-Scale Count This field specifies the pre-scale count value. The
      --  selected TIMCLK source is divided by a value of (PCNT+1). A PCNT
      --  value of 0 divides TIMCLK by 1, effectively bypassing the divider. A
      --  PCNT value of greater than 0 divides the TIMCLK source generating a
      --  slower clock
      PCNT          : TIMG14_CPS_TIMG14_COMMONREGS[%s]_PCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CPS_TIMG14_COMMONREGS[%s]_Register use record
      PCNT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIMG14_CPSV_TIMG14_COMMONREGS[%s]_CPSVAL_Field is HAL.UInt8;

   --  Clock prescale count status register
   type TIMG14_CPSV_TIMG14_COMMONREGS[%s]_Register is record
      --  Read-only. Current Prescale Count Value
      CPSVAL        : TIMG14_CPSV_TIMG14_COMMONREGS[%s]_CPSVAL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CPSV_TIMG14_COMMONREGS[%s]_Register use record
      CPSVAL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Timer Cross trigger enable. This field is used to enable whether the SW
   --  or HW logic can generate a timer cross trigger event in the system.
   --  These cross triggers are connected to the respective timer trigger in of
   --  the other timer IPs in the SOC power domain. The timer cross trigger is
   --  essentially the combined logic of the HW and SW conditions controlling
   --  EN bit in the CTRCTL register.
   type TIMG14_CTTRIGCTL_CTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMG14_CTTRIGCTL_CTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Enable the Input Trigger Conditions to the Timer module as a condition
   --  for Cross Triggers. Refer Figure 8 Cross Trigger Generation Path
   type TIMG14_CTTRIGCTL_EVTCTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMG14_CTTRIGCTL_EVTCTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Used to Select the subscriber port that should be used for input cross
   --  trigger. Refer Figure 8 Cross Trigger Generation Path
   type TIMG14_CTTRIGCTL_EVTCTTRIGSEL_Field is
     (--  Use FSUB0 as cross trigger source.
      FSUB0,
      --  Use FSUB1 as cross trigger source.
      FSUB1,
      --  Use Zero event as cross trigger source.
      Z,
      --  Use Load event as cross trigger source.
      L,
      --  Use CCD0 event as cross trigger source.
      CCD0,
      --  Use CCD1 event as cross trigger source.
      CCD1,
      --  Use CCD2 event as cross trigger source.
      CCD2,
      --  Use CCD3 event as cross trigger source.
      CCD3,
      --  Use CCU0 event as cross trigger source.
      CCU0,
      --  Use CCU1 event as cross trigger source.
      CCU1,
      --  Use CCU2 event as cross trigger source.
      CCU2,
      --  Use CCU3 event as cross trigger source.
      CCU3)
     with Size => 4;
   for TIMG14_CTTRIGCTL_EVTCTTRIGSEL_Field use
     (FSUB0 => 0,
      FSUB1 => 1,
      Z => 2,
      L => 3,
      CCD0 => 4,
      CCD1 => 5,
      CCD2 => 6,
      CCD3 => 7,
      CCU0 => 8,
      CCU1 => 9,
      CCU2 => 10,
      CCU3 => 11);

   --  Timer Cross Trigger Control Register
   type TIMG14_CTTRIGCTL_TIMG14_COMMONREGS[%s]_Register is record
      --  Timer Cross trigger enable. This field is used to enable whether the
      --  SW or HW logic can generate a timer cross trigger event in the
      --  system. These cross triggers are connected to the respective timer
      --  trigger in of the other timer IPs in the SOC power domain. The timer
      --  cross trigger is essentially the combined logic of the HW and SW
      --  conditions controlling EN bit in the CTRCTL register.
      CTEN           : TIMG14_CTTRIGCTL_CTEN_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  Enable the Input Trigger Conditions to the Timer module as a
      --  condition for Cross Triggers. Refer Figure 8 Cross Trigger Generation
      --  Path
      EVTCTEN        : TIMG14_CTTRIGCTL_EVTCTEN_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Used to Select the subscriber port that should be used for input
      --  cross trigger. Refer Figure 8 Cross Trigger Generation Path
      EVTCTTRIGSEL   : TIMG14_CTTRIGCTL_EVTCTTRIGSEL_Field :=
                        MSPMC1104_SVD.TIMG.FSUB0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CTTRIGCTL_TIMG14_COMMONREGS[%s]_Register use record
      CTEN           at 0 range 0 .. 0;
      EVTCTEN        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      EVTCTTRIGSEL   at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Generate Cross Trigger This bit when programmed will generate a
   --  synchronized trigger condition all the cross trigger enabled Timer
   --  instances including current timer instance.
   type TIMG14_CTTRIG_TRIG_Field is
     (--  Cross trigger generation disabled
      DISABLED,
      --  Generate Cross trigger pulse
      GENERATE)
     with Size => 1;
   for TIMG14_CTTRIG_TRIG_Field use
     (DISABLED => 0,
      GENERATE => 1);

   --  Timer Cross Trigger Register
   type TIMG14_CTTRIG_TIMG14_COMMONREGS[%s]_Register is record
      --  Write-only. Generate Cross Trigger This bit when programmed will
      --  generate a synchronized trigger condition all the cross trigger
      --  enabled Timer instances including current timer instance.
      TRIG          : TIMG14_CTTRIG_TRIG_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CTTRIG_TIMG14_COMMONREGS[%s]_Register use record
      TRIG          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type TIMG14_COMMONREGS[%s]_Cluster is record
      --  CCP Direction
      TIMG14_CCPD      : aliased TIMG14_CCPD_TIMG14_COMMONREGS[%s]_Register;
      --  Output Disable
      TIMG14_ODIS      : aliased TIMG14_ODIS_TIMG14_COMMONREGS[%s]_Register;
      --  Counter Clock Control Register
      TIMG14_CCLKCTL   : aliased TIMG14_CCLKCTL_TIMG14_COMMONREGS[%s]_Register;
      --  Clock Prescale Register
      TIMG14_CPS       : aliased TIMG14_CPS_TIMG14_COMMONREGS[%s]_Register;
      --  Clock prescale count status register
      TIMG14_CPSV      : aliased TIMG14_CPSV_TIMG14_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Control Register
      TIMG14_CTTRIGCTL : aliased TIMG14_CTTRIGCTL_TIMG14_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Register
      TIMG14_CTTRIG    : aliased TIMG14_CTTRIG_TIMG14_COMMONREGS[%s]_Register;
   end record
     with Size => 256;

   for TIMG14_COMMONREGS[%s]_Cluster use record
      TIMG14_CCPD      at 16#0# range 0 .. 31;
      TIMG14_ODIS      at 16#4# range 0 .. 31;
      TIMG14_CCLKCTL   at 16#8# range 0 .. 31;
      TIMG14_CPS       at 16#C# range 0 .. 31;
      TIMG14_CPSV      at 16#10# range 0 .. 31;
      TIMG14_CTTRIGCTL at 16#14# range 0 .. 31;
      TIMG14_CTTRIG    at 16#1C# range 0 .. 31;
   end record;

   ------------------------------------------------
   -- TIMG14_COUNTERREGS[%s] cluster's Registers --
   ------------------------------------------------

   subtype TIMG14_CTR_TIMG14_COUNTERREGS[%s]_CCTR_Field is HAL.UInt16;

   --  Counter Register
   type TIMG14_CTR_TIMG14_COUNTERREGS[%s]_Register is record
      --  Current Counter value
      CCTR           : TIMG14_CTR_TIMG14_COUNTERREGS[%s]_CCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CTR_TIMG14_COUNTERREGS[%s]_Register use record
      CCTR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter Enable. This bit allows the timer to advance This bit is
   --  automatically cleared if REPEAT=0 (do not automatically reload) and the
   --  counter value equals zero. CPU Write: A register write that sets the EN
   --  bit, the counter value is set per the CVAE value. Hardware: This bit may
   --  also be set as the result of an LCOND or ZCOND condition being met and
   --  the counter value changed to the load value or zero value, respectively.
   type TIMG14_CTRCTL_EN_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for TIMG14_CTRCTL_EN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Repeat. The repeat bit controls whether the counter continues to advance
   --  following a zero event, or the exiting of a debug or fault condition. If
   --  counting down, a zero event is followed by a load at the next advance
   --  condition. If counting up-down, a zero event is followed by an advance
   --  event (+1). The intent of encoding 3 is that if the debug condition is
   --  in effect, the generation of the load pulse is deferred until the debug
   --  condition is over. This allows the counter to reach zero before counting
   --  is suspended.
   type TIMG14_CTRCTL_REPEAT_Field is
     (--  Does not automatically advance following a zero event.
      REPEAT_0,
      --  Continues to advance following a zero event.
      REPEAT_1,
      --  Reserved
      REPEAT_2,
      --  Continues to advance following a zero event if the debug mode is not in
--  effect, or following the release of the debug mode.
      REPEAT_3,
      --  Reserved
      REPEAT_4)
     with Size => 3;
   for TIMG14_CTRCTL_REPEAT_Field use
     (REPEAT_0 => 0,
      REPEAT_1 => 1,
      REPEAT_2 => 2,
      REPEAT_3 => 3,
      REPEAT_4 => 4);

   --  Count Mode
   type TIMG14_CTRCTL_CM_Field is
     (--  Down
      DOWN,
      --  Up/Down
      UP_DOWN,
      --  Counter counts up.
      UP)
     with Size => 2;
   for TIMG14_CTRCTL_CM_Field use
     (DOWN => 0,
      UP_DOWN => 1,
      UP => 2);

   --  Counter Load Control. This field specifies what controls the counter
   --  operation with respect to setting the counter to the LD register value.
   --  Encodings 1-3 are present based on the CCPC parameter value. Bits 4-5
   --  are present based on the HQEI parameter value. Any encodings not
   --  provided are documented as reserved.
   type TIMG14_CTRCTL_CLC_Field is
     (--  CCCTL_0 LCOND
      CCCTL0_LCOND,
      --  CCCTL_1 LCOND
      CCCTL1_LCOND,
      --  CCCTL_2 LCOND This value exists when there are 4 channels.
      CCCTL2_LCOND,
      --  CCCTL_3 LCOND This value exists when there are 4 channels.
      CCCTL3_LCOND,
      --  Controlled by 2 input QEI mode. This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3 input QEI mode. This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG14_CTRCTL_CLC_Field_Reset)
     with Size => 3;
   for TIMG14_CTRCTL_CLC_Field use
     (CCCTL0_LCOND => 0,
      CCCTL1_LCOND => 1,
      CCCTL2_LCOND => 2,
      CCCTL3_LCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG14_CTRCTL_CLC_Field_Reset => 7);

   --  Counter Advance Control. This field specifies what controls the counter
   --  operation with respect to advancing (incrementing or decrementing) the
   --  counter value. Encodings 1-3 are present based on the CCPC parameter
   --  value. Bits 4-5 are present based on the HQEI parameter value. Any
   --  encodings not provided are documented as reserved.
   type TIMG14_CTRCTL_CAC_Field is
     (--  CCCTL_0 ACOND
      CCCTL0_ACOND,
      --  CCCTL_1 ACOND
      CCCTL1_ACOND,
      --  CCCTL_2 ACOND This value exists when there are 4 channels.
      CCCTL2_ACOND,
      --  CCCTL_3 ACOND This value exists when there are 4 channels.
      CCCTL3_ACOND,
      --  Controlled by 2-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG14_CTRCTL_CAC_Field_Reset)
     with Size => 3;
   for TIMG14_CTRCTL_CAC_Field use
     (CCCTL0_ACOND => 0,
      CCCTL1_ACOND => 1,
      CCCTL2_ACOND => 2,
      CCCTL3_ACOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG14_CTRCTL_CAC_Field_Reset => 7);

   --  Counter Zero Control This field specifies what controls the counter
   --  operation with respect to zeroing the counter value. Encodings 1-3 are
   --  present based on the CCPC parameter value. Bits 4-5 are present based on
   --  the HQEI parameter value. Any encodings not provided are documented as
   --  reserved.
   type TIMG14_CTRCTL_CZC_Field is
     (--  CCCTL_0 ZCOND
      CCCTL0_ZCOND,
      --  CCCTL_1 ZCOND
      CCCTL1_ZCOND,
      --  CCCTL_2 ZCOND This value exists when there are 4 channels.
      CCCTL2_ZCOND,
      --  CCCTL_3 ZCOND This value exists when there are 4 channels.
      CCCTL3_ZCOND,
      --  Controlled by 2-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_2INP,
      --  Controlled by 3-input QEI mode This value exists when gptimer support QEI
--  feature.
      QEI_3INP,
      --  Reset value for the field
      TIMG14_CTRCTL_CZC_Field_Reset)
     with Size => 3;
   for TIMG14_CTRCTL_CZC_Field use
     (CCCTL0_ZCOND => 0,
      CCCTL1_ZCOND => 1,
      CCCTL2_ZCOND => 2,
      CCCTL3_ZCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMG14_CTRCTL_CZC_Field_Reset => 7);

   --  Debug Resume Behavior This bit specifies what the device does following
   --  the release/exit of debug mode.
   type TIMG14_CTRCTL_DRB_Field is
     (--  Resume counting
      RESUME,
      --  Perform the action as specified by the CVAE field.
      CVAE_ACTION)
     with Size => 1;
   for TIMG14_CTRCTL_DRB_Field use
     (RESUME => 0,
      CVAE_ACTION => 1);

   --  Counter Value After Enable. This field specifies the initialization
   --  condition of the counter when the EN bit is changed from 0 to 1 by a
   --  write to the CTRCTL register. Note that an external event can also cause
   --  the EN bit to go active.
   type TIMG14_CTRCTL_CVAE_Field is
     (--  The counter is set to the LOAD register value
      LDVAL,
      --  The counter value is unchanged from its current value which could have been
--  initialized by software
      NOCHANGE,
      --  The counter is set to zero
      ZEROVAL)
     with Size => 2;
   for TIMG14_CTRCTL_CVAE_Field use
     (LDVAL => 0,
      NOCHANGE => 1,
      ZEROVAL => 2);

   --  Counter Control Register
   type TIMG14_CTRCTL_TIMG14_COUNTERREGS[%s]_Register is record
      --  Counter Enable. This bit allows the timer to advance This bit is
      --  automatically cleared if REPEAT=0 (do not automatically reload) and
      --  the counter value equals zero. CPU Write: A register write that sets
      --  the EN bit, the counter value is set per the CVAE value. Hardware:
      --  This bit may also be set as the result of an LCOND or ZCOND condition
      --  being met and the counter value changed to the load value or zero
      --  value, respectively.
      EN             : TIMG14_CTRCTL_EN_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  Repeat. The repeat bit controls whether the counter continues to
      --  advance following a zero event, or the exiting of a debug or fault
      --  condition. If counting down, a zero event is followed by a load at
      --  the next advance condition. If counting up-down, a zero event is
      --  followed by an advance event (+1). The intent of encoding 3 is that
      --  if the debug condition is in effect, the generation of the load pulse
      --  is deferred until the debug condition is over. This allows the
      --  counter to reach zero before counting is suspended.
      REPEAT         : TIMG14_CTRCTL_REPEAT_Field :=
                        MSPMC1104_SVD.TIMG.REPEAT_0;
      --  Count Mode
      CM             : TIMG14_CTRCTL_CM_Field := MSPMC1104_SVD.TIMG.DOWN;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Counter Load Control. This field specifies what controls the counter
      --  operation with respect to setting the counter to the LD register
      --  value. Encodings 1-3 are present based on the CCPC parameter value.
      --  Bits 4-5 are present based on the HQEI parameter value. Any encodings
      --  not provided are documented as reserved.
      CLC            : TIMG14_CTRCTL_CLC_Field :=
                        TIMG14_CTRCTL_CLC_Field_Reset;
      --  Counter Advance Control. This field specifies what controls the
      --  counter operation with respect to advancing (incrementing or
      --  decrementing) the counter value. Encodings 1-3 are present based on
      --  the CCPC parameter value. Bits 4-5 are present based on the HQEI
      --  parameter value. Any encodings not provided are documented as
      --  reserved.
      CAC            : TIMG14_CTRCTL_CAC_Field :=
                        TIMG14_CTRCTL_CAC_Field_Reset;
      --  Counter Zero Control This field specifies what controls the counter
      --  operation with respect to zeroing the counter value. Encodings 1-3
      --  are present based on the CCPC parameter value. Bits 4-5 are present
      --  based on the HQEI parameter value. Any encodings not provided are
      --  documented as reserved.
      CZC            : TIMG14_CTRCTL_CZC_Field :=
                        TIMG14_CTRCTL_CZC_Field_Reset;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Debug Resume Behavior This bit specifies what the device does
      --  following the release/exit of debug mode.
      DRB            : TIMG14_CTRCTL_DRB_Field := MSPMC1104_SVD.TIMG.RESUME;
      --  unspecified
      Reserved_18_27 : HAL.UInt10 := 16#0#;
      --  Counter Value After Enable. This field specifies the initialization
      --  condition of the counter when the EN bit is changed from 0 to 1 by a
      --  write to the CTRCTL register. Note that an external event can also
      --  cause the EN bit to go active.
      CVAE           : TIMG14_CTRCTL_CVAE_Field := MSPMC1104_SVD.TIMG.LDVAL;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CTRCTL_TIMG14_COUNTERREGS[%s]_Register use record
      EN             at 0 range 0 .. 0;
      REPEAT         at 0 range 1 .. 3;
      CM             at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CLC            at 0 range 7 .. 9;
      CAC            at 0 range 10 .. 12;
      CZC            at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DRB            at 0 range 17 .. 17;
      Reserved_18_27 at 0 range 18 .. 27;
      CVAE           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIMG14_LOAD_TIMG14_COUNTERREGS[%s]_LD_Field is HAL.UInt16;

   --  Load Register
   type TIMG14_LOAD_TIMG14_COUNTERREGS[%s]_Register is record
      --  Load Value
      LD             : TIMG14_LOAD_TIMG14_COUNTERREGS[%s]_LD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_LOAD_TIMG14_COUNTERREGS[%s]_Register use record
      LD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_CCVAL_Field :=
                        16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_Register;

   subtype TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_CCVAL_Field :=
                        16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_Register;

   --  Capture Condition. #br# Specifies the condition that generates a capture
   --  pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_01_CCOND_Field is
     (--  None (never captures)
      NOCAPTURE,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_01_CCOND_Field use
     (NOCAPTURE => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Advance Condition. #br# Specifies the condition that generates an
   --  advance pulse. 6h-Fh = Reserved
   type TIMG14_CCCTL_01_ACOND_Field is
     (--  Each TIMCLK
      TIMCLK,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE,
      --  CCP High or Trigger assertion (level)
      CC_TRIG_HIGH)
     with Size => 3;
   for TIMG14_CCCTL_01_ACOND_Field use
     (TIMCLK => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3,
      CC_TRIG_HIGH => 5);

   --  Load Condition. #br# Specifies the condition that generates a load
   --  pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_01_LCOND_Field is
     (--  Reset value for the field
      TIMG14_CCCTL_01_LCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_01_LCOND_Field use
     (TIMG14_CCCTL_01_LCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Zero Condition. #br# This field specifies the condition that generates a
   --  zero pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_01_ZCOND_Field is
     (--  Reset value for the field
      TIMG14_CCCTL_01_ZCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_01_ZCOND_Field use
     (TIMG14_CCCTL_01_ZCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Capture or Compare. #br# Specifies whether the corresponding CC register
   --  is used as a capture register or a compare register (never both).
   type TIMG14_CCCTL_01_COC_Field is
     (--  Compare
      COMPARE,
      --  Capture
      CAPTURE)
     with Size => 1;
   for TIMG14_CCCTL_01_COC_Field use
     (COMPARE => 0,
      CAPTURE => 1);

   --  Selects the source second CCU event.
   type TIMG14_CCCTL_01_CC2SELU_Field is
     (--  Selects CCU from CC0.
      SEL_CCU0,
      --  Selects CCU from CC1.
      SEL_CCU1,
      --  Selects CCU from CC2.
      SEL_CCU2,
      --  Selects CCU from CC3.
      SEL_CCU3,
      --  Selects CCU from CC4.
      SEL_CCU4,
      --  Selects CCU from CC5.
      SEL_CCU5)
     with Size => 3;
   for TIMG14_CCCTL_01_CC2SELU_Field use
     (SEL_CCU0 => 0,
      SEL_CCU1 => 1,
      SEL_CCU2 => 2,
      SEL_CCU3 => 3,
      SEL_CCU4 => 4,
      SEL_CCU5 => 5);

   --  CCACT shadow register Update Method This field controls how updates to
   --  the CCCACT shadow register are performed
   type TIMG14_CCCTL_01_CCACTUPD_Field is
     (--  Value written to the CCACT register has immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCACTx_y register are stored in shadow
--  register and transferred to CCACTx_y in the TIMCLK cycle following CTR
--  equals 0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals 0 or CTR. Equals LDn. Note this update mechanism is
--  defined for use only in configurations using up/down counting. This mode is
--  not intended for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCACTx_y
--  register are stored in shadow register and transferred to CCACTx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  On a TRIG pulse, the value stored in CCACTx_y shadow register is loaded
--  into CCACTx_y active register.
      TRIG)
     with Size => 3;
   for TIMG14_CCCTL_01_CCACTUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCD event.
   type TIMG14_CCCTL_01_CC2SELD_Field is
     (--  Selects CCD from CC0.
      SEL_CCD0,
      --  Selects CCD from CC1.
      SEL_CCD1,
      --  Selects CCD from CC2.
      SEL_CCD2,
      --  Selects CCD from CC3.
      SEL_CCD3,
      --  Selects CCD from CC4.
      SEL_CCD4,
      --  Selects CCD from CC5.
      SEL_CCD5)
     with Size => 3;
   for TIMG14_CCCTL_01_CC2SELD_Field use
     (SEL_CCD0 => 0,
      SEL_CCD1 => 1,
      SEL_CCD2 => 2,
      SEL_CCD3 => 3,
      SEL_CCD4 => 4,
      SEL_CCD5 => 5);

   --  Capture or Compare Control Registers
   type TIMG14_CCCTL_01_TIMG14_COUNTERREGS[%s]_Register is record
      --  Capture Condition. #br# Specifies the condition that generates a
      --  capture pulse. 4h-Fh = Reserved
      CCOND          : TIMG14_CCCTL_01_CCOND_Field :=
                        MSPMC1104_SVD.TIMG.NOCAPTURE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Advance Condition. #br# Specifies the condition that generates an
      --  advance pulse. 6h-Fh = Reserved
      ACOND          : TIMG14_CCCTL_01_ACOND_Field :=
                        MSPMC1104_SVD.TIMG.TIMCLK;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Load Condition. #br# Specifies the condition that generates a load
      --  pulse. 4h-Fh = Reserved
      LCOND          : TIMG14_CCCTL_01_LCOND_Field :=
                        TIMG14_CCCTL_01_LCOND_Field_Reset;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Zero Condition. #br# This field specifies the condition that
      --  generates a zero pulse. 4h-Fh = Reserved
      ZCOND          : TIMG14_CCCTL_01_ZCOND_Field :=
                        TIMG14_CCCTL_01_ZCOND_Field_Reset;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Capture or Compare. #br# Specifies whether the corresponding CC
      --  register is used as a capture register or a compare register (never
      --  both).
      COC            : TIMG14_CCCTL_01_COC_Field :=
                        MSPMC1104_SVD.TIMG.COMPARE;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Selects the source second CCU event.
      CC2SELU        : TIMG14_CCCTL_01_CC2SELU_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCU0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  CCACT shadow register Update Method This field controls how updates
      --  to the CCCACT shadow register are performed
      CCACTUPD       : TIMG14_CCCTL_01_CCACTUPD_Field :=
                        MSPMC1104_SVD.TIMG.Immediately;
      --  Selects the source second CCD event.
      CC2SELD        : TIMG14_CCCTL_01_CC2SELD_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCD0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCCTL_01_TIMG14_COUNTERREGS[%s]_Register use record
      CCOND          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACOND          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LCOND          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ZCOND          at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      COC            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      CC2SELU        at 0 range 22 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CCACTUPD       at 0 range 26 .. 28;
      CC2SELD        at 0 range 29 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMG14_CCCTL_01_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CCCTL_01_TIMG14_COUNTERREGS[%s]_Register;

   --  Capture Condition. #br# Specifies the condition that generates a capture
   --  pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_23_CCOND_Field is
     (--  None (never captures)
      NOCAPTURE,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_23_CCOND_Field use
     (NOCAPTURE => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Advance Condition. #br# Specifies the condition that generates an
   --  advance pulse. 6h-Fh = Reserved
   type TIMG14_CCCTL_23_ACOND_Field is
     (--  Each TIMCLK
      TIMCLK,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE,
      --  CCP High or Trigger assertion (level)
      CC_TRIG_HIGH)
     with Size => 3;
   for TIMG14_CCCTL_23_ACOND_Field use
     (TIMCLK => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3,
      CC_TRIG_HIGH => 5);

   --  Load Condition. #br# Specifies the condition that generates a load
   --  pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_23_LCOND_Field is
     (--  Reset value for the field
      TIMG14_CCCTL_23_LCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_23_LCOND_Field use
     (TIMG14_CCCTL_23_LCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Zero Condition. #br# This field specifies the condition that generates a
   --  zero pulse. 4h-Fh = Reserved
   type TIMG14_CCCTL_23_ZCOND_Field is
     (--  Reset value for the field
      TIMG14_CCCTL_23_ZCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMG14_CCCTL_23_ZCOND_Field use
     (TIMG14_CCCTL_23_ZCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Capture or Compare. #br# Specifies whether the corresponding CC register
   --  is used as a capture register or a compare register (never both).
   type TIMG14_CCCTL_23_COC_Field is
     (--  Compare
      COMPARE,
      --  Capture
      CAPTURE)
     with Size => 1;
   for TIMG14_CCCTL_23_COC_Field use
     (COMPARE => 0,
      CAPTURE => 1);

   --  Selects the source second CCU event.
   type TIMG14_CCCTL_23_CC2SELU_Field is
     (--  Selects CCU from CC0.
      SEL_CCU0,
      --  Selects CCU from CC1.
      SEL_CCU1,
      --  Selects CCU from CC2.
      SEL_CCU2,
      --  Selects CCU from CC3.
      SEL_CCU3,
      --  Selects CCU from CC4.
      SEL_CCU4,
      --  Selects CCU from CC5.
      SEL_CCU5)
     with Size => 3;
   for TIMG14_CCCTL_23_CC2SELU_Field use
     (SEL_CCU0 => 0,
      SEL_CCU1 => 1,
      SEL_CCU2 => 2,
      SEL_CCU3 => 3,
      SEL_CCU4 => 4,
      SEL_CCU5 => 5);

   --  CCACT shadow register Update Method This field controls how updates to
   --  the CCCACT shadow register are performed
   type TIMG14_CCCTL_23_CCACTUPD_Field is
     (--  Value written to the CCACTx_y register has immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCACTx_y register are stored in shadow
--  register and transferred to CCACTx_y in the TIMCLK cycle following CTR
--  equals 0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCACTx_y register are stored
--  in shadow register and transferred to CCACTx_y in the TIMCLK cycle
--  following CTR equals 0 or CTR. Equals LDn. Note this update mechanism is
--  defined for use only in configurations using up/down counting. This mode is
--  not intended for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCACTx_y
--  register are stored in shadow register and transferred to CCACTx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  On a TRIG pulse, the value stored in CCACTx_y shadow register is loaded
--  into CCACTx_y active register.
      TRIG)
     with Size => 3;
   for TIMG14_CCCTL_23_CCACTUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCD event.
   type TIMG14_CCCTL_23_CC2SELD_Field is
     (--  Selects CCD from CC0.
      SEL_CCD0,
      --  Selects CCD from CC1.
      SEL_CCD1,
      --  Selects CCD from CC2.
      SEL_CCD2,
      --  Selects CCD from CC3.
      SEL_CCD3,
      --  Selects CCD from CC4.
      SEL_CCD4,
      --  Selects CCD from CC5.
      SEL_CCD5)
     with Size => 3;
   for TIMG14_CCCTL_23_CC2SELD_Field use
     (SEL_CCD0 => 0,
      SEL_CCD1 => 1,
      SEL_CCD2 => 2,
      SEL_CCD3 => 3,
      SEL_CCD4 => 4,
      SEL_CCD5 => 5);

   --  Capture or Compare Control Registers
   type TIMG14_CCCTL_23_TIMG14_COUNTERREGS[%s]_Register is record
      --  Capture Condition. #br# Specifies the condition that generates a
      --  capture pulse. 4h-Fh = Reserved
      CCOND          : TIMG14_CCCTL_23_CCOND_Field :=
                        MSPMC1104_SVD.TIMG.NOCAPTURE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Advance Condition. #br# Specifies the condition that generates an
      --  advance pulse. 6h-Fh = Reserved
      ACOND          : TIMG14_CCCTL_23_ACOND_Field :=
                        MSPMC1104_SVD.TIMG.TIMCLK;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Load Condition. #br# Specifies the condition that generates a load
      --  pulse. 4h-Fh = Reserved
      LCOND          : TIMG14_CCCTL_23_LCOND_Field :=
                        TIMG14_CCCTL_23_LCOND_Field_Reset;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Zero Condition. #br# This field specifies the condition that
      --  generates a zero pulse. 4h-Fh = Reserved
      ZCOND          : TIMG14_CCCTL_23_ZCOND_Field :=
                        TIMG14_CCCTL_23_ZCOND_Field_Reset;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Capture or Compare. #br# Specifies whether the corresponding CC
      --  register is used as a capture register or a compare register (never
      --  both).
      COC            : TIMG14_CCCTL_23_COC_Field :=
                        MSPMC1104_SVD.TIMG.COMPARE;
      --  unspecified
      Reserved_18_21 : HAL.UInt4 := 16#0#;
      --  Selects the source second CCU event.
      CC2SELU        : TIMG14_CCCTL_23_CC2SELU_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCU0;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  CCACT shadow register Update Method This field controls how updates
      --  to the CCCACT shadow register are performed
      CCACTUPD       : TIMG14_CCCTL_23_CCACTUPD_Field :=
                        MSPMC1104_SVD.TIMG.Immediately;
      --  Selects the source second CCD event.
      CC2SELD        : TIMG14_CCCTL_23_CC2SELD_Field :=
                        MSPMC1104_SVD.TIMG.SEL_CCD0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCCTL_23_TIMG14_COUNTERREGS[%s]_Register use record
      CCOND          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACOND          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LCOND          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ZCOND          at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      COC            at 0 range 17 .. 17;
      Reserved_18_21 at 0 range 18 .. 21;
      CC2SELU        at 0 range 22 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CCACTUPD       at 0 range 26 .. 28;
      CC2SELD        at 0 range 29 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMG14_CCCTL_23_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CCCTL_23_TIMG14_COUNTERREGS[%s]_Register;

   --  CCP Output Source
   type TIMG14_OCTL_01_CCPO_Field is
     (--  Signal generator value (for example, PWM, triggered PWM)
      FUNCVAL,
      --  Load condition
      LOAD,
      --  Compare value = counter condition
      CMPVAL,
      --  Zero condition
      ZERO,
      --  Capture condition
      CAPCOND,
      --  Fault Condition
      FAULTCOND,
      --  Mirror CCP of first capture and compare register in counter group
      CC0_MIRROR_ALL,
      --  Mirror CCP of second capture and compare register in counter group
      CC1_MIRROR_ALL,
      --  Deadband Inserted Output
      DEADBAND,
      --  Counter direction
      CNTDIR)
     with Size => 4;
   for TIMG14_OCTL_01_CCPO_Field use
     (FUNCVAL => 0,
      LOAD => 1,
      CMPVAL => 2,
      ZERO => 4,
      CAPCOND => 5,
      FAULTCOND => 6,
      CC0_MIRROR_ALL => 8,
      CC1_MIRROR_ALL => 9,
      DEADBAND => 12,
      CNTDIR => 13);

   --  CCP Output Invert The output as selected by CCPO is conditionally
   --  inverted.
   type TIMG14_OCTL_01_CCPOINV_Field is
     (--  No inversion
      NOINV,
      --  Invert
      INV)
     with Size => 1;
   for TIMG14_OCTL_01_CCPOINV_Field use
     (NOINV => 0,
      INV => 1);

   --  CCP Initial Value This bit specifies the logical value put on the signal
   --  generator state while the counter is disabled (CTRCTL.EN == 0).
   type TIMG14_OCTL_01_CCPIV_Field is
     (--  Low
      LOW,
      --  High
      HIGH)
     with Size => 1;
   for TIMG14_OCTL_01_CCPIV_Field use
     (LOW => 0,
      HIGH => 1);

   --  CCP Output Control Registers
   type TIMG14_OCTL_01_TIMG14_COUNTERREGS[%s]_Register is record
      --  CCP Output Source
      CCPO          : TIMG14_OCTL_01_CCPO_Field := MSPMC1104_SVD.TIMG.FUNCVAL;
      --  CCP Output Invert The output as selected by CCPO is conditionally
      --  inverted.
      CCPOINV       : TIMG14_OCTL_01_CCPOINV_Field :=
                       MSPMC1104_SVD.TIMG.NOINV;
      --  CCP Initial Value This bit specifies the logical value put on the
      --  signal generator state while the counter is disabled (CTRCTL.EN ==
      --  0).
      CCPIV         : TIMG14_OCTL_01_CCPIV_Field := MSPMC1104_SVD.TIMG.LOW;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_OCTL_01_TIMG14_COUNTERREGS[%s]_Register use record
      CCPO          at 0 range 0 .. 3;
      CCPOINV       at 0 range 4 .. 4;
      CCPIV         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CCP Output Control Registers
   type TIMG14_OCTL_01_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_OCTL_01_TIMG14_COUNTERREGS[%s]_Register;

   --  CCP Output Source
   type TIMG14_OCTL_23_CCPO_Field is
     (--  Signal generator value (for example, PWM, triggered PWM)
      FUNCVAL,
      --  Load condition
      LOAD,
      --  Compare value = counter condition
      CMPVAL,
      --  Zero condition
      ZERO,
      --  Capture condition
      CAPCOND,
      --  Fault Condition
      FAULTCOND,
      --  Mirror CCP of first capture and compare register in counter group
      CC0_MIRROR_ALL,
      --  Mirror CCP of second capture and compare register in counter group
      CC1_MIRROR_ALL,
      --  Deadband Inserted Output
      DEADBAND,
      --  Counter direction
      CNTDIR)
     with Size => 4;
   for TIMG14_OCTL_23_CCPO_Field use
     (FUNCVAL => 0,
      LOAD => 1,
      CMPVAL => 2,
      ZERO => 4,
      CAPCOND => 5,
      FAULTCOND => 6,
      CC0_MIRROR_ALL => 8,
      CC1_MIRROR_ALL => 9,
      DEADBAND => 12,
      CNTDIR => 13);

   --  CCP Output Invert The output as selected by CCPO is conditionally
   --  inverted.
   type TIMG14_OCTL_23_CCPOINV_Field is
     (--  No inversion
      NOINV,
      --  Invert
      INV)
     with Size => 1;
   for TIMG14_OCTL_23_CCPOINV_Field use
     (NOINV => 0,
      INV => 1);

   --  CCP Initial Value This bit specifies the logical value put on the signal
   --  generator state while the counter is disabled (CTRCTL.EN == 0).
   type TIMG14_OCTL_23_CCPIV_Field is
     (--  Low
      LOW,
      --  High
      HIGH)
     with Size => 1;
   for TIMG14_OCTL_23_CCPIV_Field use
     (LOW => 0,
      HIGH => 1);

   --  CCP Output Control Registers
   type TIMG14_OCTL_23_TIMG14_COUNTERREGS[%s]_Register is record
      --  CCP Output Source
      CCPO          : TIMG14_OCTL_23_CCPO_Field := MSPMC1104_SVD.TIMG.FUNCVAL;
      --  CCP Output Invert The output as selected by CCPO is conditionally
      --  inverted.
      CCPOINV       : TIMG14_OCTL_23_CCPOINV_Field :=
                       MSPMC1104_SVD.TIMG.NOINV;
      --  CCP Initial Value This bit specifies the logical value put on the
      --  signal generator state while the counter is disabled (CTRCTL.EN ==
      --  0).
      CCPIV         : TIMG14_OCTL_23_CCPIV_Field := MSPMC1104_SVD.TIMG.LOW;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_OCTL_23_TIMG14_COUNTERREGS[%s]_Register use record
      CCPO          at 0 range 0 .. 3;
      CCPOINV       at 0 range 4 .. 4;
      CCPIV         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CCP Output Control Registers
   type TIMG14_OCTL_23_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_OCTL_23_TIMG14_COUNTERREGS[%s]_Register;

   --  CCP Output Action on Zero Specifies what changes occur to CCP output as
   --  the result of a zero event.
   type TIMG14_CCACT_01_ZACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_ZACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Load Specifies what changes occur to CCP output as
   --  the result of a load event.
   type TIMG14_CCACT_01_LACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_LACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Down) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting down.
   type TIMG14_CCACT_01_CDACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_CDACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Up) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting up.
   type TIMG14_CCACT_01_CUACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_CUACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2D event.
   type TIMG14_CCACT_01_CC2DACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_CC2DACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2U event.
   type TIMG14_CCACT_01_CC2UACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_01_CC2UACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMG14_CCACT_01_SWFRCACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMG14_CCACT_01_SWFRCACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  Capture or Compare Action Registers
   type TIMG14_CCACT_01_TIMG14_COUNTERREGS[%s]_Register is record
      --  CCP Output Action on Zero Specifies what changes occur to CCP output
      --  as the result of a zero event.
      ZACT           : TIMG14_CCACT_01_ZACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  CCP Output Action on Load Specifies what changes occur to CCP output
      --  as the result of a load event.
      LACT           : TIMG14_CCACT_01_LACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Down) This field describes the
      --  resulting action of the signal generator upon detecting a compare
      --  event while counting down.
      CDACT          : TIMG14_CCACT_01_CDACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Up) This field describes the resulting
      --  action of the signal generator upon detecting a compare event while
      --  counting up.
      CUACT          : TIMG14_CCACT_01_CUACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2D event.
      CC2DACT        : TIMG14_CCACT_01_CC2DACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2U event.
      CC2UACT        : TIMG14_CCACT_01_CC2UACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  CCP Output Action on Software Force Output This field describes the
      --  resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT       : TIMG14_CCACT_01_SWFRCACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCACT_01_TIMG14_COUNTERREGS[%s]_Register use record
      ZACT           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LACT           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CDACT          at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CUACT          at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CC2DACT        at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC2UACT        at 0 range 15 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      SWFRCACT       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Capture or Compare Action Registers
   type TIMG14_CCACT_01_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CCACT_01_TIMG14_COUNTERREGS[%s]_Register;

   --  CCP Output Action on Zero Specifies what changes occur to CCP output as
   --  the result of a zero event.
   type TIMG14_CCACT_23_ZACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_ZACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Load Specifies what changes occur to CCP output as
   --  the result of a load event.
   type TIMG14_CCACT_23_LACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_LACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Down) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting down.
   type TIMG14_CCACT_23_CDACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_CDACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Up) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting up.
   type TIMG14_CCACT_23_CUACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_CUACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2D event.
   type TIMG14_CCACT_23_CC2DACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_CC2DACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2U event.
   type TIMG14_CCACT_23_CC2UACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE)
     with Size => 2;
   for TIMG14_CCACT_23_CC2UACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMG14_CCACT_23_SWFRCACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMG14_CCACT_23_SWFRCACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  Capture or Compare Action Registers
   type TIMG14_CCACT_23_TIMG14_COUNTERREGS[%s]_Register is record
      --  CCP Output Action on Zero Specifies what changes occur to CCP output
      --  as the result of a zero event.
      ZACT           : TIMG14_CCACT_23_ZACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  CCP Output Action on Load Specifies what changes occur to CCP output
      --  as the result of a load event.
      LACT           : TIMG14_CCACT_23_LACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Down) This field describes the
      --  resulting action of the signal generator upon detecting a compare
      --  event while counting down.
      CDACT          : TIMG14_CCACT_23_CDACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Up) This field describes the resulting
      --  action of the signal generator upon detecting a compare event while
      --  counting up.
      CUACT          : TIMG14_CCACT_23_CUACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2D event.
      CC2DACT        : TIMG14_CCACT_23_CC2DACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2U event.
      CC2UACT        : TIMG14_CCACT_23_CC2UACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_17_27 : HAL.UInt11 := 16#0#;
      --  CCP Output Action on Software Force Output This field describes the
      --  resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT       : TIMG14_CCACT_23_SWFRCACT_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_CCACT_23_TIMG14_COUNTERREGS[%s]_Register use record
      ZACT           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      LACT           at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CDACT          at 0 range 6 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      CUACT          at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CC2DACT        at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      CC2UACT        at 0 range 15 .. 16;
      Reserved_17_27 at 0 range 17 .. 27;
      SWFRCACT       at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  Capture or Compare Action Registers
   type TIMG14_CCACT_23_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_CCACT_23_TIMG14_COUNTERREGS[%s]_Register;

   --  Input Select (CCP0) This field selects the input source to the filter
   --  input. 4h-7h = Reserved
   type TIMG14_IFCTL_01_ISEL_Field is
     (--  CCP of the corresponding capture compare unit
      CCPX_INPUT,
      --  Input pair CCPX of the capture compare unit. For CCP0 input pair is CCP1
--  and for CCP1 input pair is CCP0.
      CCPX_INPUT_PAIR,
      --  CCP0 of the counter
      CCP0_INPUT,
      --  Trigger
      TRIG_INPUT,
      --  XOR of CCP inputs as input source.
      CCP_XOR,
      --  subscriber 0 event as input source.
      FSUB0,
      --  subscriber 1 event as input source.
      FSUB1,
      --  Comparator 0 output.
      COMP0,
      --  Comparator 1 output.
      COMP1,
      --  Comparator 2 output.
      COMP2)
     with Size => 4;
   for TIMG14_IFCTL_01_ISEL_Field use
     (CCPX_INPUT => 0,
      CCPX_INPUT_PAIR => 1,
      CCP0_INPUT => 2,
      TRIG_INPUT => 3,
      CCP_XOR => 4,
      FSUB0 => 5,
      FSUB1 => 6,
      COMP0 => 7,
      COMP1 => 8,
      COMP2 => 9);

   --  Input Inversion This bit controls whether the selected input is
   --  inverted.
   type TIMG14_IFCTL_01_INV_Field is
     (--  Noninverted
      NOINVERT,
      --  Inverted
      INVERT)
     with Size => 1;
   for TIMG14_IFCTL_01_INV_Field use
     (NOINVERT => 0,
      INVERT => 1);

   --  Filter Period. This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMG14_IFCTL_01_FP_Field is
     (--  The division factor is 3
      Val_3,
      --  The division factor is 5
      Val_5,
      --  The division factor is 8
      Val_8)
     with Size => 2;
   for TIMG14_IFCTL_01_FP_Field use
     (Val_3 => 0,
      Val_5 => 1,
      Val_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMG14_IFCTL_01_CPV_Field is
     (--  Consecutive Periods The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      Consecutive,
      --  Voting The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output.
      Voting)
     with Size => 1;
   for TIMG14_IFCTL_01_CPV_Field use
     (Consecutive => 0,
      Voting => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to the edge detect.
   type TIMG14_IFCTL_01_FE_Field is
     (--  Bypass.
      DISABLED,
      --  Filtered.
      ENABLED)
     with Size => 1;
   for TIMG14_IFCTL_01_FE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Input Filter Control Register
   type TIMG14_IFCTL_01_TIMG14_COUNTERREGS[%s]_Register is record
      --  Input Select (CCP0) This field selects the input source to the filter
      --  input. 4h-7h = Reserved
      ISEL           : TIMG14_IFCTL_01_ISEL_Field :=
                        MSPMC1104_SVD.TIMG.CCPX_INPUT;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Input Inversion This bit controls whether the selected input is
      --  inverted.
      INV            : TIMG14_IFCTL_01_INV_Field :=
                        MSPMC1104_SVD.TIMG.NOINVERT;
      --  Filter Period. This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP             : TIMG14_IFCTL_01_FP_Field := MSPMC1104_SVD.TIMG.Val_3;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV            : TIMG14_IFCTL_01_CPV_Field :=
                        MSPMC1104_SVD.TIMG.Consecutive;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to the edge detect.
      FE             : TIMG14_IFCTL_01_FE_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_IFCTL_01_TIMG14_COUNTERREGS[%s]_Register use record
      ISEL           at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      INV            at 0 range 7 .. 7;
      FP             at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CPV            at 0 range 11 .. 11;
      FE             at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Input Filter Control Register
   type TIMG14_IFCTL_01_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_IFCTL_01_TIMG14_COUNTERREGS[%s]_Register;

   --  Input Select (CCP0) This field selects the input source to the filter
   --  input. 4h-7h = Reserved
   type TIMG14_IFCTL_23_ISEL_Field is
     (--  CCP of the corresponding capture compare unit
      CCPX_INPUT,
      --  Input pair CCPX of the capture compare unit. For CCP0 input pair is CCP1
--  and for CCP1 input pair is CCP0.
      CCPX_INPUT_PAIR,
      --  CCP0 of the counter
      CCP0_INPUT,
      --  Trigger
      TRIG_INPUT,
      --  XOR of CCP inputs as input source.
      CCP_XOR,
      --  subscriber 0 event as input source.
      FSUB0,
      --  subscriber 1 event as input source.
      FSUB1,
      --  Comparator 0 output.
      COMP0,
      --  Comparator 1 output.
      COMP1,
      --  Comparator 2 output.
      COMP2)
     with Size => 4;
   for TIMG14_IFCTL_23_ISEL_Field use
     (CCPX_INPUT => 0,
      CCPX_INPUT_PAIR => 1,
      CCP0_INPUT => 2,
      TRIG_INPUT => 3,
      CCP_XOR => 4,
      FSUB0 => 5,
      FSUB1 => 6,
      COMP0 => 7,
      COMP1 => 8,
      COMP2 => 9);

   --  Input Inversion This bit controls whether the selected input is
   --  inverted.
   type TIMG14_IFCTL_23_INV_Field is
     (--  Noninverted
      NOINVERT,
      --  Inverted
      INVERT)
     with Size => 1;
   for TIMG14_IFCTL_23_INV_Field use
     (NOINVERT => 0,
      INVERT => 1);

   --  Filter Period. This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMG14_IFCTL_23_FP_Field is
     (--  The division factor is 3
      Val_3,
      --  The division factor is 5
      Val_5,
      --  The division factor is 8
      Val_8)
     with Size => 2;
   for TIMG14_IFCTL_23_FP_Field use
     (Val_3 => 0,
      Val_5 => 1,
      Val_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMG14_IFCTL_23_CPV_Field is
     (--  Consecutive Periods The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      Consecutive,
      --  Voting The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output.
      Voting)
     with Size => 1;
   for TIMG14_IFCTL_23_CPV_Field use
     (Consecutive => 0,
      Voting => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to the edge detect.
   type TIMG14_IFCTL_23_FE_Field is
     (--  Bypass.
      DISABLED,
      --  Filtered.
      ENABLED)
     with Size => 1;
   for TIMG14_IFCTL_23_FE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Input Filter Control Register
   type TIMG14_IFCTL_23_TIMG14_COUNTERREGS[%s]_Register is record
      --  Input Select (CCP0) This field selects the input source to the filter
      --  input. 4h-7h = Reserved
      ISEL           : TIMG14_IFCTL_23_ISEL_Field :=
                        MSPMC1104_SVD.TIMG.CCPX_INPUT;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Input Inversion This bit controls whether the selected input is
      --  inverted.
      INV            : TIMG14_IFCTL_23_INV_Field :=
                        MSPMC1104_SVD.TIMG.NOINVERT;
      --  Filter Period. This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP             : TIMG14_IFCTL_23_FP_Field := MSPMC1104_SVD.TIMG.Val_3;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV            : TIMG14_IFCTL_23_CPV_Field :=
                        MSPMC1104_SVD.TIMG.Consecutive;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to the edge detect.
      FE             : TIMG14_IFCTL_23_FE_Field :=
                        MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_IFCTL_23_TIMG14_COUNTERREGS[%s]_Register use record
      ISEL           at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      INV            at 0 range 7 .. 7;
      FP             at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      CPV            at 0 range 11 .. 11;
      FE             at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Input Filter Control Register
   type TIMG14_IFCTL_23_TIMG14_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMG14_IFCTL_23_TIMG14_COUNTERREGS[%s]_Register;

   --  External Trigger Select. #br# This selects which System Event is used if
   --  the input filter selects trigger. Triggers 0-15 are used to connect
   --  triggers generated by other timer modules in the same power domain.
   --  Refer to the SoC datasheet to get details. Triggers 16 and 17 are
   --  connected to event manager subscriber ports. Event lines 18-31 are
   --  reserved for future use.
   type TIMG14_TSEL_ETSEL_Field is
     (--  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG0,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG1,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG2,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG3,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG4,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG5,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG6,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG7,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG8,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG9,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG10,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG11,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG12,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG13,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG14,
      --  TRIGx = External trigger input from timer x (if available) in the same
--  power domain as the current timer.
      TRIG15,
      --  TRIG_SUBx = External trigger input from subscriber port x.
      TRIG_SUB0,
      --  TRIG_SUBx = External trigger input from subscriber port x.
      TRIG_SUB1)
     with Size => 5;
   for TIMG14_TSEL_ETSEL_Field use
     (TRIG0 => 0,
      TRIG1 => 1,
      TRIG2 => 2,
      TRIG3 => 3,
      TRIG4 => 4,
      TRIG5 => 5,
      TRIG6 => 6,
      TRIG7 => 7,
      TRIG8 => 8,
      TRIG9 => 9,
      TRIG10 => 10,
      TRIG11 => 11,
      TRIG12 => 12,
      TRIG13 => 13,
      TRIG14 => 14,
      TRIG15 => 15,
      TRIG_SUB0 => 16,
      TRIG_SUB1 => 17);

   --  Trigger Enable. This selects whether a trigger is enabled or not for
   --  this counter 0x0 = Triggers are not used 0x1 = Triggers are used as
   --  selected by the ETSEL field
   type TIMG14_TSEL_TE_Field is
     (--  Triggers are not used.
      DISABLED,
      --  Triggers are used as selected by the IE, ITSEL and ETSEL fields.
      ENABLED)
     with Size => 1;
   for TIMG14_TSEL_TE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Trigger Select
   type TIMG14_TSEL_TIMG14_COUNTERREGS[%s]_Register is record
      --  External Trigger Select. #br# This selects which System Event is used
      --  if the input filter selects trigger. Triggers 0-15 are used to
      --  connect triggers generated by other timer modules in the same power
      --  domain. Refer to the SoC datasheet to get details. Triggers 16 and 17
      --  are connected to event manager subscriber ports. Event lines 18-31
      --  are reserved for future use.
      ETSEL          : TIMG14_TSEL_ETSEL_Field := MSPMC1104_SVD.TIMG.TRIG0;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Trigger Enable. This selects whether a trigger is enabled or not for
      --  this counter 0x0 = Triggers are not used 0x1 = Triggers are used as
      --  selected by the ETSEL field
      TE             : TIMG14_TSEL_TE_Field := MSPMC1104_SVD.TIMG.DISABLED;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMG14_TSEL_TIMG14_COUNTERREGS[%s]_Register use record
      ETSEL          at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      TE             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   type TIMG14_COUNTERREGS[%s]_Cluster is record
      --  Counter Register
      TIMG14_CTR      : aliased TIMG14_CTR_TIMG14_COUNTERREGS[%s]_Register;
      --  Counter Control Register
      TIMG14_CTRCTL   : aliased TIMG14_CTRCTL_TIMG14_COUNTERREGS[%s]_Register;
      --  Load Register
      TIMG14_LOAD     : aliased TIMG14_LOAD_TIMG14_COUNTERREGS[%s]_Register;
      --  Capture or Compare Register 0 to Capture or Compare Register 1
      TIMG14_CC_01    : aliased TIMG14_CC_01_TIMG14_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Register 0 to Capture or Compare Register 1
      TIMG14_CC_23    : aliased TIMG14_CC_23_TIMG14_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMG14_CCCTL_01 : aliased TIMG14_CCCTL_01_TIMG14_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMG14_CCCTL_23 : aliased TIMG14_CCCTL_23_TIMG14_COUNTERREGS[%s]_Registers;
      --  CCP Output Control Registers
      TIMG14_OCTL_01  : aliased TIMG14_OCTL_01_TIMG14_COUNTERREGS[%s]_Registers;
      --  CCP Output Control Registers
      TIMG14_OCTL_23  : aliased TIMG14_OCTL_23_TIMG14_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Action Registers
      TIMG14_CCACT_01 : aliased TIMG14_CCACT_01_TIMG14_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Action Registers
      TIMG14_CCACT_23 : aliased TIMG14_CCACT_23_TIMG14_COUNTERREGS[%s]_Registers;
      --  Input Filter Control Register
      TIMG14_IFCTL_01 : aliased TIMG14_IFCTL_01_TIMG14_COUNTERREGS[%s]_Registers;
      --  Input Filter Control Register
      TIMG14_IFCTL_23 : aliased TIMG14_IFCTL_23_TIMG14_COUNTERREGS[%s]_Registers;
      --  Trigger Select
      TIMG14_TSEL     : aliased TIMG14_TSEL_TIMG14_COUNTERREGS[%s]_Register;
   end record
     with Size => 1440;

   for TIMG14_COUNTERREGS[%s]_Cluster use record
      TIMG14_CTR      at 16#0# range 0 .. 31;
      TIMG14_CTRCTL   at 16#4# range 0 .. 31;
      TIMG14_LOAD     at 16#8# range 0 .. 31;
      TIMG14_CC_01    at 16#10# range 0 .. 63;
      TIMG14_CC_23    at 16#18# range 0 .. 63;
      TIMG14_CCCTL_01 at 16#30# range 0 .. 63;
      TIMG14_CCCTL_23 at 16#38# range 0 .. 63;
      TIMG14_OCTL_01  at 16#50# range 0 .. 63;
      TIMG14_OCTL_23  at 16#58# range 0 .. 63;
      TIMG14_CCACT_01 at 16#70# range 0 .. 63;
      TIMG14_CCACT_23 at 16#78# range 0 .. 63;
      TIMG14_IFCTL_01 at 16#80# range 0 .. 63;
      TIMG14_IFCTL_23 at 16#88# range 0 .. 63;
      TIMG14_TSEL     at 16#B0# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type TIMG8_Peripheral is record
      --  Subsciber Port 0
      TIMG8_FSUB_0          : aliased TIMG8_FSUB_0_Register;
      --  Subscriber Port 1
      TIMG8_FSUB_1          : aliased TIMG8_FSUB_1_Register;
      --  Publisher Port 0
      TIMG8_FPUB_0          : aliased TIMG8_FPUB_0_Register;
      --  Publisher Port 1
      TIMG8_FPUB_1          : aliased TIMG8_FPUB_1_Register;
      TIMG8_GPRCM[%s]       : aliased TIMG8_GPRCM[%s]_Cluster;
      --  Clock Divider
      TIMG8_CLKDIV          : aliased TIMG8_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      TIMG8_CLKSEL          : aliased TIMG8_CLKSEL_Register;
      --  Peripheral Debug Control
      TIMG8_PDBGCTL         : aliased TIMG8_PDBGCTL_Register;
      TIMG8_INT_EVENT       : aliased TIMG8_INT_EVENT_Clusters;
      --  Event Mode
      TIMG8_EVT_MODE        : aliased TIMG8_EVT_MODE_Register;
      --  Module Description
      TIMG8_DESC            : aliased TIMG8_DESC_Register;
      TIMG8_COMMONREGS[%s]  : aliased TIMG8_COMMONREGS[%s]_Cluster;
      TIMG8_COUNTERREGS[%s] : aliased TIMG8_COUNTERREGS[%s]_Cluster;
   end record
     with Volatile;

   for TIMG8_Peripheral use record
      TIMG8_FSUB_0          at 16#400# range 0 .. 31;
      TIMG8_FSUB_1          at 16#404# range 0 .. 31;
      TIMG8_FPUB_0          at 16#444# range 0 .. 31;
      TIMG8_FPUB_1          at 16#448# range 0 .. 31;
      TIMG8_GPRCM[%s]       at 16#800# range 0 .. 191;
      TIMG8_CLKDIV          at 16#1000# range 0 .. 31;
      TIMG8_CLKSEL          at 16#1008# range 0 .. 31;
      TIMG8_PDBGCTL         at 16#1018# range 0 .. 31;
      TIMG8_INT_EVENT       at 16#1020# range 0 .. 1055;
      TIMG8_EVT_MODE        at 16#10E0# range 0 .. 31;
      TIMG8_DESC            at 16#10FC# range 0 .. 31;
      TIMG8_COMMONREGS[%s]  at 16#1100# range 0 .. 255;
      TIMG8_COUNTERREGS[%s] at 16#1800# range 0 .. 1535;
   end record;

   --  PERIPHERALREGION
   TIMG8_Periph : aliased TIMG8_Peripheral
     with Import, Address => TIMG8_Base;

   --  PERIPHERALREGION
   type TIMG14_Peripheral is record
      --  Subsciber Port 0
      TIMG14_FSUB_0          : aliased TIMG14_FSUB_0_Register;
      --  Subscriber Port 1
      TIMG14_FSUB_1          : aliased TIMG14_FSUB_1_Register;
      --  Publisher Port 0
      TIMG14_FPUB_0          : aliased TIMG14_FPUB_0_Register;
      --  Publisher Port 1
      TIMG14_FPUB_1          : aliased TIMG14_FPUB_1_Register;
      TIMG14_GPRCM[%s]       : aliased TIMG14_GPRCM[%s]_Cluster;
      --  Clock Divider
      TIMG14_CLKDIV          : aliased TIMG14_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      TIMG14_CLKSEL          : aliased TIMG14_CLKSEL_Register;
      --  Peripheral Debug Control
      TIMG14_PDBGCTL         : aliased TIMG14_PDBGCTL_Register;
      TIMG14_INT_EVENT       : aliased TIMG14_INT_EVENT_Clusters;
      --  Event Mode
      TIMG14_EVT_MODE        : aliased TIMG14_EVT_MODE_Register;
      --  Module Description
      TIMG14_DESC            : aliased TIMG14_DESC_Register;
      TIMG14_COMMONREGS[%s]  : aliased TIMG14_COMMONREGS[%s]_Cluster;
      TIMG14_COUNTERREGS[%s] : aliased TIMG14_COUNTERREGS[%s]_Cluster;
   end record
     with Volatile;

   for TIMG14_Peripheral use record
      TIMG14_FSUB_0          at 16#400# range 0 .. 31;
      TIMG14_FSUB_1          at 16#404# range 0 .. 31;
      TIMG14_FPUB_0          at 16#444# range 0 .. 31;
      TIMG14_FPUB_1          at 16#448# range 0 .. 31;
      TIMG14_GPRCM[%s]       at 16#800# range 0 .. 191;
      TIMG14_CLKDIV          at 16#1000# range 0 .. 31;
      TIMG14_CLKSEL          at 16#1008# range 0 .. 31;
      TIMG14_PDBGCTL         at 16#1018# range 0 .. 31;
      TIMG14_INT_EVENT       at 16#1020# range 0 .. 1055;
      TIMG14_EVT_MODE        at 16#10E0# range 0 .. 31;
      TIMG14_DESC            at 16#10FC# range 0 .. 31;
      TIMG14_COMMONREGS[%s]  at 16#1100# range 0 .. 255;
      TIMG14_COUNTERREGS[%s] at 16#1800# range 0 .. 1439;
   end record;

   --  PERIPHERALREGION
   TIMG14_Periph : aliased TIMG14_Peripheral
     with Import, Address => TIMG14_Base;

end MSPMC1104_SVD.TIMG;
