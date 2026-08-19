pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.ADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type ADC0_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for ADC0_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Configuration Register.
   type ADC0_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : ADC0_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.ADC.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type ADC0_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for ADC0_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Configuration Register.
   type ADC0_FPUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : ADC0_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.ADC.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ----------------------------------------
   -- ADC0_GPRCM[%s] cluster's Registers --
   ----------------------------------------

   --  Enable the power
   type ADC0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for ADC0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type ADC0_PWREN_ADC0_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : ADC0_PWREN_ENABLE_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_PWREN_ADC0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type ADC0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for ADC0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type ADC0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for ADC0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type ADC0_RSTCTL_ADC0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : ADC0_RSTCTL_RESETASSERT_Field := MSPMC1104_SVD.ADC.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : ADC0_RSTCTL_RESETSTKYCLR_Field := MSPMC1104_SVD.ADC.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_RSTCTL_ADC0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  ADC sample clock source selection.
   type ADC0_CLKCFG_SAMPCLK_Field is
     (--  ULPCLK is the source of ADC sample clock.
      ULPCLK,
      --  SYSOSC is the source of ADC sample clock.
      SYSOSC,
      --  HFCLK clock is the source of ADC sample clock. Note : HFCLK may not be
--  available on all the devices.
      HFCLK)
     with Size => 2;
   for ADC0_CLKCFG_SAMPCLK_Field use
     (ULPCLK => 0,
      SYSOSC => 1,
      HFCLK => 2);

   --  CCONRUN: Forces SYSOSC to run at base frequency when device is in RUN
   --  mode which can be used as ADC sample or conversion clock source.
   type ADC0_CLKCFG_CCONRUN_Field is
     (--  ADC conversion clock source is not kept continuously on during RUN mode.
      DISABLE,
      --  ADC conversion clock source kept continuously on during RUN mode.
      ENABLE)
     with Size => 1;
   for ADC0_CLKCFG_CCONRUN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  CCONSTOP: Forces SYSOSC to run at base frequency when device is in STOP
   --  mode which can be used as ADC sample or conversion clock source.
   type ADC0_CLKCFG_CCONSTOP_Field is
     (--  ADC conversion clock source is not kept continuously on during STOP mode.
      DISABLE,
      --  ADC conversion clock source kept continuously on during STOP mode.
      ENABLE)
     with Size => 1;
   for ADC0_CLKCFG_CCONSTOP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  ADC clock configuration Register
   type ADC0_CLKCFG_ADC0_GPRCM[%s]_Register is record
      --  ADC sample clock source selection.
      SAMPCLK       : ADC0_CLKCFG_SAMPCLK_Field := MSPMC1104_SVD.ADC.ULPCLK;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  CCONRUN: Forces SYSOSC to run at base frequency when device is in RUN
      --  mode which can be used as ADC sample or conversion clock source.
      CCONRUN       : ADC0_CLKCFG_CCONRUN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  CCONSTOP: Forces SYSOSC to run at base frequency when device is in
      --  STOP mode which can be used as ADC sample or conversion clock source.
      CCONSTOP      : ADC0_CLKCFG_CCONSTOP_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLKCFG_ADC0_GPRCM[%s]_Register use record
      SAMPCLK       at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      CCONRUN       at 0 range 4 .. 4;
      CCONSTOP      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type ADC0_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for ADC0_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type ADC0_STAT_ADC0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : ADC0_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_STAT_ADC0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type ADC0_GPRCM[%s]_Cluster is record
      --  Power enable
      ADC0_PWREN  : aliased ADC0_PWREN_ADC0_GPRCM[%s]_Register;
      --  Reset Control
      ADC0_RSTCTL : aliased ADC0_RSTCTL_ADC0_GPRCM[%s]_Register;
      --  ADC clock configuration Register
      ADC0_CLKCFG : aliased ADC0_CLKCFG_ADC0_GPRCM[%s]_Register;
      --  Status Register
      ADC0_STAT   : aliased ADC0_STAT_ADC0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for ADC0_GPRCM[%s]_Cluster use record
      ADC0_PWREN  at 16#0# range 0 .. 31;
      ADC0_RSTCTL at 16#4# range 0 .. 31;
      ADC0_CLKCFG at 16#8# range 0 .. 31;
      ADC0_STAT   at 16#14# range 0 .. 31;
   end record;

   ------------------------------------------
   -- ADC0_CPU_INT[%s] cluster's Registers --
   ------------------------------------------

   --  Interrupt index status
   type ADC0_CPU_INT_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  MEMRESx overflow interrupt
      OVIFG,
      --  Sequence Conversion time overflow interrupt
      TOVIFG,
      --  High threshold compare interrupt
      HIGHIFG,
      --  Low threshold compare interrupt
      LOWIFG,
      --  Primary Sequence In range comparator interrupt
      INIFG,
      --  DMA done interrupt, generated on DMA transfer completion,
      DMADONE,
      --  MEMRESx underflow interrupt
      UVIFG,
      --  MEMRES0 data loaded interrupt
      MEMRESIFG0,
      --  MEMRES1 data loaded interrupt
      MEMRESIFG1,
      --  MEMRES2 data loaded interrupt
      MEMRESIFG2,
      --  MEMRES3 data loaded interrupt
      MEMRESIFG3,
      --  MEMRES4 data loaded interrupt
      MEMRESIFG4,
      --  MEMRES5 data loaded interrupt
      MEMRESIFG5,
      --  MEMRES6 data loaded interrupt
      MEMRESIFG6,
      --  MEMRES7 data loaded interrupt
      MEMRESIFG7,
      --  MEMRES8 data loaded interrupt
      MEMRESIFG8,
      --  MEMRES9 data loaded interrupt
      MEMRESIFG9,
      --  MEMRES10 data loaded interrupt
      MEMRESIFG10,
      --  MEMRES11 data loaded interrupt
      MEMRESIFG11,
      --  MEMRES12 data loaded interrupt
      MEMRESIFG12,
      --  MEMRES13 data loaded interrupt
      MEMRESIFG13,
      --  MEMRES14 data loaded interrupt
      MEMRESIFG14,
      --  MEMRES15 data loaded interrupt
      MEMRESIFG15,
      --  MEMRES16 data loaded interrupt
      MEMRESIFG16,
      --  MEMRES17 data loaded interrupt
      MEMRESIFG17,
      --  MEMRES18 data loaded interrupt
      MEMRESIFG18,
      --  MEMRES19 data loaded interrupt
      MEMRESIFG19,
      --  MEMRES20 data loaded interrupt
      MEMRESIFG20,
      --  MEMRES21 data loaded interrupt
      MEMRESIFG21,
      --  MEMRES22 data loaded interrupt
      MEMRESIFG22,
      --  MEMRES23 data loaded interrupt
      MEMRESIFG23)
     with Size => 10;
   for ADC0_CPU_INT_IIDX_STAT_Field use
     (NO_INTR => 0,
      OVIFG => 1,
      TOVIFG => 2,
      HIGHIFG => 3,
      LOWIFG => 4,
      INIFG => 5,
      DMADONE => 6,
      UVIFG => 7,
      MEMRESIFG0 => 9,
      MEMRESIFG1 => 10,
      MEMRESIFG2 => 11,
      MEMRESIFG3 => 12,
      MEMRESIFG4 => 13,
      MEMRESIFG5 => 14,
      MEMRESIFG6 => 15,
      MEMRESIFG7 => 16,
      MEMRESIFG8 => 17,
      MEMRESIFG9 => 18,
      MEMRESIFG10 => 19,
      MEMRESIFG11 => 20,
      MEMRESIFG12 => 21,
      MEMRESIFG13 => 22,
      MEMRESIFG14 => 23,
      MEMRESIFG15 => 24,
      MEMRESIFG16 => 25,
      MEMRESIFG17 => 26,
      MEMRESIFG18 => 27,
      MEMRESIFG19 => 28,
      MEMRESIFG20 => 29,
      MEMRESIFG21 => 30,
      MEMRESIFG22 => 31,
      MEMRESIFG23 => 32);

   --  Interrupt index
   type ADC0_CPU_INT_IIDX_ADC0_CPU_INT[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT           : ADC0_CPU_INT_IIDX_STAT_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_IIDX_ADC0_CPU_INT[%s]_Register use record
      STAT           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_IMASK_OVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_OVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for sequence conversion timeout overflow. This bit is
   --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set to
   --  1.
   type ADC0_CPU_INT_IMASK_TOVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_TOVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_IMASK_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_IMASK_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_CPU_INT_IMASK_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read or
   --  when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_IMASK_DMADONE_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_DMADONE_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR is set to 1.
   type ADC0_CPU_INT_IMASK_UVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_UVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_CPU_INT_IMASK_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_IMASK_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG array
   type ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_CPU_INT_IMASK_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG
   type ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt mask
   type ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_Register is record
      --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
      OVIFG          : ADC0_CPU_INT_IMASK_OVIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for sequence conversion timeout overflow. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      TOVIFG         : ADC0_CPU_INT_IMASK_TOVIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for the MEMRESx result register being higher than
      --  the WCHIGHx threshold of the window comparator. This bit is reset to
      --  0 by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      HIGHIFG        : ADC0_CPU_INT_IMASK_HIGHIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for the MEMRESx result register being below than
      --  the WCLOWx threshold of the window comparator. This bit is reset to 0
      --  by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      LOWIFG         : ADC0_CPU_INT_IMASK_LOWIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Mask INIFG in MIS_EX register.
      INIFG          : ADC0_CPU_INT_IMASK_INIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read
      --  or when corresponding bit in ICLR_EX is set to 1.
      DMADONE        : ADC0_CPU_INT_IMASK_DMADONE_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR is set to 1.
      UVIFG          : ADC0_CPU_INT_IMASK_UVIFG_Field :=
                        MSPMC1104_SVD.ADC.CLR;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0
      --  is loaded with a new conversion result. Reading MEMRES0 register will
      --  clear this bit, or when the corresponding bit in ICLR is set to 1
      MEMRESIFG      : ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_Register use record
      OVIFG          at 0 range 0 .. 0;
      TOVIFG         at 0 range 1 .. 1;
      HIGHIFG        at 0 range 2 .. 2;
      LOWIFG         at 0 range 3 .. 3;
      INIFG          at 0 range 4 .. 4;
      DMADONE        at 0 range 5 .. 5;
      UVIFG          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_RIS_OVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_OVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for sequence conversion trigger overflow. This bit is
   --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set to
   --  1.
   type ADC0_CPU_INT_RIS_TOVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_TOVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_RIS_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_RIS_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_CPU_INT_RIS_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read or
   --  when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_RIS_DMADONE_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_DMADONE_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR is set to 1.
   type ADC0_CPU_INT_RIS_UVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_UVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_CPU_INT_RIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_RIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG array
   type ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_CPU_INT_RIS_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG
   type ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Raw interrupt status
   type ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_Register is record
      --  Read-only. Raw interrupt flag for MEMRESx overflow. This bit is reset
      --  to 0 by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      OVIFG          : ADC0_CPU_INT_RIS_OVIFG_Field;
      --  Read-only. Raw interrupt flag for sequence conversion trigger
      --  overflow. This bit is reset to 0 by IIDX read or when corresponding
      --  bit in ICLR_EX is set to 1.
      TOVIFG         : ADC0_CPU_INT_RIS_TOVIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG        : ADC0_CPU_INT_RIS_HIGHIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG         : ADC0_CPU_INT_RIS_LOWIFG_Field;
      --  Read-only. Mask INIFG in MIS_EX register.
      INIFG          : ADC0_CPU_INT_RIS_INIFG_Field;
      --  Read-only. Raw interrupt flag for DMADONE. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
      DMADONE        : ADC0_CPU_INT_RIS_DMADONE_Field;
      --  Read-only. Raw interrupt flag for MEMRESx underflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR is set to
      --  1.
      UVIFG          : ADC0_CPU_INT_RIS_UVIFG_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_Register use record
      OVIFG          at 0 range 0 .. 0;
      TOVIFG         at 0 range 1 .. 1;
      HIGHIFG        at 0 range 2 .. 2;
      LOWIFG         at 0 range 3 .. 3;
      INIFG          at 0 range 4 .. 4;
      DMADONE        at 0 range 5 .. 5;
      UVIFG          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_MIS_OVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_OVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for sequence conversion timeout overflow. This bit is
   --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set to
   --  1.
   type ADC0_CPU_INT_MIS_TOVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_TOVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_MIS_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_MIS_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_CPU_INT_MIS_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read or
   --  when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_MIS_DMADONE_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_DMADONE_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR is set to 1.
   type ADC0_CPU_INT_MIS_UVIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_UVIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_CPU_INT_MIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_MIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG array
   type ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_CPU_INT_MIS_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG
   type ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Masked interrupt status
   type ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_Register is record
      --  Read-only. Raw interrupt flag for MEMRESx overflow. This bit is reset
      --  to 0 by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      OVIFG          : ADC0_CPU_INT_MIS_OVIFG_Field;
      --  Read-only. Raw interrupt flag for sequence conversion timeout
      --  overflow. This bit is reset to 0 by IIDX read or when corresponding
      --  bit in ICLR_EX is set to 1.
      TOVIFG         : ADC0_CPU_INT_MIS_TOVIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG        : ADC0_CPU_INT_MIS_HIGHIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG         : ADC0_CPU_INT_MIS_LOWIFG_Field;
      --  Read-only. Mask INIFG in MIS_EX register.
      INIFG          : ADC0_CPU_INT_MIS_INIFG_Field;
      --  Read-only. Raw interrupt flag for DMADONE. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
      DMADONE        : ADC0_CPU_INT_MIS_DMADONE_Field;
      --  Read-only. Raw interrupt flag for MEMRESx underflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR is set to
      --  1.
      UVIFG          : ADC0_CPU_INT_MIS_UVIFG_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_MEMRESIFG_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_Register use record
      OVIFG          at 0 range 0 .. 0;
      TOVIFG         at 0 range 1 .. 1;
      HIGHIFG        at 0 range 2 .. 2;
      LOWIFG         at 0 range 3 .. 3;
      INIFG          at 0 range 4 .. 4;
      DMADONE        at 0 range 5 .. 5;
      UVIFG          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ISET_OVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_OVIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for sequence conversion timeout overflow. This bit is
   --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set to
   --  1.
   type ADC0_CPU_INT_ISET_TOVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_TOVIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ISET_HIGHIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_HIGHIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ISET_LOWIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_LOWIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_CPU_INT_ISET_INIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_INIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read or
   --  when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ISET_DMADONE_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_DMADONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ISET_UVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_UVIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_CPU_INT_ISET_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_CPU_INT_ISET_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG array
   type ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_CPU_INT_ISET_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG
   type ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt set
   type ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_Register is record
      --  Write-only. Raw interrupt flag for MEMRESx overflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      OVIFG          : ADC0_CPU_INT_ISET_OVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for sequence conversion timeout
      --  overflow. This bit is reset to 0 by IIDX read or when corresponding
      --  bit in ICLR_EX is set to 1.
      TOVIFG         : ADC0_CPU_INT_ISET_TOVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG        : ADC0_CPU_INT_ISET_HIGHIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG         : ADC0_CPU_INT_ISET_LOWIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Mask INIFG in MIS_EX register.
      INIFG          : ADC0_CPU_INT_ISET_INIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for DMADONE. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
      DMADONE        : ADC0_CPU_INT_ISET_DMADONE_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for MEMRESx underflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      UVIFG          : ADC0_CPU_INT_ISET_UVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_Register use record
      OVIFG          at 0 range 0 .. 0;
      TOVIFG         at 0 range 1 .. 1;
      HIGHIFG        at 0 range 2 .. 2;
      LOWIFG         at 0 range 3 .. 3;
      INIFG          at 0 range 4 .. 4;
      DMADONE        at 0 range 5 .. 5;
      UVIFG          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt flag for MEMRESx overflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ICLR_OVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_OVIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for sequence conversion timeout overflow. This bit is
   --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set to
   --  1.
   type ADC0_CPU_INT_ICLR_TOVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_TOVIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ICLR_HIGHIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_HIGHIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ICLR_LOWIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_LOWIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_CPU_INT_ICLR_INIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_INIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for DMADONE. This bit is reset to 0 by IIDX read or
   --  when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ICLR_DMADONE_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_DMADONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for MEMRESx underflow. This bit is reset to 0 by IIDX
   --  read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_CPU_INT_ICLR_UVIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_UVIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_CPU_INT_ICLR_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      CLR)
     with Size => 1;
   for ADC0_CPU_INT_ICLR_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG array
   type ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_CPU_INT_ICLR_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG
   type ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt clear
   type ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_Register is record
      --  Write-only. Raw interrupt flag for MEMRESx overflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      OVIFG          : ADC0_CPU_INT_ICLR_OVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for sequence conversion timeout
      --  overflow. This bit is reset to 0 by IIDX read or when corresponding
      --  bit in ICLR_EX is set to 1.
      TOVIFG         : ADC0_CPU_INT_ICLR_TOVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG        : ADC0_CPU_INT_ICLR_HIGHIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG         : ADC0_CPU_INT_ICLR_LOWIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Mask INIFG in MIS_EX register.
      INIFG          : ADC0_CPU_INT_ICLR_INIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for DMADONE. This bit is reset to 0 by
      --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
      DMADONE        : ADC0_CPU_INT_ICLR_DMADONE_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for MEMRESx underflow. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      UVIFG          : ADC0_CPU_INT_ICLR_UVIFG_Field :=
                        MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_Register use record
      OVIFG          at 0 range 0 .. 0;
      TOVIFG         at 0 range 1 .. 1;
      HIGHIFG        at 0 range 2 .. 2;
      LOWIFG         at 0 range 3 .. 3;
      INIFG          at 0 range 4 .. 4;
      DMADONE        at 0 range 5 .. 5;
      UVIFG          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   type ADC0_CPU_INT[%s]_Cluster is record
      --  Interrupt index
      ADC0_CPU_INT_IIDX  : aliased ADC0_CPU_INT_IIDX_ADC0_CPU_INT[%s]_Register;
      --  Interrupt mask
      ADC0_CPU_INT_IMASK : aliased ADC0_CPU_INT_IMASK_ADC0_CPU_INT[%s]_Register;
      --  Raw interrupt status
      ADC0_CPU_INT_RIS   : aliased ADC0_CPU_INT_RIS_ADC0_CPU_INT[%s]_Register;
      --  Masked interrupt status
      ADC0_CPU_INT_MIS   : aliased ADC0_CPU_INT_MIS_ADC0_CPU_INT[%s]_Register;
      --  Interrupt set
      ADC0_CPU_INT_ISET  : aliased ADC0_CPU_INT_ISET_ADC0_CPU_INT[%s]_Register;
      --  Interrupt clear
      ADC0_CPU_INT_ICLR  : aliased ADC0_CPU_INT_ICLR_ADC0_CPU_INT[%s]_Register;
   end record
     with Size => 352;

   for ADC0_CPU_INT[%s]_Cluster use record
      ADC0_CPU_INT_IIDX  at 16#0# range 0 .. 31;
      ADC0_CPU_INT_IMASK at 16#8# range 0 .. 31;
      ADC0_CPU_INT_RIS   at 16#10# range 0 .. 31;
      ADC0_CPU_INT_MIS   at 16#18# range 0 .. 31;
      ADC0_CPU_INT_ISET  at 16#20# range 0 .. 31;
      ADC0_CPU_INT_ICLR  at 16#28# range 0 .. 31;
   end record;

   --------------------------------------------
   -- ADC0_GEN_EVENT[%s] cluster's Registers --
   --------------------------------------------

   --  Interrupt index status
   type ADC0_GEN_EVENT_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  High threshold compare interrupt
      HIGHIFG,
      --  Low threshold compare interrupt
      LOWIFG,
      --  Primary Sequence In range comparator interrupt
      INIFG,
      --  MEMRES0 data loaded interrupt
      MEMRESIFG0)
     with Size => 10;
   for ADC0_GEN_EVENT_IIDX_STAT_Field use
     (NO_INTR => 0,
      HIGHIFG => 3,
      LOWIFG => 4,
      INIFG => 5,
      MEMRESIFG0 => 9);

   --  Interrupt index
   type ADC0_GEN_EVENT_IIDX_ADC0_GEN_EVENT[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT           : ADC0_GEN_EVENT_IIDX_STAT_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_IIDX_ADC0_GEN_EVENT[%s]_Register use record
      STAT           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_IMASK_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_IMASK_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_IMASK_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_IMASK_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_GEN_EVENT_IMASK_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_IMASK_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_GEN_EVENT_IMASK_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_IMASK_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type ADC0_GEN_EVENT_IMASK_ADC0_GEN_EVENT[%s]_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Raw interrupt flag for the MEMRESx result register being higher than
      --  the WCHIGHx threshold of the window comparator. This bit is reset to
      --  0 by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      HIGHIFG       : ADC0_GEN_EVENT_IMASK_HIGHIFG_Field :=
                       MSPMC1104_SVD.ADC.CLR;
      --  Raw interrupt flag for the MEMRESx result register being below than
      --  the WCLOWx threshold of the window comparator. This bit is reset to 0
      --  by IIDX read or when corresponding bit in ICLR_EX is set to 1.
      LOWIFG        : ADC0_GEN_EVENT_IMASK_LOWIFG_Field :=
                       MSPMC1104_SVD.ADC.CLR;
      --  Mask INIFG in MIS_EX register.
      INIFG         : ADC0_GEN_EVENT_IMASK_INIFG_Field :=
                       MSPMC1104_SVD.ADC.CLR;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0
      --  is loaded with a new conversion result. Reading MEMRES0 register will
      --  clear this bit, or when the corresponding bit in ICLR is set to 1
      MEMRESIFG0    : ADC0_GEN_EVENT_IMASK_MEMRESIFG0_Field :=
                       MSPMC1104_SVD.ADC.CLR;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_IMASK_ADC0_GEN_EVENT[%s]_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      HIGHIFG       at 0 range 2 .. 2;
      LOWIFG        at 0 range 3 .. 3;
      INIFG         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MEMRESIFG0    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_RIS_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_RIS_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_RIS_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_RIS_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_GEN_EVENT_RIS_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_RIS_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_GEN_EVENT_RIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_RIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type ADC0_GEN_EVENT_RIS_ADC0_GEN_EVENT[%s]_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG       : ADC0_GEN_EVENT_RIS_HIGHIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG        : ADC0_GEN_EVENT_RIS_LOWIFG_Field;
      --  Read-only. Mask INIFG in MIS_EX register.
      INIFG         : ADC0_GEN_EVENT_RIS_INIFG_Field;
      --  unspecified
      Reserved_5_7  : HAL.UInt3;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG0    : ADC0_GEN_EVENT_RIS_MEMRESIFG0_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_RIS_ADC0_GEN_EVENT[%s]_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      HIGHIFG       at 0 range 2 .. 2;
      LOWIFG        at 0 range 3 .. 3;
      INIFG         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MEMRESIFG0    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_MIS_HIGHIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_MIS_HIGHIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_MIS_LOWIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_MIS_LOWIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_GEN_EVENT_MIS_INIFG_Field is
     (--  Interrupt is not pending.
      CLR,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_MIS_INIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_GEN_EVENT_MIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_MIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type ADC0_GEN_EVENT_MIS_ADC0_GEN_EVENT[%s]_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG       : ADC0_GEN_EVENT_MIS_HIGHIFG_Field;
      --  Read-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG        : ADC0_GEN_EVENT_MIS_LOWIFG_Field;
      --  Read-only. Mask INIFG in MIS_EX register.
      INIFG         : ADC0_GEN_EVENT_MIS_INIFG_Field;
      --  unspecified
      Reserved_5_7  : HAL.UInt3;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG0    : ADC0_GEN_EVENT_MIS_MEMRESIFG0_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_MIS_ADC0_GEN_EVENT[%s]_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      HIGHIFG       at 0 range 2 .. 2;
      LOWIFG        at 0 range 3 .. 3;
      INIFG         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MEMRESIFG0    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_ISET_HIGHIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_ISET_HIGHIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_ISET_LOWIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_ISET_LOWIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_GEN_EVENT_ISET_INIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_ISET_INIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_GEN_EVENT_ISET_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_GEN_EVENT_ISET_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type ADC0_GEN_EVENT_ISET_ADC0_GEN_EVENT[%s]_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG       : ADC0_GEN_EVENT_ISET_HIGHIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG        : ADC0_GEN_EVENT_ISET_LOWIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Mask INIFG in MIS_EX register.
      INIFG         : ADC0_GEN_EVENT_ISET_INIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG0    : ADC0_GEN_EVENT_ISET_MEMRESIFG0_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_ISET_ADC0_GEN_EVENT[%s]_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      HIGHIFG       at 0 range 2 .. 2;
      LOWIFG        at 0 range 3 .. 3;
      INIFG         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MEMRESIFG0    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Raw interrupt flag for the MEMRESx result register being higher than the
   --  WCHIGHx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_ICLR_HIGHIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_GEN_EVENT_ICLR_HIGHIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt flag for the MEMRESx result register being below than the
   --  WCLOWx threshold of the window comparator. This bit is reset to 0 by
   --  IIDX read or when corresponding bit in ICLR_EX is set to 1.
   type ADC0_GEN_EVENT_ICLR_LOWIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_GEN_EVENT_ICLR_LOWIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Mask INIFG in MIS_EX register.
   type ADC0_GEN_EVENT_ICLR_INIFG_Field is
     (--  Interrupt is not pending.
      NO_EFFECT,
      --  Interrupt is pending.
      CLR)
     with Size => 1;
   for ADC0_GEN_EVENT_ICLR_INIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_GEN_EVENT_ICLR_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      CLR)
     with Size => 1;
   for ADC0_GEN_EVENT_ICLR_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type ADC0_GEN_EVENT_ICLR_ADC0_GEN_EVENT[%s]_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  higher than the WCHIGHx threshold of the window comparator. This bit
      --  is reset to 0 by IIDX read or when corresponding bit in ICLR_EX is
      --  set to 1.
      HIGHIFG       : ADC0_GEN_EVENT_ICLR_HIGHIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Raw interrupt flag for the MEMRESx result register being
      --  below than the WCLOWx threshold of the window comparator. This bit is
      --  reset to 0 by IIDX read or when corresponding bit in ICLR_EX is set
      --  to 1.
      LOWIFG        : ADC0_GEN_EVENT_ICLR_LOWIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  Write-only. Mask INIFG in MIS_EX register.
      INIFG         : ADC0_GEN_EVENT_ICLR_INIFG_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG0    : ADC0_GEN_EVENT_ICLR_MEMRESIFG0_Field :=
                       MSPMC1104_SVD.ADC.NO_EFFECT;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_GEN_EVENT_ICLR_ADC0_GEN_EVENT[%s]_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      HIGHIFG       at 0 range 2 .. 2;
      LOWIFG        at 0 range 3 .. 3;
      INIFG         at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MEMRESIFG0    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   type ADC0_GEN_EVENT[%s]_Cluster is record
      --  Interrupt index
      ADC0_GEN_EVENT_IIDX  : aliased ADC0_GEN_EVENT_IIDX_ADC0_GEN_EVENT[%s]_Register;
      --  Interrupt mask
      ADC0_GEN_EVENT_IMASK : aliased ADC0_GEN_EVENT_IMASK_ADC0_GEN_EVENT[%s]_Register;
      --  Raw interrupt status
      ADC0_GEN_EVENT_RIS   : aliased ADC0_GEN_EVENT_RIS_ADC0_GEN_EVENT[%s]_Register;
      --  Masked interrupt status
      ADC0_GEN_EVENT_MIS   : aliased ADC0_GEN_EVENT_MIS_ADC0_GEN_EVENT[%s]_Register;
      --  Interrupt set
      ADC0_GEN_EVENT_ISET  : aliased ADC0_GEN_EVENT_ISET_ADC0_GEN_EVENT[%s]_Register;
      --  Interrupt clear
      ADC0_GEN_EVENT_ICLR  : aliased ADC0_GEN_EVENT_ICLR_ADC0_GEN_EVENT[%s]_Register;
   end record
     with Size => 352;

   for ADC0_GEN_EVENT[%s]_Cluster use record
      ADC0_GEN_EVENT_IIDX  at 16#0# range 0 .. 31;
      ADC0_GEN_EVENT_IMASK at 16#8# range 0 .. 31;
      ADC0_GEN_EVENT_RIS   at 16#10# range 0 .. 31;
      ADC0_GEN_EVENT_MIS   at 16#18# range 0 .. 31;
      ADC0_GEN_EVENT_ISET  at 16#20# range 0 .. 31;
      ADC0_GEN_EVENT_ICLR  at 16#28# range 0 .. 31;
   end record;

   -------------------------------------------
   -- ADC0_DMA_TRIG[%s] cluster's Registers --
   -------------------------------------------

   --  Interrupt index status
   type ADC0_DMA_TRIG_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  MEMRES0 data loaded interrupt
      MEMRESIFG0,
      --  MEMRES1 data loaded interrupt
      MEMRESIFG1,
      --  MEMRES2 data loaded interrupt
      MEMRESIFG2,
      --  MEMRES3 data loaded interrupt
      MEMRESIFG3,
      --  MEMRES4 data loaded interrupt
      MEMRESIFG4,
      --  MEMRES5 data loaded interrupt
      MEMRESIFG5,
      --  MEMRES6 data loaded interrupt
      MEMRESIFG6,
      --  MEMRES7 data loaded interrupt
      MEMRESIFG7,
      --  MEMRES8 data loaded interrupt
      MEMRESIFG8,
      --  MEMRES9 data loaded interrupt
      MEMRESIFG9,
      --  MEMRES10 data loaded interrupt
      MEMRESIFG10,
      --  MEMRES11 data loaded interrupt
      MEMRESIFG11,
      --  MEMRES12 data loaded interrupt
      MEMRESIFG12,
      --  MEMRES13 data loaded interrupt
      MEMRESIFG13,
      --  MEMRES14 data loaded interrupt
      MEMRESIFG14,
      --  MEMRES15 data loaded interrupt
      MEMRESIFG15,
      --  MEMRES16 data loaded interrupt
      MEMRESIFG16,
      --  MEMRES17 data loaded interrupt
      MEMRESIFG17,
      --  MEMRES18 data loaded interrupt
      MEMRESIFG18,
      --  MEMRES19 data loaded interrupt
      MEMRESIFG19,
      --  MEMRES20 data loaded interrupt
      MEMRESIFG20,
      --  MEMRES21 data loaded interrupt
      MEMRESIFG21,
      --  MEMRES22 data loaded interrupt
      MEMRESIFG22,
      --  MEMRES23 data loaded interrupt
      MEMRESIFG23)
     with Size => 10;
   for ADC0_DMA_TRIG_IIDX_STAT_Field use
     (NO_INTR => 0,
      MEMRESIFG0 => 9,
      MEMRESIFG1 => 10,
      MEMRESIFG2 => 11,
      MEMRESIFG3 => 12,
      MEMRESIFG4 => 13,
      MEMRESIFG5 => 14,
      MEMRESIFG6 => 15,
      MEMRESIFG7 => 16,
      MEMRESIFG8 => 17,
      MEMRESIFG9 => 18,
      MEMRESIFG10 => 19,
      MEMRESIFG11 => 20,
      MEMRESIFG12 => 21,
      MEMRESIFG13 => 22,
      MEMRESIFG14 => 23,
      MEMRESIFG15 => 24,
      MEMRESIFG16 => 25,
      MEMRESIFG17 => 26,
      MEMRESIFG18 => 27,
      MEMRESIFG19 => 28,
      MEMRESIFG20 => 29,
      MEMRESIFG21 => 30,
      MEMRESIFG22 => 31,
      MEMRESIFG23 => 32);

   --  Interrupt index
   type ADC0_DMA_TRIG_IIDX_ADC0_DMA_TRIG[%s]_Register is record
      --  Read-only. Interrupt index status
      STAT           : ADC0_DMA_TRIG_IIDX_STAT_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_IIDX_ADC0_DMA_TRIG[%s]_Register use record
      STAT           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_DMA_TRIG_IMASK_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_DMA_TRIG_IMASK_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG array
   type ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_DMA_TRIG_IMASK_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG
   type ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt mask extension
   type ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0
      --  is loaded with a new conversion result. Reading MEMRES0 register will
      --  clear this bit, or when the corresponding bit in ICLR is set to 1
      MEMRESIFG      : ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_DMA_TRIG_RIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_DMA_TRIG_RIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG array
   type ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_DMA_TRIG_RIS_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG
   type ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Raw interrupt status extension
   type ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_DMA_TRIG_MIS_MEMRESIFG0_Field is
     (--  No new data ready.
      CLR,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_DMA_TRIG_MIS_MEMRESIFG0_Field use
     (CLR => 0,
      SET => 1);

   --  ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG array
   type ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_DMA_TRIG_MIS_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG
   type ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Masked interrupt status extension
   type ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_DMA_TRIG_ISET_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      SET)
     with Size => 1;
   for ADC0_DMA_TRIG_ISET_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG array
   type ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_DMA_TRIG_ISET_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG
   type ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt set extension
   type ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Raw interrupt status for MEMRES0. This bit is set to 1 when MEMRES0 is
   --  loaded with a new conversion result. Reading MEMRES0 register will clear
   --  this bit, or when the corresponding bit in ICLR is set to 1
   type ADC0_DMA_TRIG_ICLR_MEMRESIFG0_Field is
     (--  No new data ready.
      NO_EFFECT,
      --  A new data is ready to be read.
      CLR)
     with Size => 1;
   for ADC0_DMA_TRIG_ICLR_MEMRESIFG0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG array
   type ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array is array (0 .. 3)
     of ADC0_DMA_TRIG_ICLR_MEMRESIFG0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG
   type ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMRESIFG as a value
            Val : HAL.UInt4;
         when True =>
            --  MEMRESIFG as an array
            Arr : ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt clear extension
   type ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Write-only. Raw interrupt status for MEMRES0. This bit is set to 1
      --  when MEMRES0 is loaded with a new conversion result. Reading MEMRES0
      --  register will clear this bit, or when the corresponding bit in ICLR
      --  is set to 1
      MEMRESIFG      : ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_MEMRESIFG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MEMRESIFG      at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   type ADC0_DMA_TRIG[%s]_Cluster is record
      --  Interrupt index
      ADC0_DMA_TRIG_IIDX  : aliased ADC0_DMA_TRIG_IIDX_ADC0_DMA_TRIG[%s]_Register;
      --  Interrupt mask extension
      ADC0_DMA_TRIG_IMASK : aliased ADC0_DMA_TRIG_IMASK_ADC0_DMA_TRIG[%s]_Register;
      --  Raw interrupt status extension
      ADC0_DMA_TRIG_RIS   : aliased ADC0_DMA_TRIG_RIS_ADC0_DMA_TRIG[%s]_Register;
      --  Masked interrupt status extension
      ADC0_DMA_TRIG_MIS   : aliased ADC0_DMA_TRIG_MIS_ADC0_DMA_TRIG[%s]_Register;
      --  Interrupt set extension
      ADC0_DMA_TRIG_ISET  : aliased ADC0_DMA_TRIG_ISET_ADC0_DMA_TRIG[%s]_Register;
      --  Interrupt clear extension
      ADC0_DMA_TRIG_ICLR  : aliased ADC0_DMA_TRIG_ICLR_ADC0_DMA_TRIG[%s]_Register;
   end record
     with Size => 352;

   for ADC0_DMA_TRIG[%s]_Cluster use record
      ADC0_DMA_TRIG_IIDX  at 16#0# range 0 .. 31;
      ADC0_DMA_TRIG_IMASK at 16#8# range 0 .. 31;
      ADC0_DMA_TRIG_RIS   at 16#10# range 0 .. 31;
      ADC0_DMA_TRIG_MIS   at 16#18# range 0 .. 31;
      ADC0_DMA_TRIG_ISET  at 16#20# range 0 .. 31;
      ADC0_DMA_TRIG_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to CPU_INT
   type ADC0_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for ADC0_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to GEN_EVENT
   type ADC0_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for ADC0_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type ADC0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to CPU_INT
      INT0_CFG      : ADC0_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to
      --  GEN_EVENT
      EVT1_CFG      : ADC0_EVT_MODE_EVT1_CFG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ADC0_DESC_MINREV_Field is HAL.UInt4;
   subtype ADC0_DESC_MAJREV_Field is HAL.UInt4;
   subtype ADC0_DESC_INSTNUM_Field is HAL.UInt4;
   subtype ADC0_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype ADC0_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type ADC0_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : ADC0_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : ADC0_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : ADC0_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : ADC0_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : ADC0_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   --  Enable conversion
   type ADC0_CTL0_ENC_Field is
     (--  Conversion disabled. ENC change from ON to OFF will abort single or repeat
--  sequence on a MEMCTLx boundary. The current conversion will finish and
--  result stored in corresponding MEMRESx.
      OFF,
      --  Conversion enabled. ADC sequencer waits for valid trigger (software or
--  hardware).
      ON)
     with Size => 1;
   for ADC0_CTL0_ENC_Field use
     (OFF => 0,
      ON => 1);

   --  Power down policy
   type ADC0_CTL0_PWRDN_Field is
     (--  ADC is powered down on completion of a conversion if there is no pending
--  trigger
      AUTO,
      --  ADC remains powered on as long as it is enabled through software.
      MANUAL)
     with Size => 1;
   for ADC0_CTL0_PWRDN_Field use
     (AUTO => 0,
      MANUAL => 1);

   --  Sample clock divider
   type ADC0_CTL0_SCLKDIV_Field is
     (--  Do not divide clock source
      DIV_BY_1,
      --  Divide clock source by 2
      DIV_BY_2,
      --  Divide clock source by 4
      DIV_BY_4,
      --  Divide clock source by 8
      DIV_BY_8,
      --  Divide clock source by 16
      DIV_BY_16,
      --  Divide clock source by 24
      DIV_BY_24,
      --  Divide clock source by 32
      DIV_BY_32,
      --  Divide clock source by 48
      DIV_BY_48)
     with Size => 3;
   for ADC0_CTL0_SCLKDIV_Field use
     (DIV_BY_1 => 0,
      DIV_BY_2 => 1,
      DIV_BY_4 => 2,
      DIV_BY_8 => 3,
      DIV_BY_16 => 4,
      DIV_BY_24 => 5,
      DIV_BY_32 => 6,
      DIV_BY_48 => 7);

   --  Control Register 0
   type ADC0_CTL0_Register is record
      --  Enable conversion
      ENC            : ADC0_CTL0_ENC_Field := MSPMC1104_SVD.ADC.OFF;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Power down policy
      PWRDN          : ADC0_CTL0_PWRDN_Field := MSPMC1104_SVD.ADC.AUTO;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Sample clock divider
      SCLKDIV        : ADC0_CTL0_SCLKDIV_Field := MSPMC1104_SVD.ADC.DIV_BY_1;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CTL0_Register use record
      ENC            at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      PWRDN          at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      SCLKDIV        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Sample trigger source
   type ADC0_CTL1_TRIGSRC_Field is
     (--  Software trigger
      SOFTWARE,
      --  Hardware event trigger
      EVENT)
     with Size => 1;
   for ADC0_CTL1_TRIGSRC_Field use
     (SOFTWARE => 0,
      EVENT => 1);

   --  Start of conversion
   type ADC0_CTL1_SC_Field is
     (--  When SAMPMODE is set to MANUAL, clearing this bit will end the sample phase
--  and the conversion phase will start. When SAMPMODE is set to AUTO, writing
--  0 has no effect.
      STOP,
      --  When SAMPMODE is set to MANUAL, setting this bit will start the sample
--  phase. Sample phase will last as long as this bit is set. When SAMPMODE is
--  set to AUTO, setting this bit will trigger the timer based sample time.
      START)
     with Size => 1;
   for ADC0_CTL1_SC_Field use
     (STOP => 0,
      START => 1);

   --  Conversion sequence mode
   type ADC0_CTL1_CONSEQ_Field is
     (--  ADC channel in MEMCTLx pointed by STARTADD will be converted once
      SINGLE,
      --  ADC channel sequence pointed by STARTADD and ENDADD will be converted once
      SEQUENCE,
      --  ADC channel in MEMCTLx pointed by STARTADD will be converted repeatedly
      REPEATSINGLE,
      --  ADC channel sequence pointed by STARTADD and ENDADD will be converted
--  repeatedly
      REPEATSEQUENCE)
     with Size => 2;
   for ADC0_CTL1_CONSEQ_Field use
     (SINGLE => 0,
      SEQUENCE => 1,
      REPEATSINGLE => 2,
      REPEATSEQUENCE => 3);

   --  Sample mode. This bit selects the source of the sampling signal. MANUAL
   --  option is not valid when TRIGSRC is selected as hardware event trigger.
   type ADC0_CTL1_SAMPMODE_Field is
     (--  Sample timer high phase is used as sample signal
      AUTO,
      --  Software trigger is used as sample signal
      MANUAL)
     with Size => 1;
   for ADC0_CTL1_SAMPMODE_Field use
     (AUTO => 0,
      MANUAL => 1);

   --  Hardware averager numerator. Selects number of conversions to accumulate
   --  for current MEMCTLx and then it is divided by AVGD. Result will be
   --  stored in MEMRESx.
   type ADC0_CTL1_AVGN_Field is
     (--  Disables averager
      DISABLE,
      --  Averages 2 conversions before storing in MEMRESx register
      AVG_2,
      --  Averages 4 conversions before storing in MEMRESx register
      AVG_4,
      --  Averages 8 conversions before storing in MEMRESx register
      AVG_8,
      --  Averages 16 conversions before storing in MEMRESx register
      AVG_16,
      --  Averages 32 conversions before storing in MEMRESx register
      AVG_32,
      --  Averages 64 conversions before storing in MEMRESx register
      AVG_64,
      --  Averages 128 conversions before storing in MEMRESx register
      AVG_128)
     with Size => 3;
   for ADC0_CTL1_AVGN_Field use
     (DISABLE => 0,
      AVG_2 => 1,
      AVG_4 => 2,
      AVG_8 => 3,
      AVG_16 => 4,
      AVG_32 => 5,
      AVG_64 => 6,
      AVG_128 => 7);

   --  Hardware averager denominator. The number to divide the accumulated
   --  value by (this is a shift). Note result register is maximum of 16-bits
   --  long so if not shifted appropriately result will be truncated.
   type ADC0_CTL1_AVGD_Field is
     (--  No shift
      SHIFT0,
      --  1 bit shift
      SHIFT1,
      --  2 bit shift
      SHIFT2,
      --  3 bit shift
      SHIFT3,
      --  4 bit shift
      SHIFT4,
      --  5 bit shift
      SHIFT5,
      --  6 bit shift
      SHIFT6,
      --  7 bit shift
      SHIFT7)
     with Size => 3;
   for ADC0_CTL1_AVGD_Field use
     (SHIFT0 => 0,
      SHIFT1 => 1,
      SHIFT2 => 2,
      SHIFT3 => 3,
      SHIFT4 => 4,
      SHIFT5 => 5,
      SHIFT6 => 6,
      SHIFT7 => 7);

   --  Control Register 1
   type ADC0_CTL1_Register is record
      --  Sample trigger source
      TRIGSRC        : ADC0_CTL1_TRIGSRC_Field := MSPMC1104_SVD.ADC.SOFTWARE;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Start of conversion
      SC             : ADC0_CTL1_SC_Field := MSPMC1104_SVD.ADC.STOP;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Conversion sequence mode
      CONSEQ         : ADC0_CTL1_CONSEQ_Field := MSPMC1104_SVD.ADC.SINGLE;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Sample mode. This bit selects the source of the sampling signal.
      --  MANUAL option is not valid when TRIGSRC is selected as hardware event
      --  trigger.
      SAMPMODE       : ADC0_CTL1_SAMPMODE_Field := MSPMC1104_SVD.ADC.AUTO;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Hardware averager numerator. Selects number of conversions to
      --  accumulate for current MEMCTLx and then it is divided by AVGD. Result
      --  will be stored in MEMRESx.
      AVGN           : ADC0_CTL1_AVGN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Hardware averager denominator. The number to divide the accumulated
      --  value by (this is a shift). Note result register is maximum of
      --  16-bits long so if not shifted appropriately result will be
      --  truncated.
      AVGD           : ADC0_CTL1_AVGD_Field := MSPMC1104_SVD.ADC.SHIFT0;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CTL1_Register use record
      TRIGSRC        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SC             at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      CONSEQ         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SAMPMODE       at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      AVGN           at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      AVGD           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Data read-back format. Data is always stored in binary unsigned format.
   type ADC0_CTL2_DF_Field is
     (--  Digital result reads as Binary Unsigned.
      UNSIGNED,
      --  Digital result reads Signed Binary. (2s complement), left aligned.
      SIGNED)
     with Size => 1;
   for ADC0_CTL2_DF_Field use
     (UNSIGNED => 0,
      SIGNED => 1);

   --  Resolution. These bits define the resolution of ADC conversion result.
   --  Note : A value of 3 defaults to 12-bits resolution.
   type ADC0_CTL2_RES_Field is
     (--  12-bits resolution
      BIT_12,
      --  10-bits resolution
      BIT_10,
      --  8-bits resolution
      BIT_8)
     with Size => 2;
   for ADC0_CTL2_RES_Field use
     (BIT_12 => 0,
      BIT_10 => 1,
      BIT_8 => 2);

   --  Enable DMA trigger for data transfer. Note: DMAEN bit is cleared by
   --  hardware based on DMA done signal at the end of data transfer. Software
   --  has to re-enable DMAEN bit for ADC to generate DMA triggers.
   type ADC0_CTL2_DMAEN_Field is
     (--  DMA trigger not enabled
      DISABLE,
      --  DMA trigger enabled
      ENABLE)
     with Size => 1;
   for ADC0_CTL2_DMAEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable FIFO based operation
   type ADC0_CTL2_FIFOEN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for ADC0_CTL2_FIFOEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Number of ADC converted samples to be transferred on a DMA trigger
   type ADC0_CTL2_SAMPCNT_Field is
     (--  Minimum value
      MIN,
      --  Maximum value
      MAX)
     with Size => 5;
   for ADC0_CTL2_SAMPCNT_Field use
     (MIN => 0,
      MAX => 24);

   --  Sequencer start address. These bits select which MEMCTLx is used for
   --  single conversion or as first MEMCTL for sequence mode. The value of
   --  STARTADD is 0x00 to 0x17, corresponding to MEMRES0 to MEMRES23.
   type ADC0_CTL2_STARTADD_Field is
     (--  MEMCTL0 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_00,
      --  MEMCTL1 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_01,
      --  MEMCTL2 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_02,
      --  MEMCTL3 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_03,
      --  MEMCTL4 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_04,
      --  MEMCTL5 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_05,
      --  MEMCTL6 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_06,
      --  MEMCTL7 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_07,
      --  MEMCTL8 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_08,
      --  MEMCTL9 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_09,
      --  MEMCTL10 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_10,
      --  MEMCTL11 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_11,
      --  MEMCTL12 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_12,
      --  MEMCTL13 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_13,
      --  MEMCTL14 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_14,
      --  MEMCTL15 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_15,
      --  MEMCTL16 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_16,
      --  MEMCTL17 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_17,
      --  MEMCTL18 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_18,
      --  MEMCTL19 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_19,
      --  MEMCTL20 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_20,
      --  MEMCTL21 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_21,
      --  MEMCTL22 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_22,
      --  MEMCTL23 is selected as start address of a sequence or for a single
--  conversion.
      ADDR_23)
     with Size => 5;
   for ADC0_CTL2_STARTADD_Field use
     (ADDR_00 => 0,
      ADDR_01 => 1,
      ADDR_02 => 2,
      ADDR_03 => 3,
      ADDR_04 => 4,
      ADDR_05 => 5,
      ADDR_06 => 6,
      ADDR_07 => 7,
      ADDR_08 => 8,
      ADDR_09 => 9,
      ADDR_10 => 10,
      ADDR_11 => 11,
      ADDR_12 => 12,
      ADDR_13 => 13,
      ADDR_14 => 14,
      ADDR_15 => 15,
      ADDR_16 => 16,
      ADDR_17 => 17,
      ADDR_18 => 18,
      ADDR_19 => 19,
      ADDR_20 => 20,
      ADDR_21 => 21,
      ADDR_22 => 22,
      ADDR_23 => 23);

   --  Sequence end address. These bits select which MEMCTLx is the last one
   --  for the sequence mode. The value of ENDADD is 0x00 to 0x17,
   --  corresponding to MEMRES0 to MEMRES23.
   type ADC0_CTL2_ENDADD_Field is
     (--  MEMCTL0 is selected as end address of sequence.
      ADDR_00,
      --  MEMCTL1 is selected as end address of sequence.
      ADDR_01,
      --  MEMCTL2 is selected as end address of sequence.
      ADDR_02,
      --  MEMCTL3 is selected as end address of sequence.
      ADDR_03,
      --  MEMCTL4 is selected as end address of sequence.
      ADDR_04,
      --  MEMCTL5 is selected as end address of sequence.
      ADDR_05,
      --  MEMCTL6 is selected as end address of sequence.
      ADDR_06,
      --  MEMCTL7 is selected as end address of sequence.
      ADDR_07,
      --  MEMCTL8 is selected as end address of sequence.
      ADDR_08,
      --  MEMCTL9 is selected as end address of sequence.
      ADDR_09,
      --  MEMCTL10 is selected as end address of sequence.
      ADDR_10,
      --  MEMCTL11 is selected as end address of sequence.
      ADDR_11,
      --  MEMCTL12 is selected as end address of sequence.
      ADDR_12,
      --  MEMCTL13 is selected as end address of sequence.
      ADDR_13,
      --  MEMCTL14 is selected as end address of sequence.
      ADDR_14,
      --  MEMCTL15 is selected as end address of sequence.
      ADDR_15,
      --  MEMCTL16 is selected as end address of sequence.
      ADDR_16,
      --  MEMCTL17 is selected as end address of sequence.
      ADDR_17,
      --  MEMCTL18 is selected as end address of sequence.
      ADDR_18,
      --  MEMCTL19 is selected as end address of sequence.
      ADDR_19,
      --  MEMCTL20 is selected as end address of sequence.
      ADDR_20,
      --  MEMCTL21 is selected as end address of sequence.
      ADDR_21,
      --  MEMCTL22 is selected as end address of sequence.
      ADDR_22,
      --  MEMCTL23 is selected as end address of sequence.
      ADDR_23)
     with Size => 5;
   for ADC0_CTL2_ENDADD_Field use
     (ADDR_00 => 0,
      ADDR_01 => 1,
      ADDR_02 => 2,
      ADDR_03 => 3,
      ADDR_04 => 4,
      ADDR_05 => 5,
      ADDR_06 => 6,
      ADDR_07 => 7,
      ADDR_08 => 8,
      ADDR_09 => 9,
      ADDR_10 => 10,
      ADDR_11 => 11,
      ADDR_12 => 12,
      ADDR_13 => 13,
      ADDR_14 => 14,
      ADDR_15 => 15,
      ADDR_16 => 16,
      ADDR_17 => 17,
      ADDR_18 => 18,
      ADDR_19 => 19,
      ADDR_20 => 20,
      ADDR_21 => 21,
      ADDR_22 => 22,
      ADDR_23 => 23);

   --  Control Register 2
   type ADC0_CTL2_Register is record
      --  Data read-back format. Data is always stored in binary unsigned
      --  format.
      DF             : ADC0_CTL2_DF_Field := MSPMC1104_SVD.ADC.UNSIGNED;
      --  Resolution. These bits define the resolution of ADC conversion
      --  result. Note : A value of 3 defaults to 12-bits resolution.
      RES            : ADC0_CTL2_RES_Field := MSPMC1104_SVD.ADC.BIT_12;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Enable DMA trigger for data transfer. Note: DMAEN bit is cleared by
      --  hardware based on DMA done signal at the end of data transfer.
      --  Software has to re-enable DMAEN bit for ADC to generate DMA triggers.
      DMAEN          : ADC0_CTL2_DMAEN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Enable FIFO based operation
      FIFOEN         : ADC0_CTL2_FIFOEN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  Number of ADC converted samples to be transferred on a DMA trigger
      SAMPCNT        : ADC0_CTL2_SAMPCNT_Field := MSPMC1104_SVD.ADC.MIN;
      --  Sequencer start address. These bits select which MEMCTLx is used for
      --  single conversion or as first MEMCTL for sequence mode. The value of
      --  STARTADD is 0x00 to 0x17, corresponding to MEMRES0 to MEMRES23.
      STARTADD       : ADC0_CTL2_STARTADD_Field := MSPMC1104_SVD.ADC.ADDR_00;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Sequence end address. These bits select which MEMCTLx is the last one
      --  for the sequence mode. The value of ENDADD is 0x00 to 0x17,
      --  corresponding to MEMRES0 to MEMRES23.
      ENDADD         : ADC0_CTL2_ENDADD_Field := MSPMC1104_SVD.ADC.ADDR_00;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CTL2_Register use record
      DF             at 0 range 0 .. 0;
      RES            at 0 range 1 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DMAEN          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      FIFOEN         at 0 range 10 .. 10;
      SAMPCNT        at 0 range 11 .. 15;
      STARTADD       at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ENDADD         at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Frequency Range.
   type ADC0_CLKFREQ_FRANGE_Field is
     (--  1 to 4 MHz
      RANGE1TO4,
      --  >4 to 8 MHz
      RANGE4TO8,
      --  >8 to 16 MHz
      RANGE8TO16,
      --  >16 to 20 MHz
      RANGE16TO20,
      --  >20 to 24 MHz
      RANGE20TO24,
      --  >24 to 32 MHz
      RANGE24TO32,
      --  >32 to 40 MHz
      RANGE32TO40,
      --  >40 to 48 MHz
      RANGE40TO48)
     with Size => 3;
   for ADC0_CLKFREQ_FRANGE_Field use
     (RANGE1TO4 => 0,
      RANGE4TO8 => 1,
      RANGE8TO16 => 2,
      RANGE16TO20 => 3,
      RANGE20TO24 => 4,
      RANGE24TO32 => 5,
      RANGE32TO40 => 6,
      RANGE40TO48 => 7);

   --  Sample Clock Frequency Range Register
   type ADC0_CLKFREQ_Register is record
      --  Frequency Range.
      FRANGE        : ADC0_CLKFREQ_FRANGE_Field :=
                       MSPMC1104_SVD.ADC.RANGE1TO4;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_CLKFREQ_Register use record
      FRANGE        at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype ADC0_SCOMP_VAL_Field is HAL.UInt10;

   --  Sample Time Compare 0 Register
   type ADC0_SCOMP_Register is record
      --  Specifies the number of sample clocks. When VAL = 0 or 1, number of
      --  sample clocks = Sample clock divide value. When VAL > 1, number of
      --  sample clocks = VAL x Sample clock divide value. Note: Sample clock
      --  divide value is not the value written to SCLKDIV but the actual
      --  divide value (SCLKDIV = 2 implies divide value is 4). Example: VAL =
      --  4, SCLKDIV = 3 implies 32 sample clock cycles.
      VAL            : ADC0_SCOMP_VAL_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_SCOMP_Register use record
      VAL            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ADC0_WCLOW_DATA_Field is HAL.UInt16;

   --  Window Comparator Low Threshold Register
   type ADC0_WCLOW_Register is record
      --  If DF = 0, unsigned binary format has to be used. The value based on
      --  the resolution has to be right aligned with the MSB on the left. For
      --  10-bits and 8-bits resolution, unused bits have to be 0s. If DF = 1,
      --  2s-complement format has to be used. The value based on the
      --  resolution has to be left aligned with the LSB on the right. For
      --  10-bits and 8-bits resolution, unused bits have to be 0s.
      DATA           : ADC0_WCLOW_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_WCLOW_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC0_WCHIGH_DATA_Field is HAL.UInt16;

   --  Window Comparator High Threshold Register
   type ADC0_WCHIGH_Register is record
      --  If DF = 0, unsigned binary format has to be used. The threshold value
      --  has to be right aligned, with the MSB on the left. For 10-bits and
      --  8-bits resolution, unused bit have to be 0s. If DF = 1, 2s-complement
      --  format has to be used. The value based on the resolution has to be
      --  left aligned with the LSB on the right. For 10-bits and 8-bits
      --  resolution, unused bit have to be 0s.
      DATA           : ADC0_WCHIGH_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_WCHIGH_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Input channel select.
   type ADC0_MEMCTL_CHANSEL_Field is
     (--  Selects channel 0
      CHAN_0,
      --  Selects channel 1
      CHAN_1,
      --  Selects channel 2
      CHAN_2,
      --  Selects channel 3
      CHAN_3,
      --  Selects channel 4
      CHAN_4,
      --  Selects channel 5
      CHAN_5,
      --  Selects channel 6
      CHAN_6,
      --  Selects channel 7
      CHAN_7,
      --  Selects channel 8
      CHAN_8,
      --  Selects channel 9
      CHAN_9,
      --  Selects channel 10
      CHAN_10,
      --  Selects channel 11
      CHAN_11,
      --  Selects channel 12
      CHAN_12,
      --  Selects channel 13
      CHAN_13,
      --  Selects channel 14
      CHAN_14,
      --  Selects channel 15
      CHAN_15,
      --  Selects channel 16
      CHAN_16,
      --  Selects channel 17
      CHAN_17,
      --  Selects channel 18
      CHAN_18,
      --  Selects channel 19
      CHAN_19,
      --  Selects channel 20
      CHAN_20,
      --  Selects channel 21
      CHAN_21,
      --  Selects channel 22
      CHAN_22,
      --  Selects channel 23
      CHAN_23,
      --  Selects channel 24
      CHAN_24,
      --  Selects channel 25
      CHAN_25,
      --  Selects channel 26
      CHAN_26,
      --  Selects channel 27
      CHAN_27,
      --  Selects channel 28
      CHAN_28,
      --  Selects channel 29
      CHAN_29,
      --  Selects channel 30
      CHAN_30,
      --  Selects channel 31
      CHAN_31)
     with Size => 5;
   for ADC0_MEMCTL_CHANSEL_Field use
     (CHAN_0 => 0,
      CHAN_1 => 1,
      CHAN_2 => 2,
      CHAN_3 => 3,
      CHAN_4 => 4,
      CHAN_5 => 5,
      CHAN_6 => 6,
      CHAN_7 => 7,
      CHAN_8 => 8,
      CHAN_9 => 9,
      CHAN_10 => 10,
      CHAN_11 => 11,
      CHAN_12 => 12,
      CHAN_13 => 13,
      CHAN_14 => 14,
      CHAN_15 => 15,
      CHAN_16 => 16,
      CHAN_17 => 17,
      CHAN_18 => 18,
      CHAN_19 => 19,
      CHAN_20 => 20,
      CHAN_21 => 21,
      CHAN_22 => 22,
      CHAN_23 => 23,
      CHAN_24 => 24,
      CHAN_25 => 25,
      CHAN_26 => 26,
      CHAN_27 => 27,
      CHAN_28 => 28,
      CHAN_29 => 29,
      CHAN_30 => 30,
      CHAN_31 => 31);

   --  Voltage reference selection. VEREFM must be connected to on-board ground
   --  when external reference option is selected. Note: Writing value 0x3
   --  defaults to INTREF.
   type ADC0_MEMCTL_VRSEL_Field is
     (--  VDDA reference
      VDDA,
      --  External reference from pin
      EXTREF,
      --  Internal reference
      INTREF)
     with Size => 2;
   for ADC0_MEMCTL_VRSEL_Field use
     (VDDA => 0,
      EXTREF => 1,
      INTREF => 2);

   --  Selects the source of sample timer period between SCOMP0 and SCOMP1.
   type ADC0_MEMCTL_STIME_Field is
     (--  Select SCOMP0
      SEL_SCOMP0,
      --  Select SCOMP1
      SEL_SCOMP1)
     with Size => 1;
   for ADC0_MEMCTL_STIME_Field use
     (SEL_SCOMP0 => 0,
      SEL_SCOMP1 => 1);

   --  Enable hardware averaging.
   type ADC0_MEMCTL_AVGEN_Field is
     (--  Averaging disabled.
      DISABLE,
      --  Averaging enabled.
      ENABLE)
     with Size => 1;
   for ADC0_MEMCTL_AVGEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable burn out current source.
   type ADC0_MEMCTL_BCSEN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for ADC0_MEMCTL_BCSEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Trigger policy. Indicates if a trigger will be needed to step to the
   --  next MEMCTL in the sequence or to perform next conversion in the case of
   --  repeat single channel conversions.
   type ADC0_MEMCTL_TRIG_Field is
     (--  Next conversion is automatic
      AUTO_NEXT,
      --  Next conversion requires a trigger
      TRIGGER_NEXT)
     with Size => 1;
   for ADC0_MEMCTL_TRIG_Field use
     (AUTO_NEXT => 0,
      TRIGGER_NEXT => 1);

   --  Enable window comparator.
   type ADC0_MEMCTL_WINCOMP_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for ADC0_MEMCTL_WINCOMP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Conversion Memory Control Register
   type ADC0_MEMCTL_Register is record
      --  Input channel select.
      CHANSEL        : ADC0_MEMCTL_CHANSEL_Field := MSPMC1104_SVD.ADC.CHAN_0;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Voltage reference selection. VEREFM must be connected to on-board
      --  ground when external reference option is selected. Note: Writing
      --  value 0x3 defaults to INTREF.
      VRSEL          : ADC0_MEMCTL_VRSEL_Field := MSPMC1104_SVD.ADC.VDDA;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Selects the source of sample timer period between SCOMP0 and SCOMP1.
      STIME          : ADC0_MEMCTL_STIME_Field :=
                        MSPMC1104_SVD.ADC.SEL_SCOMP0;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Enable hardware averaging.
      AVGEN          : ADC0_MEMCTL_AVGEN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Enable burn out current source.
      BCSEN          : ADC0_MEMCTL_BCSEN_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Trigger policy. Indicates if a trigger will be needed to step to the
      --  next MEMCTL in the sequence or to perform next conversion in the case
      --  of repeat single channel conversions.
      TRIG           : ADC0_MEMCTL_TRIG_Field := MSPMC1104_SVD.ADC.AUTO_NEXT;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  Enable window comparator.
      WINCOMP        : ADC0_MEMCTL_WINCOMP_Field := MSPMC1104_SVD.ADC.DISABLE;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_MEMCTL_Register use record
      CHANSEL        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VRSEL          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      STIME          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      AVGEN          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      BCSEN          at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TRIG           at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      WINCOMP        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Conversion Memory Control Register
   type ADC0_MEMCTL_Registers is array (0 .. 3) of ADC0_MEMCTL_Register;

   --  Busy. This bit indicates that an active ADC sample or conversion
   --  operation is in progress.
   type ADC0_STATUS_BUSY_Field is
     (--  No ADC sampling or conversion in progress.
      IDLE,
      --  ADC sampling or conversion is in progress.
      ACTIVE)
     with Size => 1;
   for ADC0_STATUS_BUSY_Field use
     (IDLE => 0,
      ACTIVE => 1);

   --  Indicates reference buffer is powered up and ready.
   type ADC0_STATUS_REFBUFRDY_Field is
     (--  Not ready
      NOTREADY,
      --  Ready
      READY)
     with Size => 1;
   for ADC0_STATUS_REFBUFRDY_Field use
     (NOTREADY => 0,
      READY => 1);

   --  Status Register
   type ADC0_STATUS_Register is record
      --  Read-only. Busy. This bit indicates that an active ADC sample or
      --  conversion operation is in progress.
      BUSY          : ADC0_STATUS_BUSY_Field;
      --  Read-only. Indicates reference buffer is powered up and ready.
      REFBUFRDY     : ADC0_STATUS_REFBUFRDY_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_STATUS_Register use record
      BUSY          at 0 range 0 .. 0;
      REFBUFRDY     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ADC0_SVT_MEMRES_DATA_Field is HAL.UInt16;

   --  Memory Result Register
   type ADC0_SVT_MEMRES_Register is record
      --  Read-only. MEMRES result register. If DF = 0, unsigned binary: The
      --  conversion results are right aligned. In 10 and 8 bit modes, the
      --  unused MSB bits are forced to 0. If DF = 1, 2s-complement format: The
      --  conversion results are left aligned. In 10 and 8 bit modes, the
      --  unused LSB bits are forced to 0. The data is stored in the
      --  right-justified format and is converted to the left-justified
      --  2s-complement format during read back.
      DATA           : ADC0_SVT_MEMRES_DATA_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC0_SVT_MEMRES_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Memory Result Register
   type ADC0_SVT_MEMRES_Registers is array (0 .. 3)
     of ADC0_SVT_MEMRES_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type ADC0_Peripheral is record
      --  Subscriber Configuration Register.
      ADC0_FSUB_0        : aliased ADC0_FSUB_0_Register;
      --  Publisher Configuration Register.
      ADC0_FPUB_1        : aliased ADC0_FPUB_1_Register;
      ADC0_GPRCM[%s]     : aliased ADC0_GPRCM[%s]_Cluster;
      ADC0_CPU_INT[%s]   : aliased ADC0_CPU_INT[%s]_Cluster;
      ADC0_GEN_EVENT[%s] : aliased ADC0_GEN_EVENT[%s]_Cluster;
      ADC0_DMA_TRIG[%s]  : aliased ADC0_DMA_TRIG[%s]_Cluster;
      --  Event Mode
      ADC0_EVT_MODE      : aliased ADC0_EVT_MODE_Register;
      --  Module Description
      ADC0_DESC          : aliased ADC0_DESC_Register;
      --  Control Register 0
      ADC0_CTL0          : aliased ADC0_CTL0_Register;
      --  Control Register 1
      ADC0_CTL1          : aliased ADC0_CTL1_Register;
      --  Control Register 2
      ADC0_CTL2          : aliased ADC0_CTL2_Register;
      --  Sample Clock Frequency Range Register
      ADC0_CLKFREQ       : aliased ADC0_CLKFREQ_Register;
      --  Sample Time Compare 0 Register
      ADC0_SCOMP0        : aliased ADC0_SCOMP_Register;
      --  Sample Time Compare 1 Register
      ADC0_SCOMP1        : aliased ADC0_SCOMP_Register;
      --  Window Comparator Low Threshold Register
      ADC0_WCLOW         : aliased ADC0_WCLOW_Register;
      --  Window Comparator High Threshold Register
      ADC0_WCHIGH        : aliased ADC0_WCHIGH_Register;
      --  Conversion Memory Control Register
      ADC0_MEMCTL        : aliased ADC0_MEMCTL_Registers;
      --  Status Register
      ADC0_STATUS        : aliased ADC0_STATUS_Register;
   end record
     with Volatile;

   for ADC0_Peripheral use record
      ADC0_FSUB_0        at 16#400# range 0 .. 31;
      ADC0_FPUB_1        at 16#444# range 0 .. 31;
      ADC0_GPRCM[%s]     at 16#800# range 0 .. 191;
      ADC0_CPU_INT[%s]   at 16#1020# range 0 .. 351;
      ADC0_GEN_EVENT[%s] at 16#1050# range 0 .. 351;
      ADC0_DMA_TRIG[%s]  at 16#1080# range 0 .. 351;
      ADC0_EVT_MODE      at 16#10E0# range 0 .. 31;
      ADC0_DESC          at 16#10FC# range 0 .. 31;
      ADC0_CTL0          at 16#1100# range 0 .. 31;
      ADC0_CTL1          at 16#1104# range 0 .. 31;
      ADC0_CTL2          at 16#1108# range 0 .. 31;
      ADC0_CLKFREQ       at 16#1110# range 0 .. 31;
      ADC0_SCOMP0        at 16#1114# range 0 .. 31;
      ADC0_SCOMP1        at 16#1118# range 0 .. 31;
      ADC0_WCLOW         at 16#1148# range 0 .. 31;
      ADC0_WCHIGH        at 16#1150# range 0 .. 31;
      ADC0_MEMCTL        at 16#1180# range 0 .. 127;
      ADC0_STATUS        at 16#1340# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   ADC0_Periph : aliased ADC0_Peripheral
     with Import, Address => ADC0_Base;

   --  PERIPHERALREGIONSVT
   type ADC0_SVT_Peripheral is record
      --  FIFO Data Register
      ADC0_SVT_FIFODATA : aliased HAL.UInt32;
      --  Memory Result Register
      ADC0_SVT_MEMRES   : aliased ADC0_SVT_MEMRES_Registers;
   end record
     with Volatile;

   for ADC0_SVT_Peripheral use record
      ADC0_SVT_FIFODATA at 16#556160# range 0 .. 31;
      ADC0_SVT_MEMRES   at 16#556280# range 0 .. 127;
   end record;

   --  PERIPHERALREGIONSVT
   ADC0_SVT_Periph : aliased ADC0_SVT_Peripheral
     with Import, Address => ADC0_SVT_Base;

end MSPMC1104_SVD.ADC;
