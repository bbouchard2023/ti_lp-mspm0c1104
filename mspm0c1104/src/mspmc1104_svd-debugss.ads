pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.DEBUGSS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -------------------------------------------
   -- DEBUGSS_PINCM[%s] cluster's Registers --
   -------------------------------------------

   --  Peripheral-Analog Channel State
   type DEBUGSS_SWCLK_PSTATE_Field is
     (--  P-Channel is in Unassigned State
      UNASSIGNED,
      --  P-Channel is in Handover State
      HANDOVER,
      --  P-Channel is in Connected State and not Locked (That is F field is allowed
--  to change without going back through Unassigned state)
      CONC_NOT_LOCKED,
      --  P-Channel is in Connected State and Locked (That is F field is not allowed
--  to change to a different non-Zero value until both G and P channels go to
--  Unassigned)
      CONC_LOCKED)
     with Size => 2;
   for DEBUGSS_SWCLK_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type DEBUGSS_SWCLK_GSTATE_Field is
     (--  G-Channel is in Unassigned State
      UNASSIGNED,
      --  G-Channel is in Handover State
      HANDOVER,
      --  G-Channel is in Connected State and not Locked (That is F field is allowed
--  to change without going back through Unassigned state)
      CONC_NOT_LOCKED,
      --  G-Channel is in Connected State and Locked (That is F field is not allowed
--  to change to a different non-Zero value until both G and P channels go to
--  Unassigned)
      CONC_LOCKED)
     with Size => 2;
   for DEBUGSS_SWCLK_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type DEBUGSS_SWCLK_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for DEBUGSS_SWCLK_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type DEBUGSS_SWCLK_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for DEBUGSS_SWCLK_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type DEBUGSS_SWCLK_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for DEBUGSS_SWCLK_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type DEBUGSS_SWCLK_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for DEBUGSS_SWCLK_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type DEBUGSS_SWCLK_DRV_Field is
     (--  Lowest drive strength
      STRENGTH_0,
      --  Drive strength 2/8
      STRENGTH_1,
      --  Drive strength 3/8
      STRENGTH_2,
      --  Drive strength 4/8
      STRENGTH_3,
      --  Drive strength 5/8
      STRENGTH_4,
      --  Drive strength 6/8
      STRENGTH_5,
      --  Drive strength 7/8
      STRENGTH_6,
      --  Highest drive strength
      STRENGTH_7)
     with Size => 3;
   for DEBUGSS_SWCLK_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type DEBUGSS_SWCLK_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for DEBUGSS_SWCLK_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type DEBUGSS_SWCLK_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for DEBUGSS_SWCLK_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type DEBUGSS_SWCLK_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for DEBUGSS_SWCLK_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type DEBUGSS_SWCLK_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for DEBUGSS_SWCLK_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type DEBUGSS_SWCLK_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for DEBUGSS_SWCLK_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  SWCLK
   type DEBUGSS_SWCLK_DEBUGSS_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : DEBUGSS_SWCLK_PSTATE_Field :=
                        MSPMC1104_SVD.DEBUGSS.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : DEBUGSS_SWCLK_GSTATE_Field :=
                        MSPMC1104_SVD.DEBUGSS.UNASSIGNED;
      --  Pull down enable
      PIPD           : DEBUGSS_SWCLK_PIPD_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : DEBUGSS_SWCLK_PIPU_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_PULL_UP;
      --  Input enable
      INENA          : DEBUGSS_SWCLK_INENA_Field :=
                        MSPMC1104_SVD.DEBUGSS.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : DEBUGSS_SWCLK_HYSTEN_Field :=
                        MSPMC1104_SVD.DEBUGSS.DIS_HYST;
      --  Drive strength options
      DRV            : DEBUGSS_SWCLK_DRV_Field :=
                        MSPMC1104_SVD.DEBUGSS.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : DEBUGSS_SWCLK_HIGHZ0_Field :=
                        MSPMC1104_SVD.DEBUGSS.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : DEBUGSS_SWCLK_HIGHZ1_Field :=
                        MSPMC1104_SVD.DEBUGSS.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : DEBUGSS_SWCLK_INV_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_CHNG;
      --  Wake up enable
      WUEN           : DEBUGSS_SWCLK_WUEN_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : DEBUGSS_SWCLK_WCOMP_Field :=
                        MSPMC1104_SVD.DEBUGSS.MATCH_ZERO;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_SWCLK_DEBUGSS_PINCM[%s]_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PSTATE         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      GSTATE         at 0 range 14 .. 15;
      PIPD           at 0 range 16 .. 16;
      PIPU           at 0 range 17 .. 17;
      INENA          at 0 range 18 .. 18;
      HYSTEN         at 0 range 19 .. 19;
      DRV            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      HIGHZ0         at 0 range 24 .. 24;
      HIGHZ1         at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      WUEN           at 0 range 27 .. 27;
      WCOMP          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type DEBUGSS_SWDIO_PSTATE_Field is
     (--  P-Channel is in Unassigned State
      UNASSIGNED,
      --  P-Channel is in Handover State
      HANDOVER,
      --  P-Channel is in Connected State and not Locked (That is F field is allowed
--  to change without going back through Unassigned state)
      CONC_NOT_LOCKED,
      --  P-Channel is in Connected State and Locked (That is F field is not allowed
--  to change to a different non-Zero value until both G and P channels go to
--  Unassigned)
      CONC_LOCKED)
     with Size => 2;
   for DEBUGSS_SWDIO_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type DEBUGSS_SWDIO_GSTATE_Field is
     (--  G-Channel is in Unassigned State
      UNASSIGNED,
      --  G-Channel is in Handover State
      HANDOVER,
      --  G-Channel is in Connected State and not Locked (That is F field is allowed
--  to change without going back through Unassigned state)
      CONC_NOT_LOCKED,
      --  G-Channel is in Connected State and Locked (That is F field is not allowed
--  to change to a different non-Zero value until both G and P channels go to
--  Unassigned)
      CONC_LOCKED)
     with Size => 2;
   for DEBUGSS_SWDIO_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type DEBUGSS_SWDIO_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for DEBUGSS_SWDIO_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type DEBUGSS_SWDIO_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for DEBUGSS_SWDIO_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type DEBUGSS_SWDIO_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for DEBUGSS_SWDIO_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type DEBUGSS_SWDIO_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for DEBUGSS_SWDIO_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type DEBUGSS_SWDIO_DRV_Field is
     (--  Lowest drive strength
      STRENGTH_0,
      --  Drive strength 2/8
      STRENGTH_1,
      --  Drive strength 3/8
      STRENGTH_2,
      --  Drive strength 4/8
      STRENGTH_3,
      --  Drive strength 5/8
      STRENGTH_4,
      --  Drive strength 6/8
      STRENGTH_5,
      --  Drive strength 7/8
      STRENGTH_6,
      --  Highest drive strength
      STRENGTH_7)
     with Size => 3;
   for DEBUGSS_SWDIO_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type DEBUGSS_SWDIO_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for DEBUGSS_SWDIO_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type DEBUGSS_SWDIO_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for DEBUGSS_SWDIO_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type DEBUGSS_SWDIO_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for DEBUGSS_SWDIO_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type DEBUGSS_SWDIO_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for DEBUGSS_SWDIO_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type DEBUGSS_SWDIO_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for DEBUGSS_SWDIO_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  SWDIO
   type DEBUGSS_SWDIO_DEBUGSS_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : DEBUGSS_SWDIO_PSTATE_Field :=
                        MSPMC1104_SVD.DEBUGSS.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : DEBUGSS_SWDIO_GSTATE_Field :=
                        MSPMC1104_SVD.DEBUGSS.UNASSIGNED;
      --  Pull down enable
      PIPD           : DEBUGSS_SWDIO_PIPD_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : DEBUGSS_SWDIO_PIPU_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_PULL_UP;
      --  Input enable
      INENA          : DEBUGSS_SWDIO_INENA_Field :=
                        MSPMC1104_SVD.DEBUGSS.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : DEBUGSS_SWDIO_HYSTEN_Field :=
                        MSPMC1104_SVD.DEBUGSS.DIS_HYST;
      --  Drive strength options
      DRV            : DEBUGSS_SWDIO_DRV_Field :=
                        MSPMC1104_SVD.DEBUGSS.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : DEBUGSS_SWDIO_HIGHZ0_Field :=
                        MSPMC1104_SVD.DEBUGSS.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : DEBUGSS_SWDIO_HIGHZ1_Field :=
                        MSPMC1104_SVD.DEBUGSS.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : DEBUGSS_SWDIO_INV_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_CHNG;
      --  Wake up enable
      WUEN           : DEBUGSS_SWDIO_WUEN_Field :=
                        MSPMC1104_SVD.DEBUGSS.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : DEBUGSS_SWDIO_WCOMP_Field :=
                        MSPMC1104_SVD.DEBUGSS.MATCH_ZERO;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_SWDIO_DEBUGSS_PINCM[%s]_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PSTATE         at 0 range 6 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      GSTATE         at 0 range 14 .. 15;
      PIPD           at 0 range 16 .. 16;
      PIPU           at 0 range 17 .. 17;
      INENA          at 0 range 18 .. 18;
      HYSTEN         at 0 range 19 .. 19;
      DRV            at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      HIGHZ0         at 0 range 24 .. 24;
      HIGHZ1         at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      WUEN           at 0 range 27 .. 27;
      WCOMP          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   type DEBUGSS_PINCM[%s]_Cluster is record
      --  SWCLK
      DEBUGSS_SWCLK : aliased DEBUGSS_SWCLK_DEBUGSS_PINCM[%s]_Register;
      --  SWDIO
      DEBUGSS_SWDIO : aliased DEBUGSS_SWDIO_DEBUGSS_PINCM[%s]_Register;
   end record
     with Size => 64;

   for DEBUGSS_PINCM[%s]_Cluster use record
      DEBUGSS_SWCLK at 16#0# range 0 .. 31;
      DEBUGSS_SWDIO at 16#4# range 0 .. 31;
   end record;

   --  CPUSS0 connect bit.
   type DEBUGSS_CPU_CONNECT_0_CPUSS0_CONN_Field is
     (--  The CPU is not connected.
      UNCONNECTED,
      --  The CPU is connected.
      CONNECTED)
     with Size => 1;
   for DEBUGSS_CPU_CONNECT_0_CPUSS0_CONN_Field use
     (UNCONNECTED => 0,
      CONNECTED => 1);

   --  CPU Connect
   type DEBUGSS_CPU_CONNECT_0_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  CPUSS0 connect bit.
      CPUSS0_CONN   : DEBUGSS_CPU_CONNECT_0_CPUSS0_CONN_Field :=
                       MSPMC1104_SVD.DEBUGSS.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_CPU_CONNECT_0_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CPUSS0_CONN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Interrupt index status
   type DEBUGSS_IIDX_STAT_Field is
     (--  No pending interrupt request
      NO_INTR,
      --  TX interrupt
      TXIFG,
      --  RX interrupt
      RXIFG,
      --  Power-up interrupt. A debug session has started.
      PWRUP,
      --  Power-up interrupt. A debug session has started.
      PWRDWN)
     with Size => 8;
   for DEBUGSS_IIDX_STAT_Field use
     (NO_INTR => 0,
      TXIFG => 1,
      RXIFG => 2,
      PWRUP => 3,
      PWRDWN => 4);

   --  Interrupt index
   type DEBUGSS_IIDX_Register is record
      --  Read-only. Interrupt index status
      STAT          : DEBUGSS_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_IIDX_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Masks TXIFG in MIS register
   type DEBUGSS_IMASK_TXIFG_Field is
     (--  Interrupt is masked out
      CLR,
      --  Interrupt will request an interrupt service routine and corresponding bit
--  in MIS will be set
      SET)
     with Size => 1;
   for DEBUGSS_IMASK_TXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masks RXIFG in MIS register
   type DEBUGSS_IMASK_RXIFG_Field is
     (--  Interrupt is masked out
      CLR,
      --  Interrupt will request an interrupt service routine and corresponding bit
--  in MIS will be set
      SET)
     with Size => 1;
   for DEBUGSS_IMASK_RXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masks PWRUPIFG in MIS register
   type DEBUGSS_IMASK_PWRUPIFG_Field is
     (--  Interrupt is masked out
      CLR,
      --  Interrupt will request an interrupt service routine and corresponding bit
--  in MIS will be set
      SET)
     with Size => 1;
   for DEBUGSS_IMASK_PWRUPIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masks PWRDWNIFG in MIS register
   type DEBUGSS_IMASK_PWRDWNIFG_Field is
     (--  Interrupt is masked out
      CLR,
      --  Interrupt will request an interrupt service routine and corresponding bit
--  in MIS will be set
      SET)
     with Size => 1;
   for DEBUGSS_IMASK_PWRDWNIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type DEBUGSS_IMASK_Register is record
      --  Masks TXIFG in MIS register
      TXIFG         : DEBUGSS_IMASK_TXIFG_Field := MSPMC1104_SVD.DEBUGSS.CLR;
      --  Masks RXIFG in MIS register
      RXIFG         : DEBUGSS_IMASK_RXIFG_Field := MSPMC1104_SVD.DEBUGSS.CLR;
      --  Masks PWRUPIFG in MIS register
      PWRUPIFG      : DEBUGSS_IMASK_PWRUPIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.CLR;
      --  Masks PWRDWNIFG in MIS register
      PWRDWNIFG     : DEBUGSS_IMASK_PWRDWNIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.CLR;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_IMASK_Register use record
      TXIFG         at 0 range 0 .. 0;
      RXIFG         at 0 range 1 .. 1;
      PWRUPIFG      at 0 range 2 .. 2;
      PWRDWNIFG     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Raw interrupt status for TXIFG
   type DEBUGSS_RIS_TXIFG_Field is
     (--  TXIFG did not occur
      CLR,
      --  TXIFG occurred
      SET)
     with Size => 1;
   for DEBUGSS_RIS_TXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for RXIFG
   type DEBUGSS_RIS_RXIFG_Field is
     (--  RXIFG did not occur
      CLR,
      --  RXIFG occurred
      SET)
     with Size => 1;
   for DEBUGSS_RIS_RXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for PWRUPIFG
   type DEBUGSS_RIS_PWRUPIFG_Field is
     (--  PWRUPIFG did not occur
      CLR,
      --  PWRUPIFG occurred
      SET)
     with Size => 1;
   for DEBUGSS_RIS_PWRUPIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status for PWRDWNIFG
   type DEBUGSS_RIS_PWRDWNIFG_Field is
     (--  PWRUPIFG did not occur
      CLR,
      --  PWRUPIFG occurred
      SET)
     with Size => 1;
   for DEBUGSS_RIS_PWRDWNIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type DEBUGSS_RIS_Register is record
      --  Read-only. Raw interrupt status for TXIFG
      TXIFG         : DEBUGSS_RIS_TXIFG_Field;
      --  Read-only. Raw interrupt status for RXIFG
      RXIFG         : DEBUGSS_RIS_RXIFG_Field;
      --  Read-only. Raw interrupt status for PWRUPIFG
      PWRUPIFG      : DEBUGSS_RIS_PWRUPIFG_Field;
      --  Read-only. Raw interrupt status for PWRDWNIFG
      PWRDWNIFG     : DEBUGSS_RIS_PWRDWNIFG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_RIS_Register use record
      TXIFG         at 0 range 0 .. 0;
      RXIFG         at 0 range 1 .. 1;
      PWRUPIFG      at 0 range 2 .. 2;
      PWRDWNIFG     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Masked interrupt status for TXIFG
   type DEBUGSS_MIS_TXIFG_Field is
     (--  TXIFG did not request an interrupt service routine
      CLR,
      --  TXIFG requests an interrupt service routine
      SET)
     with Size => 1;
   for DEBUGSS_MIS_TXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status for RXIFG
   type DEBUGSS_MIS_RXIFG_Field is
     (--  RXIFG did not request an interrupt service routine
      CLR,
      --  RXIFG requests an interrupt service routine
      SET)
     with Size => 1;
   for DEBUGSS_MIS_RXIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status for PWRUPIFG
   type DEBUGSS_MIS_PWRUPIFG_Field is
     (--  PWRUPIFG did not request an interrupt service routine
      CLR,
      --  PWRUPIFG requests an interrupt service routine
      SET)
     with Size => 1;
   for DEBUGSS_MIS_PWRUPIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status for PWRDWNIFG
   type DEBUGSS_MIS_PWRDWNIFG_Field is
     (--  PWRUPIFG did not request an interrupt service routine
      CLR,
      --  PWRUPIFG requests an interrupt service routine
      SET)
     with Size => 1;
   for DEBUGSS_MIS_PWRDWNIFG_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type DEBUGSS_MIS_Register is record
      --  Read-only. Masked interrupt status for TXIFG
      TXIFG         : DEBUGSS_MIS_TXIFG_Field;
      --  Read-only. Masked interrupt status for RXIFG
      RXIFG         : DEBUGSS_MIS_RXIFG_Field;
      --  Read-only. Masked interrupt status for PWRUPIFG
      PWRUPIFG      : DEBUGSS_MIS_PWRUPIFG_Field;
      --  Read-only. Masked interrupt status for PWRDWNIFG
      PWRDWNIFG     : DEBUGSS_MIS_PWRDWNIFG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_MIS_Register use record
      TXIFG         at 0 range 0 .. 0;
      RXIFG         at 0 range 1 .. 1;
      PWRUPIFG      at 0 range 2 .. 2;
      PWRDWNIFG     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Sets TXIFG in RIS register
   type DEBUGSS_ISET_TXIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to TXIFG is set
      SET)
     with Size => 1;
   for DEBUGSS_ISET_TXIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Sets RXIFG in RIS register
   type DEBUGSS_ISET_RXIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to RXIFG is set
      SET)
     with Size => 1;
   for DEBUGSS_ISET_RXIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Sets PWRUPIFG in RIS register
   type DEBUGSS_ISET_PWRUPIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to PWRUPIFG is set
      SET)
     with Size => 1;
   for DEBUGSS_ISET_PWRUPIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Sets PWRDWNIFG in RIS register
   type DEBUGSS_ISET_PWRDWNIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to PWRUPIFG is set
      SET)
     with Size => 1;
   for DEBUGSS_ISET_PWRDWNIFG_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt set
   type DEBUGSS_ISET_Register is record
      --  Write-only. Sets TXIFG in RIS register
      TXIFG         : DEBUGSS_ISET_TXIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Sets RXIFG in RIS register
      RXIFG         : DEBUGSS_ISET_RXIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Sets PWRUPIFG in RIS register
      PWRUPIFG      : DEBUGSS_ISET_PWRUPIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Sets PWRDWNIFG in RIS register
      PWRDWNIFG     : DEBUGSS_ISET_PWRDWNIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_ISET_Register use record
      TXIFG         at 0 range 0 .. 0;
      RXIFG         at 0 range 1 .. 1;
      PWRUPIFG      at 0 range 2 .. 2;
      PWRDWNIFG     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Clears TXIFG in RIS register
   type DEBUGSS_ICLR_TXIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to TXIFG is cleared
      CLR)
     with Size => 1;
   for DEBUGSS_ICLR_TXIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clears RXIFG in RIS register
   type DEBUGSS_ICLR_RXIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to RXIFG is cleared
      CLR)
     with Size => 1;
   for DEBUGSS_ICLR_RXIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clears PWRUPIFG in RIS register
   type DEBUGSS_ICLR_PWRUPIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to PWRUPIFG is cleared
      CLR)
     with Size => 1;
   for DEBUGSS_ICLR_PWRUPIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Clears PWRDWNIFG in RIS register
   type DEBUGSS_ICLR_PWRDWNIFG_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  RIS bit corresponding to PWRUPIFG is cleared
      CLR)
     with Size => 1;
   for DEBUGSS_ICLR_PWRDWNIFG_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt clear
   type DEBUGSS_ICLR_Register is record
      --  Write-only. Clears TXIFG in RIS register
      TXIFG         : DEBUGSS_ICLR_TXIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Clears RXIFG in RIS register
      RXIFG         : DEBUGSS_ICLR_RXIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Clears PWRUPIFG in RIS register
      PWRUPIFG      : DEBUGSS_ICLR_PWRUPIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  Write-only. Clears PWRDWNIFG in RIS register
      PWRDWNIFG     : DEBUGSS_ICLR_PWRDWNIFG_Field :=
                       MSPMC1104_SVD.DEBUGSS.NO_EFFECT;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_ICLR_Register use record
      TXIFG         at 0 range 0 .. 0;
      RXIFG         at 0 range 1 .. 1;
      PWRUPIFG      at 0 range 2 .. 2;
      PWRDWNIFG     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Event line mode select for peripheral events
   type DEBUGSS_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for DEBUGSS_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type DEBUGSS_EVT_MODE_Register is record
      --  Read-only. Event line mode select for peripheral events
      INT0_CFG      : DEBUGSS_EVT_MODE_INT0_CFG_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DEBUGSS_DESC_MINREV_Field is HAL.UInt4;
   subtype DEBUGSS_DESC_MAJREV_Field is HAL.UInt4;
   subtype DEBUGSS_DESC_INSTNUM_Field is HAL.UInt4;
   subtype DEBUGSS_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype DEBUGSS_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type DEBUGSS_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : DEBUGSS_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : DEBUGSS_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : DEBUGSS_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : DEBUGSS_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : DEBUGSS_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   --  Indicates data request in DSSM.TXD, set on write via Debug AP to
   --  DSSM.TXD. A read of the DSSM.TXD register by SW will clear the TX field.
   --  The tool can check that TXD is empty by reading this field.
   type DEBUGSS_TXCTL_TRANSMIT_Field is
     (--  TXD is empty
      EMPTY,
      --  TXD is full
      FULL)
     with Size => 1;
   for DEBUGSS_TXCTL_TRANSMIT_Field use
     (EMPTY => 0,
      FULL => 1);

   subtype DEBUGSS_TXCTL_TRANSMIT_FLAGS_Field is HAL.UInt31;

   --  Transmit control register
   type DEBUGSS_TXCTL_Register is record
      --  Read-only. Indicates data request in DSSM.TXD, set on write via Debug
      --  AP to DSSM.TXD. A read of the DSSM.TXD register by SW will clear the
      --  TX field. The tool can check that TXD is empty by reading this field.
      TRANSMIT       : DEBUGSS_TXCTL_TRANSMIT_Field;
      --  Read-only. Generic TX flags that can be set by external debug tool.
      --  Functionality is defined by SW.
      TRANSMIT_FLAGS : DEBUGSS_TXCTL_TRANSMIT_FLAGS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_TXCTL_Register use record
      TRANSMIT       at 0 range 0 .. 0;
      TRANSMIT_FLAGS at 0 range 1 .. 31;
   end record;

   --  Indicates SW write to the DSSM.RXD register. A read of the DSSM.RXD
   --  register by SWD Access Port will clear the RX field.
   type DEBUGSS_RXCTL_RECEIVE_Field is
     (--  RXD empty
      EMPTY,
      --  RXD full
      FULL)
     with Size => 1;
   for DEBUGSS_RXCTL_RECEIVE_Field use
     (EMPTY => 0,
      FULL => 1);

   subtype DEBUGSS_RXCTL_RECEIVE_FLAGS_Field is HAL.UInt7;

   --  Receive control register
   type DEBUGSS_RXCTL_Register is record
      --  Read-only. Indicates SW write to the DSSM.RXD register. A read of the
      --  DSSM.RXD register by SWD Access Port will clear the RX field.
      RECEIVE       : DEBUGSS_RXCTL_RECEIVE_Field :=
                       MSPMC1104_SVD.DEBUGSS.EMPTY;
      --  Generic RX flags that can be set by SW and read by external debug
      --  tool. Functionality is defined by SW.
      RECEIVE_FLAGS : DEBUGSS_RXCTL_RECEIVE_FLAGS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_RXCTL_Register use record
      RECEIVE       at 0 range 0 .. 0;
      RECEIVE_FLAGS at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  An active high input. When asserted (and SWD access is also permitted),
   --  the debug tools can use the Security-AP to communicate with security
   --  control logic. When deasserted, a DAPBUS firewall will isolate the AP
   --  and prevent access to the Security-AP.
   type DEBUGSS_SPECIAL_AUTH_SECAPEN_Field is
     (--  Disable SEC-AP
      DISABLE,
      --  Enable SEC-AP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_SECAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  When asserted, the SW-DP functions normally. When deasserted, the SW-DP
   --  effectively disables all external debug access.
   type DEBUGSS_SPECIAL_AUTH_SWDPORTEN_Field is
     (--  Disable SWD port
      DISABLE,
      --  Enable SWD port
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_SWDPORTEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  An active high input. When asserted (and SWD access is also permitted),
   --  the debug tools can then access the DFT-AP external to the DebugSS lite.
   --  When deasserted, a DAPBUS firewall will isolate the AP and prevent
   --  access.
   type DEBUGSS_SPECIAL_AUTH_DFTAPEN_Field is
     (--  Disable DFT-TAP
      DISABLE,
      --  Enable DFT-TAP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_DFTAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  An active high input. When asserted (and SWD access is also permitted),
   --  the debug tools can then access an ET-AP external to the DebugSS lite.
   --  When deasserted, a DAPBUS firewall will isolate the AP and prevent
   --  access.
   type DEBUGSS_SPECIAL_AUTH_ETAPEN_Field is
     (--  Disable ET+ -AP
      DISABLE,
      --  Enable ET+ -AP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_ETAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  An active high input. When asserted (and SWD access is also permitted),
   --  the debug tools can use the Config-AP to read device configuration
   --  information. When deasserted, a DAPBUS firewall will isolate the AP and
   --  prevent access to the Config-AP.
   type DEBUGSS_SPECIAL_AUTH_CFGAPEN_Field is
     (--  Disable CFG-AP
      DISABLE,
      --  Enable CFG-AP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_CFGAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Disabling / enabling debug access to the M0+ Core via the AHB-AP DAP bus
   --  isolation.
   type DEBUGSS_SPECIAL_AUTH_AHBAPEN_Field is
     (--  Disable AHB-AP
      DISABLE,
      --  Enable AHB-AP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_AHBAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  An active high input. When asserted (and SWD access is also permitted),
   --  the debug tools can then access the PWR-AP to power and reset state of
   --  the CPU. When deasserted, a DAPBUS firewall will isolate the AP and
   --  prevent access.
   type DEBUGSS_SPECIAL_AUTH_PWRAPEN_Field is
     (--  Disable PWR-AP
      DISABLE,
      --  Enable PWR-AP
      ENABLE)
     with Size => 1;
   for DEBUGSS_SPECIAL_AUTH_PWRAPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Special enable authorization register
   type DEBUGSS_SPECIAL_AUTH_Register is record
      --  Read-only. An active high input. When asserted (and SWD access is
      --  also permitted), the debug tools can use the Security-AP to
      --  communicate with security control logic. When deasserted, a DAPBUS
      --  firewall will isolate the AP and prevent access to the Security-AP.
      SECAPEN       : DEBUGSS_SPECIAL_AUTH_SECAPEN_Field;
      --  Read-only. When asserted, the SW-DP functions normally. When
      --  deasserted, the SW-DP effectively disables all external debug access.
      SWDPORTEN     : DEBUGSS_SPECIAL_AUTH_SWDPORTEN_Field;
      --  Read-only. An active high input. When asserted (and SWD access is
      --  also permitted), the debug tools can then access the DFT-AP external
      --  to the DebugSS lite. When deasserted, a DAPBUS firewall will isolate
      --  the AP and prevent access.
      DFTAPEN       : DEBUGSS_SPECIAL_AUTH_DFTAPEN_Field;
      --  Read-only. An active high input. When asserted (and SWD access is
      --  also permitted), the debug tools can then access an ET-AP external to
      --  the DebugSS lite. When deasserted, a DAPBUS firewall will isolate the
      --  AP and prevent access.
      ETAPEN        : DEBUGSS_SPECIAL_AUTH_ETAPEN_Field;
      --  Read-only. An active high input. When asserted (and SWD access is
      --  also permitted), the debug tools can use the Config-AP to read device
      --  configuration information. When deasserted, a DAPBUS firewall will
      --  isolate the AP and prevent access to the Config-AP.
      CFGAPEN       : DEBUGSS_SPECIAL_AUTH_CFGAPEN_Field;
      --  Read-only. Disabling / enabling debug access to the M0+ Core via the
      --  AHB-AP DAP bus isolation.
      AHBAPEN       : DEBUGSS_SPECIAL_AUTH_AHBAPEN_Field;
      --  Read-only. An active high input. When asserted (and SWD access is
      --  also permitted), the debug tools can then access the PWR-AP to power
      --  and reset state of the CPU. When deasserted, a DAPBUS firewall will
      --  isolate the AP and prevent access.
      PWRAPEN       : DEBUGSS_SPECIAL_AUTH_PWRAPEN_Field;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_SPECIAL_AUTH_Register use record
      SECAPEN       at 0 range 0 .. 0;
      SWDPORTEN     at 0 range 1 .. 1;
      DFTAPEN       at 0 range 2 .. 2;
      ETAPEN        at 0 range 3 .. 3;
      CFGAPEN       at 0 range 4 .. 4;
      AHBAPEN       at 0 range 5 .. 5;
      PWRAPEN       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Controls invasive debug enable.
   type DEBUGSS_APP_AUTH_DBGEN_Field is
     (--  Invasive debug disabled
      DISABLE,
      --  Invasive debug enabled
      ENABLE)
     with Size => 1;
   for DEBUGSS_APP_AUTH_DBGEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Controls non-invasive debug enable.
   type DEBUGSS_APP_AUTH_NIDEN_Field is
     (--  Non-invasive debug disabled
      DISABLE,
      --  Non-invasive debug enabled
      ENABLE)
     with Size => 1;
   for DEBUGSS_APP_AUTH_NIDEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Secure invasive debug enable.
   type DEBUGSS_APP_AUTH_SPIDEN_Field is
     (--  Invasive debug disabled
      DISABLE,
      --  Invasive debug enabled
      ENABLE)
     with Size => 1;
   for DEBUGSS_APP_AUTH_SPIDEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Secure non-invasive debug enable.
   type DEBUGSS_APP_AUTH_SPNIDEN_Field is
     (--  Invasive debug disabled
      DISABLE,
      --  Invasive debug enabled
      ENABLE)
     with Size => 1;
   for DEBUGSS_APP_AUTH_SPNIDEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Application CPU0 authorization register
   type DEBUGSS_APP_AUTH_Register is record
      --  Read-only. Controls invasive debug enable.
      DBGEN         : DEBUGSS_APP_AUTH_DBGEN_Field;
      --  Read-only. Controls non-invasive debug enable.
      NIDEN         : DEBUGSS_APP_AUTH_NIDEN_Field;
      --  Read-only. Secure invasive debug enable.
      SPIDEN        : DEBUGSS_APP_AUTH_SPIDEN_Field;
      --  Read-only. Secure non-invasive debug enable.
      SPNIDEN       : DEBUGSS_APP_AUTH_SPNIDEN_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEBUGSS_APP_AUTH_Register use record
      DBGEN         at 0 range 0 .. 0;
      NIDEN         at 0 range 1 .. 1;
      SPIDEN        at 0 range 2 .. 2;
      SPNIDEN       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DSSM
   type DEBUGSS_Peripheral is record
      DEBUGSS_PINCM[%s]     : aliased DEBUGSS_PINCM[%s]_Cluster;
      --  CPU Connect
      DEBUGSS_CPU_CONNECT_0 : aliased DEBUGSS_CPU_CONNECT_0_Register;
      --  Interrupt index
      DEBUGSS_IIDX          : aliased DEBUGSS_IIDX_Register;
      --  Interrupt mask
      DEBUGSS_IMASK         : aliased DEBUGSS_IMASK_Register;
      --  Raw interrupt status
      DEBUGSS_RIS           : aliased DEBUGSS_RIS_Register;
      --  Masked interrupt status
      DEBUGSS_MIS           : aliased DEBUGSS_MIS_Register;
      --  Interrupt set
      DEBUGSS_ISET          : aliased DEBUGSS_ISET_Register;
      --  Interrupt clear
      DEBUGSS_ICLR          : aliased DEBUGSS_ICLR_Register;
      --  Event Mode
      DEBUGSS_EVT_MODE      : aliased DEBUGSS_EVT_MODE_Register;
      --  Module Description
      DEBUGSS_DESC          : aliased DEBUGSS_DESC_Register;
      --  Transmit data register
      DEBUGSS_TXD           : aliased HAL.UInt32;
      --  Transmit control register
      DEBUGSS_TXCTL         : aliased DEBUGSS_TXCTL_Register;
      --  Receive data register
      DEBUGSS_RXD           : aliased HAL.UInt32;
      --  Receive control register
      DEBUGSS_RXCTL         : aliased DEBUGSS_RXCTL_Register;
      --  Special enable authorization register
      DEBUGSS_SPECIAL_AUTH  : aliased DEBUGSS_SPECIAL_AUTH_Register;
      --  Application CPU0 authorization register
      DEBUGSS_APP_AUTH      : aliased DEBUGSS_APP_AUTH_Register;
   end record
     with Volatile;

   for DEBUGSS_Peripheral use record
      DEBUGSS_PINCM[%s]     at 16#4# range 0 .. 63;
      DEBUGSS_CPU_CONNECT_0 at 16#480# range 0 .. 31;
      DEBUGSS_IIDX          at 16#1020# range 0 .. 31;
      DEBUGSS_IMASK         at 16#1028# range 0 .. 31;
      DEBUGSS_RIS           at 16#1030# range 0 .. 31;
      DEBUGSS_MIS           at 16#1038# range 0 .. 31;
      DEBUGSS_ISET          at 16#1040# range 0 .. 31;
      DEBUGSS_ICLR          at 16#1048# range 0 .. 31;
      DEBUGSS_EVT_MODE      at 16#10E0# range 0 .. 31;
      DEBUGSS_DESC          at 16#10FC# range 0 .. 31;
      DEBUGSS_TXD           at 16#1100# range 0 .. 31;
      DEBUGSS_TXCTL         at 16#1104# range 0 .. 31;
      DEBUGSS_RXD           at 16#1108# range 0 .. 31;
      DEBUGSS_RXCTL         at 16#110C# range 0 .. 31;
      DEBUGSS_SPECIAL_AUTH  at 16#1200# range 0 .. 31;
      DEBUGSS_APP_AUTH      at 16#1210# range 0 .. 31;
   end record;

   --  DSSM
   DEBUGSS_Periph : aliased DEBUGSS_Peripheral
     with Import, Address => DEBUGSS_Base;

end MSPMC1104_SVD.DEBUGSS;
