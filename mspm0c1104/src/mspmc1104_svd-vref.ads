pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.VREF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------------------------
   -- VREF_GPRCM[%s] cluster's Registers --
   ----------------------------------------

   --  Enable the power
   type VREF_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for VREF_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type VREF_PWREN_VREF_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : VREF_PWREN_ENABLE_Field := MSPMC1104_SVD.VREF.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_PWREN_VREF_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type VREF_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for VREF_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type VREF_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for VREF_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type VREF_RSTCTL_VREF_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : VREF_RSTCTL_RESETASSERT_Field := MSPMC1104_SVD.VREF.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : VREF_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.VREF.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_RSTCTL_VREF_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type VREF_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for VREF_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type VREF_STAT_VREF_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : VREF_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_STAT_VREF_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type VREF_GPRCM[%s]_Cluster is record
      --  Power enable
      VREF_PWREN  : aliased VREF_PWREN_VREF_GPRCM[%s]_Register;
      --  Reset Control
      VREF_RSTCTL : aliased VREF_RSTCTL_VREF_GPRCM[%s]_Register;
      --  Status Register
      VREF_STAT   : aliased VREF_STAT_VREF_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for VREF_GPRCM[%s]_Cluster use record
      VREF_PWREN  at 16#0# range 0 .. 31;
      VREF_RSTCTL at 16#4# range 0 .. 31;
      VREF_STAT   at 16#14# range 0 .. 31;
   end record;

   subtype VREF_CLKDIV_RATIO_Field is HAL.UInt3;

   --  Clock Divider
   type VREF_CLKDIV_Register is record
      --  Selects divide ratio of module clock to be used in sample and hold
      --  logic
      RATIO         : VREF_CLKDIV_RATIO_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_CLKDIV_Register use record
      RATIO         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type VREF_CLKSEL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Selects LFCLK as clock source if enabled
      LFCLK_SEL     : Boolean := False;
      --  Selects MFCLK as clock source if enabled
      MFCLK_SEL     : Boolean := False;
      --  Selects BUSCLK as clock source if enabled
      BUSCLK_SEL    : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_CLKSEL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LFCLK_SEL     at 0 range 1 .. 1;
      MFCLK_SEL     at 0 range 2 .. 2;
      BUSCLK_SEL    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  This bit enables the VREF module.
   type VREF_CTL0_ENABLE_Field is
     (--  VREF is disabled
      DISABLE,
      --  VREF is enabled
      ENABLE)
     with Size => 1;
   for VREF_CTL0_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Comparator Vref Enable
   type VREF_CTL0_COMP_VREF_ENABLE_Field is
     (--  COMP VREF is disabled
      DISABLE,
      --  COMP VREF is enabled
      ENABLE)
     with Size => 1;
   for VREF_CTL0_COMP_VREF_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  These bits configure output buffer.
   type VREF_CTL0_BUFCONFIG_Field is
     (--  Configure Output Buffer to 2.5v
      OUTPUT2P5V,
      --  Configure Output Buffer to 1.4v
      OUTPUT1P4V)
     with Size => 1;
   for VREF_CTL0_BUFCONFIG_Field use
     (OUTPUT2P5V => 0,
      OUTPUT1P4V => 1);

   --  This bit enable sample and hold mode
   type VREF_CTL0_SHMODE_Field is
     (--  Sample and hold mode is disable
      DISABLE,
      --  Sample and hold mode is enable
      Enable)
     with Size => 1;
   for VREF_CTL0_SHMODE_Field use
     (DISABLE => 0,
      Enable => 1);

   --  Control 0
   type VREF_CTL0_Register is record
      --  This bit enables the VREF module.
      ENABLE           : VREF_CTL0_ENABLE_Field := MSPMC1104_SVD.VREF.DISABLE;
      --  Comparator Vref Enable
      COMP_VREF_ENABLE : VREF_CTL0_COMP_VREF_ENABLE_Field :=
                          MSPMC1104_SVD.VREF.DISABLE;
      --  unspecified
      Reserved_2_6     : HAL.UInt5 := 16#0#;
      --  These bits configure output buffer.
      BUFCONFIG        : VREF_CTL0_BUFCONFIG_Field :=
                          MSPMC1104_SVD.VREF.OUTPUT2P5V;
      --  This bit enable sample and hold mode
      SHMODE           : VREF_CTL0_SHMODE_Field := MSPMC1104_SVD.VREF.DISABLE;
      --  unspecified
      Reserved_9_31    : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_CTL0_Register use record
      ENABLE           at 0 range 0 .. 0;
      COMP_VREF_ENABLE at 0 range 1 .. 1;
      Reserved_2_6     at 0 range 2 .. 6;
      BUFCONFIG        at 0 range 7 .. 7;
      SHMODE           at 0 range 8 .. 8;
      Reserved_9_31    at 0 range 9 .. 31;
   end record;

   --  These bits defines status of VREF
   type VREF_CTL1_READY_Field is
     (--  VREF output is not ready
      NOTRDY,
      --  VREF output is ready
      RDY)
     with Size => 1;
   for VREF_CTL1_READY_Field use
     (NOTRDY => 0,
      RDY => 1);

   --  Control 1
   type VREF_CTL1_Register is record
      --  Read-only. These bits defines status of VREF
      READY         : VREF_CTL1_READY_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_CTL1_Register use record
      READY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VREF_CTL2_SHCYCLE_Field is HAL.UInt16;
   subtype VREF_CTL2_HCYCLE_Field is HAL.UInt16;

   --  Control 2
   type VREF_CTL2_Register is record
      --  Sample and Hold cycle count Total cycles of module clock for sample
      --  and hold phase when VREF is working in sample and hold mode in
      --  STANDBY to save power. This field should be greater than HCYCLE
      --  field. The difference between this field and HCYCLE gives the number
      --  of cycles of sample phase. Please refer VREF section of datasheet for
      --  recommended values of sample and hold times.
      SHCYCLE : VREF_CTL2_SHCYCLE_Field := 16#0#;
      --  Hold cycle count Total cycles of module clock for hold phase when
      --  VREF is working in sample and hold mode in STANDBY to save power.
      --  Please refer VREF section of datasheet for recommended values of
      --  sample and hold times.
      HCYCLE  : VREF_CTL2_HCYCLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VREF_CTL2_Register use record
      SHCYCLE at 0 range 0 .. 15;
      HCYCLE  at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type VREF_Peripheral is record
      VREF_GPRCM[%s] : aliased VREF_GPRCM[%s]_Cluster;
      --  Clock Divider
      VREF_CLKDIV    : aliased VREF_CLKDIV_Register;
      --  Clock Selection
      VREF_CLKSEL    : aliased VREF_CLKSEL_Register;
      --  Control 0
      VREF_CTL0      : aliased VREF_CTL0_Register;
      --  Control 1
      VREF_CTL1      : aliased VREF_CTL1_Register;
      --  Control 2
      VREF_CTL2      : aliased VREF_CTL2_Register;
   end record
     with Volatile;

   for VREF_Peripheral use record
      VREF_GPRCM[%s] at 16#800# range 0 .. 191;
      VREF_CLKDIV    at 16#1000# range 0 .. 31;
      VREF_CLKSEL    at 16#1008# range 0 .. 31;
      VREF_CTL0      at 16#1100# range 0 .. 31;
      VREF_CTL1      at 16#1104# range 0 .. 31;
      VREF_CTL2      at 16#1108# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   VREF_Periph : aliased VREF_Peripheral
     with Import, Address => VREF_Base;

end MSPMC1104_SVD.VREF;
