pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.WWDT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------------------------
   -- WWDT0_GPRCM[%s] cluster's Registers --
   -----------------------------------------

   --  Enable the power Note: For safety devices the power cannot be disabled
   --  once enabled.
   type WWDT0_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for WWDT0_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type WWDT0_PWREN_WWDT0_GPRCM[%s]_Register is record
      --  Enable the power Note: For safety devices the power cannot be
      --  disabled once enabled.
      ENABLE        : WWDT0_PWREN_ENABLE_Field := MSPMC1104_SVD.WWDT.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_PWREN_WWDT0_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral Note: For safety devices a watchdog reset
   --  by software is not possible.
   type WWDT0_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for WWDT0_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear [GPRCM.STAT.RESETSTKY]
   type WWDT0_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for WWDT0_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type WWDT0_RSTCTL_WWDT0_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral Note: For safety devices a
      --  watchdog reset by software is not possible.
      RESETASSERT   : WWDT0_RSTCTL_RESETASSERT_Field :=
                       MSPMC1104_SVD.WWDT.NOP;
      --  Write-only. Clear [GPRCM.STAT.RESETSTKY]
      RESETSTKYCLR  : WWDT0_RSTCTL_RESETSTKYCLR_Field :=
                       MSPMC1104_SVD.WWDT.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_RSTCTL_WWDT0_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type WWDT0_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for WWDT0_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type WWDT0_STAT_WWDT0_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : WWDT0_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_STAT_WWDT0_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type WWDT0_GPRCM[%s]_Cluster is record
      --  Power enable
      WWDT0_PWREN  : aliased WWDT0_PWREN_WWDT0_GPRCM[%s]_Register;
      --  Reset Control
      WWDT0_RSTCTL : aliased WWDT0_RSTCTL_WWDT0_GPRCM[%s]_Register;
      --  Status Register
      WWDT0_STAT   : aliased WWDT0_STAT_WWDT0_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for WWDT0_GPRCM[%s]_Cluster use record
      WWDT0_PWREN  at 16#0# range 0 .. 31;
      WWDT0_RSTCTL at 16#4# range 0 .. 31;
      WWDT0_STAT   at 16#14# range 0 .. 31;
   end record;

   --  Free run control
   type WWDT0_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for WWDT0_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Peripheral Debug Control
   type WWDT0_PDBGCTL_Register is record
      --  Free run control
      FREE          : WWDT0_PDBGCTL_FREE_Field := MSPMC1104_SVD.WWDT.STOP;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ---------------------------------------------
   -- WWDT0_INT_EVENT[%s] cluster's Registers --
   ---------------------------------------------

   --  Module Interrupt Vector Value. This register provides the highest
   --  priority interrupt index. A read clears the corresponding interrupt flag
   --  in RIS and MISC.
   type WWDT0_IIDX_STAT_Field is
     (--  No interrupt pending
      NO_INTR,
      --  Interval Timer Interrupt; Interrupt Flag: INTTIM; Interrupt Priority:
--  Highest
      INTTIM)
     with Size => 5;
   for WWDT0_IIDX_STAT_Field use
     (NO_INTR => 0,
      INTTIM => 1);

   --  Interrupt index
   type WWDT0_IIDX_WWDT0_INT_EVENT[%s]_Register is record
      --  Read-only. Module Interrupt Vector Value. This register provides the
      --  highest priority interrupt index. A read clears the corresponding
      --  interrupt flag in RIS and MISC.
      STAT          : WWDT0_IIDX_STAT_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_IIDX_WWDT0_INT_EVENT[%s]_Register use record
      STAT          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Interval Timer Interrupt.
   type WWDT0_IMASK_INTTIM_Field is
     (--  Clear Interrupt Mask
      CLR,
      --  Set Interrupt Mask
      SET)
     with Size => 1;
   for WWDT0_IMASK_INTTIM_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type WWDT0_IMASK_WWDT0_INT_EVENT[%s]_Register is record
      --  Interval Timer Interrupt.
      INTTIM        : WWDT0_IMASK_INTTIM_Field := MSPMC1104_SVD.WWDT.CLR;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_IMASK_WWDT0_INT_EVENT[%s]_Register use record
      INTTIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interval Timer Interrupt.
   type WWDT0_RIS_INTTIM_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for WWDT0_RIS_INTTIM_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type WWDT0_RIS_WWDT0_INT_EVENT[%s]_Register is record
      --  Read-only. Interval Timer Interrupt.
      INTTIM        : WWDT0_RIS_INTTIM_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_RIS_WWDT0_INT_EVENT[%s]_Register use record
      INTTIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interval Timer Interrupt.
   type WWDT0_MIS_INTTIM_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for WWDT0_MIS_INTTIM_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type WWDT0_MIS_WWDT0_INT_EVENT[%s]_Register is record
      --  Read-only. Interval Timer Interrupt.
      INTTIM        : WWDT0_MIS_INTTIM_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_MIS_WWDT0_INT_EVENT[%s]_Register use record
      INTTIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interval Timer Interrupt.
   type WWDT0_ISET_INTTIM_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set Interrupt
      SET)
     with Size => 1;
   for WWDT0_ISET_INTTIM_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type WWDT0_ISET_WWDT0_INT_EVENT[%s]_Register is record
      --  Write-only. Interval Timer Interrupt.
      INTTIM        : WWDT0_ISET_INTTIM_Field := MSPMC1104_SVD.WWDT.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_ISET_WWDT0_INT_EVENT[%s]_Register use record
      INTTIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interval Timer Interrupt.
   type WWDT0_ICLR_INTTIM_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear Interrupt
      CLR)
     with Size => 1;
   for WWDT0_ICLR_INTTIM_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type WWDT0_ICLR_WWDT0_INT_EVENT[%s]_Register is record
      --  Write-only. Interval Timer Interrupt.
      INTTIM        : WWDT0_ICLR_INTTIM_Field := MSPMC1104_SVD.WWDT.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_ICLR_WWDT0_INT_EVENT[%s]_Register use record
      INTTIM        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type WWDT0_INT_EVENT[%s]_Cluster is record
      --  Interrupt index
      WWDT0_IIDX  : aliased WWDT0_IIDX_WWDT0_INT_EVENT[%s]_Register;
      --  Interrupt mask
      WWDT0_IMASK : aliased WWDT0_IMASK_WWDT0_INT_EVENT[%s]_Register;
      --  Raw interrupt status
      WWDT0_RIS   : aliased WWDT0_RIS_WWDT0_INT_EVENT[%s]_Register;
      --  Masked interrupt status
      WWDT0_MIS   : aliased WWDT0_MIS_WWDT0_INT_EVENT[%s]_Register;
      --  Interrupt set
      WWDT0_ISET  : aliased WWDT0_ISET_WWDT0_INT_EVENT[%s]_Register;
      --  Interrupt clear
      WWDT0_ICLR  : aliased WWDT0_ICLR_WWDT0_INT_EVENT[%s]_Register;
   end record
     with Size => 352;

   for WWDT0_INT_EVENT[%s]_Cluster use record
      WWDT0_IIDX  at 16#0# range 0 .. 31;
      WWDT0_IMASK at 16#8# range 0 .. 31;
      WWDT0_RIS   at 16#10# range 0 .. 31;
      WWDT0_MIS   at 16#18# range 0 .. 31;
      WWDT0_ISET  at 16#20# range 0 .. 31;
      WWDT0_ICLR  at 16#28# range 0 .. 31;
   end record;

   --  Event line mode select for event corresponding to
   --  [IPSTANDARD.INT_EVENT][0]
   type WWDT0_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for WWDT0_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type WWDT0_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  [IPSTANDARD.INT_EVENT][0]
      INT0_CFG      : WWDT0_EVT_MODE_INT0_CFG_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype WWDT0_DESC_MINREV_Field is HAL.UInt4;
   subtype WWDT0_DESC_MAJREV_Field is HAL.UInt4;
   subtype WWDT0_DESC_INSTNUM_Field is HAL.UInt4;
   subtype WWDT0_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype WWDT0_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type WWDT0_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : WWDT0_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : WWDT0_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : WWDT0_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : WWDT0_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : WWDT0_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   subtype WWDT0_WWDTCTL0_CLKDIV_Field is HAL.UInt3;

   --  Timer Period of the WWDT. These bits select the total watchdog timer
   --  count.
   type WWDT0_WWDTCTL0_PER_Field is
     (--  Total timer count is 2^25
      EN_25,
      --  Total timer count is 2^21
      EN_21,
      --  Total timer count is 2^18
      EN_18,
      --  Total timer count is 2^15
      EN_15,
      --  Total timer count is 2^12 (default)
      EN_12,
      --  Total timer count is 2^10
      EN_10,
      --  Total timer count is 2^8
      EN_8,
      --  Total timer count is 2^6
      EN_6)
     with Size => 3;
   for WWDT0_WWDTCTL0_PER_Field use
     (EN_25 => 0,
      EN_21 => 1,
      EN_18 => 2,
      EN_15 => 3,
      EN_12 => 4,
      EN_10 => 5,
      EN_8 => 6,
      EN_6 => 7);

   --  Closed window period in percentage of the timer interval.
   --  WWDTCTL1.WINSEL determines the active window setting (WWDTCTL0.WINDOW0
   --  or WWDTCTL0.WINDOW1).
   type WWDT0_WWDTCTL0_WINDOW0_Field is
     (--  0% (No closed Window)
      SIZE_0,
      --  12.50% of the total timer period is closed window
      SIZE_12,
      --  18.75% of the total timer period is closed window
      SIZE_18,
      --  25% of the total timer period is closed window
      SIZE_25,
      --  50% of the total timer period is closed window
      SIZE_50,
      --  75% of the total timer period is closed window
      SIZE_75,
      --  81.25% of the total timer period is closed window
      SIZE_81,
      --  87.50% of the total timer period is closed window
      SIZE_87)
     with Size => 3;
   for WWDT0_WWDTCTL0_WINDOW0_Field use
     (SIZE_0 => 0,
      SIZE_12 => 1,
      SIZE_18 => 2,
      SIZE_25 => 3,
      SIZE_50 => 4,
      SIZE_75 => 5,
      SIZE_81 => 6,
      SIZE_87 => 7);

   --  Closed window period in percentage of the timer interval.
   --  WWDTCTL1.WINSEL determines the active window setting (WWDTCTL0.WINDOW0
   --  or WWDTCTL0.WINDOW1).
   type WWDT0_WWDTCTL0_WINDOW1_Field is
     (--  0% (No closed Window)
      SIZE_0,
      --  12.50% of the total timer period is closed window
      SIZE_12,
      --  18.75% of the total timer period is closed window
      SIZE_18,
      --  25% of the total timer period is closed window
      SIZE_25,
      --  50% of the total timer period is closed window
      SIZE_50,
      --  75% of the total timer period is closed window
      SIZE_75,
      --  81.25% of the total timer period is closed window
      SIZE_81,
      --  87.50% of the total timer period is closed window
      SIZE_87)
     with Size => 3;
   for WWDT0_WWDTCTL0_WINDOW1_Field use
     (SIZE_0 => 0,
      SIZE_12 => 1,
      SIZE_18 => 2,
      SIZE_25 => 3,
      SIZE_50 => 4,
      SIZE_75 => 5,
      SIZE_81 => 6,
      SIZE_87 => 7);

   --  Window Watchdog Timer Mode
   type WWDT0_WWDTCTL0_MODE_Field is
     (--  Window Watchdog Timer Mode. The WWDT will generate a error signal to the
--  ESM when following conditions occur: - Timer Expiration (Timeout) - Reset
--  WWDT during the active window closed period - Keyword violation
      WINDOW,
      --  Interval Timer Mode. The WWDT acts as an interval timer. It generates an
--  interrupt on timeout.
      INTERVAL)
     with Size => 1;
   for WWDT0_WWDTCTL0_MODE_Field use
     (WINDOW => 0,
      INTERVAL => 1);

   --  Stop In Sleep Mode. The functionality of this bit requires that
   --  POLICY.HWCEN = 0. If POLICY.HWCEN = 1 the WWDT resets during sleep and
   --  needs re-configuration. Note: This bit has no effect for the global
   --  Window Watchdog as Sleep Mode is not supported.
   type WWDT0_WWDTCTL0_STISM_Field is
     (--  The WWDT continues to function in Sleep mode.
      CONT,
      --  The WWDT stops in Sleep mode and resumes where it was stopped after wakeup.
      STOP)
     with Size => 1;
   for WWDT0_WWDTCTL0_STISM_Field use
     (CONT => 0,
      STOP => 1);

   --  Window Watchdog Timer Control Register 0
   type WWDT0_WWDTCTL0_Register is record
      --  Module Clock Divider, Divide the clock source by CLKDIV+1. Divider
      --  values from /1 to /8 are possible. The clock divider is currently 4
      --  bits. Bit 4 has no effect and should always be written with 0.
      CLKDIV         : WWDT0_WWDTCTL0_CLKDIV_Field := 16#3#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Timer Period of the WWDT. These bits select the total watchdog timer
      --  count.
      PER            : WWDT0_WWDTCTL0_PER_Field := MSPMC1104_SVD.WWDT.EN_12;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Closed window period in percentage of the timer interval.
      --  WWDTCTL1.WINSEL determines the active window setting
      --  (WWDTCTL0.WINDOW0 or WWDTCTL0.WINDOW1).
      WINDOW0        : WWDT0_WWDTCTL0_WINDOW0_Field :=
                        MSPMC1104_SVD.WWDT.SIZE_0;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Closed window period in percentage of the timer interval.
      --  WWDTCTL1.WINSEL determines the active window setting
      --  (WWDTCTL0.WINDOW0 or WWDTCTL0.WINDOW1).
      WINDOW1        : WWDT0_WWDTCTL0_WINDOW1_Field :=
                        MSPMC1104_SVD.WWDT.SIZE_0;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Window Watchdog Timer Mode
      MODE           : WWDT0_WWDTCTL0_MODE_Field := MSPMC1104_SVD.WWDT.WINDOW;
      --  Stop In Sleep Mode. The functionality of this bit requires that
      --  POLICY.HWCEN = 0. If POLICY.HWCEN = 1 the WWDT resets during sleep
      --  and needs re-configuration. Note: This bit has no effect for the
      --  global Window Watchdog as Sleep Mode is not supported.
      STISM          : WWDT0_WWDTCTL0_STISM_Field := MSPMC1104_SVD.WWDT.CONT;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_WWDTCTL0_Register use record
      CLKDIV         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PER            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      WINDOW0        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      WINDOW1        at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MODE           at 0 range 16 .. 16;
      STISM          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Close Window Select
   type WWDT0_WWDTCTL1_WINSEL_Field is
     (--  In window mode field WINDOW0 of WDDTCTL0 defines the closed window size.
      WIN0,
      --  In window mode field WINDOW1 of WDDTCTL0 defines the closed window size.
      WIN1)
     with Size => 1;
   for WWDT0_WWDTCTL1_WINSEL_Field use
     (WIN0 => 0,
      WIN1 => 1);

   --  Window Watchdog Timer Control Register 0
   type WWDT0_WWDTCTL1_Register is record
      --  Close Window Select
      WINSEL        : WWDT0_WWDTCTL1_WINSEL_Field := MSPMC1104_SVD.WWDT.WIN0;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_WWDTCTL1_Register use record
      WINSEL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Watchdog running status flag.
   type WWDT0_WWDTSTAT_RUN_Field is
     (--  Watchdog counter stopped.
      OFF,
      --  Watchdog running.
      ON)
     with Size => 1;
   for WWDT0_WWDTSTAT_RUN_Field use
     (OFF => 0,
      ON => 1);

   --  Window Watchdog Timer Status Register
   type WWDT0_WWDTSTAT_Register is record
      --  Read-only. Watchdog running status flag.
      RUN           : WWDT0_WWDTSTAT_RUN_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WWDT0_WWDTSTAT_Register use record
      RUN           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WWDT
   type WWDT0_Peripheral is record
      WWDT0_GPRCM[%s]     : aliased WWDT0_GPRCM[%s]_Cluster;
      --  Peripheral Debug Control
      WWDT0_PDBGCTL       : aliased WWDT0_PDBGCTL_Register;
      WWDT0_INT_EVENT[%s] : aliased WWDT0_INT_EVENT[%s]_Cluster;
      --  Event Mode
      WWDT0_EVT_MODE      : aliased WWDT0_EVT_MODE_Register;
      --  Module Description
      WWDT0_DESC          : aliased WWDT0_DESC_Register;
      --  Window Watchdog Timer Control Register 0
      WWDT0_WWDTCTL0      : aliased WWDT0_WWDTCTL0_Register;
      --  Window Watchdog Timer Control Register 0
      WWDT0_WWDTCTL1      : aliased WWDT0_WWDTCTL1_Register;
      --  Window Watchdog Timer Counter Reset Register
      WWDT0_WWDTCNTRST    : aliased HAL.UInt32;
      --  Window Watchdog Timer Status Register
      WWDT0_WWDTSTAT      : aliased WWDT0_WWDTSTAT_Register;
   end record
     with Volatile;

   for WWDT0_Peripheral use record
      WWDT0_GPRCM[%s]     at 16#800# range 0 .. 191;
      WWDT0_PDBGCTL       at 16#1018# range 0 .. 31;
      WWDT0_INT_EVENT[%s] at 16#1020# range 0 .. 351;
      WWDT0_EVT_MODE      at 16#10E0# range 0 .. 31;
      WWDT0_DESC          at 16#10FC# range 0 .. 31;
      WWDT0_WWDTCTL0      at 16#1100# range 0 .. 31;
      WWDT0_WWDTCTL1      at 16#1104# range 0 .. 31;
      WWDT0_WWDTCNTRST    at 16#1108# range 0 .. 31;
      WWDT0_WWDTSTAT      at 16#110C# range 0 .. 31;
   end record;

   --  WWDT
   WWDT0_Periph : aliased WWDT0_Peripheral
     with Import, Address => WWDT0_Base;

end MSPMC1104_SVD.WWDT;
