pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.GPIOA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type GPIOA_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for GPIOA_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subsciber Port 0
   type GPIOA_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : GPIOA_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.GPIOA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type GPIOA_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for GPIOA_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type GPIOA_FSUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : GPIOA_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.GPIOA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type GPIOA_FPUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for GPIOA_FPUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 0
   type GPIOA_FPUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : GPIOA_FPUB_0_CHANID_Field :=
                       MSPMC1104_SVD.GPIOA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FPUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type GPIOA_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for GPIOA_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 1
   type GPIOA_FPUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : GPIOA_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.GPIOA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------------------------------
   -- GPIOA_GPRCM[%s] cluster's Registers --
   -----------------------------------------

   --  Enable the power
   type GPIOA_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for GPIOA_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type GPIOA_PWREN_GPIOA_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : GPIOA_PWREN_ENABLE_Field := MSPMC1104_SVD.GPIOA.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PWREN_GPIOA_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type GPIOA_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for GPIOA_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type GPIOA_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for GPIOA_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type GPIOA_RSTCTL_GPIOA_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : GPIOA_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.GPIOA.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : GPIOA_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.GPIOA.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_RSTCTL_GPIOA_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type GPIOA_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for GPIOA_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type GPIOA_STAT_GPIOA_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : GPIOA_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_STAT_GPIOA_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type GPIOA_GPRCM[%s]_Cluster is record
      --  Power enable
      GPIOA_PWREN  : aliased GPIOA_PWREN_GPIOA_GPRCM[%s]_Register;
      --  Reset Control
      GPIOA_RSTCTL : aliased GPIOA_RSTCTL_GPIOA_GPRCM[%s]_Register;
      --  Status Register
      GPIOA_STAT   : aliased GPIOA_STAT_GPIOA_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for GPIOA_GPRCM[%s]_Cluster use record
      GPIOA_PWREN  at 16#0# range 0 .. 31;
      GPIOA_RSTCTL at 16#4# range 0 .. 31;
      GPIOA_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Unlocks the functionality of [RUN_STOP] to override the automatic
   --  peripheral clock request
   type GPIOA_CLKOVR_OVERRIDE_Field is
     (--  Override disabled
      DISABLED,
      --  Override enabled
      ENABLED)
     with Size => 1;
   for GPIOA_CLKOVR_OVERRIDE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  If [OVERRIDE] is enabled, this register is used to manually control the
   --  peripheral's clock request to the system
   type GPIOA_CLKOVR_RUN_STOP_Field is
     (--  Run/ungate functional clock
      RUN,
      --  Stop/gate functional clock
      STOP)
     with Size => 1;
   for GPIOA_CLKOVR_RUN_STOP_Field use
     (RUN => 0,
      STOP => 1);

   --  Clock Override
   type GPIOA_CLKOVR_Register is record
      --  Unlocks the functionality of [RUN_STOP] to override the automatic
      --  peripheral clock request
      OVERRIDE      : GPIOA_CLKOVR_OVERRIDE_Field :=
                       MSPMC1104_SVD.GPIOA.DISABLED;
      --  If [OVERRIDE] is enabled, this register is used to manually control
      --  the peripheral's clock request to the system
      RUN_STOP      : GPIOA_CLKOVR_RUN_STOP_Field := MSPMC1104_SVD.GPIOA.RUN;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_CLKOVR_Register use record
      OVERRIDE      at 0 range 0 .. 0;
      RUN_STOP      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Free run control
   type GPIOA_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for GPIOA_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Peripheral Debug Control
   type GPIOA_PDBGCTL_Register is record
      --  Free run control
      FREE          : GPIOA_PDBGCTL_FREE_Field := MSPMC1104_SVD.GPIOA.RUN;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------------------------
   -- GPIOA_INT_EVENT0[%s] cluster's Registers --
   ----------------------------------------------

   --  Interrupt index status
   type GPIOA_INT_EVENT0_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  DIO0 interrupt
      DIO0,
      --  DIO1 interrupt
      DIO1,
      --  DIO2 interrupt
      DIO2,
      --  DIO3 interrupt
      DIO3,
      --  DIO4 interrupt
      DIO4,
      --  DIO5 interrupt
      DIO5,
      --  DIO6 interrupt
      DIO6,
      --  DIO7 interrupt
      DIO7,
      --  DIO8 interrupt
      DIO8,
      --  DIO9 interrupt
      DIO9,
      --  DIO10 interrupt
      DIO10,
      --  DIO11 interrupt
      DIO11,
      --  DIO12 interrupt
      DIO12,
      --  DIO13 interrupt
      DIO13,
      --  DIO14 interrupt
      DIO14,
      --  DIO15 interrupt
      DIO15,
      --  DIO16 interrupt
      DIO16,
      --  DIO17 interrupt
      DIO17,
      --  DIO18 interrupt
      DIO18,
      --  DIO19 interrupt
      DIO19,
      --  DIO20 interrupt
      DIO20,
      --  DIO21 interrupt
      DIO21,
      --  DIO22 interrupt
      DIO22,
      --  DIO23 interrupt
      DIO23,
      --  DIO24 interrupt
      DIO24,
      --  DIO25 interrupt
      DIO25,
      --  DIO26 interrupt
      DIO26,
      --  DIO27 interrupt
      DIO27,
      --  DIO28 interrupt
      DIO28,
      --  DIO29 interrupt
      DIO29,
      --  DIO30 interrupt
      DIO30,
      --  DIO31 interrupt
      DIO31)
     with Size => 8;
   for GPIOA_INT_EVENT0_IIDX_STAT_Field use
     (NO_INTR => 0,
      DIO0 => 1,
      DIO1 => 2,
      DIO2 => 3,
      DIO3 => 4,
      DIO4 => 5,
      DIO5 => 6,
      DIO6 => 7,
      DIO7 => 8,
      DIO8 => 9,
      DIO9 => 10,
      DIO10 => 11,
      DIO11 => 12,
      DIO12 => 13,
      DIO13 => 14,
      DIO14 => 15,
      DIO15 => 16,
      DIO16 => 17,
      DIO17 => 18,
      DIO18 => 19,
      DIO19 => 20,
      DIO20 => 21,
      DIO21 => 22,
      DIO22 => 23,
      DIO23 => 24,
      DIO24 => 25,
      DIO25 => 26,
      DIO26 => 27,
      DIO27 => 28,
      DIO28 => 29,
      DIO29 => 30,
      DIO30 => 31,
      DIO31 => 32);

   --  Interrupt index
   type GPIOA_INT_EVENT0_IIDX_GPIOA_INT_EVENT0[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT          : GPIOA_INT_EVENT0_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_IIDX_GPIOA_INT_EVENT0[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DIO0 event mask
   type GPIOA_INT_EVENT0_IMASK_DIO0_Field is
     (--  Event is masked
      CLR,
      --  Event is unmasked
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_IMASK_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_DIO array
   type GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_DIO_Field_Array is array (0 .. 31)
     of GPIOA_INT_EVENT0_IMASK_DIO0_Field
     with Component_Size => 1, Size => 32;

   --  Interrupt mask
   type GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT0_RIS_DIO0_Field is
     (--  DIO0 event did not occur
      CLR,
      --  DIO0 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT0_RIS_DIO1_Field is
     (--  DIO1 event did not occur
      CLR,
      --  DIO1 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO1_Field use
     (CLR => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT0_RIS_DIO2_Field is
     (--  DIO2 event did not occur
      CLR,
      --  DIO2 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO2_Field use
     (CLR => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT0_RIS_DIO3_Field is
     (--  DIO3 event did not occur
      CLR,
      --  DIO3 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO3_Field use
     (CLR => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT0_RIS_DIO4_Field is
     (--  DIO4 event did not occur
      CLR,
      --  DIO4 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO4_Field use
     (CLR => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT0_RIS_DIO5_Field is
     (--  DIO5 event did not occur
      CLR,
      --  DIO5 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO5_Field use
     (CLR => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT0_RIS_DIO6_Field is
     (--  DIO6 event did not occur
      CLR,
      --  DIO6 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO6_Field use
     (CLR => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT0_RIS_DIO7_Field is
     (--  DIO7 event did not occur
      CLR,
      --  DIO7 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO7_Field use
     (CLR => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT0_RIS_DIO8_Field is
     (--  DIO8 event did not occur
      CLR,
      --  DIO8 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO8_Field use
     (CLR => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT0_RIS_DIO9_Field is
     (--  DIO9 event did not occur
      CLR,
      --  DIO9 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO9_Field use
     (CLR => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT0_RIS_DIO10_Field is
     (--  DIO10 event did not occur
      CLR,
      --  DIO10 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO10_Field use
     (CLR => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT0_RIS_DIO11_Field is
     (--  DIO11 event did not occur
      CLR,
      --  DIO11 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO11_Field use
     (CLR => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT0_RIS_DIO12_Field is
     (--  DIO12 event did not occur
      CLR,
      --  DIO12 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO12_Field use
     (CLR => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT0_RIS_DIO13_Field is
     (--  DIO13 event did not occur
      CLR,
      --  DIO13 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO13_Field use
     (CLR => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT0_RIS_DIO14_Field is
     (--  DIO14 event did not occur
      CLR,
      --  DIO14 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO14_Field use
     (CLR => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT0_RIS_DIO15_Field is
     (--  DIO15 event did not occur
      CLR,
      --  DIO15 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO15_Field use
     (CLR => 0,
      SET => 1);

   --  DIO16 event
   type GPIOA_INT_EVENT0_RIS_DIO16_Field is
     (--  DIO16 event did not occur
      CLR,
      --  DIO16 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO16_Field use
     (CLR => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT0_RIS_DIO17_Field is
     (--  DIO17 event did not occur
      CLR,
      --  DIO17 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO17_Field use
     (CLR => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT0_RIS_DIO18_Field is
     (--  DIO18 event did not occur
      CLR,
      --  DIO18 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO18_Field use
     (CLR => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT0_RIS_DIO19_Field is
     (--  DIO19 event did not occur
      CLR,
      --  DIO19 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO19_Field use
     (CLR => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT0_RIS_DIO20_Field is
     (--  DIO20 event did not occur
      CLR,
      --  DIO20 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO20_Field use
     (CLR => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT0_RIS_DIO21_Field is
     (--  DIO21 event did not occur
      CLR,
      --  DIO21 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO21_Field use
     (CLR => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT0_RIS_DIO22_Field is
     (--  DIO22 event did not occur
      CLR,
      --  DIO22 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO22_Field use
     (CLR => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT0_RIS_DIO23_Field is
     (--  DIO23 event did not occur
      CLR,
      --  DIO23 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO23_Field use
     (CLR => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT0_RIS_DIO24_Field is
     (--  DIO24 event did not occur
      CLR,
      --  DIO24 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO24_Field use
     (CLR => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT0_RIS_DIO25_Field is
     (--  DIO25 event did not occur
      CLR,
      --  DIO25 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO25_Field use
     (CLR => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT0_RIS_DIO26_Field is
     (--  DIO26 event did not occur
      CLR,
      --  DIO26 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO26_Field use
     (CLR => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT0_RIS_DIO27_Field is
     (--  DIO27 event did not occur
      CLR,
      --  DIO27 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO27_Field use
     (CLR => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT0_RIS_DIO28_Field is
     (--  DIO28 event did not occur
      CLR,
      --  DIO28 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO28_Field use
     (CLR => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT0_RIS_DIO29_Field is
     (--  DIO29 event did not occur
      CLR,
      --  DIO29 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO29_Field use
     (CLR => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT0_RIS_DIO30_Field is
     (--  DIO30 event did not occur
      CLR,
      --  DIO30 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO30_Field use
     (CLR => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT0_RIS_DIO31_Field is
     (--  DIO31 event did not occur
      CLR,
      --  DIO31 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_RIS_DIO31_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type GPIOA_INT_EVENT0_RIS_GPIOA_INT_EVENT0[%s]_Register is record
      --  Read-only. DIO0 event
      DIO0  : GPIOA_INT_EVENT0_RIS_DIO0_Field;
      --  Read-only. DIO1 event
      DIO1  : GPIOA_INT_EVENT0_RIS_DIO1_Field;
      --  Read-only. DIO2 event
      DIO2  : GPIOA_INT_EVENT0_RIS_DIO2_Field;
      --  Read-only. DIO3 event
      DIO3  : GPIOA_INT_EVENT0_RIS_DIO3_Field;
      --  Read-only. DIO4 event
      DIO4  : GPIOA_INT_EVENT0_RIS_DIO4_Field;
      --  Read-only. DIO5 event
      DIO5  : GPIOA_INT_EVENT0_RIS_DIO5_Field;
      --  Read-only. DIO6 event
      DIO6  : GPIOA_INT_EVENT0_RIS_DIO6_Field;
      --  Read-only. DIO7 event
      DIO7  : GPIOA_INT_EVENT0_RIS_DIO7_Field;
      --  Read-only. DIO8 event
      DIO8  : GPIOA_INT_EVENT0_RIS_DIO8_Field;
      --  Read-only. DIO9 event
      DIO9  : GPIOA_INT_EVENT0_RIS_DIO9_Field;
      --  Read-only. DIO10 event
      DIO10 : GPIOA_INT_EVENT0_RIS_DIO10_Field;
      --  Read-only. DIO11 event
      DIO11 : GPIOA_INT_EVENT0_RIS_DIO11_Field;
      --  Read-only. DIO12 event
      DIO12 : GPIOA_INT_EVENT0_RIS_DIO12_Field;
      --  Read-only. DIO13 event
      DIO13 : GPIOA_INT_EVENT0_RIS_DIO13_Field;
      --  Read-only. DIO14 event
      DIO14 : GPIOA_INT_EVENT0_RIS_DIO14_Field;
      --  Read-only. DIO15 event
      DIO15 : GPIOA_INT_EVENT0_RIS_DIO15_Field;
      --  Read-only. DIO16 event
      DIO16 : GPIOA_INT_EVENT0_RIS_DIO16_Field;
      --  Read-only. DIO17 event
      DIO17 : GPIOA_INT_EVENT0_RIS_DIO17_Field;
      --  Read-only. DIO18 event
      DIO18 : GPIOA_INT_EVENT0_RIS_DIO18_Field;
      --  Read-only. DIO19 event
      DIO19 : GPIOA_INT_EVENT0_RIS_DIO19_Field;
      --  Read-only. DIO20 event
      DIO20 : GPIOA_INT_EVENT0_RIS_DIO20_Field;
      --  Read-only. DIO21 event
      DIO21 : GPIOA_INT_EVENT0_RIS_DIO21_Field;
      --  Read-only. DIO22 event
      DIO22 : GPIOA_INT_EVENT0_RIS_DIO22_Field;
      --  Read-only. DIO23 event
      DIO23 : GPIOA_INT_EVENT0_RIS_DIO23_Field;
      --  Read-only. DIO24 event
      DIO24 : GPIOA_INT_EVENT0_RIS_DIO24_Field;
      --  Read-only. DIO25 event
      DIO25 : GPIOA_INT_EVENT0_RIS_DIO25_Field;
      --  Read-only. DIO26 event
      DIO26 : GPIOA_INT_EVENT0_RIS_DIO26_Field;
      --  Read-only. DIO27 event
      DIO27 : GPIOA_INT_EVENT0_RIS_DIO27_Field;
      --  Read-only. DIO28 event
      DIO28 : GPIOA_INT_EVENT0_RIS_DIO28_Field;
      --  Read-only. DIO29 event
      DIO29 : GPIOA_INT_EVENT0_RIS_DIO29_Field;
      --  Read-only. DIO30 event
      DIO30 : GPIOA_INT_EVENT0_RIS_DIO30_Field;
      --  Read-only. DIO31 event
      DIO31 : GPIOA_INT_EVENT0_RIS_DIO31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_RIS_GPIOA_INT_EVENT0[%s]_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT0_MIS_DIO0_Field is
     (--  DIO0 event did not occur
      CLR,
      --  DIO0 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT0_MIS_DIO1_Field is
     (--  DIO1 event did not occur
      CLR,
      --  DIO1 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO1_Field use
     (CLR => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT0_MIS_DIO2_Field is
     (--  DIO2 event did not occur
      CLR,
      --  DIO2 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO2_Field use
     (CLR => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT0_MIS_DIO3_Field is
     (--  DIO3 event did not occur
      CLR,
      --  DIO3 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO3_Field use
     (CLR => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT0_MIS_DIO4_Field is
     (--  DIO4 event did not occur
      CLR,
      --  DIO4 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO4_Field use
     (CLR => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT0_MIS_DIO5_Field is
     (--  DIO5 event did not occur
      CLR,
      --  DIO5 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO5_Field use
     (CLR => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT0_MIS_DIO6_Field is
     (--  DIO6 event did not occur
      CLR,
      --  DIO6 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO6_Field use
     (CLR => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT0_MIS_DIO7_Field is
     (--  DIO7 event did not occur
      CLR,
      --  DIO7 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO7_Field use
     (CLR => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT0_MIS_DIO8_Field is
     (--  DIO8 event did not occur
      CLR,
      --  DIO8 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO8_Field use
     (CLR => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT0_MIS_DIO9_Field is
     (--  DIO9 event did not occur
      CLR,
      --  DIO9 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO9_Field use
     (CLR => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT0_MIS_DIO10_Field is
     (--  DIO10 event did not occur
      CLR,
      --  DIO10 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO10_Field use
     (CLR => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT0_MIS_DIO11_Field is
     (--  DIO11 event did not occur
      CLR,
      --  DIO11 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO11_Field use
     (CLR => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT0_MIS_DIO12_Field is
     (--  DIO12 event did not occur
      CLR,
      --  DIO12 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO12_Field use
     (CLR => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT0_MIS_DIO13_Field is
     (--  DIO13 event did not occur
      CLR,
      --  DIO13 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO13_Field use
     (CLR => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT0_MIS_DIO14_Field is
     (--  DIO14 event did not occur
      CLR,
      --  DIO14 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO14_Field use
     (CLR => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT0_MIS_DIO15_Field is
     (--  DIO15 event did not occur
      CLR,
      --  DIO15 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO15_Field use
     (CLR => 0,
      SET => 1);

   --  DIO16 event
   type GPIOA_INT_EVENT0_MIS_DIO16_Field is
     (--  DIO16 event did not occur
      CLR,
      --  DIO16 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO16_Field use
     (CLR => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT0_MIS_DIO17_Field is
     (--  DIO17 event did not occur
      CLR,
      --  DIO17 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO17_Field use
     (CLR => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT0_MIS_DIO18_Field is
     (--  DIO18 event did not occur
      CLR,
      --  DIO18 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO18_Field use
     (CLR => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT0_MIS_DIO19_Field is
     (--  DIO19 event did not occur
      CLR,
      --  DIO19 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO19_Field use
     (CLR => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT0_MIS_DIO20_Field is
     (--  DIO20 event did not occur
      CLR,
      --  DIO20 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO20_Field use
     (CLR => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT0_MIS_DIO21_Field is
     (--  DIO21 event did not occur
      CLR,
      --  DIO21 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO21_Field use
     (CLR => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT0_MIS_DIO22_Field is
     (--  DIO22 event did not occur
      CLR,
      --  DIO22 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO22_Field use
     (CLR => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT0_MIS_DIO23_Field is
     (--  DIO23 event did not occur
      CLR,
      --  DIO23 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO23_Field use
     (CLR => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT0_MIS_DIO24_Field is
     (--  DIO24 event did not occur
      CLR,
      --  DIO24 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO24_Field use
     (CLR => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT0_MIS_DIO25_Field is
     (--  DIO25 event did not occur
      CLR,
      --  DIO25 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO25_Field use
     (CLR => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT0_MIS_DIO26_Field is
     (--  DIO26 event did not occur
      CLR,
      --  DIO26 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO26_Field use
     (CLR => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT0_MIS_DIO27_Field is
     (--  DIO27 event did not occur
      CLR,
      --  DIO27 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO27_Field use
     (CLR => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT0_MIS_DIO28_Field is
     (--  DIO28 event did not occur
      CLR,
      --  DIO28 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO28_Field use
     (CLR => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT0_MIS_DIO29_Field is
     (--  DIO29 event did not occur
      CLR,
      --  DIO29 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO29_Field use
     (CLR => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT0_MIS_DIO30_Field is
     (--  DIO30 event did not occur
      CLR,
      --  DIO30 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO30_Field use
     (CLR => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT0_MIS_DIO31_Field is
     (--  DIO31 event did not occur
      CLR,
      --  DIO31 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_MIS_DIO31_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type GPIOA_INT_EVENT0_MIS_GPIOA_INT_EVENT0[%s]_Register is record
      --  Read-only. DIO0 event
      DIO0  : GPIOA_INT_EVENT0_MIS_DIO0_Field;
      --  Read-only. DIO1 event
      DIO1  : GPIOA_INT_EVENT0_MIS_DIO1_Field;
      --  Read-only. DIO2 event
      DIO2  : GPIOA_INT_EVENT0_MIS_DIO2_Field;
      --  Read-only. DIO3 event
      DIO3  : GPIOA_INT_EVENT0_MIS_DIO3_Field;
      --  Read-only. DIO4 event
      DIO4  : GPIOA_INT_EVENT0_MIS_DIO4_Field;
      --  Read-only. DIO5 event
      DIO5  : GPIOA_INT_EVENT0_MIS_DIO5_Field;
      --  Read-only. DIO6 event
      DIO6  : GPIOA_INT_EVENT0_MIS_DIO6_Field;
      --  Read-only. DIO7 event
      DIO7  : GPIOA_INT_EVENT0_MIS_DIO7_Field;
      --  Read-only. DIO8 event
      DIO8  : GPIOA_INT_EVENT0_MIS_DIO8_Field;
      --  Read-only. DIO9 event
      DIO9  : GPIOA_INT_EVENT0_MIS_DIO9_Field;
      --  Read-only. DIO10 event
      DIO10 : GPIOA_INT_EVENT0_MIS_DIO10_Field;
      --  Read-only. DIO11 event
      DIO11 : GPIOA_INT_EVENT0_MIS_DIO11_Field;
      --  Read-only. DIO12 event
      DIO12 : GPIOA_INT_EVENT0_MIS_DIO12_Field;
      --  Read-only. DIO13 event
      DIO13 : GPIOA_INT_EVENT0_MIS_DIO13_Field;
      --  Read-only. DIO14 event
      DIO14 : GPIOA_INT_EVENT0_MIS_DIO14_Field;
      --  Read-only. DIO15 event
      DIO15 : GPIOA_INT_EVENT0_MIS_DIO15_Field;
      --  Read-only. DIO16 event
      DIO16 : GPIOA_INT_EVENT0_MIS_DIO16_Field;
      --  Read-only. DIO17 event
      DIO17 : GPIOA_INT_EVENT0_MIS_DIO17_Field;
      --  Read-only. DIO18 event
      DIO18 : GPIOA_INT_EVENT0_MIS_DIO18_Field;
      --  Read-only. DIO19 event
      DIO19 : GPIOA_INT_EVENT0_MIS_DIO19_Field;
      --  Read-only. DIO20 event
      DIO20 : GPIOA_INT_EVENT0_MIS_DIO20_Field;
      --  Read-only. DIO21 event
      DIO21 : GPIOA_INT_EVENT0_MIS_DIO21_Field;
      --  Read-only. DIO22 event
      DIO22 : GPIOA_INT_EVENT0_MIS_DIO22_Field;
      --  Read-only. DIO23 event
      DIO23 : GPIOA_INT_EVENT0_MIS_DIO23_Field;
      --  Read-only. DIO24 event
      DIO24 : GPIOA_INT_EVENT0_MIS_DIO24_Field;
      --  Read-only. DIO25 event
      DIO25 : GPIOA_INT_EVENT0_MIS_DIO25_Field;
      --  Read-only. DIO26 event
      DIO26 : GPIOA_INT_EVENT0_MIS_DIO26_Field;
      --  Read-only. DIO27 event
      DIO27 : GPIOA_INT_EVENT0_MIS_DIO27_Field;
      --  Read-only. DIO28 event
      DIO28 : GPIOA_INT_EVENT0_MIS_DIO28_Field;
      --  Read-only. DIO29 event
      DIO29 : GPIOA_INT_EVENT0_MIS_DIO29_Field;
      --  Read-only. DIO30 event
      DIO30 : GPIOA_INT_EVENT0_MIS_DIO30_Field;
      --  Read-only. DIO31 event
      DIO31 : GPIOA_INT_EVENT0_MIS_DIO31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_MIS_GPIOA_INT_EVENT0[%s]_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT0_ISET_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO0 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT0_ISET_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO1 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO1_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT0_ISET_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO2 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO2_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT0_ISET_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO3 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO3_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT0_ISET_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO4 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT0_ISET_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO5 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO5_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT0_ISET_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO6 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO6_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT0_ISET_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO7 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO7_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT0_ISET_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO8 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO8_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT0_ISET_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO9 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO9_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT0_ISET_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO10 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO10_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT0_ISET_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO11 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO11_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT0_ISET_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO12 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO12_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT0_ISET_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO13 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO13_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT0_ISET_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO14 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO14_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT0_ISET_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO15 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO15_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO16 event
   type GPIOA_INT_EVENT0_ISET_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO16 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO16_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT0_ISET_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO17 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO17_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT0_ISET_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO18 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO18_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT0_ISET_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO19 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO19_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT0_ISET_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO20 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO20_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT0_ISET_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO21 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO21_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT0_ISET_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO22 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO22_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT0_ISET_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO23 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO23_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT0_ISET_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO24 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO24_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT0_ISET_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO25 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO25_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT0_ISET_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO26 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO26_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT0_ISET_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO27 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO27_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT0_ISET_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO28 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO28_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT0_ISET_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO29 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO29_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT0_ISET_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO30 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO30_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT0_ISET_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO31 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT0_ISET_DIO31_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type GPIOA_INT_EVENT0_ISET_GPIOA_INT_EVENT0[%s]_Register is record
      --  Write-only. DIO0 event
      DIO0  : GPIOA_INT_EVENT0_ISET_DIO0_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO1 event
      DIO1  : GPIOA_INT_EVENT0_ISET_DIO1_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO2 event
      DIO2  : GPIOA_INT_EVENT0_ISET_DIO2_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO3 event
      DIO3  : GPIOA_INT_EVENT0_ISET_DIO3_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO4 event
      DIO4  : GPIOA_INT_EVENT0_ISET_DIO4_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO5 event
      DIO5  : GPIOA_INT_EVENT0_ISET_DIO5_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO6 event
      DIO6  : GPIOA_INT_EVENT0_ISET_DIO6_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO7 event
      DIO7  : GPIOA_INT_EVENT0_ISET_DIO7_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO8 event
      DIO8  : GPIOA_INT_EVENT0_ISET_DIO8_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO9 event
      DIO9  : GPIOA_INT_EVENT0_ISET_DIO9_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO10 event
      DIO10 : GPIOA_INT_EVENT0_ISET_DIO10_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO11 event
      DIO11 : GPIOA_INT_EVENT0_ISET_DIO11_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO12 event
      DIO12 : GPIOA_INT_EVENT0_ISET_DIO12_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO13 event
      DIO13 : GPIOA_INT_EVENT0_ISET_DIO13_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO14 event
      DIO14 : GPIOA_INT_EVENT0_ISET_DIO14_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO15 event
      DIO15 : GPIOA_INT_EVENT0_ISET_DIO15_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO16 event
      DIO16 : GPIOA_INT_EVENT0_ISET_DIO16_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO17 event
      DIO17 : GPIOA_INT_EVENT0_ISET_DIO17_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO18 event
      DIO18 : GPIOA_INT_EVENT0_ISET_DIO18_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO19 event
      DIO19 : GPIOA_INT_EVENT0_ISET_DIO19_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO20 event
      DIO20 : GPIOA_INT_EVENT0_ISET_DIO20_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO21 event
      DIO21 : GPIOA_INT_EVENT0_ISET_DIO21_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO22 event
      DIO22 : GPIOA_INT_EVENT0_ISET_DIO22_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO23 event
      DIO23 : GPIOA_INT_EVENT0_ISET_DIO23_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO24 event
      DIO24 : GPIOA_INT_EVENT0_ISET_DIO24_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO25 event
      DIO25 : GPIOA_INT_EVENT0_ISET_DIO25_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO26 event
      DIO26 : GPIOA_INT_EVENT0_ISET_DIO26_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO27 event
      DIO27 : GPIOA_INT_EVENT0_ISET_DIO27_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO28 event
      DIO28 : GPIOA_INT_EVENT0_ISET_DIO28_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO29 event
      DIO29 : GPIOA_INT_EVENT0_ISET_DIO29_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO30 event
      DIO30 : GPIOA_INT_EVENT0_ISET_DIO30_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO31 event
      DIO31 : GPIOA_INT_EVENT0_ISET_DIO31_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_ISET_GPIOA_INT_EVENT0[%s]_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT0_ICLR_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO0 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT0_ICLR_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO1 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO1_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT0_ICLR_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO2 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO2_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT0_ICLR_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO3 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO3_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT0_ICLR_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO4 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT0_ICLR_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO5 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO5_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT0_ICLR_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO6 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO6_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT0_ICLR_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO7 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO7_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT0_ICLR_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO8 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO8_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT0_ICLR_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO9 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO9_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT0_ICLR_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO10 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO10_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT0_ICLR_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO11 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO11_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT0_ICLR_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO12 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO12_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT0_ICLR_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO13 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO13_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT0_ICLR_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO14 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO14_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT0_ICLR_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO15 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO15_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO16 event
   type GPIOA_INT_EVENT0_ICLR_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO16 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO16_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT0_ICLR_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO17 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO17_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT0_ICLR_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO18 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO18_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT0_ICLR_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO19 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO19_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT0_ICLR_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO20 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO20_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT0_ICLR_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO21 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO21_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT0_ICLR_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO22 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO22_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT0_ICLR_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO23 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO23_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT0_ICLR_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO24 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO24_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT0_ICLR_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO25 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO25_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT0_ICLR_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO26 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO26_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT0_ICLR_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO27 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO27_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT0_ICLR_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO28 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO28_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT0_ICLR_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO29 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO29_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT0_ICLR_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO30 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO30_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT0_ICLR_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO31 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT0_ICLR_DIO31_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type GPIOA_INT_EVENT0_ICLR_GPIOA_INT_EVENT0[%s]_Register is record
      --  Write-only. DIO0 event
      DIO0  : GPIOA_INT_EVENT0_ICLR_DIO0_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO1 event
      DIO1  : GPIOA_INT_EVENT0_ICLR_DIO1_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO2 event
      DIO2  : GPIOA_INT_EVENT0_ICLR_DIO2_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO3 event
      DIO3  : GPIOA_INT_EVENT0_ICLR_DIO3_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO4 event
      DIO4  : GPIOA_INT_EVENT0_ICLR_DIO4_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO5 event
      DIO5  : GPIOA_INT_EVENT0_ICLR_DIO5_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO6 event
      DIO6  : GPIOA_INT_EVENT0_ICLR_DIO6_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO7 event
      DIO7  : GPIOA_INT_EVENT0_ICLR_DIO7_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO8 event
      DIO8  : GPIOA_INT_EVENT0_ICLR_DIO8_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO9 event
      DIO9  : GPIOA_INT_EVENT0_ICLR_DIO9_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO10 event
      DIO10 : GPIOA_INT_EVENT0_ICLR_DIO10_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO11 event
      DIO11 : GPIOA_INT_EVENT0_ICLR_DIO11_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO12 event
      DIO12 : GPIOA_INT_EVENT0_ICLR_DIO12_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO13 event
      DIO13 : GPIOA_INT_EVENT0_ICLR_DIO13_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO14 event
      DIO14 : GPIOA_INT_EVENT0_ICLR_DIO14_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO15 event
      DIO15 : GPIOA_INT_EVENT0_ICLR_DIO15_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO16 event
      DIO16 : GPIOA_INT_EVENT0_ICLR_DIO16_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO17 event
      DIO17 : GPIOA_INT_EVENT0_ICLR_DIO17_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO18 event
      DIO18 : GPIOA_INT_EVENT0_ICLR_DIO18_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO19 event
      DIO19 : GPIOA_INT_EVENT0_ICLR_DIO19_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO20 event
      DIO20 : GPIOA_INT_EVENT0_ICLR_DIO20_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO21 event
      DIO21 : GPIOA_INT_EVENT0_ICLR_DIO21_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO22 event
      DIO22 : GPIOA_INT_EVENT0_ICLR_DIO22_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO23 event
      DIO23 : GPIOA_INT_EVENT0_ICLR_DIO23_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO24 event
      DIO24 : GPIOA_INT_EVENT0_ICLR_DIO24_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO25 event
      DIO25 : GPIOA_INT_EVENT0_ICLR_DIO25_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO26 event
      DIO26 : GPIOA_INT_EVENT0_ICLR_DIO26_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO27 event
      DIO27 : GPIOA_INT_EVENT0_ICLR_DIO27_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO28 event
      DIO28 : GPIOA_INT_EVENT0_ICLR_DIO28_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO29 event
      DIO29 : GPIOA_INT_EVENT0_ICLR_DIO29_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO30 event
      DIO30 : GPIOA_INT_EVENT0_ICLR_DIO30_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO31 event
      DIO31 : GPIOA_INT_EVENT0_ICLR_DIO31_Field :=
               MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT0_ICLR_GPIOA_INT_EVENT0[%s]_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   type GPIOA_INT_EVENT0[%s]_Cluster is record
      --  Interrupt index
      GPIOA_INT_EVENT0_IIDX  : aliased GPIOA_INT_EVENT0_IIDX_GPIOA_INT_EVENT0[%s]_Register;
      --  Interrupt mask
      GPIOA_INT_EVENT0_IMASK : aliased GPIOA_INT_EVENT0_IMASK_GPIOA_INT_EVENT0[%s]_Register;
      --  Raw interrupt status
      GPIOA_INT_EVENT0_RIS   : aliased GPIOA_INT_EVENT0_RIS_GPIOA_INT_EVENT0[%s]_Register;
      --  Masked interrupt status
      GPIOA_INT_EVENT0_MIS   : aliased GPIOA_INT_EVENT0_MIS_GPIOA_INT_EVENT0[%s]_Register;
      --  Interrupt set
      GPIOA_INT_EVENT0_ISET  : aliased GPIOA_INT_EVENT0_ISET_GPIOA_INT_EVENT0[%s]_Register;
      --  Interrupt clear
      GPIOA_INT_EVENT0_ICLR  : aliased GPIOA_INT_EVENT0_ICLR_GPIOA_INT_EVENT0[%s]_Register;
   end record
     with Size => 352;

   for GPIOA_INT_EVENT0[%s]_Cluster use record
      GPIOA_INT_EVENT0_IIDX  at 16#0# range 0 .. 31;
      GPIOA_INT_EVENT0_IMASK at 16#8# range 0 .. 31;
      GPIOA_INT_EVENT0_RIS   at 16#10# range 0 .. 31;
      GPIOA_INT_EVENT0_MIS   at 16#18# range 0 .. 31;
      GPIOA_INT_EVENT0_ISET  at 16#20# range 0 .. 31;
      GPIOA_INT_EVENT0_ICLR  at 16#28# range 0 .. 31;
   end record;

   ----------------------------------------------
   -- GPIOA_INT_EVENT1[%s] cluster's Registers --
   ----------------------------------------------

   --  Interrupt index status
   type GPIOA_INT_EVENT1_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  DIO0 interrupt
      DIO0,
      --  DIO1 interrupt
      DIO1,
      --  DIO2 interrupt
      DIO2,
      --  DIO3 interrupt
      DIO3,
      --  DIO4 interrupt
      DIO4,
      --  DIO5 interrupt
      DIO5,
      --  DIO6 interrupt
      DIO6,
      --  DIO7 interrupt
      DIO7,
      --  DIO8 interrupt
      DIO8,
      --  DIO9 interrupt
      DIO9,
      --  DIO10 interrupt
      DIO10,
      --  DIO11 interrupt
      DIO11,
      --  DIO12 interrupt
      DIO12,
      --  DIO13 interrupt
      DIO13,
      --  DIO14 interrupt
      DIO14,
      --  DIO15 interrupt
      DIO15)
     with Size => 8;
   for GPIOA_INT_EVENT1_IIDX_STAT_Field use
     (NO_INTR => 0,
      DIO0 => 1,
      DIO1 => 2,
      DIO2 => 3,
      DIO3 => 4,
      DIO4 => 5,
      DIO5 => 6,
      DIO6 => 7,
      DIO7 => 8,
      DIO8 => 9,
      DIO9 => 10,
      DIO10 => 11,
      DIO11 => 12,
      DIO12 => 13,
      DIO13 => 14,
      DIO14 => 15,
      DIO15 => 16);

   --  Interrupt index
   type GPIOA_INT_EVENT1_IIDX_GPIOA_INT_EVENT1[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT          : GPIOA_INT_EVENT1_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_IIDX_GPIOA_INT_EVENT1[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DIO0 event mask
   type GPIOA_INT_EVENT1_IMASK_DIO0_Field is
     (--  Event is masked
      CLR,
      --  Event is unmasked
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_IMASK_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO array
   type GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO_Field_Array is array (0 .. 15)
     of GPIOA_INT_EVENT1_IMASK_DIO0_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO
   type GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt16;
         when True =>
            --  DIO as an array
            Arr : GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt mask
   type GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_Register is record
      --  DIO0 event mask
      DIO            : GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_DIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_Register use record
      DIO            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT1_RIS_DIO0_Field is
     (--  DIO0 event did not occur
      CLR,
      --  DIO0 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT1_RIS_DIO1_Field is
     (--  DIO1 event did not occur
      CLR,
      --  DIO1 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO1_Field use
     (CLR => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT1_RIS_DIO2_Field is
     (--  DIO2 event did not occur
      CLR,
      --  DIO2 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO2_Field use
     (CLR => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT1_RIS_DIO3_Field is
     (--  DIO3 event did not occur
      CLR,
      --  DIO3 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO3_Field use
     (CLR => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT1_RIS_DIO4_Field is
     (--  DIO4 event did not occur
      CLR,
      --  DIO4 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO4_Field use
     (CLR => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT1_RIS_DIO5_Field is
     (--  DIO5 event did not occur
      CLR,
      --  DIO5 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO5_Field use
     (CLR => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT1_RIS_DIO6_Field is
     (--  DIO6 event did not occur
      CLR,
      --  DIO6 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO6_Field use
     (CLR => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT1_RIS_DIO7_Field is
     (--  DIO7 event did not occur
      CLR,
      --  DIO7 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO7_Field use
     (CLR => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT1_RIS_DIO8_Field is
     (--  DIO8 event did not occur
      CLR,
      --  DIO8 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO8_Field use
     (CLR => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT1_RIS_DIO9_Field is
     (--  DIO9 event did not occur
      CLR,
      --  DIO9 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO9_Field use
     (CLR => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT1_RIS_DIO10_Field is
     (--  DIO10 event did not occur
      CLR,
      --  DIO10 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO10_Field use
     (CLR => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT1_RIS_DIO11_Field is
     (--  DIO11 event did not occur
      CLR,
      --  DIO11 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO11_Field use
     (CLR => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT1_RIS_DIO12_Field is
     (--  DIO12 event did not occur
      CLR,
      --  DIO12 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO12_Field use
     (CLR => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT1_RIS_DIO13_Field is
     (--  DIO13 event did not occur
      CLR,
      --  DIO13 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO13_Field use
     (CLR => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT1_RIS_DIO14_Field is
     (--  DIO14 event did not occur
      CLR,
      --  DIO14 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO14_Field use
     (CLR => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT1_RIS_DIO15_Field is
     (--  DIO15 event did not occur
      CLR,
      --  DIO15 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_RIS_DIO15_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type GPIOA_INT_EVENT1_RIS_GPIOA_INT_EVENT1[%s]_Register is record
      --  Read-only. DIO0 event
      DIO0           : GPIOA_INT_EVENT1_RIS_DIO0_Field;
      --  Read-only. DIO1 event
      DIO1           : GPIOA_INT_EVENT1_RIS_DIO1_Field;
      --  Read-only. DIO2 event
      DIO2           : GPIOA_INT_EVENT1_RIS_DIO2_Field;
      --  Read-only. DIO3 event
      DIO3           : GPIOA_INT_EVENT1_RIS_DIO3_Field;
      --  Read-only. DIO4 event
      DIO4           : GPIOA_INT_EVENT1_RIS_DIO4_Field;
      --  Read-only. DIO5 event
      DIO5           : GPIOA_INT_EVENT1_RIS_DIO5_Field;
      --  Read-only. DIO6 event
      DIO6           : GPIOA_INT_EVENT1_RIS_DIO6_Field;
      --  Read-only. DIO7 event
      DIO7           : GPIOA_INT_EVENT1_RIS_DIO7_Field;
      --  Read-only. DIO8 event
      DIO8           : GPIOA_INT_EVENT1_RIS_DIO8_Field;
      --  Read-only. DIO9 event
      DIO9           : GPIOA_INT_EVENT1_RIS_DIO9_Field;
      --  Read-only. DIO10 event
      DIO10          : GPIOA_INT_EVENT1_RIS_DIO10_Field;
      --  Read-only. DIO11 event
      DIO11          : GPIOA_INT_EVENT1_RIS_DIO11_Field;
      --  Read-only. DIO12 event
      DIO12          : GPIOA_INT_EVENT1_RIS_DIO12_Field;
      --  Read-only. DIO13 event
      DIO13          : GPIOA_INT_EVENT1_RIS_DIO13_Field;
      --  Read-only. DIO14 event
      DIO14          : GPIOA_INT_EVENT1_RIS_DIO14_Field;
      --  Read-only. DIO15 event
      DIO15          : GPIOA_INT_EVENT1_RIS_DIO15_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_RIS_GPIOA_INT_EVENT1[%s]_Register use record
      DIO0           at 0 range 0 .. 0;
      DIO1           at 0 range 1 .. 1;
      DIO2           at 0 range 2 .. 2;
      DIO3           at 0 range 3 .. 3;
      DIO4           at 0 range 4 .. 4;
      DIO5           at 0 range 5 .. 5;
      DIO6           at 0 range 6 .. 6;
      DIO7           at 0 range 7 .. 7;
      DIO8           at 0 range 8 .. 8;
      DIO9           at 0 range 9 .. 9;
      DIO10          at 0 range 10 .. 10;
      DIO11          at 0 range 11 .. 11;
      DIO12          at 0 range 12 .. 12;
      DIO13          at 0 range 13 .. 13;
      DIO14          at 0 range 14 .. 14;
      DIO15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT1_MIS_DIO0_Field is
     (--  DIO0 event did not occur
      CLR,
      --  DIO0 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO0_Field use
     (CLR => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT1_MIS_DIO1_Field is
     (--  DIO1 event did not occur
      CLR,
      --  DIO1 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO1_Field use
     (CLR => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT1_MIS_DIO2_Field is
     (--  DIO2 event did not occur
      CLR,
      --  DIO2 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO2_Field use
     (CLR => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT1_MIS_DIO3_Field is
     (--  DIO3 event did not occur
      CLR,
      --  DIO3 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO3_Field use
     (CLR => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT1_MIS_DIO4_Field is
     (--  DIO4 event did not occur
      CLR,
      --  DIO4 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO4_Field use
     (CLR => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT1_MIS_DIO5_Field is
     (--  DIO5 event did not occur
      CLR,
      --  DIO5 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO5_Field use
     (CLR => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT1_MIS_DIO6_Field is
     (--  DIO6 event did not occur
      CLR,
      --  DIO6 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO6_Field use
     (CLR => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT1_MIS_DIO7_Field is
     (--  DIO7 event did not occur
      CLR,
      --  DIO7 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO7_Field use
     (CLR => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT1_MIS_DIO8_Field is
     (--  DIO8 event did not occur
      CLR,
      --  DIO8 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO8_Field use
     (CLR => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT1_MIS_DIO9_Field is
     (--  DIO9 event did not occur
      CLR,
      --  DIO9 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO9_Field use
     (CLR => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT1_MIS_DIO10_Field is
     (--  DIO10 event did not occur
      CLR,
      --  DIO10 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO10_Field use
     (CLR => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT1_MIS_DIO11_Field is
     (--  DIO11 event did not occur
      CLR,
      --  DIO11 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO11_Field use
     (CLR => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT1_MIS_DIO12_Field is
     (--  DIO12 event did not occur
      CLR,
      --  DIO12 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO12_Field use
     (CLR => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT1_MIS_DIO13_Field is
     (--  DIO13 event did not occur
      CLR,
      --  DIO13 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO13_Field use
     (CLR => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT1_MIS_DIO14_Field is
     (--  DIO14 event did not occur
      CLR,
      --  DIO14 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO14_Field use
     (CLR => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT1_MIS_DIO15_Field is
     (--  DIO15 event did not occur
      CLR,
      --  DIO15 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_MIS_DIO15_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type GPIOA_INT_EVENT1_MIS_GPIOA_INT_EVENT1[%s]_Register is record
      --  Read-only. DIO0 event
      DIO0           : GPIOA_INT_EVENT1_MIS_DIO0_Field;
      --  Read-only. DIO1 event
      DIO1           : GPIOA_INT_EVENT1_MIS_DIO1_Field;
      --  Read-only. DIO2 event
      DIO2           : GPIOA_INT_EVENT1_MIS_DIO2_Field;
      --  Read-only. DIO3 event
      DIO3           : GPIOA_INT_EVENT1_MIS_DIO3_Field;
      --  Read-only. DIO4 event
      DIO4           : GPIOA_INT_EVENT1_MIS_DIO4_Field;
      --  Read-only. DIO5 event
      DIO5           : GPIOA_INT_EVENT1_MIS_DIO5_Field;
      --  Read-only. DIO6 event
      DIO6           : GPIOA_INT_EVENT1_MIS_DIO6_Field;
      --  Read-only. DIO7 event
      DIO7           : GPIOA_INT_EVENT1_MIS_DIO7_Field;
      --  Read-only. DIO8 event
      DIO8           : GPIOA_INT_EVENT1_MIS_DIO8_Field;
      --  Read-only. DIO9 event
      DIO9           : GPIOA_INT_EVENT1_MIS_DIO9_Field;
      --  Read-only. DIO10 event
      DIO10          : GPIOA_INT_EVENT1_MIS_DIO10_Field;
      --  Read-only. DIO11 event
      DIO11          : GPIOA_INT_EVENT1_MIS_DIO11_Field;
      --  Read-only. DIO12 event
      DIO12          : GPIOA_INT_EVENT1_MIS_DIO12_Field;
      --  Read-only. DIO13 event
      DIO13          : GPIOA_INT_EVENT1_MIS_DIO13_Field;
      --  Read-only. DIO14 event
      DIO14          : GPIOA_INT_EVENT1_MIS_DIO14_Field;
      --  Read-only. DIO15 event
      DIO15          : GPIOA_INT_EVENT1_MIS_DIO15_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_MIS_GPIOA_INT_EVENT1[%s]_Register use record
      DIO0           at 0 range 0 .. 0;
      DIO1           at 0 range 1 .. 1;
      DIO2           at 0 range 2 .. 2;
      DIO3           at 0 range 3 .. 3;
      DIO4           at 0 range 4 .. 4;
      DIO5           at 0 range 5 .. 5;
      DIO6           at 0 range 6 .. 6;
      DIO7           at 0 range 7 .. 7;
      DIO8           at 0 range 8 .. 8;
      DIO9           at 0 range 9 .. 9;
      DIO10          at 0 range 10 .. 10;
      DIO11          at 0 range 11 .. 11;
      DIO12          at 0 range 12 .. 12;
      DIO13          at 0 range 13 .. 13;
      DIO14          at 0 range 14 .. 14;
      DIO15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT1_ISET_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO0 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT1_ISET_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO1 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO1_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT1_ISET_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO2 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO2_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT1_ISET_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO3 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO3_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT1_ISET_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO4 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT1_ISET_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO5 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO5_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT1_ISET_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO6 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO6_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT1_ISET_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO7 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO7_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT1_ISET_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO8 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO8_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT1_ISET_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO9 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO9_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT1_ISET_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO10 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO10_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT1_ISET_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO11 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO11_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT1_ISET_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO12 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO12_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT1_ISET_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO13 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO13_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT1_ISET_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO14 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO14_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT1_ISET_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO15 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT1_ISET_DIO15_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type GPIOA_INT_EVENT1_ISET_GPIOA_INT_EVENT1[%s]_Register is record
      --  Write-only. DIO0 event
      DIO0           : GPIOA_INT_EVENT1_ISET_DIO0_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO1 event
      DIO1           : GPIOA_INT_EVENT1_ISET_DIO1_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO2 event
      DIO2           : GPIOA_INT_EVENT1_ISET_DIO2_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO3 event
      DIO3           : GPIOA_INT_EVENT1_ISET_DIO3_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO4 event
      DIO4           : GPIOA_INT_EVENT1_ISET_DIO4_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO5 event
      DIO5           : GPIOA_INT_EVENT1_ISET_DIO5_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO6 event
      DIO6           : GPIOA_INT_EVENT1_ISET_DIO6_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO7 event
      DIO7           : GPIOA_INT_EVENT1_ISET_DIO7_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO8 event
      DIO8           : GPIOA_INT_EVENT1_ISET_DIO8_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO9 event
      DIO9           : GPIOA_INT_EVENT1_ISET_DIO9_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO10 event
      DIO10          : GPIOA_INT_EVENT1_ISET_DIO10_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO11 event
      DIO11          : GPIOA_INT_EVENT1_ISET_DIO11_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO12 event
      DIO12          : GPIOA_INT_EVENT1_ISET_DIO12_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO13 event
      DIO13          : GPIOA_INT_EVENT1_ISET_DIO13_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO14 event
      DIO14          : GPIOA_INT_EVENT1_ISET_DIO14_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO15 event
      DIO15          : GPIOA_INT_EVENT1_ISET_DIO15_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_ISET_GPIOA_INT_EVENT1[%s]_Register use record
      DIO0           at 0 range 0 .. 0;
      DIO1           at 0 range 1 .. 1;
      DIO2           at 0 range 2 .. 2;
      DIO3           at 0 range 3 .. 3;
      DIO4           at 0 range 4 .. 4;
      DIO5           at 0 range 5 .. 5;
      DIO6           at 0 range 6 .. 6;
      DIO7           at 0 range 7 .. 7;
      DIO8           at 0 range 8 .. 8;
      DIO9           at 0 range 9 .. 9;
      DIO10          at 0 range 10 .. 10;
      DIO11          at 0 range 11 .. 11;
      DIO12          at 0 range 12 .. 12;
      DIO13          at 0 range 13 .. 13;
      DIO14          at 0 range 14 .. 14;
      DIO15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DIO0 event
   type GPIOA_INT_EVENT1_ICLR_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO0 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO1 event
   type GPIOA_INT_EVENT1_ICLR_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO1 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO1_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO2 event
   type GPIOA_INT_EVENT1_ICLR_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO2 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO2_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO3 event
   type GPIOA_INT_EVENT1_ICLR_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO3 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO3_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO4 event
   type GPIOA_INT_EVENT1_ICLR_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO4 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO5 event
   type GPIOA_INT_EVENT1_ICLR_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO5 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO5_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO6 event
   type GPIOA_INT_EVENT1_ICLR_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO6 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO6_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO7 event
   type GPIOA_INT_EVENT1_ICLR_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO7 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO7_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO8 event
   type GPIOA_INT_EVENT1_ICLR_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO8 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO8_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO9 event
   type GPIOA_INT_EVENT1_ICLR_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO9 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO9_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO10 event
   type GPIOA_INT_EVENT1_ICLR_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO10 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO10_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO11 event
   type GPIOA_INT_EVENT1_ICLR_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO11 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO11_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO12 event
   type GPIOA_INT_EVENT1_ICLR_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO12 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO12_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO13 event
   type GPIOA_INT_EVENT1_ICLR_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO13 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO13_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO14 event
   type GPIOA_INT_EVENT1_ICLR_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO14 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO14_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO15 event
   type GPIOA_INT_EVENT1_ICLR_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO15 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT1_ICLR_DIO15_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type GPIOA_INT_EVENT1_ICLR_GPIOA_INT_EVENT1[%s]_Register is record
      --  Write-only. DIO0 event
      DIO0           : GPIOA_INT_EVENT1_ICLR_DIO0_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO1 event
      DIO1           : GPIOA_INT_EVENT1_ICLR_DIO1_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO2 event
      DIO2           : GPIOA_INT_EVENT1_ICLR_DIO2_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO3 event
      DIO3           : GPIOA_INT_EVENT1_ICLR_DIO3_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO4 event
      DIO4           : GPIOA_INT_EVENT1_ICLR_DIO4_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO5 event
      DIO5           : GPIOA_INT_EVENT1_ICLR_DIO5_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO6 event
      DIO6           : GPIOA_INT_EVENT1_ICLR_DIO6_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO7 event
      DIO7           : GPIOA_INT_EVENT1_ICLR_DIO7_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO8 event
      DIO8           : GPIOA_INT_EVENT1_ICLR_DIO8_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO9 event
      DIO9           : GPIOA_INT_EVENT1_ICLR_DIO9_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO10 event
      DIO10          : GPIOA_INT_EVENT1_ICLR_DIO10_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO11 event
      DIO11          : GPIOA_INT_EVENT1_ICLR_DIO11_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO12 event
      DIO12          : GPIOA_INT_EVENT1_ICLR_DIO12_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO13 event
      DIO13          : GPIOA_INT_EVENT1_ICLR_DIO13_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO14 event
      DIO14          : GPIOA_INT_EVENT1_ICLR_DIO14_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO15 event
      DIO15          : GPIOA_INT_EVENT1_ICLR_DIO15_Field :=
                        MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT1_ICLR_GPIOA_INT_EVENT1[%s]_Register use record
      DIO0           at 0 range 0 .. 0;
      DIO1           at 0 range 1 .. 1;
      DIO2           at 0 range 2 .. 2;
      DIO3           at 0 range 3 .. 3;
      DIO4           at 0 range 4 .. 4;
      DIO5           at 0 range 5 .. 5;
      DIO6           at 0 range 6 .. 6;
      DIO7           at 0 range 7 .. 7;
      DIO8           at 0 range 8 .. 8;
      DIO9           at 0 range 9 .. 9;
      DIO10          at 0 range 10 .. 10;
      DIO11          at 0 range 11 .. 11;
      DIO12          at 0 range 12 .. 12;
      DIO13          at 0 range 13 .. 13;
      DIO14          at 0 range 14 .. 14;
      DIO15          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type GPIOA_INT_EVENT1[%s]_Cluster is record
      --  Interrupt index
      GPIOA_INT_EVENT1_IIDX  : aliased GPIOA_INT_EVENT1_IIDX_GPIOA_INT_EVENT1[%s]_Register;
      --  Interrupt mask
      GPIOA_INT_EVENT1_IMASK : aliased GPIOA_INT_EVENT1_IMASK_GPIOA_INT_EVENT1[%s]_Register;
      --  Raw interrupt status
      GPIOA_INT_EVENT1_RIS   : aliased GPIOA_INT_EVENT1_RIS_GPIOA_INT_EVENT1[%s]_Register;
      --  Masked interrupt status
      GPIOA_INT_EVENT1_MIS   : aliased GPIOA_INT_EVENT1_MIS_GPIOA_INT_EVENT1[%s]_Register;
      --  Interrupt set
      GPIOA_INT_EVENT1_ISET  : aliased GPIOA_INT_EVENT1_ISET_GPIOA_INT_EVENT1[%s]_Register;
      --  Interrupt clear
      GPIOA_INT_EVENT1_ICLR  : aliased GPIOA_INT_EVENT1_ICLR_GPIOA_INT_EVENT1[%s]_Register;
   end record
     with Size => 352;

   for GPIOA_INT_EVENT1[%s]_Cluster use record
      GPIOA_INT_EVENT1_IIDX  at 16#0# range 0 .. 31;
      GPIOA_INT_EVENT1_IMASK at 16#8# range 0 .. 31;
      GPIOA_INT_EVENT1_RIS   at 16#10# range 0 .. 31;
      GPIOA_INT_EVENT1_MIS   at 16#18# range 0 .. 31;
      GPIOA_INT_EVENT1_ISET  at 16#20# range 0 .. 31;
      GPIOA_INT_EVENT1_ICLR  at 16#28# range 0 .. 31;
   end record;

   ----------------------------------------------
   -- GPIOA_INT_EVENT2[%s] cluster's Registers --
   ----------------------------------------------

   --  Interrupt index status
   type GPIOA_INT_EVENT2_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  DIO0 interrupt
      DIO16,
      --  DIO1 interrupt
      DIO17,
      --  DIO2 interrupt
      DIO18,
      --  DIO3 interrupt
      DIO19,
      --  DIO4 interrupt
      DIO20,
      --  DIO5 interrupt
      DIO21,
      --  DIO6 interrupt
      DIO22,
      --  DIO7 interrupt
      DIO23,
      --  DIO8 interrupt
      DIO24,
      --  DIO9 interrupt
      DIO25,
      --  DIO10 interrupt
      DIO26,
      --  DIO11 interrupt
      DIO27,
      --  DIO12 interrupt
      DIO28,
      --  DIO13 interrupt
      DIO29,
      --  DIO14 interrupt
      DIO30,
      --  DIO15 interrupt
      DIO31)
     with Size => 8;
   for GPIOA_INT_EVENT2_IIDX_STAT_Field use
     (NO_INTR => 0,
      DIO16 => 1,
      DIO17 => 2,
      DIO18 => 3,
      DIO19 => 4,
      DIO20 => 5,
      DIO21 => 6,
      DIO22 => 7,
      DIO23 => 8,
      DIO24 => 9,
      DIO25 => 10,
      DIO26 => 11,
      DIO27 => 12,
      DIO28 => 13,
      DIO29 => 14,
      DIO30 => 15,
      DIO31 => 16);

   --  Interrupt index
   type GPIOA_INT_EVENT2_IIDX_GPIOA_INT_EVENT2[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT          : GPIOA_INT_EVENT2_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_IIDX_GPIOA_INT_EVENT2[%s]_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DIO16 event mask
   type GPIOA_INT_EVENT2_IMASK_DIO16_Field is
     (--  Event is masked
      CLR,
      --  Event is unmasked
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_IMASK_DIO16_Field use
     (CLR => 0,
      SET => 1);

   --  GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO array
   type GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO_Field_Array is array (16 .. 31)
     of GPIOA_INT_EVENT2_IMASK_DIO16_Field
     with Component_Size => 1, Size => 16;

   --  Type definition for GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO
   type GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt16;
         when True =>
            --  DIO as an array
            Arr : GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Interrupt mask
   type GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  DIO16 event mask
      DIO           : GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_DIO_Field :=
                       (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DIO           at 0 range 16 .. 31;
   end record;

   --  DIO16 event
   type GPIOA_INT_EVENT2_RIS_DIO16_Field is
     (--  DIO16 event did not occur
      CLR,
      --  DIO16 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO16_Field use
     (CLR => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT2_RIS_DIO17_Field is
     (--  DIO17 event did not occur
      CLR,
      --  DIO17 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO17_Field use
     (CLR => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT2_RIS_DIO18_Field is
     (--  DIO18 event did not occur
      CLR,
      --  DIO18 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO18_Field use
     (CLR => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT2_RIS_DIO19_Field is
     (--  DIO19 event did not occur
      CLR,
      --  DIO19 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO19_Field use
     (CLR => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT2_RIS_DIO20_Field is
     (--  DIO20 event did not occur
      CLR,
      --  DIO20 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO20_Field use
     (CLR => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT2_RIS_DIO21_Field is
     (--  DIO21 event did not occur
      CLR,
      --  DIO21 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO21_Field use
     (CLR => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT2_RIS_DIO22_Field is
     (--  DIO22 event did not occur
      CLR,
      --  DIO22 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO22_Field use
     (CLR => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT2_RIS_DIO23_Field is
     (--  DIO23 event did not occur
      CLR,
      --  DIO23 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO23_Field use
     (CLR => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT2_RIS_DIO24_Field is
     (--  DIO24 event did not occur
      CLR,
      --  DIO24 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO24_Field use
     (CLR => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT2_RIS_DIO25_Field is
     (--  DIO25 event did not occur
      CLR,
      --  DIO25 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO25_Field use
     (CLR => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT2_RIS_DIO26_Field is
     (--  DIO26 event did not occur
      CLR,
      --  DIO26 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO26_Field use
     (CLR => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT2_RIS_DIO27_Field is
     (--  DIO27 event did not occur
      CLR,
      --  DIO27 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO27_Field use
     (CLR => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT2_RIS_DIO28_Field is
     (--  DIO28 event did not occur
      CLR,
      --  DIO28 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO28_Field use
     (CLR => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT2_RIS_DIO29_Field is
     (--  DIO29 event did not occur
      CLR,
      --  DIO29 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO29_Field use
     (CLR => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT2_RIS_DIO30_Field is
     (--  DIO30 event did not occur
      CLR,
      --  DIO30 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO30_Field use
     (CLR => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT2_RIS_DIO31_Field is
     (--  DIO31 event did not occur
      CLR,
      --  DIO31 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_RIS_DIO31_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type GPIOA_INT_EVENT2_RIS_GPIOA_INT_EVENT2[%s]_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16;
      --  Read-only. DIO16 event
      DIO16         : GPIOA_INT_EVENT2_RIS_DIO16_Field;
      --  Read-only. DIO17 event
      DIO17         : GPIOA_INT_EVENT2_RIS_DIO17_Field;
      --  Read-only. DIO18 event
      DIO18         : GPIOA_INT_EVENT2_RIS_DIO18_Field;
      --  Read-only. DIO19 event
      DIO19         : GPIOA_INT_EVENT2_RIS_DIO19_Field;
      --  Read-only. DIO20 event
      DIO20         : GPIOA_INT_EVENT2_RIS_DIO20_Field;
      --  Read-only. DIO21 event
      DIO21         : GPIOA_INT_EVENT2_RIS_DIO21_Field;
      --  Read-only. DIO22 event
      DIO22         : GPIOA_INT_EVENT2_RIS_DIO22_Field;
      --  Read-only. DIO23 event
      DIO23         : GPIOA_INT_EVENT2_RIS_DIO23_Field;
      --  Read-only. DIO24 event
      DIO24         : GPIOA_INT_EVENT2_RIS_DIO24_Field;
      --  Read-only. DIO25 event
      DIO25         : GPIOA_INT_EVENT2_RIS_DIO25_Field;
      --  Read-only. DIO26 event
      DIO26         : GPIOA_INT_EVENT2_RIS_DIO26_Field;
      --  Read-only. DIO27 event
      DIO27         : GPIOA_INT_EVENT2_RIS_DIO27_Field;
      --  Read-only. DIO28 event
      DIO28         : GPIOA_INT_EVENT2_RIS_DIO28_Field;
      --  Read-only. DIO29 event
      DIO29         : GPIOA_INT_EVENT2_RIS_DIO29_Field;
      --  Read-only. DIO30 event
      DIO30         : GPIOA_INT_EVENT2_RIS_DIO30_Field;
      --  Read-only. DIO31 event
      DIO31         : GPIOA_INT_EVENT2_RIS_DIO31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_RIS_GPIOA_INT_EVENT2[%s]_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DIO16         at 0 range 16 .. 16;
      DIO17         at 0 range 17 .. 17;
      DIO18         at 0 range 18 .. 18;
      DIO19         at 0 range 19 .. 19;
      DIO20         at 0 range 20 .. 20;
      DIO21         at 0 range 21 .. 21;
      DIO22         at 0 range 22 .. 22;
      DIO23         at 0 range 23 .. 23;
      DIO24         at 0 range 24 .. 24;
      DIO25         at 0 range 25 .. 25;
      DIO26         at 0 range 26 .. 26;
      DIO27         at 0 range 27 .. 27;
      DIO28         at 0 range 28 .. 28;
      DIO29         at 0 range 29 .. 29;
      DIO30         at 0 range 30 .. 30;
      DIO31         at 0 range 31 .. 31;
   end record;

   --  DIO16 event
   type GPIOA_INT_EVENT2_MIS_DIO16_Field is
     (--  DIO16 event did not occur
      CLR,
      --  DIO16 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO16_Field use
     (CLR => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT2_MIS_DIO17_Field is
     (--  DIO17 event did not occur
      CLR,
      --  DIO17 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO17_Field use
     (CLR => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT2_MIS_DIO18_Field is
     (--  DIO18 event did not occur
      CLR,
      --  DIO18 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO18_Field use
     (CLR => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT2_MIS_DIO19_Field is
     (--  DIO19 event did not occur
      CLR,
      --  DIO19 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO19_Field use
     (CLR => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT2_MIS_DIO20_Field is
     (--  DIO20 event did not occur
      CLR,
      --  DIO20 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO20_Field use
     (CLR => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT2_MIS_DIO21_Field is
     (--  DIO21 event did not occur
      CLR,
      --  DIO21 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO21_Field use
     (CLR => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT2_MIS_DIO22_Field is
     (--  DIO22 event did not occur
      CLR,
      --  DIO22 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO22_Field use
     (CLR => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT2_MIS_DIO23_Field is
     (--  DIO23 event did not occur
      CLR,
      --  DIO23 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO23_Field use
     (CLR => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT2_MIS_DIO24_Field is
     (--  DIO24 event did not occur
      CLR,
      --  DIO24 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO24_Field use
     (CLR => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT2_MIS_DIO25_Field is
     (--  DIO25 event did not occur
      CLR,
      --  DIO25 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO25_Field use
     (CLR => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT2_MIS_DIO26_Field is
     (--  DIO26 event did not occur
      CLR,
      --  DIO26 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO26_Field use
     (CLR => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT2_MIS_DIO27_Field is
     (--  DIO27 event did not occur
      CLR,
      --  DIO27 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO27_Field use
     (CLR => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT2_MIS_DIO28_Field is
     (--  DIO28 event did not occur
      CLR,
      --  DIO28 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO28_Field use
     (CLR => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT2_MIS_DIO29_Field is
     (--  DIO29 event did not occur
      CLR,
      --  DIO29 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO29_Field use
     (CLR => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT2_MIS_DIO30_Field is
     (--  DIO30 event did not occur
      CLR,
      --  DIO30 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO30_Field use
     (CLR => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT2_MIS_DIO31_Field is
     (--  DIO31 event did not occur
      CLR,
      --  DIO31 event occurred
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_MIS_DIO31_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type GPIOA_INT_EVENT2_MIS_GPIOA_INT_EVENT2[%s]_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16;
      --  Read-only. DIO16 event
      DIO16         : GPIOA_INT_EVENT2_MIS_DIO16_Field;
      --  Read-only. DIO17 event
      DIO17         : GPIOA_INT_EVENT2_MIS_DIO17_Field;
      --  Read-only. DIO18 event
      DIO18         : GPIOA_INT_EVENT2_MIS_DIO18_Field;
      --  Read-only. DIO19 event
      DIO19         : GPIOA_INT_EVENT2_MIS_DIO19_Field;
      --  Read-only. DIO20 event
      DIO20         : GPIOA_INT_EVENT2_MIS_DIO20_Field;
      --  Read-only. DIO21 event
      DIO21         : GPIOA_INT_EVENT2_MIS_DIO21_Field;
      --  Read-only. DIO22 event
      DIO22         : GPIOA_INT_EVENT2_MIS_DIO22_Field;
      --  Read-only. DIO23 event
      DIO23         : GPIOA_INT_EVENT2_MIS_DIO23_Field;
      --  Read-only. DIO24 event
      DIO24         : GPIOA_INT_EVENT2_MIS_DIO24_Field;
      --  Read-only. DIO25 event
      DIO25         : GPIOA_INT_EVENT2_MIS_DIO25_Field;
      --  Read-only. DIO26 event
      DIO26         : GPIOA_INT_EVENT2_MIS_DIO26_Field;
      --  Read-only. DIO27 event
      DIO27         : GPIOA_INT_EVENT2_MIS_DIO27_Field;
      --  Read-only. DIO28 event
      DIO28         : GPIOA_INT_EVENT2_MIS_DIO28_Field;
      --  Read-only. DIO29 event
      DIO29         : GPIOA_INT_EVENT2_MIS_DIO29_Field;
      --  Read-only. DIO30 event
      DIO30         : GPIOA_INT_EVENT2_MIS_DIO30_Field;
      --  Read-only. DIO31 event
      DIO31         : GPIOA_INT_EVENT2_MIS_DIO31_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_MIS_GPIOA_INT_EVENT2[%s]_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DIO16         at 0 range 16 .. 16;
      DIO17         at 0 range 17 .. 17;
      DIO18         at 0 range 18 .. 18;
      DIO19         at 0 range 19 .. 19;
      DIO20         at 0 range 20 .. 20;
      DIO21         at 0 range 21 .. 21;
      DIO22         at 0 range 22 .. 22;
      DIO23         at 0 range 23 .. 23;
      DIO24         at 0 range 24 .. 24;
      DIO25         at 0 range 25 .. 25;
      DIO26         at 0 range 26 .. 26;
      DIO27         at 0 range 27 .. 27;
      DIO28         at 0 range 28 .. 28;
      DIO29         at 0 range 29 .. 29;
      DIO30         at 0 range 30 .. 30;
      DIO31         at 0 range 31 .. 31;
   end record;

   --  DIO16 event
   type GPIOA_INT_EVENT2_ISET_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO16 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO16_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT2_ISET_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO17 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO17_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT2_ISET_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO18 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO18_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT2_ISET_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO19 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO19_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT2_ISET_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO20 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO20_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT2_ISET_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO21 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO21_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT2_ISET_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO22 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO22_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT2_ISET_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO23 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO23_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT2_ISET_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO24 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO24_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT2_ISET_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO25 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO25_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT2_ISET_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO26 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO26_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT2_ISET_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO27 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO27_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT2_ISET_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO28 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO28_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT2_ISET_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO29 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO29_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT2_ISET_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO30 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO30_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT2_ISET_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO31 in RIS register
      SET)
     with Size => 1;
   for GPIOA_INT_EVENT2_ISET_DIO31_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type GPIOA_INT_EVENT2_ISET_GPIOA_INT_EVENT2[%s]_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Write-only. DIO16 event
      DIO16         : GPIOA_INT_EVENT2_ISET_DIO16_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO17 event
      DIO17         : GPIOA_INT_EVENT2_ISET_DIO17_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO18 event
      DIO18         : GPIOA_INT_EVENT2_ISET_DIO18_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO19 event
      DIO19         : GPIOA_INT_EVENT2_ISET_DIO19_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO20 event
      DIO20         : GPIOA_INT_EVENT2_ISET_DIO20_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO21 event
      DIO21         : GPIOA_INT_EVENT2_ISET_DIO21_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO22 event
      DIO22         : GPIOA_INT_EVENT2_ISET_DIO22_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO23 event
      DIO23         : GPIOA_INT_EVENT2_ISET_DIO23_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO24 event
      DIO24         : GPIOA_INT_EVENT2_ISET_DIO24_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO25 event
      DIO25         : GPIOA_INT_EVENT2_ISET_DIO25_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO26 event
      DIO26         : GPIOA_INT_EVENT2_ISET_DIO26_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO27 event
      DIO27         : GPIOA_INT_EVENT2_ISET_DIO27_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO28 event
      DIO28         : GPIOA_INT_EVENT2_ISET_DIO28_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO29 event
      DIO29         : GPIOA_INT_EVENT2_ISET_DIO29_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO30 event
      DIO30         : GPIOA_INT_EVENT2_ISET_DIO30_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO31 event
      DIO31         : GPIOA_INT_EVENT2_ISET_DIO31_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_ISET_GPIOA_INT_EVENT2[%s]_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DIO16         at 0 range 16 .. 16;
      DIO17         at 0 range 17 .. 17;
      DIO18         at 0 range 18 .. 18;
      DIO19         at 0 range 19 .. 19;
      DIO20         at 0 range 20 .. 20;
      DIO21         at 0 range 21 .. 21;
      DIO22         at 0 range 22 .. 22;
      DIO23         at 0 range 23 .. 23;
      DIO24         at 0 range 24 .. 24;
      DIO25         at 0 range 25 .. 25;
      DIO26         at 0 range 26 .. 26;
      DIO27         at 0 range 27 .. 27;
      DIO28         at 0 range 28 .. 28;
      DIO29         at 0 range 29 .. 29;
      DIO30         at 0 range 30 .. 30;
      DIO31         at 0 range 31 .. 31;
   end record;

   --  DIO16 event
   type GPIOA_INT_EVENT2_ICLR_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO16 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO16_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO17 event
   type GPIOA_INT_EVENT2_ICLR_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO17 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO17_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO18 event
   type GPIOA_INT_EVENT2_ICLR_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO18 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO18_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO19 event
   type GPIOA_INT_EVENT2_ICLR_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO19 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO19_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO20 event
   type GPIOA_INT_EVENT2_ICLR_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO20 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO20_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO21 event
   type GPIOA_INT_EVENT2_ICLR_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO21 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO21_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO22 event
   type GPIOA_INT_EVENT2_ICLR_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO22 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO22_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO23 event
   type GPIOA_INT_EVENT2_ICLR_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO23 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO23_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO24 event
   type GPIOA_INT_EVENT2_ICLR_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO24 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO24_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO25 event
   type GPIOA_INT_EVENT2_ICLR_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO25 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO25_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO26 event
   type GPIOA_INT_EVENT2_ICLR_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO26 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO26_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO27 event
   type GPIOA_INT_EVENT2_ICLR_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO27 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO27_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO28 event
   type GPIOA_INT_EVENT2_ICLR_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO28 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO28_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO29 event
   type GPIOA_INT_EVENT2_ICLR_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO29 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO29_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO30 event
   type GPIOA_INT_EVENT2_ICLR_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO30 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO30_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DIO31 event
   type GPIOA_INT_EVENT2_ICLR_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO31 in RIS register
      CLR)
     with Size => 1;
   for GPIOA_INT_EVENT2_ICLR_DIO31_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type GPIOA_INT_EVENT2_ICLR_GPIOA_INT_EVENT2[%s]_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  Write-only. DIO16 event
      DIO16         : GPIOA_INT_EVENT2_ICLR_DIO16_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO17 event
      DIO17         : GPIOA_INT_EVENT2_ICLR_DIO17_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO18 event
      DIO18         : GPIOA_INT_EVENT2_ICLR_DIO18_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO19 event
      DIO19         : GPIOA_INT_EVENT2_ICLR_DIO19_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO20 event
      DIO20         : GPIOA_INT_EVENT2_ICLR_DIO20_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO21 event
      DIO21         : GPIOA_INT_EVENT2_ICLR_DIO21_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO22 event
      DIO22         : GPIOA_INT_EVENT2_ICLR_DIO22_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO23 event
      DIO23         : GPIOA_INT_EVENT2_ICLR_DIO23_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO24 event
      DIO24         : GPIOA_INT_EVENT2_ICLR_DIO24_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO25 event
      DIO25         : GPIOA_INT_EVENT2_ICLR_DIO25_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO26 event
      DIO26         : GPIOA_INT_EVENT2_ICLR_DIO26_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO27 event
      DIO27         : GPIOA_INT_EVENT2_ICLR_DIO27_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO28 event
      DIO28         : GPIOA_INT_EVENT2_ICLR_DIO28_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO29 event
      DIO29         : GPIOA_INT_EVENT2_ICLR_DIO29_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO30 event
      DIO30         : GPIOA_INT_EVENT2_ICLR_DIO30_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. DIO31 event
      DIO31         : GPIOA_INT_EVENT2_ICLR_DIO31_Field :=
                       MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_INT_EVENT2_ICLR_GPIOA_INT_EVENT2[%s]_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      DIO16         at 0 range 16 .. 16;
      DIO17         at 0 range 17 .. 17;
      DIO18         at 0 range 18 .. 18;
      DIO19         at 0 range 19 .. 19;
      DIO20         at 0 range 20 .. 20;
      DIO21         at 0 range 21 .. 21;
      DIO22         at 0 range 22 .. 22;
      DIO23         at 0 range 23 .. 23;
      DIO24         at 0 range 24 .. 24;
      DIO25         at 0 range 25 .. 25;
      DIO26         at 0 range 26 .. 26;
      DIO27         at 0 range 27 .. 27;
      DIO28         at 0 range 28 .. 28;
      DIO29         at 0 range 29 .. 29;
      DIO30         at 0 range 30 .. 30;
      DIO31         at 0 range 31 .. 31;
   end record;

   type GPIOA_INT_EVENT2[%s]_Cluster is record
      --  Interrupt index
      GPIOA_INT_EVENT2_IIDX  : aliased GPIOA_INT_EVENT2_IIDX_GPIOA_INT_EVENT2[%s]_Register;
      --  Interrupt mask
      GPIOA_INT_EVENT2_IMASK : aliased GPIOA_INT_EVENT2_IMASK_GPIOA_INT_EVENT2[%s]_Register;
      --  Raw interrupt status
      GPIOA_INT_EVENT2_RIS   : aliased GPIOA_INT_EVENT2_RIS_GPIOA_INT_EVENT2[%s]_Register;
      --  Masked interrupt status
      GPIOA_INT_EVENT2_MIS   : aliased GPIOA_INT_EVENT2_MIS_GPIOA_INT_EVENT2[%s]_Register;
      --  Interrupt set
      GPIOA_INT_EVENT2_ISET  : aliased GPIOA_INT_EVENT2_ISET_GPIOA_INT_EVENT2[%s]_Register;
      --  Interrupt clear
      GPIOA_INT_EVENT2_ICLR  : aliased GPIOA_INT_EVENT2_ICLR_GPIOA_INT_EVENT2[%s]_Register;
   end record
     with Size => 352;

   for GPIOA_INT_EVENT2[%s]_Cluster use record
      GPIOA_INT_EVENT2_IIDX  at 16#0# range 0 .. 31;
      GPIOA_INT_EVENT2_IMASK at 16#8# range 0 .. 31;
      GPIOA_INT_EVENT2_RIS   at 16#10# range 0 .. 31;
      GPIOA_INT_EVENT2_MIS   at 16#18# range 0 .. 31;
      GPIOA_INT_EVENT2_ISET  at 16#20# range 0 .. 31;
      GPIOA_INT_EVENT2_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT0]
   type GPIOA_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for GPIOA_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT1]
   type GPIOA_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for GPIOA_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT2]
   type GPIOA_EVT_MODE_EVT2_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for GPIOA_EVT_MODE_EVT2_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type GPIOA_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT0]
      INT0_CFG      : GPIOA_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT1]
      EVT1_CFG      : GPIOA_EVT_MODE_EVT1_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT2]
      EVT2_CFG      : GPIOA_EVT_MODE_EVT2_CFG_Field;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      EVT2_CFG      at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GPIOA_DESC_MINREV_Field is HAL.UInt4;
   subtype GPIOA_DESC_MAJREV_Field is HAL.UInt4;
   subtype GPIOA_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype GPIOA_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type GPIOA_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV        : GPIOA_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV        : GPIOA_DESC_MAJREV_Field;
      --  unspecified
      Reserved_8_11 : HAL.UInt4;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER    : GPIOA_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID      : GPIOA_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DESC_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_11 at 0 range 8 .. 11;
      FEATUREVER    at 0 range 12 .. 15;
      MODULEID      at 0 range 16 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO0 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT3_0_DIO0_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT3_0_DIO0_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO1 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT3_0_DIO1_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT3_0_DIO1_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO2 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT3_0_DIO2_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT3_0_DIO2_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO3 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT3_0_DIO3_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT3_0_DIO3_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 3 to 0
   type GPIOA_DOUT3_0_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO0
      --  when the output is enabled through DOE31_0 register.
      DIO0           : GPIOA_DOUT3_0_DIO0_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO1
      --  when the output is enabled through DOE31_0 register.
      DIO1           : GPIOA_DOUT3_0_DIO1_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO2
      --  when the output is enabled through DOE31_0 register.
      DIO2           : GPIOA_DOUT3_0_DIO2_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO3
      --  when the output is enabled through DOE31_0 register.
      DIO3           : GPIOA_DOUT3_0_DIO3_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT3_0_Register use record
      DIO0           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO1           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO2           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO3           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO4 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT7_4_DIO4_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT7_4_DIO4_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO5 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT7_4_DIO5_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT7_4_DIO5_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO6 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT7_4_DIO6_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT7_4_DIO6_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO7 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT7_4_DIO7_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT7_4_DIO7_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 7 to 4
   type GPIOA_DOUT7_4_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO4
      --  when the output is enabled through DOE31_0 register.
      DIO4           : GPIOA_DOUT7_4_DIO4_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO5
      --  when the output is enabled through DOE31_0 register.
      DIO5           : GPIOA_DOUT7_4_DIO5_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO6
      --  when the output is enabled through DOE31_0 register.
      DIO6           : GPIOA_DOUT7_4_DIO6_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO7
      --  when the output is enabled through DOE31_0 register.
      DIO7           : GPIOA_DOUT7_4_DIO7_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT7_4_Register use record
      DIO4           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO5           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO6           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO7           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO8 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT11_8_DIO8_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT11_8_DIO8_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO9 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT11_8_DIO9_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT11_8_DIO9_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO10 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT11_8_DIO10_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT11_8_DIO10_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO11 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT11_8_DIO11_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT11_8_DIO11_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 11 to 8
   type GPIOA_DOUT11_8_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO8
      --  when the output is enabled through DOE31_0 register.
      DIO8           : GPIOA_DOUT11_8_DIO8_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO9
      --  when the output is enabled through DOE31_0 register.
      DIO9           : GPIOA_DOUT11_8_DIO9_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO10
      --  when the output is enabled through DOE31_0 register.
      DIO10          : GPIOA_DOUT11_8_DIO10_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO11
      --  when the output is enabled through DOE31_0 register.
      DIO11          : GPIOA_DOUT11_8_DIO11_Field := MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT11_8_Register use record
      DIO8           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO9           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO10          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO11          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO12 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT15_12_DIO12_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT15_12_DIO12_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO13 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT15_12_DIO13_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT15_12_DIO13_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO14 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT15_12_DIO14_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT15_12_DIO14_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO15 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT15_12_DIO15_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT15_12_DIO15_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 15 to 12
   type GPIOA_DOUT15_12_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO12
      --  when the output is enabled through DOE31_0 register.
      DIO12          : GPIOA_DOUT15_12_DIO12_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO13
      --  when the output is enabled through DOE31_0 register.
      DIO13          : GPIOA_DOUT15_12_DIO13_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO14
      --  when the output is enabled through DOE31_0 register.
      DIO14          : GPIOA_DOUT15_12_DIO14_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO15
      --  when the output is enabled through DOE31_0 register.
      DIO15          : GPIOA_DOUT15_12_DIO15_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT15_12_Register use record
      DIO12          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO13          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO14          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO15          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO16 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT19_16_DIO16_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT19_16_DIO16_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO17 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT19_16_DIO17_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT19_16_DIO17_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO18 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT19_16_DIO18_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT19_16_DIO18_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO19 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT19_16_DIO19_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT19_16_DIO19_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 19 to 16
   type GPIOA_DOUT19_16_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO16
      --  when the output is enabled through DOE31_0 register.
      DIO16          : GPIOA_DOUT19_16_DIO16_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO17
      --  when the output is enabled through DOE31_0 register.
      DIO17          : GPIOA_DOUT19_16_DIO17_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO18
      --  when the output is enabled through DOE31_0 register.
      DIO18          : GPIOA_DOUT19_16_DIO18_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO19
      --  when the output is enabled through DOE31_0 register.
      DIO19          : GPIOA_DOUT19_16_DIO19_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT19_16_Register use record
      DIO16          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO17          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO18          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO19          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO20 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT23_20_DIO20_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT23_20_DIO20_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO21 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT23_20_DIO21_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT23_20_DIO21_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO22 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT23_20_DIO22_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT23_20_DIO22_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO23 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT23_20_DIO23_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT23_20_DIO23_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 23 to 20
   type GPIOA_DOUT23_20_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO20
      --  when the output is enabled through DOE31_0 register.
      DIO20          : GPIOA_DOUT23_20_DIO20_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO21
      --  when the output is enabled through DOE31_0 register.
      DIO21          : GPIOA_DOUT23_20_DIO21_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO22
      --  when the output is enabled through DOE31_0 register.
      DIO22          : GPIOA_DOUT23_20_DIO22_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO23
      --  when the output is enabled through DOE31_0 register.
      DIO23          : GPIOA_DOUT23_20_DIO23_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT23_20_Register use record
      DIO20          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO21          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO22          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO23          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO24 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT27_24_DIO24_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT27_24_DIO24_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO25 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT27_24_DIO25_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT27_24_DIO25_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO26 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT27_24_DIO26_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT27_24_DIO26_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO27 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT27_24_DIO27_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT27_24_DIO27_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 27 to 24
   type GPIOA_DOUT27_24_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO24
      --  when the output is enabled through DOE31_0 register.
      DIO24          : GPIOA_DOUT27_24_DIO24_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO25
      --  when the output is enabled through DOE31_0 register.
      DIO25          : GPIOA_DOUT27_24_DIO25_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO26
      --  when the output is enabled through DOE31_0 register.
      DIO26          : GPIOA_DOUT27_24_DIO26_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO27
      --  when the output is enabled through DOE31_0 register.
      DIO27          : GPIOA_DOUT27_24_DIO27_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT27_24_Register use record
      DIO24          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO25          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO26          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO27          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO28 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT31_28_DIO28_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT31_28_DIO28_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO29 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT31_28_DIO29_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT31_28_DIO29_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO30 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT31_28_DIO30_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT31_28_DIO30_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit sets the value of the pin configured as DIO31 when the output
   --  is enabled through DOE31_0 register.
   type GPIOA_DOUT31_28_DIO31_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT31_28_DIO31_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data output 31 to 28
   type GPIOA_DOUT31_28_Register is record
      --  Write-only. This bit sets the value of the pin configured as DIO28
      --  when the output is enabled through DOE31_0 register.
      DIO28          : GPIOA_DOUT31_28_DIO28_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO29
      --  when the output is enabled through DOE31_0 register.
      DIO29          : GPIOA_DOUT31_28_DIO29_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO30
      --  when the output is enabled through DOE31_0 register.
      DIO30          : GPIOA_DOUT31_28_DIO30_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Write-only. This bit sets the value of the pin configured as DIO31
      --  when the output is enabled through DOE31_0 register.
      DIO31          : GPIOA_DOUT31_28_DIO31_Field :=
                        MSPMC1104_SVD.GPIOA.ZERO;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT31_28_Register use record
      DIO28          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO29          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO30          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO31          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit sets the value of the pin configured as DIO0 when the output is
   --  enabled through DOE31_0 register.
   type GPIOA_DOUT31_0_DIO0_Field is
     (--  Output is set to 0
      ZERO,
      --  Output is set to 1
      ONE)
     with Size => 1;
   for GPIOA_DOUT31_0_DIO0_Field use
     (ZERO => 0,
      ONE => 1);

   --  GPIOA_DOUT31_0_DIO array
   type GPIOA_DOUT31_0_DIO_Field_Array is array (0 .. 31)
     of GPIOA_DOUT31_0_DIO0_Field
     with Component_Size => 1, Size => 32;

   --  Data output 31 to 0
   type GPIOA_DOUT31_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_DOUT31_0_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUT31_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Writing 1 to this bit sets the DIO0 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO0 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO1 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO1 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO1_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO2 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO2 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO2_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO3 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO3 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO3_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO4 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO4 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO5 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO5 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO5_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO6 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO6 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO6_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO7 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO7 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO7_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO8 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO8 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO8_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO9 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO9 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO9_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO10 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO10 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO10_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO11 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO11 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO11_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO12 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO12 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO12_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO13 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO13 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO13_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO14 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO14 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO14_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO15 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO15 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO15_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO16 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO16 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO16_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO17 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO17 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO17_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO18 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO18 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO18_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO19 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO19 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO19_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO20 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO20 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO20_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO21 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO21 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO21_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO22 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO22 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO22_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO23 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO23 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO23_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO24 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO24 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO24_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO25 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO25 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO25_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO26 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO26 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO26_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO27 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO27 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO27_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO28 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO28 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO28_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO29 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO29 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO29_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO30 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO30 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO30_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO31 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTSET31_0_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO31 in DOUT31_0
      SET)
     with Size => 1;
   for GPIOA_DOUTSET31_0_DIO31_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Data output set 31 to 0
   type GPIOA_DOUTSET31_0_Register is record
      --  Write-only. Writing 1 to this bit sets the DIO0 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO0  : GPIOA_DOUTSET31_0_DIO0_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO1 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO1  : GPIOA_DOUTSET31_0_DIO1_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO2 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO2  : GPIOA_DOUTSET31_0_DIO2_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO3 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO3  : GPIOA_DOUTSET31_0_DIO3_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO4 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO4  : GPIOA_DOUTSET31_0_DIO4_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO5 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO5  : GPIOA_DOUTSET31_0_DIO5_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO6 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO6  : GPIOA_DOUTSET31_0_DIO6_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO7 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO7  : GPIOA_DOUTSET31_0_DIO7_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO8 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO8  : GPIOA_DOUTSET31_0_DIO8_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO9 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO9  : GPIOA_DOUTSET31_0_DIO9_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO10 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO10 : GPIOA_DOUTSET31_0_DIO10_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO11 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO11 : GPIOA_DOUTSET31_0_DIO11_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO12 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO12 : GPIOA_DOUTSET31_0_DIO12_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO13 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO13 : GPIOA_DOUTSET31_0_DIO13_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO14 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO14 : GPIOA_DOUTSET31_0_DIO14_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO15 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO15 : GPIOA_DOUTSET31_0_DIO15_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO16 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO16 : GPIOA_DOUTSET31_0_DIO16_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO17 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO17 : GPIOA_DOUTSET31_0_DIO17_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO18 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO18 : GPIOA_DOUTSET31_0_DIO18_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO19 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO19 : GPIOA_DOUTSET31_0_DIO19_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO20 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO20 : GPIOA_DOUTSET31_0_DIO20_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO21 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO21 : GPIOA_DOUTSET31_0_DIO21_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO22 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO22 : GPIOA_DOUTSET31_0_DIO22_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO23 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO23 : GPIOA_DOUTSET31_0_DIO23_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO24 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO24 : GPIOA_DOUTSET31_0_DIO24_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO25 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO25 : GPIOA_DOUTSET31_0_DIO25_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO26 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO26 : GPIOA_DOUTSET31_0_DIO26_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO27 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO27 : GPIOA_DOUTSET31_0_DIO27_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO28 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO28 : GPIOA_DOUTSET31_0_DIO28_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO29 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO29 : GPIOA_DOUTSET31_0_DIO29_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO30 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO30 : GPIOA_DOUTSET31_0_DIO30_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO31 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO31 : GPIOA_DOUTSET31_0_DIO31_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUTSET31_0_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  Writing 1 to this bit clears the DIO0 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO0 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO1 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO1 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO1_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO2 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO2 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO2_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO3 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO3 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO3_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO4 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO4 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO5 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO5 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO5_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO6 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO6 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO6_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO7 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO7 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO7_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO8 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO8 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO8_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO9 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO9 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO9_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO10 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO10 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO10_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO11 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO11 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO11_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO12 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO12 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO12_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO13 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO13 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO13_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO14 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO14 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO14_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO15 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO15 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO15_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO16 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO16 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO16_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO17 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO17 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO17_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO18 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO18 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO18_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO19 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO19 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO19_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO20 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO20 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO20_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO21 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO21 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO21_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO22 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO22 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO22_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO23 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO23 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO23_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO24 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO24 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO24_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO25 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO25 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO25_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO26 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO26 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO26_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO27 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO27 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO27_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO28 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO28 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO28_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO29 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO29 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO29_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO30 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO30 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO30_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO31 bit in the DOUT31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOUTCLR31_0_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO31 in DOUT31_0
      CLR)
     with Size => 1;
   for GPIOA_DOUTCLR31_0_DIO31_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Data output clear 31 to 0
   type GPIOA_DOUTCLR31_0_Register is record
      --  Write-only. Writing 1 to this bit clears the DIO0 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO0  : GPIOA_DOUTCLR31_0_DIO0_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO1 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO1  : GPIOA_DOUTCLR31_0_DIO1_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO2 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO2  : GPIOA_DOUTCLR31_0_DIO2_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO3 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO3  : GPIOA_DOUTCLR31_0_DIO3_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO4 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO4  : GPIOA_DOUTCLR31_0_DIO4_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO5 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO5  : GPIOA_DOUTCLR31_0_DIO5_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO6 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO6  : GPIOA_DOUTCLR31_0_DIO6_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO7 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO7  : GPIOA_DOUTCLR31_0_DIO7_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO8 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO8  : GPIOA_DOUTCLR31_0_DIO8_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO9 bit in the DOUT31_0
      --  register. Writing 0 has no effect.
      DIO9  : GPIOA_DOUTCLR31_0_DIO9_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO10 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO10 : GPIOA_DOUTCLR31_0_DIO10_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO11 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO11 : GPIOA_DOUTCLR31_0_DIO11_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO12 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO12 : GPIOA_DOUTCLR31_0_DIO12_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO13 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO13 : GPIOA_DOUTCLR31_0_DIO13_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO14 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO14 : GPIOA_DOUTCLR31_0_DIO14_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO15 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO15 : GPIOA_DOUTCLR31_0_DIO15_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO16 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO16 : GPIOA_DOUTCLR31_0_DIO16_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO17 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO17 : GPIOA_DOUTCLR31_0_DIO17_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO18 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO18 : GPIOA_DOUTCLR31_0_DIO18_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO19 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO19 : GPIOA_DOUTCLR31_0_DIO19_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO20 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO20 : GPIOA_DOUTCLR31_0_DIO20_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO21 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO21 : GPIOA_DOUTCLR31_0_DIO21_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO22 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO22 : GPIOA_DOUTCLR31_0_DIO22_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO23 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO23 : GPIOA_DOUTCLR31_0_DIO23_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO24 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO24 : GPIOA_DOUTCLR31_0_DIO24_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO25 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO25 : GPIOA_DOUTCLR31_0_DIO25_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO26 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO26 : GPIOA_DOUTCLR31_0_DIO26_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO27 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO27 : GPIOA_DOUTCLR31_0_DIO27_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO28 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO28 : GPIOA_DOUTCLR31_0_DIO28_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO29 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO29 : GPIOA_DOUTCLR31_0_DIO29_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO30 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO30 : GPIOA_DOUTCLR31_0_DIO30_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO31 bit in the
      --  DOUT31_0 register. Writing 0 has no effect.
      DIO31 : GPIOA_DOUTCLR31_0_DIO31_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUTCLR31_0_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  This bit is used to toggle DIO0 output.
   type GPIOA_DOUTTGL31_0_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Toggle output
      TOGGLE)
     with Size => 1;
   for GPIOA_DOUTTGL31_0_DIO0_Field use
     (NO_EFFECT => 0,
      TOGGLE => 1);

   --  GPIOA_DOUTTGL31_0_DIO array
   type GPIOA_DOUTTGL31_0_DIO_Field_Array is array (0 .. 31)
     of GPIOA_DOUTTGL31_0_DIO0_Field
     with Component_Size => 1, Size => 32;

   --  Data output toggle 31 to 0
   type GPIOA_DOUTTGL31_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_DOUTTGL31_0_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOUTTGL31_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Enables data output for DIO0.
   type GPIOA_DOE31_0_DIO0_Field is
     (--  Output disabled
      DISABLE,
      --  Output enabled
      ENABLE)
     with Size => 1;
   for GPIOA_DOE31_0_DIO0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  GPIOA_DOE31_0_DIO array
   type GPIOA_DOE31_0_DIO_Field_Array is array (0 .. 31)
     of GPIOA_DOE31_0_DIO0_Field
     with Component_Size => 1, Size => 32;

   --  Data output enable 31 to 0
   type GPIOA_DOE31_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_DOE31_0_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOE31_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Writing 1 to this bit sets the DIO0 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO0 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO1 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO1 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO1_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO2 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO2 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO2_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO3 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO3 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO3_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO4 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO4 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO4_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO5 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO5 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO5_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO6 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO6 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO6_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO7 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO7 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO7_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO8 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO8 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO8_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO9 bit in the DOE31_0 register. Writing
   --  0 has no effect.
   type GPIOA_DOESET31_0_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO9 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO9_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO10 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO10 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO10_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO11 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO11 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO11_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO12 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO12 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO12_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO13 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO13 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO13_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO14 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO14 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO14_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO15 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO15 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO15_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO16 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO16 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO16_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO17 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO17 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO17_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO18 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO18 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO18_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO19 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO19 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO19_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO20 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO20 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO20_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO21 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO21 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO21_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO22 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO22 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO22_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO23 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO23 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO23_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO24 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO24 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO24_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO25 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO25 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO25_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO26 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO26 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO26_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO27 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO27 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO27_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO28 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO28 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO28_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO29 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO29 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO29_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO30 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO30 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO30_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Writing 1 to this bit sets the DIO31 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOESET31_0_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Sets DIO31 in DOE31_0
      SET)
     with Size => 1;
   for GPIOA_DOESET31_0_DIO31_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Data output enable set 31 to 0
   type GPIOA_DOESET31_0_Register is record
      --  Write-only. Writing 1 to this bit sets the DIO0 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO0  : GPIOA_DOESET31_0_DIO0_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO1 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO1  : GPIOA_DOESET31_0_DIO1_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO2 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO2  : GPIOA_DOESET31_0_DIO2_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO3 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO3  : GPIOA_DOESET31_0_DIO3_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO4 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO4  : GPIOA_DOESET31_0_DIO4_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO5 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO5  : GPIOA_DOESET31_0_DIO5_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO6 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO6  : GPIOA_DOESET31_0_DIO6_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO7 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO7  : GPIOA_DOESET31_0_DIO7_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO8 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO8  : GPIOA_DOESET31_0_DIO8_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO9 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO9  : GPIOA_DOESET31_0_DIO9_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO10 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO10 : GPIOA_DOESET31_0_DIO10_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO11 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO11 : GPIOA_DOESET31_0_DIO11_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO12 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO12 : GPIOA_DOESET31_0_DIO12_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO13 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO13 : GPIOA_DOESET31_0_DIO13_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO14 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO14 : GPIOA_DOESET31_0_DIO14_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO15 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO15 : GPIOA_DOESET31_0_DIO15_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO16 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO16 : GPIOA_DOESET31_0_DIO16_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO17 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO17 : GPIOA_DOESET31_0_DIO17_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO18 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO18 : GPIOA_DOESET31_0_DIO18_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO19 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO19 : GPIOA_DOESET31_0_DIO19_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO20 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO20 : GPIOA_DOESET31_0_DIO20_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO21 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO21 : GPIOA_DOESET31_0_DIO21_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO22 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO22 : GPIOA_DOESET31_0_DIO22_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO23 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO23 : GPIOA_DOESET31_0_DIO23_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO24 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO24 : GPIOA_DOESET31_0_DIO24_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO25 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO25 : GPIOA_DOESET31_0_DIO25_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO26 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO26 : GPIOA_DOESET31_0_DIO26_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO27 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO27 : GPIOA_DOESET31_0_DIO27_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO28 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO28 : GPIOA_DOESET31_0_DIO28_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO29 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO29 : GPIOA_DOESET31_0_DIO29_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO30 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO30 : GPIOA_DOESET31_0_DIO30_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit sets the DIO31 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO31 : GPIOA_DOESET31_0_DIO31_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOESET31_0_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  Writing 1 to this bit clears the DIO0 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO0_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO0 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO1 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO1_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO1 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO1_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO2 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO2_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO2 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO2_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO3 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO3_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO3 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO3_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO4 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO4_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO4 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO4_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO5 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO5_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO5 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO5_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO6 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO6_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO6 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO6_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO7 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO7_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO7 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO7_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO8 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO8_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO8 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO8_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO9 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO9_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO9 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO9_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO10 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO10_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO10 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO10_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO11 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO11_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO11 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO11_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO12 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO12_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO12 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO12_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO13 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO13_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO13 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO13_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO14 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO14_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO14 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO14_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO15 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO15_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO15 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO15_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO16 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO16_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO16 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO16_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO17 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO17_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO17 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO17_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO18 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO18_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO18 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO18_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO19 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO19_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO19 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO19_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO20 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO20_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO20 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO20_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO21 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO21_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO21 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO21_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO22 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO22_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO22 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO22_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO23 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO23_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO23 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO23_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO24 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO24_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO24 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO24_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO25 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO25_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO25 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO25_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO26 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO26_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO26 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO26_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO27 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO27_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO27 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO27_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO28 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO28_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO28 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO28_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO29 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO29_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO29 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO29_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO30 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO30_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO30 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO30_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing 1 to this bit clears the DIO31 bit in the DOE31_0 register.
   --  Writing 0 has no effect.
   type GPIOA_DOECLR31_0_DIO31_Field is
     (--  No effect
      NO_EFFECT,
      --  Clears DIO31 in DOE31_0
      CLR)
     with Size => 1;
   for GPIOA_DOECLR31_0_DIO31_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Data output enable clear 31 to 0
   type GPIOA_DOECLR31_0_Register is record
      --  Write-only. Writing 1 to this bit clears the DIO0 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO0  : GPIOA_DOECLR31_0_DIO0_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO1 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO1  : GPIOA_DOECLR31_0_DIO1_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO2 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO2  : GPIOA_DOECLR31_0_DIO2_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO3 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO3  : GPIOA_DOECLR31_0_DIO3_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO4 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO4  : GPIOA_DOECLR31_0_DIO4_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO5 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO5  : GPIOA_DOECLR31_0_DIO5_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO6 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO6  : GPIOA_DOECLR31_0_DIO6_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO7 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO7  : GPIOA_DOECLR31_0_DIO7_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO8 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO8  : GPIOA_DOECLR31_0_DIO8_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO9 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO9  : GPIOA_DOECLR31_0_DIO9_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO10 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO10 : GPIOA_DOECLR31_0_DIO10_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO11 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO11 : GPIOA_DOECLR31_0_DIO11_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO12 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO12 : GPIOA_DOECLR31_0_DIO12_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO13 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO13 : GPIOA_DOECLR31_0_DIO13_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO14 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO14 : GPIOA_DOECLR31_0_DIO14_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO15 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO15 : GPIOA_DOECLR31_0_DIO15_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO16 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO16 : GPIOA_DOECLR31_0_DIO16_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO17 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO17 : GPIOA_DOECLR31_0_DIO17_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO18 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO18 : GPIOA_DOECLR31_0_DIO18_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO19 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO19 : GPIOA_DOECLR31_0_DIO19_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO20 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO20 : GPIOA_DOECLR31_0_DIO20_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO21 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO21 : GPIOA_DOECLR31_0_DIO21_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO22 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO22 : GPIOA_DOECLR31_0_DIO22_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO23 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO23 : GPIOA_DOECLR31_0_DIO23_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO24 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO24 : GPIOA_DOECLR31_0_DIO24_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO25 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO25 : GPIOA_DOECLR31_0_DIO25_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO26 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO26 : GPIOA_DOECLR31_0_DIO26_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO27 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO27 : GPIOA_DOECLR31_0_DIO27_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO28 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO28 : GPIOA_DOECLR31_0_DIO28_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO29 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO29 : GPIOA_DOECLR31_0_DIO29_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO30 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO30 : GPIOA_DOECLR31_0_DIO30_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
      --  Write-only. Writing 1 to this bit clears the DIO31 bit in the DOE31_0
      --  register. Writing 0 has no effect.
      DIO31 : GPIOA_DOECLR31_0_DIO31_Field := MSPMC1104_SVD.GPIOA.NO_EFFECT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DOECLR31_0_Register use record
      DIO0  at 0 range 0 .. 0;
      DIO1  at 0 range 1 .. 1;
      DIO2  at 0 range 2 .. 2;
      DIO3  at 0 range 3 .. 3;
      DIO4  at 0 range 4 .. 4;
      DIO5  at 0 range 5 .. 5;
      DIO6  at 0 range 6 .. 6;
      DIO7  at 0 range 7 .. 7;
      DIO8  at 0 range 8 .. 8;
      DIO9  at 0 range 9 .. 9;
      DIO10 at 0 range 10 .. 10;
      DIO11 at 0 range 11 .. 11;
      DIO12 at 0 range 12 .. 12;
      DIO13 at 0 range 13 .. 13;
      DIO14 at 0 range 14 .. 14;
      DIO15 at 0 range 15 .. 15;
      DIO16 at 0 range 16 .. 16;
      DIO17 at 0 range 17 .. 17;
      DIO18 at 0 range 18 .. 18;
      DIO19 at 0 range 19 .. 19;
      DIO20 at 0 range 20 .. 20;
      DIO21 at 0 range 21 .. 21;
      DIO22 at 0 range 22 .. 22;
      DIO23 at 0 range 23 .. 23;
      DIO24 at 0 range 24 .. 24;
      DIO25 at 0 range 25 .. 25;
      DIO26 at 0 range 26 .. 26;
      DIO27 at 0 range 27 .. 27;
      DIO28 at 0 range 28 .. 28;
      DIO29 at 0 range 29 .. 29;
      DIO30 at 0 range 30 .. 30;
      DIO31 at 0 range 31 .. 31;
   end record;

   --  This bit reads the data input value of DIO0.
   type GPIOA_DIN3_0_DIO0_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN3_0_DIO0_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO1.
   type GPIOA_DIN3_0_DIO1_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN3_0_DIO1_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO2.
   type GPIOA_DIN3_0_DIO2_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN3_0_DIO2_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO3.
   type GPIOA_DIN3_0_DIO3_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN3_0_DIO3_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 3 to 0
   type GPIOA_DIN3_0_Register is record
      --  Read-only. This bit reads the data input value of DIO0.
      DIO0           : GPIOA_DIN3_0_DIO0_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO1.
      DIO1           : GPIOA_DIN3_0_DIO1_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO2.
      DIO2           : GPIOA_DIN3_0_DIO2_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO3.
      DIO3           : GPIOA_DIN3_0_DIO3_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN3_0_Register use record
      DIO0           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO1           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO2           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO3           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO4.
   type GPIOA_DIN7_4_DIO4_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN7_4_DIO4_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO5.
   type GPIOA_DIN7_4_DIO5_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN7_4_DIO5_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO6.
   type GPIOA_DIN7_4_DIO6_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN7_4_DIO6_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO7.
   type GPIOA_DIN7_4_DIO7_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN7_4_DIO7_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 7 to 4
   type GPIOA_DIN7_4_Register is record
      --  Read-only. This bit reads the data input value of DIO4.
      DIO4           : GPIOA_DIN7_4_DIO4_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO5.
      DIO5           : GPIOA_DIN7_4_DIO5_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO6.
      DIO6           : GPIOA_DIN7_4_DIO6_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO7.
      DIO7           : GPIOA_DIN7_4_DIO7_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN7_4_Register use record
      DIO4           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO5           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO6           at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO7           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO8.
   type GPIOA_DIN11_8_DIO8_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN11_8_DIO8_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO9.
   type GPIOA_DIN11_8_DIO9_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN11_8_DIO9_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO10.
   type GPIOA_DIN11_8_DIO10_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN11_8_DIO10_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO11.
   type GPIOA_DIN11_8_DIO11_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN11_8_DIO11_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 11 to 8
   type GPIOA_DIN11_8_Register is record
      --  Read-only. This bit reads the data input value of DIO8.
      DIO8           : GPIOA_DIN11_8_DIO8_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO9.
      DIO9           : GPIOA_DIN11_8_DIO9_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO10.
      DIO10          : GPIOA_DIN11_8_DIO10_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO11.
      DIO11          : GPIOA_DIN11_8_DIO11_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN11_8_Register use record
      DIO8           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO9           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO10          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO11          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO12.
   type GPIOA_DIN15_12_DIO12_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN15_12_DIO12_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO13.
   type GPIOA_DIN15_12_DIO13_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN15_12_DIO13_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO14.
   type GPIOA_DIN15_12_DIO14_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN15_12_DIO14_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO15.
   type GPIOA_DIN15_12_DIO15_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN15_12_DIO15_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 15 to 12
   type GPIOA_DIN15_12_Register is record
      --  Read-only. This bit reads the data input value of DIO12.
      DIO12          : GPIOA_DIN15_12_DIO12_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO13.
      DIO13          : GPIOA_DIN15_12_DIO13_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO14.
      DIO14          : GPIOA_DIN15_12_DIO14_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO15.
      DIO15          : GPIOA_DIN15_12_DIO15_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN15_12_Register use record
      DIO12          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO13          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO14          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO15          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO16.
   type GPIOA_DIN19_16_DIO16_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN19_16_DIO16_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO17.
   type GPIOA_DIN19_16_DIO17_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN19_16_DIO17_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO18.
   type GPIOA_DIN19_16_DIO18_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN19_16_DIO18_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO19.
   type GPIOA_DIN19_16_DIO19_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN19_16_DIO19_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 19 to 16
   type GPIOA_DIN19_16_Register is record
      --  Read-only. This bit reads the data input value of DIO16.
      DIO16          : GPIOA_DIN19_16_DIO16_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO17.
      DIO17          : GPIOA_DIN19_16_DIO17_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO18.
      DIO18          : GPIOA_DIN19_16_DIO18_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO19.
      DIO19          : GPIOA_DIN19_16_DIO19_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN19_16_Register use record
      DIO16          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO17          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO18          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO19          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO20.
   type GPIOA_DIN23_20_DIO20_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN23_20_DIO20_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO21.
   type GPIOA_DIN23_20_DIO21_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN23_20_DIO21_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO22.
   type GPIOA_DIN23_20_DIO22_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN23_20_DIO22_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO23.
   type GPIOA_DIN23_20_DIO23_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN23_20_DIO23_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 23 to 20
   type GPIOA_DIN23_20_Register is record
      --  Read-only. This bit reads the data input value of DIO20.
      DIO20          : GPIOA_DIN23_20_DIO20_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO21.
      DIO21          : GPIOA_DIN23_20_DIO21_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO22.
      DIO22          : GPIOA_DIN23_20_DIO22_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO23.
      DIO23          : GPIOA_DIN23_20_DIO23_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN23_20_Register use record
      DIO20          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO21          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO22          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO23          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO24.
   type GPIOA_DIN27_24_DIO24_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN27_24_DIO24_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO25.
   type GPIOA_DIN27_24_DIO25_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN27_24_DIO25_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO26.
   type GPIOA_DIN27_24_DIO26_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN27_24_DIO26_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO27.
   type GPIOA_DIN27_24_DIO27_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN27_24_DIO27_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 27 to 24
   type GPIOA_DIN27_24_Register is record
      --  Read-only. This bit reads the data input value of DIO24.
      DIO24          : GPIOA_DIN27_24_DIO24_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO25.
      DIO25          : GPIOA_DIN27_24_DIO25_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO26.
      DIO26          : GPIOA_DIN27_24_DIO26_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO27.
      DIO27          : GPIOA_DIN27_24_DIO27_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN27_24_Register use record
      DIO24          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO25          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO26          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO27          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO28.
   type GPIOA_DIN31_28_DIO28_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN31_28_DIO28_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO29.
   type GPIOA_DIN31_28_DIO29_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN31_28_DIO29_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO30.
   type GPIOA_DIN31_28_DIO30_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN31_28_DIO30_Field use
     (ZERO => 0,
      ONE => 1);

   --  This bit reads the data input value of DIO31.
   type GPIOA_DIN31_28_DIO31_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN31_28_DIO31_Field use
     (ZERO => 0,
      ONE => 1);

   --  Data input 31 to 28
   type GPIOA_DIN31_28_Register is record
      --  Read-only. This bit reads the data input value of DIO28.
      DIO28          : GPIOA_DIN31_28_DIO28_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO29.
      DIO29          : GPIOA_DIN31_28_DIO29_Field;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO30.
      DIO30          : GPIOA_DIN31_28_DIO30_Field;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. This bit reads the data input value of DIO31.
      DIO31          : GPIOA_DIN31_28_DIO31_Field;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN31_28_Register use record
      DIO28          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DIO29          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DIO30          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      DIO31          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  This bit reads the data input value of DIO0.
   type GPIOA_DIN31_0_DIO0_Field is
     (--  Input value is 0
      ZERO,
      --  Input value is 1
      ONE)
     with Size => 1;
   for GPIOA_DIN31_0_DIO0_Field use
     (ZERO => 0,
      ONE => 1);

   --  GPIOA_DIN31_0_DIO array
   type GPIOA_DIN31_0_DIO_Field_Array is array (0 .. 31)
     of GPIOA_DIN31_0_DIO0_Field
     with Component_Size => 1, Size => 32;

   --  Data input 31 to 0
   type GPIOA_DIN31_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_DIN31_0_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DIN31_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Enables and configures edge detection polarity for DIO0.
   type GPIOA_POLARITY15_0_DIO0_Field is
     (--  Edge detection disabled
      DISABLE,
      --  Detects rising edge of input event
      RISE,
      --  Detects falling edge of input event
      FALL,
      --  Detects both rising and falling edge of input event
      RISE_FALL)
     with Size => 2;
   for GPIOA_POLARITY15_0_DIO0_Field use
     (DISABLE => 0,
      RISE => 1,
      FALL => 2,
      RISE_FALL => 3);

   --  GPIOA_POLARITY15_0_DIO array
   type GPIOA_POLARITY15_0_DIO_Field_Array is array (0 .. 15)
     of GPIOA_POLARITY15_0_DIO0_Field
     with Component_Size => 2, Size => 32;

   --  Polarity 15 to 0
   type GPIOA_POLARITY15_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_POLARITY15_0_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_POLARITY15_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Enables and configures edge detection polarity for DIO16.
   type GPIOA_POLARITY31_16_DIO16_Field is
     (--  Edge detection disabled
      DISABLE,
      --  Detects rising edge of input event
      RISE,
      --  Detects falling edge of input event
      FALL,
      --  Detects both rising and falling edge of input event
      RISE_FALL)
     with Size => 2;
   for GPIOA_POLARITY31_16_DIO16_Field use
     (DISABLE => 0,
      RISE => 1,
      FALL => 2,
      RISE_FALL => 3);

   --  GPIOA_POLARITY31_16_DIO array
   type GPIOA_POLARITY31_16_DIO_Field_Array is array (16 .. 31)
     of GPIOA_POLARITY31_16_DIO16_Field
     with Component_Size => 2, Size => 32;

   --  Polarity 31 to 16
   type GPIOA_POLARITY31_16_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIO as a value
            Val : HAL.UInt32;
         when True =>
            --  DIO as an array
            Arr : GPIOA_POLARITY31_16_DIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_POLARITY31_16_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  FASTWAKEONLY for the global control of fastwake
   type GPIOA_CTL_FASTWAKEONLY_Field is
     (--  The global control of fastwake is not enabled, per bit fast wake feature
--  depends on FASTWAKE.DIN
      NOT_GLOBAL_EN,
      --  The global control of fastwake is enabled
      GLOBAL_EN)
     with Size => 1;
   for GPIOA_CTL_FASTWAKEONLY_Field use
     (NOT_GLOBAL_EN => 0,
      GLOBAL_EN => 1);

   --  FAST WAKE GLOBAL EN
   type GPIOA_CTL_Register is record
      --  FASTWAKEONLY for the global control of fastwake
      FASTWAKEONLY  : GPIOA_CTL_FASTWAKEONLY_Field :=
                       MSPMC1104_SVD.GPIOA.NOT_GLOBAL_EN;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_CTL_Register use record
      FASTWAKEONLY  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable fastwake feature for DIN0
   type GPIOA_FASTWAKE_DIN0_Field is
     (--  fastwake feature is disabled
      DISABLE,
      --  fastwake feature is enabled
      ENABLE)
     with Size => 1;
   for GPIOA_FASTWAKE_DIN0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  GPIOA_FASTWAKE_DIN array
   type GPIOA_FASTWAKE_DIN_Field_Array is array (0 .. 31)
     of GPIOA_FASTWAKE_DIN0_Field
     with Component_Size => 1, Size => 32;

   --  FAST WAKE ENABLE
   type GPIOA_FASTWAKE_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIN as a value
            Val : HAL.UInt32;
         when True =>
            --  DIN as an array
            Arr : GPIOA_FASTWAKE_DIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FASTWAKE_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  This bit is used to enable subscriber 0 event.
   type GPIOA_SUB0CFG_ENABLE_Field is
     (--  Subscriber 0 event is disabled
      CLR,
      --  Subscriber 0 event is enabled
      SET)
     with Size => 1;
   for GPIOA_SUB0CFG_ENABLE_Field use
     (CLR => 0,
      SET => 1);

   --  These bits configure the output policy for subscriber 0 event.
   type GPIOA_SUB0CFG_OUTPOLICY_Field is
     (--  Selected DIO pins are set
      SET,
      --  Selected DIO pins are cleared
      CLR,
      --  Selected DIO pins are toggled
      TOGGLE)
     with Size => 2;
   for GPIOA_SUB0CFG_OUTPOLICY_Field use
     (SET => 0,
      CLR => 1,
      TOGGLE => 2);

   --  Indicates the specific bit among lower 16 bits that is targeted by the
   --  subscriber action
   type GPIOA_SUB0CFG_INDEX_Field is
     (--  specific bit targeted by the subscriber action is bit0
      MIN,
      --  specific bit targeted by the subscriber action is bit15
      MAX)
     with Size => 4;
   for GPIOA_SUB0CFG_INDEX_Field use
     (MIN => 0,
      MAX => 15);

   --  Subscriber 0 configuration
   type GPIOA_SUB0CFG_Register is record
      --  This bit is used to enable subscriber 0 event.
      ENABLE         : GPIOA_SUB0CFG_ENABLE_Field := MSPMC1104_SVD.GPIOA.CLR;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  These bits configure the output policy for subscriber 0 event.
      OUTPOLICY      : GPIOA_SUB0CFG_OUTPOLICY_Field :=
                        MSPMC1104_SVD.GPIOA.SET;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  Indicates the specific bit among lower 16 bits that is targeted by
      --  the subscriber action
      INDEX          : GPIOA_SUB0CFG_INDEX_Field := MSPMC1104_SVD.GPIOA.MIN;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_SUB0CFG_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      OUTPOLICY      at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      INDEX          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Programmable counter length of digital glitch filter for DIN0
   type GPIOA_FILTEREN15_0_DIN0_Field is
     (--  No additional filter beyond the CDC synchronization sample
      DISABLE,
      --  1 ULPCLK minimum sample
      ONE_CYCLE,
      --  3 ULPCLK minimum sample
      THREE_CYCLE,
      --  8 ULPCLK minimum sample
      EIGHT_CYCLE)
     with Size => 2;
   for GPIOA_FILTEREN15_0_DIN0_Field use
     (DISABLE => 0,
      ONE_CYCLE => 1,
      THREE_CYCLE => 2,
      EIGHT_CYCLE => 3);

   --  GPIOA_FILTEREN15_0_DIN array
   type GPIOA_FILTEREN15_0_DIN_Field_Array is array (0 .. 15)
     of GPIOA_FILTEREN15_0_DIN0_Field
     with Component_Size => 2, Size => 32;

   --  Filter Enable 15 to 0
   type GPIOA_FILTEREN15_0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIN as a value
            Val : HAL.UInt32;
         when True =>
            --  DIN as an array
            Arr : GPIOA_FILTEREN15_0_DIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FILTEREN15_0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Programmable counter length of digital glitch filter for DIN16
   type GPIOA_FILTEREN31_16_DIN16_Field is
     (--  No additional filter beyond the CDC synchronization sample
      DISABLE,
      --  1 ULPCLK minimum sample
      ONE_CYCLE,
      --  3 ULPCLK minimum sample
      THREE_CYCLE,
      --  8 ULPCLK minimum sample
      EIGHT_CYCLE)
     with Size => 2;
   for GPIOA_FILTEREN31_16_DIN16_Field use
     (DISABLE => 0,
      ONE_CYCLE => 1,
      THREE_CYCLE => 2,
      EIGHT_CYCLE => 3);

   --  GPIOA_FILTEREN31_16_DIN array
   type GPIOA_FILTEREN31_16_DIN_Field_Array is array (16 .. 31)
     of GPIOA_FILTEREN31_16_DIN16_Field
     with Component_Size => 2, Size => 32;

   --  Filter Enable 31 to 16
   type GPIOA_FILTEREN31_16_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DIN as a value
            Val : HAL.UInt32;
         when True =>
            --  DIN as an array
            Arr : GPIOA_FILTEREN31_16_DIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_FILTEREN31_16_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  DMA is allowed to modify DOUT0
   type GPIOA_DMAMASK_DOUT0_Field is
     (--  DMA is not allowed to modify this bit lane
      DISABLE,
      --  DMA is allowed to modify this bit lane
      ENABLE)
     with Size => 1;
   for GPIOA_DMAMASK_DOUT0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  GPIOA_DMAMASK_DOUT array
   type GPIOA_DMAMASK_DOUT_Field_Array is array (0 .. 31)
     of GPIOA_DMAMASK_DOUT0_Field
     with Component_Size => 1, Size => 32;

   --  DMA Write MASK
   type GPIOA_DMAMASK_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DOUT as a value
            Val : HAL.UInt32;
         when True =>
            --  DOUT as an array
            Arr : GPIOA_DMAMASK_DOUT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_DMAMASK_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  This bit is used to enable subscriber 1 event.
   type GPIOA_SUB1CFG_ENABLE_Field is
     (--  Subscriber 1 event is disabled
      CLR,
      --  Subscriber 1 event is enabled
      SET)
     with Size => 1;
   for GPIOA_SUB1CFG_ENABLE_Field use
     (CLR => 0,
      SET => 1);

   --  These bits configure the output policy for subscriber 1 event.
   type GPIOA_SUB1CFG_OUTPOLICY_Field is
     (--  Selected DIO pins are set
      SET,
      --  Selected DIO pins are cleared
      CLR,
      --  Selected DIO pins are toggled
      TOGGLE)
     with Size => 2;
   for GPIOA_SUB1CFG_OUTPOLICY_Field use
     (SET => 0,
      CLR => 1,
      TOGGLE => 2);

   --  indicates the specific bit in the upper 16 bits that is targeted by the
   --  subscriber action
   type GPIOA_SUB1CFG_INDEX_Field is
     (--  specific bit targeted by the subscriber action is bit16
      MIN,
      --  specific bit targeted by the subscriber action is bit31
      MAX)
     with Size => 4;
   for GPIOA_SUB1CFG_INDEX_Field use
     (MIN => 0,
      MAX => 15);

   --  Subscriber 1 configuration
   type GPIOA_SUB1CFG_Register is record
      --  This bit is used to enable subscriber 1 event.
      ENABLE         : GPIOA_SUB1CFG_ENABLE_Field := MSPMC1104_SVD.GPIOA.CLR;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  These bits configure the output policy for subscriber 1 event.
      OUTPOLICY      : GPIOA_SUB1CFG_OUTPOLICY_Field :=
                        MSPMC1104_SVD.GPIOA.SET;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  indicates the specific bit in the upper 16 bits that is targeted by
      --  the subscriber action
      INDEX          : GPIOA_SUB1CFG_INDEX_Field := MSPMC1104_SVD.GPIOA.MIN;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPIOA_SUB1CFG_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      OUTPOLICY      at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      INDEX          at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type GPIOA_Peripheral is record
      --  Subsciber Port 0
      GPIOA_FSUB_0         : aliased GPIOA_FSUB_0_Register;
      --  Subscriber Port 1
      GPIOA_FSUB_1         : aliased GPIOA_FSUB_1_Register;
      --  Publisher Port 0
      GPIOA_FPUB_0         : aliased GPIOA_FPUB_0_Register;
      --  Publisher Port 1
      GPIOA_FPUB_1         : aliased GPIOA_FPUB_1_Register;
      GPIOA_GPRCM[%s]      : aliased GPIOA_GPRCM[%s]_Cluster;
      --  Clock Override
      GPIOA_CLKOVR         : aliased GPIOA_CLKOVR_Register;
      --  Peripheral Debug Control
      GPIOA_PDBGCTL        : aliased GPIOA_PDBGCTL_Register;
      GPIOA_INT_EVENT0[%s] : aliased GPIOA_INT_EVENT0[%s]_Cluster;
      GPIOA_INT_EVENT1[%s] : aliased GPIOA_INT_EVENT1[%s]_Cluster;
      GPIOA_INT_EVENT2[%s] : aliased GPIOA_INT_EVENT2[%s]_Cluster;
      --  Event Mode
      GPIOA_EVT_MODE       : aliased GPIOA_EVT_MODE_Register;
      --  Module Description
      GPIOA_DESC           : aliased GPIOA_DESC_Register;
      --  Data output 3 to 0
      GPIOA_DOUT3_0        : aliased GPIOA_DOUT3_0_Register;
      --  Data output 7 to 4
      GPIOA_DOUT7_4        : aliased GPIOA_DOUT7_4_Register;
      --  Data output 11 to 8
      GPIOA_DOUT11_8       : aliased GPIOA_DOUT11_8_Register;
      --  Data output 15 to 12
      GPIOA_DOUT15_12      : aliased GPIOA_DOUT15_12_Register;
      --  Data output 19 to 16
      GPIOA_DOUT19_16      : aliased GPIOA_DOUT19_16_Register;
      --  Data output 23 to 20
      GPIOA_DOUT23_20      : aliased GPIOA_DOUT23_20_Register;
      --  Data output 27 to 24
      GPIOA_DOUT27_24      : aliased GPIOA_DOUT27_24_Register;
      --  Data output 31 to 28
      GPIOA_DOUT31_28      : aliased GPIOA_DOUT31_28_Register;
      --  Data output 31 to 0
      GPIOA_DOUT31_0       : aliased GPIOA_DOUT31_0_Register;
      --  Data output set 31 to 0
      GPIOA_DOUTSET31_0    : aliased GPIOA_DOUTSET31_0_Register;
      --  Data output clear 31 to 0
      GPIOA_DOUTCLR31_0    : aliased GPIOA_DOUTCLR31_0_Register;
      --  Data output toggle 31 to 0
      GPIOA_DOUTTGL31_0    : aliased GPIOA_DOUTTGL31_0_Register;
      --  Data output enable 31 to 0
      GPIOA_DOE31_0        : aliased GPIOA_DOE31_0_Register;
      --  Data output enable set 31 to 0
      GPIOA_DOESET31_0     : aliased GPIOA_DOESET31_0_Register;
      --  Data output enable clear 31 to 0
      GPIOA_DOECLR31_0     : aliased GPIOA_DOECLR31_0_Register;
      --  Data input 3 to 0
      GPIOA_DIN3_0         : aliased GPIOA_DIN3_0_Register;
      --  Data input 7 to 4
      GPIOA_DIN7_4         : aliased GPIOA_DIN7_4_Register;
      --  Data input 11 to 8
      GPIOA_DIN11_8        : aliased GPIOA_DIN11_8_Register;
      --  Data input 15 to 12
      GPIOA_DIN15_12       : aliased GPIOA_DIN15_12_Register;
      --  Data input 19 to 16
      GPIOA_DIN19_16       : aliased GPIOA_DIN19_16_Register;
      --  Data input 23 to 20
      GPIOA_DIN23_20       : aliased GPIOA_DIN23_20_Register;
      --  Data input 27 to 24
      GPIOA_DIN27_24       : aliased GPIOA_DIN27_24_Register;
      --  Data input 31 to 28
      GPIOA_DIN31_28       : aliased GPIOA_DIN31_28_Register;
      --  Data input 31 to 0
      GPIOA_DIN31_0        : aliased GPIOA_DIN31_0_Register;
      --  Polarity 15 to 0
      GPIOA_POLARITY15_0   : aliased GPIOA_POLARITY15_0_Register;
      --  Polarity 31 to 16
      GPIOA_POLARITY31_16  : aliased GPIOA_POLARITY31_16_Register;
      --  FAST WAKE GLOBAL EN
      GPIOA_CTL            : aliased GPIOA_CTL_Register;
      --  FAST WAKE ENABLE
      GPIOA_FASTWAKE       : aliased GPIOA_FASTWAKE_Register;
      --  Subscriber 0 configuration
      GPIOA_SUB0CFG        : aliased GPIOA_SUB0CFG_Register;
      --  Filter Enable 15 to 0
      GPIOA_FILTEREN15_0   : aliased GPIOA_FILTEREN15_0_Register;
      --  Filter Enable 31 to 16
      GPIOA_FILTEREN31_16  : aliased GPIOA_FILTEREN31_16_Register;
      --  DMA Write MASK
      GPIOA_DMAMASK        : aliased GPIOA_DMAMASK_Register;
      --  Subscriber 1 configuration
      GPIOA_SUB1CFG        : aliased GPIOA_SUB1CFG_Register;
   end record
     with Volatile;

   for GPIOA_Peripheral use record
      GPIOA_FSUB_0         at 16#400# range 0 .. 31;
      GPIOA_FSUB_1         at 16#404# range 0 .. 31;
      GPIOA_FPUB_0         at 16#444# range 0 .. 31;
      GPIOA_FPUB_1         at 16#448# range 0 .. 31;
      GPIOA_GPRCM[%s]      at 16#800# range 0 .. 191;
      GPIOA_CLKOVR         at 16#1010# range 0 .. 31;
      GPIOA_PDBGCTL        at 16#1018# range 0 .. 31;
      GPIOA_INT_EVENT0[%s] at 16#1020# range 0 .. 351;
      GPIOA_INT_EVENT1[%s] at 16#1050# range 0 .. 351;
      GPIOA_INT_EVENT2[%s] at 16#1080# range 0 .. 351;
      GPIOA_EVT_MODE       at 16#10E0# range 0 .. 31;
      GPIOA_DESC           at 16#10FC# range 0 .. 31;
      GPIOA_DOUT3_0        at 16#1200# range 0 .. 31;
      GPIOA_DOUT7_4        at 16#1204# range 0 .. 31;
      GPIOA_DOUT11_8       at 16#1208# range 0 .. 31;
      GPIOA_DOUT15_12      at 16#120C# range 0 .. 31;
      GPIOA_DOUT19_16      at 16#1210# range 0 .. 31;
      GPIOA_DOUT23_20      at 16#1214# range 0 .. 31;
      GPIOA_DOUT27_24      at 16#1218# range 0 .. 31;
      GPIOA_DOUT31_28      at 16#121C# range 0 .. 31;
      GPIOA_DOUT31_0       at 16#1280# range 0 .. 31;
      GPIOA_DOUTSET31_0    at 16#1290# range 0 .. 31;
      GPIOA_DOUTCLR31_0    at 16#12A0# range 0 .. 31;
      GPIOA_DOUTTGL31_0    at 16#12B0# range 0 .. 31;
      GPIOA_DOE31_0        at 16#12C0# range 0 .. 31;
      GPIOA_DOESET31_0     at 16#12D0# range 0 .. 31;
      GPIOA_DOECLR31_0     at 16#12E0# range 0 .. 31;
      GPIOA_DIN3_0         at 16#1300# range 0 .. 31;
      GPIOA_DIN7_4         at 16#1304# range 0 .. 31;
      GPIOA_DIN11_8        at 16#1308# range 0 .. 31;
      GPIOA_DIN15_12       at 16#130C# range 0 .. 31;
      GPIOA_DIN19_16       at 16#1310# range 0 .. 31;
      GPIOA_DIN23_20       at 16#1314# range 0 .. 31;
      GPIOA_DIN27_24       at 16#1318# range 0 .. 31;
      GPIOA_DIN31_28       at 16#131C# range 0 .. 31;
      GPIOA_DIN31_0        at 16#1380# range 0 .. 31;
      GPIOA_POLARITY15_0   at 16#1390# range 0 .. 31;
      GPIOA_POLARITY31_16  at 16#13A0# range 0 .. 31;
      GPIOA_CTL            at 16#1400# range 0 .. 31;
      GPIOA_FASTWAKE       at 16#1404# range 0 .. 31;
      GPIOA_SUB0CFG        at 16#1500# range 0 .. 31;
      GPIOA_FILTEREN15_0   at 16#1508# range 0 .. 31;
      GPIOA_FILTEREN31_16  at 16#150C# range 0 .. 31;
      GPIOA_DMAMASK        at 16#1510# range 0 .. 31;
      GPIOA_SUB1CFG        at 16#1520# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   GPIOA_Periph : aliased GPIOA_Peripheral
     with Import, Address => GPIOA_Base;

end MSPMC1104_SVD.GPIOA;
