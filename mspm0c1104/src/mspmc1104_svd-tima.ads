pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.TIMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMA0_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMA0_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subsciber Port 0
   type TIMA0_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMA0_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMA0_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMA0_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type TIMA0_FSUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMA0_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMA0_FPUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMA0_FPUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 0
   type TIMA0_FPUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMA0_FPUB_0_CHANID_Field :=
                       MSPMC1104_SVD.TIMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FPUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type TIMA0_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for TIMA0_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 1
   type TIMA0_FPUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : TIMA0_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.TIMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------------------------------
   -- TIMA0_GPRCM[%s] cluster's Registers --
   -----------------------------------------

   --  Enable the power
   type TIMA0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for TIMA0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type TIMA0_PWREN_TIMA0_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : TIMA0_PWREN_ENABLE_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_PWREN_TIMA0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type TIMA0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for TIMA0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type TIMA0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for TIMA0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type TIMA0_RSTCTL_TIMA0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : TIMA0_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.TIMA.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : TIMA0_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.TIMA.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_RSTCTL_TIMA0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type TIMA0_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for TIMA0_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type TIMA0_STAT_TIMA0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : TIMA0_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_STAT_TIMA0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type TIMA0_GPRCM[%s]_Cluster is record
      --  Power enable
      TIMA0_PWREN  : aliased TIMA0_PWREN_TIMA0_GPRCM[%s]_Register;
      --  Reset Control
      TIMA0_RSTCTL : aliased TIMA0_RSTCTL_TIMA0_GPRCM[%s]_Register;
      --  Status Register
      TIMA0_STAT   : aliased TIMA0_STAT_TIMA0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for TIMA0_GPRCM[%s]_Cluster use record
      TIMA0_PWREN  at 16#0# range 0 .. 31;
      TIMA0_RSTCTL at 16#4# range 0 .. 31;
      TIMA0_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Selects divide ratio of module clock
   type TIMA0_CLKDIV_RATIO_Field is
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
   for TIMA0_CLKDIV_RATIO_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_3 => 2,
      DIV_BY_4 => 3,
      DIV_BY_5 => 4,
      DIV_BY_6 => 5,
      DIV_BY_7 => 6,
      DIV_BY_8 => 7);

   --  Clock Divider
   type TIMA0_CLKDIV_Register is record
      --  Selects divide ratio of module clock
      RATIO         : TIMA0_CLKDIV_RATIO_Field := MSPMC1104_SVD.TIMA.DIV_BY_1;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Selects LFCLK as clock source if enabled
   type TIMA0_CLKSEL_LFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMA0_CLKSEL_LFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects MFCLK as clock source if enabled
   type TIMA0_CLKSEL_MFCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMA0_CLKSEL_MFCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Selects BUSCLK as clock source if enabled
   type TIMA0_CLKSEL_BUSCLK_SEL_Field is
     (--  Does not select this clock as a source
      DISABLE,
      --  Select this clock as a source
      ENABLE)
     with Size => 1;
   for TIMA0_CLKSEL_BUSCLK_SEL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Clock Select for Ultra Low Power peripherals
   type TIMA0_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : TIMA0_CLKSEL_LFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMA.DISABLE;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : TIMA0_CLKSEL_MFCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMA.DISABLE;
      --  Selects BUSCLK as clock source if enabled
      BUSCLK_SEL    : TIMA0_CLKSEL_BUSCLK_SEL_Field :=
                       MSPMC1104_SVD.TIMA.DISABLE;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Free run control
   type TIMA0_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for TIMA0_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type TIMA0_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for TIMA0_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type TIMA0_PDBGCTL_Register is record
      --  Free run control
      FREE          : TIMA0_PDBGCTL_FREE_Field := MSPMC1104_SVD.TIMA.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : TIMA0_PDBGCTL_SOFT_Field :=
                       MSPMC1104_SVD.TIMA.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------------------------------
   -- TIMA0_INT_EVENT cluster's Registers --
   -----------------------------------------

   --  Interrupt index status
   type TIMA0_IIDX_STAT_Field is
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
   for TIMA0_IIDX_STAT_Field use
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
   type TIMA0_IIDX_TIMA0_INT_EVENT_Register is record
      --  Read-only. Interrupt index status
      STAT          : TIMA0_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_IIDX_TIMA0_INT_EVENT_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Zero Event mask
   type TIMA0_IMASK_Z_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMA0_IMASK_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load Event mask
   type TIMA0_IMASK_L_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMA0_IMASK_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or Compare DN event mask CCP0
   type TIMA0_IMASK_CCD0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMA0_IMASK_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_IMASK_TIMA0_INT_EVENT_CCD array
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMA0_IMASK_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_IMASK_TIMA0_INT_EVENT_CCD
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or Compare UP event mask CCP0
   type TIMA0_IMASK_CCU0_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMA0_IMASK_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_IMASK_TIMA0_INT_EVENT_CCU array
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMA0_IMASK_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_IMASK_TIMA0_INT_EVENT_CCU
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Compare DN event mask CCP4
   type TIMA0_IMASK_CCD4_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMA0_IMASK_CCD4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_IMASK_TIMA0_INT_EVENT_CCD array
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_Array_1 is array (4 .. 5)
     of TIMA0_IMASK_CCD4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_IMASK_TIMA0_INT_EVENT_CCD
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Compare UP event mask CCP4
   type TIMA0_IMASK_CCU4_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for TIMA0_IMASK_CCU4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_IMASK_TIMA0_INT_EVENT_CCU array
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_Array_1 is array (4 .. 5)
     of TIMA0_IMASK_CCU4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_IMASK_TIMA0_INT_EVENT_CCU
   type TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault Event mask
   type TIMA0_IMASK_F_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMA0_IMASK_F_Field use
     (CLR => 0,
      SET => 1);

   --  Trigger Overflow Event mask
   type TIMA0_IMASK_TOV_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMA0_IMASK_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Repeat Counter Zero Event mask
   type TIMA0_IMASK_REPC_Field is
     (--  Disable Event
      CLR,
      --  Enable Event
      SET)
     with Size => 1;
   for TIMA0_IMASK_REPC_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type TIMA0_IMASK_TIMA0_INT_EVENT_Register is record
      --  Zero Event mask
      Z              : TIMA0_IMASK_Z_Field := MSPMC1104_SVD.TIMA.CLR;
      --  Load Event mask
      L              : TIMA0_IMASK_L_Field := MSPMC1104_SVD.TIMA.CLR;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Capture or Compare DN event mask CCP0
      CCD            : TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Capture or Compare UP event mask CCP0
      CCU            : TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Compare DN event mask CCP4
      CCD_1          : TIMA0_IMASK_TIMA0_INT_EVENT_CCD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  Compare UP event mask CCP4
      CCU_1          : TIMA0_IMASK_TIMA0_INT_EVENT_CCU_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Fault Event mask
      F              : TIMA0_IMASK_F_Field := MSPMC1104_SVD.TIMA.CLR;
      --  Trigger Overflow Event mask
      TOV            : TIMA0_IMASK_TOV_Field := MSPMC1104_SVD.TIMA.CLR;
      --  Repeat Counter Zero Event mask
      REPC           : TIMA0_IMASK_REPC_Field := MSPMC1104_SVD.TIMA.CLR;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_IMASK_TIMA0_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      CCD_1          at 0 range 12 .. 13;
      CCU_1          at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      F              at 0 range 24 .. 24;
      TOV            at 0 range 25 .. 25;
      REPC           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMA0_RIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMA0_RIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMA0_RIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_RIS_TIMA0_INT_EVENT_CCD array
   type TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMA0_RIS_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_RIS_TIMA0_INT_EVENT_CCD
   type TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMA0_RIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_RIS_TIMA0_INT_EVENT_CCU array
   type TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMA0_RIS_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_RIS_TIMA0_INT_EVENT_CCU
   type TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Compare down event generated an interrupt CCD4
   type TIMA0_RIS_CCD4_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_CCD4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_RIS_TIMA0_INT_EVENT_CCD array
   type TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_Array_1 is array (4 .. 5)
     of TIMA0_RIS_CCD4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_RIS_TIMA0_INT_EVENT_CCD
   type TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Compare up event generated an interrupt CCU4
   type TIMA0_RIS_CCU4_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_CCU4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_RIS_TIMA0_INT_EVENT_CCU array
   type TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_Array_1 is array (4 .. 5)
     of TIMA0_RIS_CCU4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_RIS_TIMA0_INT_EVENT_CCU
   type TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault
   type TIMA0_RIS_F_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_F_Field use
     (CLR => 0,
      SET => 1);

   --  Trigger overflow
   type TIMA0_RIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Repeat Counter Zero
   type TIMA0_RIS_REPC_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_RIS_REPC_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type TIMA0_RIS_TIMA0_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMA0_RIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMA0_RIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field;
      --  Read-only. Compare down event generated an interrupt CCD4
      CCD_1          : TIMA0_RIS_TIMA0_INT_EVENT_CCD_Field_1;
      --  Read-only. Compare up event generated an interrupt CCU4
      CCU_1          : TIMA0_RIS_TIMA0_INT_EVENT_CCU_Field_1;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Fault
      F              : TIMA0_RIS_F_Field;
      --  Read-only. Trigger overflow
      TOV            : TIMA0_RIS_TOV_Field;
      --  Read-only. Repeat Counter Zero
      REPC           : TIMA0_RIS_REPC_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_RIS_TIMA0_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      CCD_1          at 0 range 12 .. 13;
      CCU_1          at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      F              at 0 range 24 .. 24;
      TOV            at 0 range 25 .. 25;
      REPC           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Zero event generated an interrupt.
   type TIMA0_MIS_Z_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_Z_Field use
     (CLR => 0,
      SET => 1);

   --  Load event generated an interrupt.
   type TIMA0_MIS_L_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_L_Field use
     (CLR => 0,
      SET => 1);

   --  Capture or compare down event generated an interrupt CCP0
   type TIMA0_MIS_CCD0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_CCD0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_MIS_TIMA0_INT_EVENT_CCD array
   type TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMA0_MIS_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_MIS_TIMA0_INT_EVENT_CCD
   type TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event generated an interrupt CCP0
   type TIMA0_MIS_CCU0_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_CCU0_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_MIS_TIMA0_INT_EVENT_CCU array
   type TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMA0_MIS_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_MIS_TIMA0_INT_EVENT_CCU
   type TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Compare down event generated an interrupt CCP4
   type TIMA0_MIS_CCD4_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_CCD4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_MIS_TIMA0_INT_EVENT_CCD array
   type TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_Array_1 is array (4 .. 5)
     of TIMA0_MIS_CCD4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_MIS_TIMA0_INT_EVENT_CCD
   type TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Compare up event generated an interrupt CCP4
   type TIMA0_MIS_CCU4_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_CCU4_Field use
     (CLR => 0,
      SET => 1);

   --  TIMA0_MIS_TIMA0_INT_EVENT_CCU array
   type TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_Array_1 is array (4 .. 5)
     of TIMA0_MIS_CCU4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_MIS_TIMA0_INT_EVENT_CCU
   type TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault
   type TIMA0_MIS_F_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_F_Field use
     (CLR => 0,
      SET => 1);

   --  Trigger overflow
   type TIMA0_MIS_TOV_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_TOV_Field use
     (CLR => 0,
      SET => 1);

   --  Repeat Counter Zero
   type TIMA0_MIS_REPC_Field is
     (--  Event Cleared
      CLR,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_MIS_REPC_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type TIMA0_MIS_TIMA0_INT_EVENT_Register is record
      --  Read-only. Zero event generated an interrupt.
      Z              : TIMA0_MIS_Z_Field;
      --  Read-only. Load event generated an interrupt.
      L              : TIMA0_MIS_L_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Capture or compare down event generated an interrupt CCP0
      CCD            : TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field;
      --  Read-only. Capture or compare up event generated an interrupt CCP0
      CCU            : TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field;
      --  Read-only. Compare down event generated an interrupt CCP4
      CCD_1          : TIMA0_MIS_TIMA0_INT_EVENT_CCD_Field_1;
      --  Read-only. Compare up event generated an interrupt CCP4
      CCU_1          : TIMA0_MIS_TIMA0_INT_EVENT_CCU_Field_1;
      --  unspecified
      Reserved_16_23 : HAL.UInt8;
      --  Read-only. Fault
      F              : TIMA0_MIS_F_Field;
      --  Read-only. Trigger overflow
      TOV            : TIMA0_MIS_TOV_Field;
      --  Read-only. Repeat Counter Zero
      REPC           : TIMA0_MIS_REPC_Field;
      --  unspecified
      Reserved_27_31 : HAL.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_MIS_TIMA0_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      CCD_1          at 0 range 12 .. 13;
      CCU_1          at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      F              at 0 range 24 .. 24;
      TOV            at 0 range 25 .. 25;
      REPC           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Zero event SET
   type TIMA0_ISET_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_Z_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Load event SET
   type TIMA0_ISET_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_L_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Capture or compare down event SET
   type TIMA0_ISET_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_CCD0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMA0_ISET_TIMA0_INT_EVENT_CCD array
   type TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMA0_ISET_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_ISET_TIMA0_INT_EVENT_CCD
   type TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event SET
   type TIMA0_ISET_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_CCU0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMA0_ISET_TIMA0_INT_EVENT_CCU array
   type TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMA0_ISET_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_ISET_TIMA0_INT_EVENT_CCU
   type TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Compare down event 4 SET
   type TIMA0_ISET_CCD4_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_CCD4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMA0_ISET_TIMA0_INT_EVENT_CCD array
   type TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_Array_1 is array (4 .. 5)
     of TIMA0_ISET_CCD4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_ISET_TIMA0_INT_EVENT_CCD
   type TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Compare up event 4 SET
   type TIMA0_ISET_CCU4_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_CCU4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  TIMA0_ISET_TIMA0_INT_EVENT_CCU array
   type TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_Array_1 is array (4 .. 5)
     of TIMA0_ISET_CCU4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_ISET_TIMA0_INT_EVENT_CCU
   type TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault event SET
   type TIMA0_ISET_F_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_F_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Trigger Overflow event SET
   type TIMA0_ISET_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_TOV_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Repeat Counter Zero event SET
   type TIMA0_ISET_REPC_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Set
      SET)
     with Size => 1;
   for TIMA0_ISET_REPC_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type TIMA0_ISET_TIMA0_INT_EVENT_Register is record
      --  Write-only. Zero event SET
      Z              : TIMA0_ISET_Z_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Load event SET
      L              : TIMA0_ISET_L_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event SET
      CCD            : TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Capture or compare up event SET
      CCU            : TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Compare down event 4 SET
      CCD_1          : TIMA0_ISET_TIMA0_INT_EVENT_CCD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Compare up event 4 SET
      CCU_1          : TIMA0_ISET_TIMA0_INT_EVENT_CCU_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. Fault event SET
      F              : TIMA0_ISET_F_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Trigger Overflow event SET
      TOV            : TIMA0_ISET_TOV_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Repeat Counter Zero event SET
      REPC           : TIMA0_ISET_REPC_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_ISET_TIMA0_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      CCD_1          at 0 range 12 .. 13;
      CCU_1          at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      F              at 0 range 24 .. 24;
      TOV            at 0 range 25 .. 25;
      REPC           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Zero event CLEAR
   type TIMA0_ICLR_Z_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_Z_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Load event CLEAR
   type TIMA0_ICLR_L_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_L_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Capture or compare down event CLEAR
   type TIMA0_ICLR_CCD0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_CCD0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMA0_ICLR_TIMA0_INT_EVENT_CCD array
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_Array is array (0 .. 3)
     of TIMA0_ICLR_CCD0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_ICLR_TIMA0_INT_EVENT_CCD
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt4;
         when True =>
            --  CCD as an array
            Arr : TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Capture or compare up event CLEAR
   type TIMA0_ICLR_CCU0_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_CCU0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMA0_ICLR_TIMA0_INT_EVENT_CCU array
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_Array is array (0 .. 3)
     of TIMA0_ICLR_CCU0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for TIMA0_ICLR_TIMA0_INT_EVENT_CCU
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt4;
         when True =>
            --  CCU as an array
            Arr : TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Compare down event 4 CLEAR
   type TIMA0_ICLR_CCD4_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_CCD4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMA0_ICLR_TIMA0_INT_EVENT_CCD array
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_Array_1 is array (4 .. 5)
     of TIMA0_ICLR_CCD4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_ICLR_TIMA0_INT_EVENT_CCD
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCD as a value
            Val : HAL.UInt2;
         when True =>
            --  CCD as an array
            Arr : TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Compare up event 4 CLEAR
   type TIMA0_ICLR_CCU4_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_CCU4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  TIMA0_ICLR_TIMA0_INT_EVENT_CCU array
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_Array_1 is array (4 .. 5)
     of TIMA0_ICLR_CCU4_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_ICLR_TIMA0_INT_EVENT_CCU
   type TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCU as a value
            Val : HAL.UInt2;
         when True =>
            --  CCU as an array
            Arr : TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault event CLEAR
   type TIMA0_ICLR_F_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_F_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Trigger Overflow event CLEAR
   type TIMA0_ICLR_TOV_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_TOV_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Repeat Counter Zero event CLEAR
   type TIMA0_ICLR_REPC_Field is
     (--  Writing 0 has no effect.
      NO_EFFECT,
      --  Event Clear
      CLR)
     with Size => 1;
   for TIMA0_ICLR_REPC_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type TIMA0_ICLR_TIMA0_INT_EVENT_Register is record
      --  Write-only. Zero event CLEAR
      Z              : TIMA0_ICLR_Z_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Load event CLEAR
      L              : TIMA0_ICLR_L_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Write-only. Capture or compare down event CLEAR
      CCD            : TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Capture or compare up event CLEAR
      CCU            : TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Compare down event 4 CLEAR
      CCD_1          : TIMA0_ICLR_TIMA0_INT_EVENT_CCD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Compare up event 4 CLEAR
      CCU_1          : TIMA0_ICLR_TIMA0_INT_EVENT_CCU_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#0#;
      --  Write-only. Fault event CLEAR
      F              : TIMA0_ICLR_F_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Trigger Overflow event CLEAR
      TOV            : TIMA0_ICLR_TOV_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  Write-only. Repeat Counter Zero event CLEAR
      REPC           : TIMA0_ICLR_REPC_Field := MSPMC1104_SVD.TIMA.NO_EFFECT;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_ICLR_TIMA0_INT_EVENT_Register use record
      Z              at 0 range 0 .. 0;
      L              at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CCD            at 0 range 4 .. 7;
      CCU            at 0 range 8 .. 11;
      CCD_1          at 0 range 12 .. 13;
      CCU_1          at 0 range 14 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      F              at 0 range 24 .. 24;
      TOV            at 0 range 25 .. 25;
      REPC           at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type TIMA0_INT_EVENT_Cluster is record
      --  Interrupt index
      TIMA0_IIDX  : aliased TIMA0_IIDX_TIMA0_INT_EVENT_Register;
      --  Interrupt mask
      TIMA0_IMASK : aliased TIMA0_IMASK_TIMA0_INT_EVENT_Register;
      --  Raw interrupt status
      TIMA0_RIS   : aliased TIMA0_RIS_TIMA0_INT_EVENT_Register;
      --  Masked interrupt status
      TIMA0_MIS   : aliased TIMA0_MIS_TIMA0_INT_EVENT_Register;
      --  Interrupt set
      TIMA0_ISET  : aliased TIMA0_ISET_TIMA0_INT_EVENT_Register;
      --  Interrupt clear
      TIMA0_ICLR  : aliased TIMA0_ICLR_TIMA0_INT_EVENT_Register;
   end record
     with Size => 352;

   for TIMA0_INT_EVENT_Cluster use record
      TIMA0_IIDX  at 16#0# range 0 .. 31;
      TIMA0_IMASK at 16#8# range 0 .. 31;
      TIMA0_RIS   at 16#10# range 0 .. 31;
      TIMA0_MIS   at 16#18# range 0 .. 31;
      TIMA0_ISET  at 16#20# range 0 .. 31;
      TIMA0_ICLR  at 16#28# range 0 .. 31;
   end record;

   type TIMA0_INT_EVENT_Clusters is array (0 .. 2) of TIMA0_INT_EVENT_Cluster;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][0]
   type TIMA0_EVT_MODE_EVT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMA0_EVT_MODE_EVT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMA0_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMA0_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][1]
   type TIMA0_EVT_MODE_EVT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for TIMA0_EVT_MODE_EVT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type TIMA0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][0]
      EVT0_CFG      : TIMA0_EVT_MODE_EVT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT1_CFG      : TIMA0_EVT_MODE_EVT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][1]
      EVT2_CFG      : TIMA0_EVT_MODE_EVT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_EVT_MODE_Register use record
      EVT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      EVT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype TIMA0_DESC_MINREV_Field is HAL.UInt4;
   subtype TIMA0_DESC_MAJREV_Field is HAL.UInt4;
   subtype TIMA0_DESC_INSTNUM_Field is HAL.UInt4;
   subtype TIMA0_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype TIMA0_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type TIMA0_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : TIMA0_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : TIMA0_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : TIMA0_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : TIMA0_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : TIMA0_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   ----------------------------------------------
   -- TIMA0_COMMONREGS[%s] cluster's Registers --
   ----------------------------------------------

   --  Counter CCP0
   type TIMA0_CCPD_C0CCP0_Field is
     (--  Input
      INPUT,
      --  Output
      OUTPUT)
     with Size => 1;
   for TIMA0_CCPD_C0CCP0_Field use
     (INPUT => 0,
      OUTPUT => 1);

   --  TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP array
   type TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP_Field_Array is array (0 .. 1)
     of TIMA0_CCPD_C0CCP0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP
   type TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  C0CCP as a value
            Val : HAL.UInt2;
         when True =>
            --  C0CCP as an array
            Arr : TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Counter CCP2
   type TIMA0_CCPD_C0CCP2_Field is
     (--  input
      INPUT,
      --  Output
      OUTPUT)
     with Size => 1;
   for TIMA0_CCPD_C0CCP2_Field use
     (INPUT => 0,
      OUTPUT => 1);

   --  Counter CCP3
   type TIMA0_CCPD_C0CCP3_Field is
     (--  Input
      INPUT,
      --  Output
      OUTPUT)
     with Size => 1;
   for TIMA0_CCPD_C0CCP3_Field use
     (INPUT => 0,
      OUTPUT => 1);

   --  CCP Direction
   type TIMA0_CCPD_TIMA0_COMMONREGS[%s]_Register is record
      --  Counter CCP0
      C0CCP         : TIMA0_CCPD_TIMA0_COMMONREGS[%s]_C0CCP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Counter CCP2
      C0CCP2        : TIMA0_CCPD_C0CCP2_Field := MSPMC1104_SVD.TIMA.INPUT;
      --  Counter CCP3
      C0CCP3        : TIMA0_CCPD_C0CCP3_Field := MSPMC1104_SVD.TIMA.INPUT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCPD_TIMA0_COMMONREGS[%s]_Register use record
      C0CCP         at 0 range 0 .. 1;
      C0CCP2        at 0 range 2 .. 2;
      C0CCP3        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMA0_ODIS_C0CCP0_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[0].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[0] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMA0_ODIS_C0CCP0_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
   --  low or not
   type TIMA0_ODIS_C0CCP1_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[1].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[1] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMA0_ODIS_C0CCP1_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Counter CCP2 Disable Mask Defines whether CCP2 of Counter n is forced
   --  low or not
   type TIMA0_ODIS_C0CCP2_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[2].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[2] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMA0_ODIS_C0CCP2_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Counter CCP3 Disable Mask Defines whether CCP3 of Counter n is forced
   --  low or not
   type TIMA0_ODIS_C0CCP3_Field is
     (--  Output function as selected by the OCTL register CCPO field are provided to
--  occpout[2].
      CCP_OUTPUT_OCTL,
      --  CCP output occpout[3] is forced low.
      CCP_OUTPUT_LOW)
     with Size => 1;
   for TIMA0_ODIS_C0CCP3_Field use
     (CCP_OUTPUT_OCTL => 0,
      CCP_OUTPUT_LOW => 1);

   --  Output Disable
   type TIMA0_ODIS_TIMA0_COMMONREGS[%s]_Register is record
      --  Counter CCP0 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP0        : TIMA0_ODIS_C0CCP0_Field :=
                       MSPMC1104_SVD.TIMA.CCP_OUTPUT_OCTL;
      --  Counter CCP1 Disable Mask Defines whether CCP0 of Counter n is forced
      --  low or not
      C0CCP1        : TIMA0_ODIS_C0CCP1_Field :=
                       MSPMC1104_SVD.TIMA.CCP_OUTPUT_OCTL;
      --  Counter CCP2 Disable Mask Defines whether CCP2 of Counter n is forced
      --  low or not
      C0CCP2        : TIMA0_ODIS_C0CCP2_Field :=
                       MSPMC1104_SVD.TIMA.CCP_OUTPUT_OCTL;
      --  Counter CCP3 Disable Mask Defines whether CCP3 of Counter n is forced
      --  low or not
      C0CCP3        : TIMA0_ODIS_C0CCP3_Field :=
                       MSPMC1104_SVD.TIMA.CCP_OUTPUT_OCTL;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_ODIS_TIMA0_COMMONREGS[%s]_Register use record
      C0CCP0        at 0 range 0 .. 0;
      C0CCP1        at 0 range 1 .. 1;
      C0CCP2        at 0 range 2 .. 2;
      C0CCP3        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Clock Enable Disables the clock gating to the module. SW has to
   --  explicitly program the value to 0 to gate the clock.
   type TIMA0_CCLKCTL_CLKEN_Field is
     (--  Clock is disabled.
      DISABLED,
      --  Clock is enabled
      ENABLED)
     with Size => 1;
   for TIMA0_CCLKCTL_CLKEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Counter Clock Control Register
   type TIMA0_CCLKCTL_TIMA0_COMMONREGS[%s]_Register is record
      --  Clock Enable Disables the clock gating to the module. SW has to
      --  explicitly program the value to 0 to gate the clock.
      CLKEN         : TIMA0_CCLKCTL_CLKEN_Field :=
                       MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCLKCTL_TIMA0_COMMONREGS[%s]_Register use record
      CLKEN         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TIMA0_CPS_TIMA0_COMMONREGS[%s]_PCNT_Field is HAL.UInt8;

   --  Clock Prescale Register
   type TIMA0_CPS_TIMA0_COMMONREGS[%s]_Register is record
      --  Pre-Scale Count This field specifies the pre-scale count value. The
      --  selected TIMCLK source is divided by a value of (PCNT+1). A PCNT
      --  value of 0 divides TIMCLK by 1, effectively bypassing the divider. A
      --  PCNT value of greater than 0 divides the TIMCLK source generating a
      --  slower clock
      PCNT          : TIMA0_CPS_TIMA0_COMMONREGS[%s]_PCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CPS_TIMA0_COMMONREGS[%s]_Register use record
      PCNT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIMA0_CPSV_TIMA0_COMMONREGS[%s]_CPSVAL_Field is HAL.UInt8;

   --  Clock prescale count status register
   type TIMA0_CPSV_TIMA0_COMMONREGS[%s]_Register is record
      --  Read-only. Current Prescale Count Value
      CPSVAL        : TIMA0_CPSV_TIMA0_COMMONREGS[%s]_CPSVAL_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CPSV_TIMA0_COMMONREGS[%s]_Register use record
      CPSVAL        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Timer Cross trigger enable. This field is used to enable whether the SW
   --  or HW logic can generate a timer cross trigger event in the system.
   --  These cross triggers are connected to the respective timer trigger in of
   --  the other timer IPs in the SOC power domain. The timer cross trigger is
   --  essentially the combined logic of the HW and SW conditions controlling
   --  EN bit in the CTRCTL register.
   type TIMA0_CTTRIGCTL_CTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMA0_CTTRIGCTL_CTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Enable the Input Trigger Conditions to the Timer module as a condition
   --  for Cross Triggers. Refer Figure 8 Cross Trigger Generation Path
   type TIMA0_CTTRIGCTL_EVTCTEN_Field is
     (--  Cross trigger generation disabled.
      DISABLED,
      --  Cross trigger generation enabled
      ENABLE)
     with Size => 1;
   for TIMA0_CTTRIGCTL_EVTCTEN_Field use
     (DISABLED => 0,
      ENABLE => 1);

   --  Used to Select the subscriber port that should be used for input cross
   --  trigger. Refer Figure 8 Cross Trigger Generation Path
   type TIMA0_CTTRIGCTL_EVTCTTRIGSEL_Field is
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
   for TIMA0_CTTRIGCTL_EVTCTTRIGSEL_Field use
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
   type TIMA0_CTTRIGCTL_TIMA0_COMMONREGS[%s]_Register is record
      --  Timer Cross trigger enable. This field is used to enable whether the
      --  SW or HW logic can generate a timer cross trigger event in the
      --  system. These cross triggers are connected to the respective timer
      --  trigger in of the other timer IPs in the SOC power domain. The timer
      --  cross trigger is essentially the combined logic of the HW and SW
      --  conditions controlling EN bit in the CTRCTL register.
      CTEN           : TIMA0_CTTRIGCTL_CTEN_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  Enable the Input Trigger Conditions to the Timer module as a
      --  condition for Cross Triggers. Refer Figure 8 Cross Trigger Generation
      --  Path
      EVTCTEN        : TIMA0_CTTRIGCTL_EVTCTEN_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Used to Select the subscriber port that should be used for input
      --  cross trigger. Refer Figure 8 Cross Trigger Generation Path
      EVTCTTRIGSEL   : TIMA0_CTTRIGCTL_EVTCTTRIGSEL_Field :=
                        MSPMC1104_SVD.TIMA.FSUB0;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CTTRIGCTL_TIMA0_COMMONREGS[%s]_Register use record
      CTEN           at 0 range 0 .. 0;
      EVTCTEN        at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      EVTCTTRIGSEL   at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Generate Cross Trigger This bit when programmed will generate a
   --  synchronized trigger condition all the cross trigger enabled Timer
   --  instances including current timer instance.
   type TIMA0_CTTRIG_TRIG_Field is
     (--  Cross trigger generation disabled
      DISABLED,
      --  Generate Cross trigger pulse
      GENERATE)
     with Size => 1;
   for TIMA0_CTTRIG_TRIG_Field use
     (DISABLED => 0,
      GENERATE => 1);

   --  Timer Cross Trigger Register
   type TIMA0_CTTRIG_TIMA0_COMMONREGS[%s]_Register is record
      --  Write-only. Generate Cross Trigger This bit when programmed will
      --  generate a synchronized trigger condition all the cross trigger
      --  enabled Timer instances including current timer instance.
      TRIG          : TIMA0_CTTRIG_TRIG_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CTTRIG_TIMA0_COMMONREGS[%s]_Register use record
      TRIG          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  This field controls whether the fault caused by the system clock fault
   --  is enable. 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FCEN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FCEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault signal detected by the analog
   --  comparator0 is enable 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FAC0EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FAC0EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault signal detected by the analog
   --  comparator1 is enable 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FAC1EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FAC1EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault signal detected by the analog
   --  comparator2 is enable 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FAC2EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FAC2EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault caused by external fault pin0 is
   --  enable. 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FEX0EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FEX0EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault caused by external fault pin1 is
   --  enable. 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FEX1EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FEX1EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This field controls whether the fault caused by external fault pin2 is
   --  enable. 0: DISABLE 1: ENABLE
   type TIMA0_FSCTL_FEX2EN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_FSCTL_FEX2EN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Fault Source Control
   type TIMA0_FSCTL_TIMA0_COMMONREGS[%s]_Register is record
      --  This field controls whether the fault caused by the system clock
      --  fault is enable. 0: DISABLE 1: ENABLE
      FCEN          : TIMA0_FSCTL_FCEN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault signal detected by the analog
      --  comparator0 is enable 0: DISABLE 1: ENABLE
      FAC0EN        : TIMA0_FSCTL_FAC0EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault signal detected by the analog
      --  comparator1 is enable 0: DISABLE 1: ENABLE
      FAC1EN        : TIMA0_FSCTL_FAC1EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault signal detected by the analog
      --  comparator2 is enable 0: DISABLE 1: ENABLE
      FAC2EN        : TIMA0_FSCTL_FAC2EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault caused by external fault pin0
      --  is enable. 0: DISABLE 1: ENABLE
      FEX0EN        : TIMA0_FSCTL_FEX0EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault caused by external fault pin1
      --  is enable. 0: DISABLE 1: ENABLE
      FEX1EN        : TIMA0_FSCTL_FEX1EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  This field controls whether the fault caused by external fault pin2
      --  is enable. 0: DISABLE 1: ENABLE
      FEX2EN        : TIMA0_FSCTL_FEX2EN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FSCTL_TIMA0_COMMONREGS[%s]_Register use record
      FCEN          at 0 range 0 .. 0;
      FAC0EN        at 0 range 1 .. 1;
      FAC1EN        at 0 range 2 .. 2;
      FAC2EN        at 0 range 3 .. 3;
      FEX0EN        at 0 range 4 .. 4;
      FEX1EN        at 0 range 5 .. 5;
      FEX2EN        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Enables shadow to active load of bufferred registers and register
   --  fields.
   type TIMA0_GCTL_SHDWLDEN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for TIMA0_GCTL_SHDWLDEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Shadow to active load mask
   type TIMA0_GCTL_TIMA0_COMMONREGS[%s]_Register is record
      --  Enables shadow to active load of bufferred registers and register
      --  fields.
      SHDWLDEN      : TIMA0_GCTL_SHDWLDEN_Field := MSPMC1104_SVD.TIMA.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_GCTL_TIMA0_COMMONREGS[%s]_Register use record
      SHDWLDEN      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type TIMA0_COMMONREGS[%s]_Cluster is record
      --  CCP Direction
      TIMA0_CCPD      : aliased TIMA0_CCPD_TIMA0_COMMONREGS[%s]_Register;
      --  Output Disable
      TIMA0_ODIS      : aliased TIMA0_ODIS_TIMA0_COMMONREGS[%s]_Register;
      --  Counter Clock Control Register
      TIMA0_CCLKCTL   : aliased TIMA0_CCLKCTL_TIMA0_COMMONREGS[%s]_Register;
      --  Clock Prescale Register
      TIMA0_CPS       : aliased TIMA0_CPS_TIMA0_COMMONREGS[%s]_Register;
      --  Clock prescale count status register
      TIMA0_CPSV      : aliased TIMA0_CPSV_TIMA0_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Control Register
      TIMA0_CTTRIGCTL : aliased TIMA0_CTTRIGCTL_TIMA0_COMMONREGS[%s]_Register;
      --  Timer Cross Trigger Register
      TIMA0_CTTRIG    : aliased TIMA0_CTTRIG_TIMA0_COMMONREGS[%s]_Register;
      --  Fault Source Control
      TIMA0_FSCTL     : aliased TIMA0_FSCTL_TIMA0_COMMONREGS[%s]_Register;
      --  Shadow to active load mask
      TIMA0_GCTL      : aliased TIMA0_GCTL_TIMA0_COMMONREGS[%s]_Register;
   end record
     with Size => 320;

   for TIMA0_COMMONREGS[%s]_Cluster use record
      TIMA0_CCPD      at 16#0# range 0 .. 31;
      TIMA0_ODIS      at 16#4# range 0 .. 31;
      TIMA0_CCLKCTL   at 16#8# range 0 .. 31;
      TIMA0_CPS       at 16#C# range 0 .. 31;
      TIMA0_CPSV      at 16#10# range 0 .. 31;
      TIMA0_CTTRIGCTL at 16#14# range 0 .. 31;
      TIMA0_CTTRIG    at 16#1C# range 0 .. 31;
      TIMA0_FSCTL     at 16#20# range 0 .. 31;
      TIMA0_GCTL      at 16#24# range 0 .. 31;
   end record;

   -----------------------------------------------
   -- TIMA0_COUNTERREGS[%s] cluster's Registers --
   -----------------------------------------------

   subtype TIMA0_CTR_TIMA0_COUNTERREGS[%s]_CCTR_Field is HAL.UInt16;

   --  Counter Register
   type TIMA0_CTR_TIMA0_COUNTERREGS[%s]_Register is record
      --  Current Counter value
      CCTR           : TIMA0_CTR_TIMA0_COUNTERREGS[%s]_CCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CTR_TIMA0_COUNTERREGS[%s]_Register use record
      CCTR           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Counter Enable. This bit allows the timer to advance This bit is
   --  automatically cleared if REPEAT=0 (do not automatically reload) and the
   --  counter value equals zero. CPU Write: A register write that sets the EN
   --  bit, the counter value is set per the CVAE value. Hardware: This bit may
   --  also be set as the result of an LCOND or ZCOND condition being met and
   --  the counter value changed to the load value or zero value, respectively.
   type TIMA0_CTRCTL_EN_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for TIMA0_CTRCTL_EN_Field use
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
   type TIMA0_CTRCTL_REPEAT_Field is
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
   for TIMA0_CTRCTL_REPEAT_Field use
     (REPEAT_0 => 0,
      REPEAT_1 => 1,
      REPEAT_2 => 2,
      REPEAT_3 => 3,
      REPEAT_4 => 4);

   --  Count Mode
   type TIMA0_CTRCTL_CM_Field is
     (--  Down
      DOWN,
      --  Up/Down
      UP_DOWN,
      --  Counter counts up.
      UP)
     with Size => 2;
   for TIMA0_CTRCTL_CM_Field use
     (DOWN => 0,
      UP_DOWN => 1,
      UP => 2);

   --  Counter Load Control. This field specifies what controls the counter
   --  operation with respect to setting the counter to the LD register value.
   --  Encodings 1-3 are present based on the CCPC parameter value. Bits 4-5
   --  are present based on the HQEI parameter value. Any encodings not
   --  provided are documented as reserved.
   type TIMA0_CTRCTL_CLC_Field is
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
      TIMA0_CTRCTL_CLC_Field_Reset)
     with Size => 3;
   for TIMA0_CTRCTL_CLC_Field use
     (CCCTL0_LCOND => 0,
      CCCTL1_LCOND => 1,
      CCCTL2_LCOND => 2,
      CCCTL3_LCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMA0_CTRCTL_CLC_Field_Reset => 7);

   --  Counter Advance Control. This field specifies what controls the counter
   --  operation with respect to advancing (incrementing or decrementing) the
   --  counter value. Encodings 1-3 are present based on the CCPC parameter
   --  value. Bits 4-5 are present based on the HQEI parameter value. Any
   --  encodings not provided are documented as reserved.
   type TIMA0_CTRCTL_CAC_Field is
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
      TIMA0_CTRCTL_CAC_Field_Reset)
     with Size => 3;
   for TIMA0_CTRCTL_CAC_Field use
     (CCCTL0_ACOND => 0,
      CCCTL1_ACOND => 1,
      CCCTL2_ACOND => 2,
      CCCTL3_ACOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMA0_CTRCTL_CAC_Field_Reset => 7);

   --  Counter Zero Control This field specifies what controls the counter
   --  operation with respect to zeroing the counter value. Encodings 1-3 are
   --  present based on the CCPC parameter value. Bits 4-5 are present based on
   --  the HQEI parameter value. Any encodings not provided are documented as
   --  reserved.
   type TIMA0_CTRCTL_CZC_Field is
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
      TIMA0_CTRCTL_CZC_Field_Reset)
     with Size => 3;
   for TIMA0_CTRCTL_CZC_Field use
     (CCCTL0_ZCOND => 0,
      CCCTL1_ZCOND => 1,
      CCCTL2_ZCOND => 2,
      CCCTL3_ZCOND => 3,
      QEI_2INP => 4,
      QEI_3INP => 5,
      TIMA0_CTRCTL_CZC_Field_Reset => 7);

   --  Debug Resume Behavior This bit specifies what the device does following
   --  the release/exit of debug mode.
   type TIMA0_CTRCTL_DRB_Field is
     (--  Resume counting
      RESUME,
      --  Perform the action as specified by the CVAE field.
      CVAE_ACTION)
     with Size => 1;
   for TIMA0_CTRCTL_DRB_Field use
     (RESUME => 0,
      CVAE_ACTION => 1);

   --  Fault Behavior This bit specifies whether the counter continues running
   --  or suspends during a fault mode. There is a separate control under
   --  REPEAT to indicate whether counting is to suspend at next Counter==0
   type TIMA0_CTRCTL_FB_Field is
     (--  Continues counting
      CONT_COUNT,
      --  Suspends counting
      SUSP_COUNT)
     with Size => 1;
   for TIMA0_CTRCTL_FB_Field use
     (CONT_COUNT => 0,
      SUSP_COUNT => 1);

   --  Fault Resume Behavior This bit specifies what the device does following
   --  the release/exit of fault condition.
   type TIMA0_CTRCTL_FRB_Field is
     (--  Resume counting
      RESUME,
      --  Perform the action as specified by the CVAE field.
      CVAE_ACTION)
     with Size => 1;
   for TIMA0_CTRCTL_FRB_Field use
     (RESUME => 0,
      CVAE_ACTION => 1);

   --  Suppress Load and Zero Events if Repeat Counter is Not Equal to Zero.
   --  This bit suppresses the generation of the Z (zero) and L (load) events
   --  from the counter when the repeat counter (RC) value is not 0.
   type TIMA0_CTRCTL_SLZERCNEZ_Field is
     (--  Disabled. Z and L events are always generated from the counter when their
--  conditions are generated.
      DISABLED,
      --  Enabled. Z and L events are generated from the counter when their
--  conditions are generated and the RC register value is 0.
      ENABLED)
     with Size => 1;
   for TIMA0_CTRCTL_SLZERCNEZ_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Phase Load Enable. This bit allows the timer to have phase load feature.
   type TIMA0_CTRCTL_PLEN_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for TIMA0_CTRCTL_PLEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Counter Value After Enable. This field specifies the initialization
   --  condition of the counter when the EN bit is changed from 0 to 1 by a
   --  write to the CTRCTL register. Note that an external event can also cause
   --  the EN bit to go active.
   type TIMA0_CTRCTL_CVAE_Field is
     (--  The counter is set to the LOAD register value
      LDVAL,
      --  The counter value is unchanged from its current value which could have been
--  initialized by software
      NOCHANGE,
      --  The counter is set to zero
      ZEROVAL)
     with Size => 2;
   for TIMA0_CTRCTL_CVAE_Field use
     (LDVAL => 0,
      NOCHANGE => 1,
      ZEROVAL => 2);

   --  Counter Control Register
   type TIMA0_CTRCTL_TIMA0_COUNTERREGS[%s]_Register is record
      --  Counter Enable. This bit allows the timer to advance This bit is
      --  automatically cleared if REPEAT=0 (do not automatically reload) and
      --  the counter value equals zero. CPU Write: A register write that sets
      --  the EN bit, the counter value is set per the CVAE value. Hardware:
      --  This bit may also be set as the result of an LCOND or ZCOND condition
      --  being met and the counter value changed to the load value or zero
      --  value, respectively.
      EN             : TIMA0_CTRCTL_EN_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  Repeat. The repeat bit controls whether the counter continues to
      --  advance following a zero event, or the exiting of a debug or fault
      --  condition. If counting down, a zero event is followed by a load at
      --  the next advance condition. If counting up-down, a zero event is
      --  followed by an advance event (+1). The intent of encoding 3 is that
      --  if the debug condition is in effect, the generation of the load pulse
      --  is deferred until the debug condition is over. This allows the
      --  counter to reach zero before counting is suspended.
      REPEAT         : TIMA0_CTRCTL_REPEAT_Field :=
                        MSPMC1104_SVD.TIMA.REPEAT_0;
      --  Count Mode
      CM             : TIMA0_CTRCTL_CM_Field := MSPMC1104_SVD.TIMA.DOWN;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Counter Load Control. This field specifies what controls the counter
      --  operation with respect to setting the counter to the LD register
      --  value. Encodings 1-3 are present based on the CCPC parameter value.
      --  Bits 4-5 are present based on the HQEI parameter value. Any encodings
      --  not provided are documented as reserved.
      CLC            : TIMA0_CTRCTL_CLC_Field := TIMA0_CTRCTL_CLC_Field_Reset;
      --  Counter Advance Control. This field specifies what controls the
      --  counter operation with respect to advancing (incrementing or
      --  decrementing) the counter value. Encodings 1-3 are present based on
      --  the CCPC parameter value. Bits 4-5 are present based on the HQEI
      --  parameter value. Any encodings not provided are documented as
      --  reserved.
      CAC            : TIMA0_CTRCTL_CAC_Field := TIMA0_CTRCTL_CAC_Field_Reset;
      --  Counter Zero Control This field specifies what controls the counter
      --  operation with respect to zeroing the counter value. Encodings 1-3
      --  are present based on the CCPC parameter value. Bits 4-5 are present
      --  based on the HQEI parameter value. Any encodings not provided are
      --  documented as reserved.
      CZC            : TIMA0_CTRCTL_CZC_Field := TIMA0_CTRCTL_CZC_Field_Reset;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Debug Resume Behavior This bit specifies what the device does
      --  following the release/exit of debug mode.
      DRB            : TIMA0_CTRCTL_DRB_Field := MSPMC1104_SVD.TIMA.RESUME;
      --  Fault Behavior This bit specifies whether the counter continues
      --  running or suspends during a fault mode. There is a separate control
      --  under REPEAT to indicate whether counting is to suspend at next
      --  Counter==0
      FB             : TIMA0_CTRCTL_FB_Field := MSPMC1104_SVD.TIMA.CONT_COUNT;
      --  Fault Resume Behavior This bit specifies what the device does
      --  following the release/exit of fault condition.
      FRB            : TIMA0_CTRCTL_FRB_Field := MSPMC1104_SVD.TIMA.RESUME;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  Suppress Load and Zero Events if Repeat Counter is Not Equal to Zero.
      --  This bit suppresses the generation of the Z (zero) and L (load)
      --  events from the counter when the repeat counter (RC) value is not 0.
      SLZERCNEZ      : TIMA0_CTRCTL_SLZERCNEZ_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  Phase Load Enable. This bit allows the timer to have phase load
      --  feature.
      PLEN           : TIMA0_CTRCTL_PLEN_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Counter Value After Enable. This field specifies the initialization
      --  condition of the counter when the EN bit is changed from 0 to 1 by a
      --  write to the CTRCTL register. Note that an external event can also
      --  cause the EN bit to go active.
      CVAE           : TIMA0_CTRCTL_CVAE_Field := MSPMC1104_SVD.TIMA.LDVAL;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CTRCTL_TIMA0_COUNTERREGS[%s]_Register use record
      EN             at 0 range 0 .. 0;
      REPEAT         at 0 range 1 .. 3;
      CM             at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CLC            at 0 range 7 .. 9;
      CAC            at 0 range 10 .. 12;
      CZC            at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      DRB            at 0 range 17 .. 17;
      FB             at 0 range 18 .. 18;
      FRB            at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      SLZERCNEZ      at 0 range 23 .. 23;
      PLEN           at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CVAE           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TIMA0_LOAD_TIMA0_COUNTERREGS[%s]_LD_Field is HAL.UInt16;

   --  Load Register
   type TIMA0_LOAD_TIMA0_COUNTERREGS[%s]_Register is record
      --  Load Value
      LD             : TIMA0_LOAD_TIMA0_COUNTERREGS[%s]_LD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_LOAD_TIMA0_COUNTERREGS[%s]_Register use record
      LD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_CCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_Register;

   subtype TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_CCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Capture or Compare Register 0 to Capture or Compare Register 1
   type TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_Register;

   subtype TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_CCVAL_Field is HAL.UInt16;

   --  Compare Register 4 to Compare Register 5
   type TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_Register is record
      --  Capture or compare value
      CCVAL          : TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_CCVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_Register use record
      CCVAL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Compare Register 4 to Compare Register 5
   type TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_Register;

   --  Capture Condition. #br# Specifies the condition that generates a capture
   --  pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_01_CCOND_Field is
     (--  None (never captures)
      NOCAPTURE,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_01_CCOND_Field use
     (NOCAPTURE => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Advance Condition. #br# Specifies the condition that generates an
   --  advance pulse. 6h-Fh = Reserved
   type TIMA0_CCCTL_01_ACOND_Field is
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
   for TIMA0_CCCTL_01_ACOND_Field use
     (TIMCLK => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3,
      CC_TRIG_HIGH => 5);

   --  Load Condition. #br# Specifies the condition that generates a load
   --  pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_01_LCOND_Field is
     (--  Reset value for the field
      TIMA0_CCCTL_01_LCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_01_LCOND_Field use
     (TIMA0_CCCTL_01_LCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Zero Condition. #br# This field specifies the condition that generates a
   --  zero pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_01_ZCOND_Field is
     (--  Reset value for the field
      TIMA0_CCCTL_01_ZCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_01_ZCOND_Field use
     (TIMA0_CCCTL_01_ZCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Capture or Compare. #br# Specifies whether the corresponding CC register
   --  is used as a capture register or a compare register (never both).
   type TIMA0_CCCTL_01_COC_Field is
     (--  Compare
      COMPARE,
      --  Capture
      CAPTURE)
     with Size => 1;
   for TIMA0_CCCTL_01_COC_Field use
     (COMPARE => 0,
      CAPTURE => 1);

   --  Capture and Compare Update Method This field controls how updates to the
   --  pipelined capture and compare register are performed (when operating in
   --  compare mode, COC=0).
   type TIMA0_CCCTL_01_CCUPD_Field is
     (--  Writes to the CCx_y register is written to the register directly and has
--  immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCx_y register are stored in shadow
--  register and transferred to CCx_y in the TIMCLK cycle following CTR equals
--  0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCx_y register are stored in
--  shadow register and transferred to ECCx_y in the TIMCLK cycle following CTR
--  equals 0 or CTR. Equals LD. Note this update mechanism is defined for use
--  only in configurations using up/down counting. This mode is not intended
--  for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCx_y
--  register are stored in shadow register and transferred to CCx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  Following a TRIG pulse. Writes to the CCx_y register are stored in shadow
--  register and transferred to CCx_y #xD; 0.
      TRIG)
     with Size => 3;
   for TIMA0_CCCTL_01_CCUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCU event.
   type TIMA0_CCCTL_01_CC2SELU_Field is
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
   for TIMA0_CCCTL_01_CC2SELU_Field use
     (SEL_CCU0 => 0,
      SEL_CCU1 => 1,
      SEL_CCU2 => 2,
      SEL_CCU3 => 3,
      SEL_CCU4 => 4,
      SEL_CCU5 => 5);

   --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This bit
   --  suppresses the generation of the compare (CCD, CCU and RC) events from
   --  the counter when the repeat counter (RC) value is not 0.
   type TIMA0_CCCTL_01_SCERCNEZ_Field is
     (--  CCD, CCU and RC events are always generated from the counter when their
--  conditions are generated.
      DISABLED,
      --  CCD, CCU and RC events are generated from the counter when their conditions
--  are generated and the RC register value is 0.
      ENABLED)
     with Size => 1;
   for TIMA0_CCCTL_01_SCERCNEZ_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  CCACT shadow register Update Method This field controls how updates to
   --  the CCCACT shadow register are performed
   type TIMA0_CCCTL_01_CCACTUPD_Field is
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
   for TIMA0_CCCTL_01_CCACTUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCD event.
   type TIMA0_CCCTL_01_CC2SELD_Field is
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
   for TIMA0_CCCTL_01_CC2SELD_Field use
     (SEL_CCD0 => 0,
      SEL_CCD1 => 1,
      SEL_CCD2 => 2,
      SEL_CCD3 => 3,
      SEL_CCD4 => 4,
      SEL_CCD5 => 5);

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_01_TIMA0_COUNTERREGS[%s]_Register is record
      --  Capture Condition. #br# Specifies the condition that generates a
      --  capture pulse. 4h-Fh = Reserved
      CCOND          : TIMA0_CCCTL_01_CCOND_Field :=
                        MSPMC1104_SVD.TIMA.NOCAPTURE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Advance Condition. #br# Specifies the condition that generates an
      --  advance pulse. 6h-Fh = Reserved
      ACOND          : TIMA0_CCCTL_01_ACOND_Field :=
                        MSPMC1104_SVD.TIMA.TIMCLK;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Load Condition. #br# Specifies the condition that generates a load
      --  pulse. 4h-Fh = Reserved
      LCOND          : TIMA0_CCCTL_01_LCOND_Field :=
                        TIMA0_CCCTL_01_LCOND_Field_Reset;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Zero Condition. #br# This field specifies the condition that
      --  generates a zero pulse. 4h-Fh = Reserved
      ZCOND          : TIMA0_CCCTL_01_ZCOND_Field :=
                        TIMA0_CCCTL_01_ZCOND_Field_Reset;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Capture or Compare. #br# Specifies whether the corresponding CC
      --  register is used as a capture register or a compare register (never
      --  both).
      COC            : TIMA0_CCCTL_01_COC_Field := MSPMC1104_SVD.TIMA.COMPARE;
      --  Capture and Compare Update Method This field controls how updates to
      --  the pipelined capture and compare register are performed (when
      --  operating in compare mode, COC=0).
      CCUPD          : TIMA0_CCCTL_01_CCUPD_Field :=
                        MSPMC1104_SVD.TIMA.Immediately;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Selects the source second CCU event.
      CC2SELU        : TIMA0_CCCTL_01_CC2SELU_Field :=
                        MSPMC1104_SVD.TIMA.SEL_CCU0;
      --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This
      --  bit suppresses the generation of the compare (CCD, CCU and RC) events
      --  from the counter when the repeat counter (RC) value is not 0.
      SCERCNEZ       : TIMA0_CCCTL_01_SCERCNEZ_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCACT shadow register Update Method This field controls how updates
      --  to the CCCACT shadow register are performed
      CCACTUPD       : TIMA0_CCCTL_01_CCACTUPD_Field :=
                        MSPMC1104_SVD.TIMA.Immediately;
      --  Selects the source second CCD event.
      CC2SELD        : TIMA0_CCCTL_01_CC2SELD_Field :=
                        MSPMC1104_SVD.TIMA.SEL_CCD0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCCTL_01_TIMA0_COUNTERREGS[%s]_Register use record
      CCOND          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACOND          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LCOND          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ZCOND          at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      COC            at 0 range 17 .. 17;
      CCUPD          at 0 range 18 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CC2SELU        at 0 range 22 .. 24;
      SCERCNEZ       at 0 range 25 .. 25;
      CCACTUPD       at 0 range 26 .. 28;
      CC2SELD        at 0 range 29 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_01_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CCCTL_01_TIMA0_COUNTERREGS[%s]_Register;

   --  Capture Condition. #br# Specifies the condition that generates a capture
   --  pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_23_CCOND_Field is
     (--  None (never captures)
      NOCAPTURE,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_23_CCOND_Field use
     (NOCAPTURE => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Advance Condition. #br# Specifies the condition that generates an
   --  advance pulse. 6h-Fh = Reserved
   type TIMA0_CCCTL_23_ACOND_Field is
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
   for TIMA0_CCCTL_23_ACOND_Field use
     (TIMCLK => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3,
      CC_TRIG_HIGH => 5);

   --  Load Condition. #br# Specifies the condition that generates a load
   --  pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_23_LCOND_Field is
     (--  Reset value for the field
      TIMA0_CCCTL_23_LCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_23_LCOND_Field use
     (TIMA0_CCCTL_23_LCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Zero Condition. #br# This field specifies the condition that generates a
   --  zero pulse. 4h-Fh = Reserved
   type TIMA0_CCCTL_23_ZCOND_Field is
     (--  Reset value for the field
      TIMA0_CCCTL_23_ZCOND_Field_Reset,
      --  Rising edge of CCP or trigger assertion edge
      CC_TRIG_RISE,
      --  Falling edge of CCP or trigger de-assertion edge
      CC_TRIG_FALL,
      --  Either edge of CCP or trigger change (assertion/de-assertion edge)
      CC_TRIG_EDGE)
     with Size => 3;
   for TIMA0_CCCTL_23_ZCOND_Field use
     (TIMA0_CCCTL_23_ZCOND_Field_Reset => 0,
      CC_TRIG_RISE => 1,
      CC_TRIG_FALL => 2,
      CC_TRIG_EDGE => 3);

   --  Capture or Compare. #br# Specifies whether the corresponding CC register
   --  is used as a capture register or a compare register (never both).
   type TIMA0_CCCTL_23_COC_Field is
     (--  Compare
      COMPARE,
      --  Capture
      CAPTURE)
     with Size => 1;
   for TIMA0_CCCTL_23_COC_Field use
     (COMPARE => 0,
      CAPTURE => 1);

   --  Capture and Compare Update Method This field controls how updates to the
   --  pipelined capture and compare register are performed (when operating in
   --  compare mode, COC=0).
   type TIMA0_CCCTL_23_CCUPD_Field is
     (--  Writes to the CCx_y register is written to the register directly and has
--  immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCx_y register are stored in shadow
--  register and transferred to CCx_y in the TIMCLK cycle following CTR equals
--  0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals 0 or CTR. Equals LDn. Note this update mechanism is defined for use
--  only in configurations using up/down counting. This mode is not intended
--  for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCx_y
--  register are stored in shadow register and transferred to CCx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  Following a TRIG pulse. Writes to the CCx_y register are stored in shadow
--  register and transferred to CCx_y #xD; 0.
      TRIG)
     with Size => 3;
   for TIMA0_CCCTL_23_CCUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCU event.
   type TIMA0_CCCTL_23_CC2SELU_Field is
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
   for TIMA0_CCCTL_23_CC2SELU_Field use
     (SEL_CCU0 => 0,
      SEL_CCU1 => 1,
      SEL_CCU2 => 2,
      SEL_CCU3 => 3,
      SEL_CCU4 => 4,
      SEL_CCU5 => 5);

   --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This bit
   --  suppresses the generation of the compare (CCD, CCU and RC) events from
   --  the counter when the repeat counter (RCn) value is not 0.
   type TIMA0_CCCTL_23_SCERCNEZ_Field is
     (--  CCD, CCU and RC events are always generated from the counter when their
--  conditions are generated.
      DISABLED,
      --  CCD, CCU and RC events are generated from the counter when their conditions
--  are generated and the RC register value is 0.
      ENABLED)
     with Size => 1;
   for TIMA0_CCCTL_23_SCERCNEZ_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  CCACT shadow register Update Method This field controls how updates to
   --  the CCCACT shadow register are performed
   type TIMA0_CCCTL_23_CCACTUPD_Field is
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
   for TIMA0_CCCTL_23_CCACTUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Selects the source second CCD event.
   type TIMA0_CCCTL_23_CC2SELD_Field is
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
   for TIMA0_CCCTL_23_CC2SELD_Field use
     (SEL_CCD0 => 0,
      SEL_CCD1 => 1,
      SEL_CCD2 => 2,
      SEL_CCD3 => 3,
      SEL_CCD4 => 4,
      SEL_CCD5 => 5);

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_23_TIMA0_COUNTERREGS[%s]_Register is record
      --  Capture Condition. #br# Specifies the condition that generates a
      --  capture pulse. 4h-Fh = Reserved
      CCOND          : TIMA0_CCCTL_23_CCOND_Field :=
                        MSPMC1104_SVD.TIMA.NOCAPTURE;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Advance Condition. #br# Specifies the condition that generates an
      --  advance pulse. 6h-Fh = Reserved
      ACOND          : TIMA0_CCCTL_23_ACOND_Field :=
                        MSPMC1104_SVD.TIMA.TIMCLK;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Load Condition. #br# Specifies the condition that generates a load
      --  pulse. 4h-Fh = Reserved
      LCOND          : TIMA0_CCCTL_23_LCOND_Field :=
                        TIMA0_CCCTL_23_LCOND_Field_Reset;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Zero Condition. #br# This field specifies the condition that
      --  generates a zero pulse. 4h-Fh = Reserved
      ZCOND          : TIMA0_CCCTL_23_ZCOND_Field :=
                        TIMA0_CCCTL_23_ZCOND_Field_Reset;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Capture or Compare. #br# Specifies whether the corresponding CC
      --  register is used as a capture register or a compare register (never
      --  both).
      COC            : TIMA0_CCCTL_23_COC_Field := MSPMC1104_SVD.TIMA.COMPARE;
      --  Capture and Compare Update Method This field controls how updates to
      --  the pipelined capture and compare register are performed (when
      --  operating in compare mode, COC=0).
      CCUPD          : TIMA0_CCCTL_23_CCUPD_Field :=
                        MSPMC1104_SVD.TIMA.Immediately;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Selects the source second CCU event.
      CC2SELU        : TIMA0_CCCTL_23_CC2SELU_Field :=
                        MSPMC1104_SVD.TIMA.SEL_CCU0;
      --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This
      --  bit suppresses the generation of the compare (CCD, CCU and RC) events
      --  from the counter when the repeat counter (RCn) value is not 0.
      SCERCNEZ       : TIMA0_CCCTL_23_SCERCNEZ_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCACT shadow register Update Method This field controls how updates
      --  to the CCCACT shadow register are performed
      CCACTUPD       : TIMA0_CCCTL_23_CCACTUPD_Field :=
                        MSPMC1104_SVD.TIMA.Immediately;
      --  Selects the source second CCD event.
      CC2SELD        : TIMA0_CCCTL_23_CC2SELD_Field :=
                        MSPMC1104_SVD.TIMA.SEL_CCD0;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCCTL_23_TIMA0_COUNTERREGS[%s]_Register use record
      CCOND          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACOND          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LCOND          at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ZCOND          at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      COC            at 0 range 17 .. 17;
      CCUPD          at 0 range 18 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CC2SELU        at 0 range 22 .. 24;
      SCERCNEZ       at 0 range 25 .. 25;
      CCACTUPD       at 0 range 26 .. 28;
      CC2SELD        at 0 range 29 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_23_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CCCTL_23_TIMA0_COUNTERREGS[%s]_Register;

   --  Capture and Compare Update Method This field controls how updates to the
   --  pipelined capture and compare register are performed (when operating in
   --  compare mode, COC=0).
   type TIMA0_CCCTL_45_CCUPD_Field is
     (--  Writes to the CCx_y register is written to the register directly and has
--  immediate effect.
      Immediately,
      --  Following a zero event Writes to the CCx_y register are stored in shadow
--  register and transferred to ECCx_y in the TIMCLK cycle following CTR equals
--  0.
      Zero_EVT,
      --  Following a compare (down) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_Down_EVT,
      --  Following a compare (up) event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals the CCx_y register value.
      Compare_UP_EVT,
      --  Following a zero or load event Writes to the CCx_y register are stored in
--  shadow register and transferred to CCx_y in the TIMCLK cycle following CTR
--  equals 0 or CTR. Equals LD. Note this update mechanism is defined for use
--  only in configurations using up/down counting. This mode is not intended
--  for use in down count configurations.
      ZERO_LOAD_EVT,
      --  Following a zero event with repeat count also zero. Writes to the CCx_y
--  register are stored in shadow register and transferred to CCx_y in the
--  TIMCLK cycle following CTR equals 0 and if RC equal 0.
      ZERO_RC_ZERO_EVT,
      --  Following a TRIG pulse. Writes to the CCx_y register are stored in shadow
--  register and transferred to CCx_y #xD; 0.
      TRIG)
     with Size => 3;
   for TIMA0_CCCTL_45_CCUPD_Field use
     (Immediately => 0,
      Zero_EVT => 1,
      Compare_Down_EVT => 2,
      Compare_UP_EVT => 3,
      ZERO_LOAD_EVT => 4,
      ZERO_RC_ZERO_EVT => 5,
      TRIG => 6);

   --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This bit
   --  suppresses the generation of the compare (CCD, CCU and RC) events from
   --  the counter when the repeat counter (RC) value is not 0.
   type TIMA0_CCCTL_45_SCERCNEZ_Field is
     (--  CCD, CCU and RC events are always generated from the counter when their
--  conditions are generated.
      DISABLED,
      --  CCD, CCU and RC events are generated from the counter when their conditions
--  are generated and the RC register value is 0.
      ENABLED)
     with Size => 1;
   for TIMA0_CCCTL_45_SCERCNEZ_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_45_TIMA0_COUNTERREGS[%s]_Register is record
      --  unspecified
      Reserved_0_17  : HAL.UInt18 := 16#0#;
      --  Capture and Compare Update Method This field controls how updates to
      --  the pipelined capture and compare register are performed (when
      --  operating in compare mode, COC=0).
      CCUPD          : TIMA0_CCCTL_45_CCUPD_Field :=
                        MSPMC1104_SVD.TIMA.Immediately;
      --  unspecified
      Reserved_21_24 : HAL.UInt4 := 16#0#;
      --  Suppress Compare Event if Repeat Counter is Not Equal to Zero This
      --  bit suppresses the generation of the compare (CCD, CCU and RC) events
      --  from the counter when the repeat counter (RC) value is not 0.
      SCERCNEZ       : TIMA0_CCCTL_45_SCERCNEZ_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCCTL_45_TIMA0_COUNTERREGS[%s]_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      CCUPD          at 0 range 18 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      SCERCNEZ       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Capture or Compare Control Registers
   type TIMA0_CCCTL_45_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CCCTL_45_TIMA0_COUNTERREGS[%s]_Register;

   --  CCP Output Source
   type TIMA0_OCTL_01_CCPO_Field is
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
   for TIMA0_OCTL_01_CCPO_Field use
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
   type TIMA0_OCTL_01_CCPOINV_Field is
     (--  No inversion
      NOINV,
      --  Invert
      INV)
     with Size => 1;
   for TIMA0_OCTL_01_CCPOINV_Field use
     (NOINV => 0,
      INV => 1);

   --  CCP Initial Value This bit specifies the logical value put on the signal
   --  generator state while the counter is disabled (CTRCTL.EN == 0).
   type TIMA0_OCTL_01_CCPIV_Field is
     (--  Low
      LOW,
      --  High
      HIGH)
     with Size => 1;
   for TIMA0_OCTL_01_CCPIV_Field use
     (LOW => 0,
      HIGH => 1);

   --  CCP Output Control Registers
   type TIMA0_OCTL_01_TIMA0_COUNTERREGS[%s]_Register is record
      --  CCP Output Source
      CCPO          : TIMA0_OCTL_01_CCPO_Field := MSPMC1104_SVD.TIMA.FUNCVAL;
      --  CCP Output Invert The output as selected by CCPO is conditionally
      --  inverted.
      CCPOINV       : TIMA0_OCTL_01_CCPOINV_Field := MSPMC1104_SVD.TIMA.NOINV;
      --  CCP Initial Value This bit specifies the logical value put on the
      --  signal generator state while the counter is disabled (CTRCTL.EN ==
      --  0).
      CCPIV         : TIMA0_OCTL_01_CCPIV_Field := MSPMC1104_SVD.TIMA.LOW;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_OCTL_01_TIMA0_COUNTERREGS[%s]_Register use record
      CCPO          at 0 range 0 .. 3;
      CCPOINV       at 0 range 4 .. 4;
      CCPIV         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CCP Output Control Registers
   type TIMA0_OCTL_01_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_OCTL_01_TIMA0_COUNTERREGS[%s]_Register;

   --  CCP Output Source
   type TIMA0_OCTL_23_CCPO_Field is
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
   for TIMA0_OCTL_23_CCPO_Field use
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
   type TIMA0_OCTL_23_CCPOINV_Field is
     (--  No inversion
      NOINV,
      --  Invert
      INV)
     with Size => 1;
   for TIMA0_OCTL_23_CCPOINV_Field use
     (NOINV => 0,
      INV => 1);

   --  CCP Initial Value This bit specifies the logical value put on the signal
   --  generator state while the counter is disabled (CTRCTL.EN == 0).
   type TIMA0_OCTL_23_CCPIV_Field is
     (--  Low
      LOW,
      --  High
      HIGH)
     with Size => 1;
   for TIMA0_OCTL_23_CCPIV_Field use
     (LOW => 0,
      HIGH => 1);

   --  CCP Output Control Registers
   type TIMA0_OCTL_23_TIMA0_COUNTERREGS[%s]_Register is record
      --  CCP Output Source
      CCPO          : TIMA0_OCTL_23_CCPO_Field := MSPMC1104_SVD.TIMA.FUNCVAL;
      --  CCP Output Invert The output as selected by CCPO is conditionally
      --  inverted.
      CCPOINV       : TIMA0_OCTL_23_CCPOINV_Field := MSPMC1104_SVD.TIMA.NOINV;
      --  CCP Initial Value This bit specifies the logical value put on the
      --  signal generator state while the counter is disabled (CTRCTL.EN ==
      --  0).
      CCPIV         : TIMA0_OCTL_23_CCPIV_Field := MSPMC1104_SVD.TIMA.LOW;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_OCTL_23_TIMA0_COUNTERREGS[%s]_Register use record
      CCPO          at 0 range 0 .. 3;
      CCPOINV       at 0 range 4 .. 4;
      CCPIV         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CCP Output Control Registers
   type TIMA0_OCTL_23_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_OCTL_23_TIMA0_COUNTERREGS[%s]_Register;

   --  CCP Output Action on Zero Specifies what changes occur to CCP output as
   --  the result of a zero event.
   type TIMA0_CCACT_01_ZACT_Field is
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
   for TIMA0_CCACT_01_ZACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Load Specifies what changes occur to CCP output as
   --  the result of a load event.
   type TIMA0_CCACT_01_LACT_Field is
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
   for TIMA0_CCACT_01_LACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Down) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting down.
   type TIMA0_CCACT_01_CDACT_Field is
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
   for TIMA0_CCACT_01_CDACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Up) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting up.
   type TIMA0_CCACT_01_CUACT_Field is
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
   for TIMA0_CCACT_01_CUACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2D event.
   type TIMA0_CCACT_01_CC2DACT_Field is
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
   for TIMA0_CCACT_01_CC2DACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2U event.
   type TIMA0_CCACT_01_CC2UACT_Field is
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
   for TIMA0_CCACT_01_CC2UACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Fault Entry This field describes the resulting
   --  action of the signal generator upon detecting a fault.
   type TIMA0_CCACT_01_FENACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE,
      --  CCP output value is tristated
      CCP_HIGHZ)
     with Size => 3;
   for TIMA0_CCACT_01_FENACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3,
      CCP_HIGHZ => 4);

   --  CCP Output Action on Fault Exit This field describes the resulting
   --  action of the signal generator upon exiting the fault condition.
   type TIMA0_CCACT_01_FEXACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE,
      --  CCP output value is tristated
      CCP_HIGHZ)
     with Size => 3;
   for TIMA0_CCACT_01_FEXACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3,
      CCP_HIGHZ => 4);

   --  CCP Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMA0_CCACT_01_SWFRCACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMA0_CCACT_01_SWFRCACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  CCP_CMPL Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMA0_CCACT_01_SWFRCACT_CMPL_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP_CMPL output value is set high
      CCP_HIGH,
      --  CCP_CMPL output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMA0_CCACT_01_SWFRCACT_CMPL_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  Capture or Compare Action Registers
   type TIMA0_CCACT_01_TIMA0_COUNTERREGS[%s]_Register is record
      --  CCP Output Action on Zero Specifies what changes occur to CCP output
      --  as the result of a zero event.
      ZACT           : TIMA0_CCACT_01_ZACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  CCP Output Action on Load Specifies what changes occur to CCP output
      --  as the result of a load event.
      LACT           : TIMA0_CCACT_01_LACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Down) This field describes the
      --  resulting action of the signal generator upon detecting a compare
      --  event while counting down.
      CDACT          : TIMA0_CCACT_01_CDACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Up) This field describes the resulting
      --  action of the signal generator upon detecting a compare event while
      --  counting up.
      CUACT          : TIMA0_CCACT_01_CUACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2D event.
      CC2DACT        : TIMA0_CCACT_01_CC2DACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2U event.
      CC2UACT        : TIMA0_CCACT_01_CC2UACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  CCP Output Action on Fault Entry This field describes the resulting
      --  action of the signal generator upon detecting a fault.
      FENACT         : TIMA0_CCACT_01_FENACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP Output Action on Fault Exit This field describes the resulting
      --  action of the signal generator upon exiting the fault condition.
      FEXACT         : TIMA0_CCACT_01_FEXACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP Output Action on Software Force Output This field describes the
      --  resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT       : TIMA0_CCACT_01_SWFRCACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP_CMPL Output Action on Software Force Output This field describes
      --  the resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT_CMPL  : TIMA0_CCACT_01_SWFRCACT_CMPL_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCACT_01_TIMA0_COUNTERREGS[%s]_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      FENACT         at 0 range 22 .. 24;
      FEXACT         at 0 range 25 .. 27;
      SWFRCACT       at 0 range 28 .. 29;
      SWFRCACT_CMPL  at 0 range 30 .. 31;
   end record;

   --  Capture or Compare Action Registers
   type TIMA0_CCACT_01_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CCACT_01_TIMA0_COUNTERREGS[%s]_Register;

   --  CCP Output Action on Zero Specifies what changes occur to CCP output as
   --  the result of a zero event.
   type TIMA0_CCACT_23_ZACT_Field is
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
   for TIMA0_CCACT_23_ZACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Load Specifies what changes occur to CCP output as
   --  the result of a load event.
   type TIMA0_CCACT_23_LACT_Field is
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
   for TIMA0_CCACT_23_LACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Down) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting down.
   type TIMA0_CCACT_23_CDACT_Field is
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
   for TIMA0_CCACT_23_CDACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Compare (Up) This field describes the resulting
   --  action of the signal generator upon detecting a compare event while
   --  counting up.
   type TIMA0_CCACT_23_CUACT_Field is
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
   for TIMA0_CCACT_23_CUACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2D event.
   type TIMA0_CCACT_23_CC2DACT_Field is
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
   for TIMA0_CCACT_23_CC2DACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on CC2U event.
   type TIMA0_CCACT_23_CC2UACT_Field is
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
   for TIMA0_CCACT_23_CC2UACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3);

   --  CCP Output Action on Fault Entry This field describes the resulting
   --  action of the signal generator upon detecting a fault.
   type TIMA0_CCACT_23_FENACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE,
      --  CCP output value is tristated
      CCP_HIGHZ)
     with Size => 3;
   for TIMA0_CCACT_23_FENACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3,
      CCP_HIGHZ => 4);

   --  CCP Output Action on Fault Exit This field describes the resulting
   --  action of the signal generator upon exiting the fault condition.
   type TIMA0_CCACT_23_FEXACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW,
      --  CCP output value is toggled
      CCP_TOGGLE,
      --  CCP output value is tristated
      CCP_HIGHZ)
     with Size => 3;
   for TIMA0_CCACT_23_FEXACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2,
      CCP_TOGGLE => 3,
      CCP_HIGHZ => 4);

   --  CCP Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMA0_CCACT_23_SWFRCACT_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP output value is set high
      CCP_HIGH,
      --  CCP output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMA0_CCACT_23_SWFRCACT_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  CCP_CMPL Output Action on Software Force Output This field describes the
   --  resulting action of software force. This action has a shadow register,
   --  which will be updated under specific condition. So that this register
   --  cannot take into effect immediately.
   type TIMA0_CCACT_23_SWFRCACT_CMPL_Field is
     (--  This event is disabled and a lower priority event is selected if asserting.
--  The CCP output value is unaffected by the event.
      DISABLED,
      --  CCP_CMPL output value is set high
      CCP_HIGH,
      --  CCP_CMPL output value is set low
      CCP_LOW)
     with Size => 2;
   for TIMA0_CCACT_23_SWFRCACT_CMPL_Field use
     (DISABLED => 0,
      CCP_HIGH => 1,
      CCP_LOW => 2);

   --  Capture or Compare Action Registers
   type TIMA0_CCACT_23_TIMA0_COUNTERREGS[%s]_Register is record
      --  CCP Output Action on Zero Specifies what changes occur to CCP output
      --  as the result of a zero event.
      ZACT           : TIMA0_CCACT_23_ZACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  CCP Output Action on Load Specifies what changes occur to CCP output
      --  as the result of a load event.
      LACT           : TIMA0_CCACT_23_LACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Down) This field describes the
      --  resulting action of the signal generator upon detecting a compare
      --  event while counting down.
      CDACT          : TIMA0_CCACT_23_CDACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  CCP Output Action on Compare (Up) This field describes the resulting
      --  action of the signal generator upon detecting a compare event while
      --  counting up.
      CUACT          : TIMA0_CCACT_23_CUACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2D event.
      CC2DACT        : TIMA0_CCACT_23_CC2DACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  CCP Output Action on CC2U event.
      CC2UACT        : TIMA0_CCACT_23_CC2UACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_17_21 : HAL.UInt5 := 16#0#;
      --  CCP Output Action on Fault Entry This field describes the resulting
      --  action of the signal generator upon detecting a fault.
      FENACT         : TIMA0_CCACT_23_FENACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP Output Action on Fault Exit This field describes the resulting
      --  action of the signal generator upon exiting the fault condition.
      FEXACT         : TIMA0_CCACT_23_FEXACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP Output Action on Software Force Output This field describes the
      --  resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT       : TIMA0_CCACT_23_SWFRCACT_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  CCP_CMPL Output Action on Software Force Output This field describes
      --  the resulting action of software force. This action has a shadow
      --  register, which will be updated under specific condition. So that
      --  this register cannot take into effect immediately.
      SWFRCACT_CMPL  : TIMA0_CCACT_23_SWFRCACT_CMPL_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_CCACT_23_TIMA0_COUNTERREGS[%s]_Register use record
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
      Reserved_17_21 at 0 range 17 .. 21;
      FENACT         at 0 range 22 .. 24;
      FEXACT         at 0 range 25 .. 27;
      SWFRCACT       at 0 range 28 .. 29;
      SWFRCACT_CMPL  at 0 range 30 .. 31;
   end record;

   --  Capture or Compare Action Registers
   type TIMA0_CCACT_23_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_CCACT_23_TIMA0_COUNTERREGS[%s]_Register;

   --  Input Select (CCP0) This field selects the input source to the filter
   --  input. 4h-7h = Reserved
   type TIMA0_IFCTL_01_ISEL_Field is
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
   for TIMA0_IFCTL_01_ISEL_Field use
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
   type TIMA0_IFCTL_01_INV_Field is
     (--  Noninverted
      NOINVERT,
      --  Inverted
      INVERT)
     with Size => 1;
   for TIMA0_IFCTL_01_INV_Field use
     (NOINVERT => 0,
      INVERT => 1);

   --  Filter Period. This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMA0_IFCTL_01_FP_Field is
     (--  The division factor is 3
      Val_3,
      --  The division factor is 5
      Val_5,
      --  The division factor is 8
      Val_8)
     with Size => 2;
   for TIMA0_IFCTL_01_FP_Field use
     (Val_3 => 0,
      Val_5 => 1,
      Val_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMA0_IFCTL_01_CPV_Field is
     (--  Consecutive Periods The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      Consecutive,
      --  Voting The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output.
      Voting)
     with Size => 1;
   for TIMA0_IFCTL_01_CPV_Field use
     (Consecutive => 0,
      Voting => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to the edge detect.
   type TIMA0_IFCTL_01_FE_Field is
     (--  Bypass.
      DISABLED,
      --  Filtered.
      ENABLED)
     with Size => 1;
   for TIMA0_IFCTL_01_FE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Input Filter Control Register
   type TIMA0_IFCTL_01_TIMA0_COUNTERREGS[%s]_Register is record
      --  Input Select (CCP0) This field selects the input source to the filter
      --  input. 4h-7h = Reserved
      ISEL           : TIMA0_IFCTL_01_ISEL_Field :=
                        MSPMC1104_SVD.TIMA.CCPX_INPUT;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Input Inversion This bit controls whether the selected input is
      --  inverted.
      INV            : TIMA0_IFCTL_01_INV_Field :=
                        MSPMC1104_SVD.TIMA.NOINVERT;
      --  Filter Period. This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP             : TIMA0_IFCTL_01_FP_Field := MSPMC1104_SVD.TIMA.Val_3;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV            : TIMA0_IFCTL_01_CPV_Field :=
                        MSPMC1104_SVD.TIMA.Consecutive;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to the edge detect.
      FE             : TIMA0_IFCTL_01_FE_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_IFCTL_01_TIMA0_COUNTERREGS[%s]_Register use record
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
   type TIMA0_IFCTL_01_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_IFCTL_01_TIMA0_COUNTERREGS[%s]_Register;

   --  Input Select (CCP0) This field selects the input source to the filter
   --  input. 4h-7h = Reserved
   type TIMA0_IFCTL_23_ISEL_Field is
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
   for TIMA0_IFCTL_23_ISEL_Field use
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
   type TIMA0_IFCTL_23_INV_Field is
     (--  Noninverted
      NOINVERT,
      --  Inverted
      INVERT)
     with Size => 1;
   for TIMA0_IFCTL_23_INV_Field use
     (NOINVERT => 0,
      INVERT => 1);

   --  Filter Period. This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMA0_IFCTL_23_FP_Field is
     (--  The division factor is 3
      Val_3,
      --  The division factor is 5
      Val_5,
      --  The division factor is 8
      Val_8)
     with Size => 2;
   for TIMA0_IFCTL_23_FP_Field use
     (Val_3 => 0,
      Val_5 => 1,
      Val_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMA0_IFCTL_23_CPV_Field is
     (--  Consecutive Periods The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      Consecutive,
      --  Voting The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output.
      Voting)
     with Size => 1;
   for TIMA0_IFCTL_23_CPV_Field use
     (Consecutive => 0,
      Voting => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to the edge detect.
   type TIMA0_IFCTL_23_FE_Field is
     (--  Bypass.
      DISABLED,
      --  Filtered.
      ENABLED)
     with Size => 1;
   for TIMA0_IFCTL_23_FE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Input Filter Control Register
   type TIMA0_IFCTL_23_TIMA0_COUNTERREGS[%s]_Register is record
      --  Input Select (CCP0) This field selects the input source to the filter
      --  input. 4h-7h = Reserved
      ISEL           : TIMA0_IFCTL_23_ISEL_Field :=
                        MSPMC1104_SVD.TIMA.CCPX_INPUT;
      --  unspecified
      Reserved_4_6   : HAL.UInt3 := 16#0#;
      --  Input Inversion This bit controls whether the selected input is
      --  inverted.
      INV            : TIMA0_IFCTL_23_INV_Field :=
                        MSPMC1104_SVD.TIMA.NOINVERT;
      --  Filter Period. This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP             : TIMA0_IFCTL_23_FP_Field := MSPMC1104_SVD.TIMA.Val_3;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV            : TIMA0_IFCTL_23_CPV_Field :=
                        MSPMC1104_SVD.TIMA.Consecutive;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to the edge detect.
      FE             : TIMA0_IFCTL_23_FE_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_IFCTL_23_TIMA0_COUNTERREGS[%s]_Register use record
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
   type TIMA0_IFCTL_23_TIMA0_COUNTERREGS[%s]_Registers is array (0 .. 1)
     of TIMA0_IFCTL_23_TIMA0_COUNTERREGS[%s]_Register;

   subtype TIMA0_PL_TIMA0_COUNTERREGS[%s]_PHASE_Field is HAL.UInt16;

   --  Counter Register
   type TIMA0_PL_TIMA0_COUNTERREGS[%s]_Register is record
      --  Phase Load value
      PHASE          : TIMA0_PL_TIMA0_COUNTERREGS[%s]_PHASE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_PL_TIMA0_COUNTERREGS[%s]_Register use record
      PHASE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_RISEDELAY_Field is HAL.UInt12;

   --  Dead Band Mode 1 Enable.
   type TIMA0_DBCTL_M1_ENABLE_Field is
     (--  Disabled
      DISABLED,
      --  Enabled
      ENABLED)
     with Size => 1;
   for TIMA0_DBCTL_M1_ENABLE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   subtype TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_FALLDELAY_Field is HAL.UInt12;

   --  Dead Band insertion control register
   type TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_Register is record
      --  Rise Delay The number of TIMCLK periods inserted between the fall of
      --  CCPi and the rise of CCPAo.
      RISEDELAY      : TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_RISEDELAY_Field :=
                        16#0#;
      --  Dead Band Mode 1 Enable.
      M1_ENABLE      : TIMA0_DBCTL_M1_ENABLE_Field :=
                        MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Fall Delay The number of TIMCLK periods inserted between the fall of
      --  CCPi and the rise of CCPBo
      FALLDELAY      : TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_FALLDELAY_Field :=
                        16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_Register use record
      RISEDELAY      at 0 range 0 .. 11;
      M1_ENABLE      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      FALLDELAY      at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  External Trigger Select. #br# This selects which System Event is used if
   --  the input filter selects trigger. Triggers 0-15 are used to connect
   --  triggers generated by other timer modules in the same power domain.
   --  Refer to the SoC datasheet to get details. Triggers 16 and 17 are
   --  connected to event manager subscriber ports. Event lines 18-31 are
   --  reserved for future use.
   type TIMA0_TSEL_ETSEL_Field is
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
   for TIMA0_TSEL_ETSEL_Field use
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
   type TIMA0_TSEL_TE_Field is
     (--  Triggers are not used.
      DISABLED,
      --  Triggers are used as selected by the IE, ITSEL and ETSEL fields.
      ENABLED)
     with Size => 1;
   for TIMA0_TSEL_TE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Trigger Select
   type TIMA0_TSEL_TIMA0_COUNTERREGS[%s]_Register is record
      --  External Trigger Select. #br# This selects which System Event is used
      --  if the input filter selects trigger. Triggers 0-15 are used to
      --  connect triggers generated by other timer modules in the same power
      --  domain. Refer to the SoC datasheet to get details. Triggers 16 and 17
      --  are connected to event manager subscriber ports. Event lines 18-31
      --  are reserved for future use.
      ETSEL          : TIMA0_TSEL_ETSEL_Field := MSPMC1104_SVD.TIMA.TRIG0;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Trigger Enable. This selects whether a trigger is enabled or not for
      --  this counter 0x0 = Triggers are not used 0x1 = Triggers are used as
      --  selected by the ETSEL field
      TE             : TIMA0_TSEL_TE_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_TSEL_TIMA0_COUNTERREGS[%s]_Register use record
      ETSEL          at 0 range 0 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      TE             at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TIMA0_RC_TIMA0_COUNTERREGS[%s]_RC_Field is HAL.UInt8;

   --  Repeat counter
   type TIMA0_RC_TIMA0_COUNTERREGS[%s]_Register is record
      --  Read-only. Repeat Counter Value
      RC            : TIMA0_RC_TIMA0_COUNTERREGS[%s]_RC_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_RC_TIMA0_COUNTERREGS[%s]_Register use record
      RC            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TIMA0_RCLD_TIMA0_COUNTERREGS[%s]_RCLD_Field is HAL.UInt8;

   --  Repeat counter
   type TIMA0_RCLD_TIMA0_COUNTERREGS[%s]_Register is record
      --  Repeat Counter Load Value This field provides the value loaded into
      --  the repeat counter at a load event following the repeat counter value
      --  equaling 0.
      RCLD          : TIMA0_RCLD_TIMA0_COUNTERREGS[%s]_RCLD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_RCLD_TIMA0_COUNTERREGS[%s]_Register use record
      RCLD          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Fault Input Enable This bit enables the input for fault detection.
   type TIMA0_FCTL_FIEN_Field is
     (--  Fault Input Disabled
      DISABLED,
      --  Fault Input Enabled
      ENABLED)
     with Size => 1;
   for TIMA0_FCTL_FIEN_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Fault Input Specifies whether the overall fault condition is dependent
   --  on the sensed fault pin.
   type TIMA0_FCTL_FI_Field is
     (--  Overall Fault condition is not dependent on sensed input.
      INDEPENDENT,
      --  Overall Fault condition is dependent on sensed input.
      DEPENDENT)
     with Size => 1;
   for TIMA0_FCTL_FI_Field use
     (INDEPENDENT => 0,
      DEPENDENT => 1);

   --  Fault Latch mode Specifies whether the fault condition is latched and
   --  configures the latch clear conditions.
   type TIMA0_FCTL_FL_Field is
     (--  Overall fault condition is not dependent on the F bit in RIS
      NO_LATCH,
      --  Overall fault condition is dependent on the F bit in RIS
      LATCH_SW_CLR,
      --  Fault condition is latched. Fault condition is cleared on a zero event if
--  the fault input is 0.
      LATCH_Z_CLR,
      --  Fault condition is latched. Fault condition is cleared on a load event if
--  the fault input is 0.
      LATCH_LD_CLR)
     with Size => 2;
   for TIMA0_FCTL_FL_Field use
     (NO_LATCH => 0,
      LATCH_SW_CLR => 1,
      LATCH_Z_CLR => 2,
      LATCH_LD_CLR => 3);

   --  Trigger Fault Input Mask Specifies whether the selected trigger
   --  participates as a fault input. If enabled and the trigger asserts, the
   --  trigger is treated as a fault.
   type TIMA0_FCTL_TFIM_Field is
     (--  Selected trigger does not participate in fault condition generation
      DISABLED,
      --  Selected trigger participates in fault condition generation
      ENABLED)
     with Size => 1;
   for TIMA0_FCTL_TFIM_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Specifies whether the analog comparator0 fault sense is high or low
   --  active
   type TIMA0_FCTL_FSENAC0_Field is
     (--  Fault Input is active low.
      LOWCTIVE,
      --  Fault Input is active high.
      HIGHACTIVE)
     with Size => 1;
   for TIMA0_FCTL_FSENAC0_Field use
     (LOWCTIVE => 0,
      HIGHACTIVE => 1);

   --  TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC array
   type TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC_Field_Array is array (0 .. 2)
     of TIMA0_FCTL_FSENAC0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC
   type TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FSENAC as a value
            Val : HAL.UInt3;
         when True =>
            --  FSENAC as an array
            Arr : TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Specifies whether the external fault pin0 sense is high or low active
   type TIMA0_FCTL_FSENEXT0_Field is
     (--  Fault Input is active low.
      LOWCTIVE,
      --  Fault Input is active high.
      HIGHACTIVE)
     with Size => 1;
   for TIMA0_FCTL_FSENEXT0_Field use
     (LOWCTIVE => 0,
      HIGHACTIVE => 1);

   --  TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT array
   type TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT_Field_Array is array (0 .. 2)
     of TIMA0_FCTL_FSENEXT0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT
   type TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FSENEXT as a value
            Val : HAL.UInt3;
         when True =>
            --  FSENEXT as an array
            Arr : TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Fault Control Register
   type TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_Register is record
      --  Fault Input Enable This bit enables the input for fault detection.
      FIEN           : TIMA0_FCTL_FIEN_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Fault Input Specifies whether the overall fault condition is
      --  dependent on the sensed fault pin.
      FI             : TIMA0_FCTL_FI_Field := MSPMC1104_SVD.TIMA.INDEPENDENT;
      --  Fault Latch mode Specifies whether the fault condition is latched and
      --  configures the latch clear conditions.
      FL             : TIMA0_FCTL_FL_Field := MSPMC1104_SVD.TIMA.NO_LATCH;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Trigger Fault Input Mask Specifies whether the selected trigger
      --  participates as a fault input. If enabled and the trigger asserts,
      --  the trigger is treated as a fault.
      TFIM           : TIMA0_FCTL_TFIM_Field := MSPMC1104_SVD.TIMA.DISABLED;
      --  Specifies whether the analog comparator0 fault sense is high or low
      --  active
      FSENAC         : TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENAC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Specifies whether the external fault pin0 sense is high or low active
      FSENEXT        : TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_FSENEXT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_Register use record
      FIEN           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      FI             at 0 range 2 .. 2;
      FL             at 0 range 3 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      TFIM           at 0 range 7 .. 7;
      FSENAC         at 0 range 8 .. 10;
      FSENEXT        at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Filter Period This field specifies the sample period for the input
   --  filter. I.e. The input is sampled for FP timer clocks during filtering.
   type TIMA0_FIFCTL_FP_Field is
     (--  Filter Period 3
      PER_3,
      --  Filter Period 5
      PER_5,
      --  Filter Period 8
      PER_8)
     with Size => 2;
   for TIMA0_FIFCTL_FP_Field use
     (PER_3 => 0,
      PER_5 => 1,
      PER_8 => 2);

   --  Consecutive Period/Voting Select This bit controls whether the input
   --  filter uses a stricter consecutive period count or majority voting.
   type TIMA0_FIFCTL_CPV_Field is
     (--  Consecutive Periods. The input must be at a specific logic level for the
--  period defined by FP before it is passed to the filter output.
      CONSEC_PER,
      --  Voting. The filter ignores one clock of opposite logic over the filter
--  period. I.e. Over FP samples of the input, up to 1 sample may be of an
--  opposite logic value (glitch) without affecting the output
      VOTING)
     with Size => 1;
   for TIMA0_FIFCTL_CPV_Field use
     (CONSEC_PER => 0,
      VOTING => 1);

   --  Filter Enable This bit controls whether the input is filtered by the
   --  input filter or bypasses to go directly to the optional pre-scale filter
   --  and then to the edge detect.
   type TIMA0_FIFCTL_FILTEN_Field is
     (--  Bypass
      BYPASS,
      --  Filtered.
      FILTERED)
     with Size => 1;
   for TIMA0_FIFCTL_FILTEN_Field use
     (BYPASS => 0,
      FILTERED => 1);

   --  Fault input Filter control register
   type TIMA0_FIFCTL_TIMA0_COUNTERREGS[%s]_Register is record
      --  Filter Period This field specifies the sample period for the input
      --  filter. I.e. The input is sampled for FP timer clocks during
      --  filtering.
      FP            : TIMA0_FIFCTL_FP_Field := MSPMC1104_SVD.TIMA.PER_3;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Consecutive Period/Voting Select This bit controls whether the input
      --  filter uses a stricter consecutive period count or majority voting.
      CPV           : TIMA0_FIFCTL_CPV_Field := MSPMC1104_SVD.TIMA.CONSEC_PER;
      --  Filter Enable This bit controls whether the input is filtered by the
      --  input filter or bypasses to go directly to the optional pre-scale
      --  filter and then to the edge detect.
      FILTEN        : TIMA0_FIFCTL_FILTEN_Field := MSPMC1104_SVD.TIMA.BYPASS;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMA0_FIFCTL_TIMA0_COUNTERREGS[%s]_Register use record
      FP            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CPV           at 0 range 3 .. 3;
      FILTEN        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   type TIMA0_COUNTERREGS[%s]_Cluster is record
      --  Counter Register
      TIMA0_CTR      : aliased TIMA0_CTR_TIMA0_COUNTERREGS[%s]_Register;
      --  Counter Control Register
      TIMA0_CTRCTL   : aliased TIMA0_CTRCTL_TIMA0_COUNTERREGS[%s]_Register;
      --  Load Register
      TIMA0_LOAD     : aliased TIMA0_LOAD_TIMA0_COUNTERREGS[%s]_Register;
      --  Capture or Compare Register 0 to Capture or Compare Register 1
      TIMA0_CC_01    : aliased TIMA0_CC_01_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Register 0 to Capture or Compare Register 1
      TIMA0_CC_23    : aliased TIMA0_CC_23_TIMA0_COUNTERREGS[%s]_Registers;
      --  Compare Register 4 to Compare Register 5
      TIMA0_CC_45    : aliased TIMA0_CC_45_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMA0_CCCTL_01 : aliased TIMA0_CCCTL_01_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMA0_CCCTL_23 : aliased TIMA0_CCCTL_23_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Control Registers
      TIMA0_CCCTL_45 : aliased TIMA0_CCCTL_45_TIMA0_COUNTERREGS[%s]_Registers;
      --  CCP Output Control Registers
      TIMA0_OCTL_01  : aliased TIMA0_OCTL_01_TIMA0_COUNTERREGS[%s]_Registers;
      --  CCP Output Control Registers
      TIMA0_OCTL_23  : aliased TIMA0_OCTL_23_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Action Registers
      TIMA0_CCACT_01 : aliased TIMA0_CCACT_01_TIMA0_COUNTERREGS[%s]_Registers;
      --  Capture or Compare Action Registers
      TIMA0_CCACT_23 : aliased TIMA0_CCACT_23_TIMA0_COUNTERREGS[%s]_Registers;
      --  Input Filter Control Register
      TIMA0_IFCTL_01 : aliased TIMA0_IFCTL_01_TIMA0_COUNTERREGS[%s]_Registers;
      --  Input Filter Control Register
      TIMA0_IFCTL_23 : aliased TIMA0_IFCTL_23_TIMA0_COUNTERREGS[%s]_Registers;
      --  Counter Register
      TIMA0_PL       : aliased TIMA0_PL_TIMA0_COUNTERREGS[%s]_Register;
      --  Dead Band insertion control register
      TIMA0_DBCTL    : aliased TIMA0_DBCTL_TIMA0_COUNTERREGS[%s]_Register;
      --  Trigger Select
      TIMA0_TSEL     : aliased TIMA0_TSEL_TIMA0_COUNTERREGS[%s]_Register;
      --  Repeat counter
      TIMA0_RC       : aliased TIMA0_RC_TIMA0_COUNTERREGS[%s]_Register;
      --  Repeat counter
      TIMA0_RCLD     : aliased TIMA0_RCLD_TIMA0_COUNTERREGS[%s]_Register;
      --  Fault Control Register
      TIMA0_FCTL     : aliased TIMA0_FCTL_TIMA0_COUNTERREGS[%s]_Register;
      --  Fault input Filter control register
      TIMA0_FIFCTL   : aliased TIMA0_FIFCTL_TIMA0_COUNTERREGS[%s]_Register;
   end record
     with Size => 1728;

   for TIMA0_COUNTERREGS[%s]_Cluster use record
      TIMA0_CTR      at 16#0# range 0 .. 31;
      TIMA0_CTRCTL   at 16#4# range 0 .. 31;
      TIMA0_LOAD     at 16#8# range 0 .. 31;
      TIMA0_CC_01    at 16#10# range 0 .. 63;
      TIMA0_CC_23    at 16#18# range 0 .. 63;
      TIMA0_CC_45    at 16#20# range 0 .. 63;
      TIMA0_CCCTL_01 at 16#30# range 0 .. 63;
      TIMA0_CCCTL_23 at 16#38# range 0 .. 63;
      TIMA0_CCCTL_45 at 16#40# range 0 .. 63;
      TIMA0_OCTL_01  at 16#50# range 0 .. 63;
      TIMA0_OCTL_23  at 16#58# range 0 .. 63;
      TIMA0_CCACT_01 at 16#70# range 0 .. 63;
      TIMA0_CCACT_23 at 16#78# range 0 .. 63;
      TIMA0_IFCTL_01 at 16#80# range 0 .. 63;
      TIMA0_IFCTL_23 at 16#88# range 0 .. 63;
      TIMA0_PL       at 16#A0# range 0 .. 31;
      TIMA0_DBCTL    at 16#A4# range 0 .. 31;
      TIMA0_TSEL     at 16#B0# range 0 .. 31;
      TIMA0_RC       at 16#B4# range 0 .. 31;
      TIMA0_RCLD     at 16#B8# range 0 .. 31;
      TIMA0_FCTL     at 16#D0# range 0 .. 31;
      TIMA0_FIFCTL   at 16#D4# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type TIMA0_Peripheral is record
      --  Subsciber Port 0
      TIMA0_FSUB_0          : aliased TIMA0_FSUB_0_Register;
      --  Subscriber Port 1
      TIMA0_FSUB_1          : aliased TIMA0_FSUB_1_Register;
      --  Publisher Port 0
      TIMA0_FPUB_0          : aliased TIMA0_FPUB_0_Register;
      --  Publisher Port 1
      TIMA0_FPUB_1          : aliased TIMA0_FPUB_1_Register;
      TIMA0_GPRCM[%s]       : aliased TIMA0_GPRCM[%s]_Cluster;
      --  Clock Divider
      TIMA0_CLKDIV          : aliased TIMA0_CLKDIV_Register;
      --  Clock Select for Ultra Low Power peripherals
      TIMA0_CLKSEL          : aliased TIMA0_CLKSEL_Register;
      --  Peripheral Debug Control
      TIMA0_PDBGCTL         : aliased TIMA0_PDBGCTL_Register;
      TIMA0_INT_EVENT       : aliased TIMA0_INT_EVENT_Clusters;
      --  Event Mode
      TIMA0_EVT_MODE        : aliased TIMA0_EVT_MODE_Register;
      --  Module Description
      TIMA0_DESC            : aliased TIMA0_DESC_Register;
      TIMA0_COMMONREGS[%s]  : aliased TIMA0_COMMONREGS[%s]_Cluster;
      TIMA0_COUNTERREGS[%s] : aliased TIMA0_COUNTERREGS[%s]_Cluster;
   end record
     with Volatile;

   for TIMA0_Peripheral use record
      TIMA0_FSUB_0          at 16#400# range 0 .. 31;
      TIMA0_FSUB_1          at 16#404# range 0 .. 31;
      TIMA0_FPUB_0          at 16#444# range 0 .. 31;
      TIMA0_FPUB_1          at 16#448# range 0 .. 31;
      TIMA0_GPRCM[%s]       at 16#800# range 0 .. 191;
      TIMA0_CLKDIV          at 16#1000# range 0 .. 31;
      TIMA0_CLKSEL          at 16#1008# range 0 .. 31;
      TIMA0_PDBGCTL         at 16#1018# range 0 .. 31;
      TIMA0_INT_EVENT       at 16#1020# range 0 .. 1055;
      TIMA0_EVT_MODE        at 16#10E0# range 0 .. 31;
      TIMA0_DESC            at 16#10FC# range 0 .. 31;
      TIMA0_COMMONREGS[%s]  at 16#1100# range 0 .. 319;
      TIMA0_COUNTERREGS[%s] at 16#1800# range 0 .. 1727;
   end record;

   --  PERIPHERALREGION
   TIMA0_Periph : aliased TIMA0_Peripheral
     with Import, Address => TIMA0_Base;

end MSPMC1104_SVD.TIMA;
