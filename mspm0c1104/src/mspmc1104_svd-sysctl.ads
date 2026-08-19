pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.SYSCTL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------------------------------
   -- SYSCTL_PINCM[%s] cluster's Registers --
   ------------------------------------------

   --  Peripheral-Analog Channel State
   type SYSCTL_CLK_OUT_PSTATE_Field is
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
   for SYSCTL_CLK_OUT_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_CLK_OUT_GSTATE_Field is
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
   for SYSCTL_CLK_OUT_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_CLK_OUT_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_CLK_OUT_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_CLK_OUT_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_CLK_OUT_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_CLK_OUT_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_CLK_OUT_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_CLK_OUT_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_CLK_OUT_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_CLK_OUT_DRV_Field is
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
   for SYSCTL_CLK_OUT_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_CLK_OUT_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_CLK_OUT_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_CLK_OUT_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_CLK_OUT_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_CLK_OUT_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_CLK_OUT_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_CLK_OUT_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_CLK_OUT_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_CLK_OUT_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_CLK_OUT_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_CLK_OUT_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_CLK_OUT_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_CLK_OUT_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_CLK_OUT_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  CLK_OUT
   type SYSCTL_CLK_OUT_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_CLK_OUT_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_CLK_OUT_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_CLK_OUT_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_CLK_OUT_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_CLK_OUT_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_CLK_OUT_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_CLK_OUT_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_CLK_OUT_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_CLK_OUT_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_CLK_OUT_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_CLK_OUT_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_CLK_OUT_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_CLK_OUT_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_CLK_OUT_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_CLK_OUT_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type SYSCTL_BSL_INVOKE_PSTATE_Field is
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
   for SYSCTL_BSL_INVOKE_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_BSL_INVOKE_GSTATE_Field is
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
   for SYSCTL_BSL_INVOKE_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_BSL_INVOKE_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_BSL_INVOKE_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_BSL_INVOKE_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_BSL_INVOKE_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_BSL_INVOKE_DRV_Field is
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
   for SYSCTL_BSL_INVOKE_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_BSL_INVOKE_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_BSL_INVOKE_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_BSL_INVOKE_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_BSL_INVOKE_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_BSL_INVOKE_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_BSL_INVOKE_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_BSL_INVOKE_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_BSL_INVOKE_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BSL Invoke
   type SYSCTL_BSL_INVOKE_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_BSL_INVOKE_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_BSL_INVOKE_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_BSL_INVOKE_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_BSL_INVOKE_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_BSL_INVOKE_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_BSL_INVOKE_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_BSL_INVOKE_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_BSL_INVOKE_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_BSL_INVOKE_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_BSL_INVOKE_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_BSL_INVOKE_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_BSL_INVOKE_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_BSL_INVOKE_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_BSL_INVOKE_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BSL_INVOKE_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type SYSCTL_LFCLKIN_PSTATE_Field is
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
   for SYSCTL_LFCLKIN_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_LFCLKIN_GSTATE_Field is
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
   for SYSCTL_LFCLKIN_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_LFCLKIN_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_LFCLKIN_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_LFCLKIN_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_LFCLKIN_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_LFCLKIN_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_LFCLKIN_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_LFCLKIN_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_LFCLKIN_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_LFCLKIN_DRV_Field is
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
   for SYSCTL_LFCLKIN_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_LFCLKIN_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_LFCLKIN_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_LFCLKIN_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_LFCLKIN_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_LFCLKIN_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_LFCLKIN_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_LFCLKIN_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_LFCLKIN_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_LFCLKIN_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_LFCLKIN_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_LFCLKIN_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_LFCLKIN_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_LFCLKIN_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_LFCLKIN_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BSL Invoke
   type SYSCTL_LFCLKIN_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_LFCLKIN_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_LFCLKIN_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_LFCLKIN_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_LFCLKIN_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_LFCLKIN_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_LFCLKIN_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_LFCLKIN_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_LFCLKIN_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_LFCLKIN_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_LFCLKIN_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_LFCLKIN_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_LFCLKIN_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_LFCLKIN_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_LFCLKIN_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFCLKIN_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type SYSCTL_HFCLKIN_PSTATE_Field is
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
   for SYSCTL_HFCLKIN_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_HFCLKIN_GSTATE_Field is
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
   for SYSCTL_HFCLKIN_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_HFCLKIN_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_HFCLKIN_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_HFCLKIN_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_HFCLKIN_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_HFCLKIN_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_HFCLKIN_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_HFCLKIN_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_HFCLKIN_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_HFCLKIN_DRV_Field is
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
   for SYSCTL_HFCLKIN_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_HFCLKIN_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_HFCLKIN_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_HFCLKIN_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_HFCLKIN_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_HFCLKIN_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_HFCLKIN_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_HFCLKIN_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_HFCLKIN_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_HFCLKIN_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_HFCLKIN_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_HFCLKIN_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_HFCLKIN_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_HFCLKIN_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_HFCLKIN_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BSL Invoke
   type SYSCTL_HFCLKIN_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_HFCLKIN_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_HFCLKIN_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_HFCLKIN_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_HFCLKIN_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_HFCLKIN_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_HFCLKIN_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_HFCLKIN_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_HFCLKIN_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_HFCLKIN_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_HFCLKIN_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_HFCLKIN_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_HFCLKIN_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_HFCLKIN_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_HFCLKIN_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HFCLKIN_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type SYSCTL_FCC_IN_PSTATE_Field is
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
   for SYSCTL_FCC_IN_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_FCC_IN_GSTATE_Field is
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
   for SYSCTL_FCC_IN_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_FCC_IN_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_FCC_IN_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_FCC_IN_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_FCC_IN_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_FCC_IN_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_FCC_IN_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_FCC_IN_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_FCC_IN_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_FCC_IN_DRV_Field is
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
   for SYSCTL_FCC_IN_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_FCC_IN_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_FCC_IN_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_FCC_IN_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_FCC_IN_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_FCC_IN_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_FCC_IN_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_FCC_IN_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_FCC_IN_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_FCC_IN_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_FCC_IN_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_FCC_IN_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_FCC_IN_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_FCC_IN_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_FCC_IN_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BSL Invoke
   type SYSCTL_FCC_IN_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_FCC_IN_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_FCC_IN_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_FCC_IN_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_FCC_IN_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_FCC_IN_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_FCC_IN_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_FCC_IN_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_FCC_IN_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_FCC_IN_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_FCC_IN_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_FCC_IN_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_FCC_IN_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_FCC_IN_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_FCC_IN_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FCC_IN_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Peripheral-Analog Channel State
   type SYSCTL_BEEPER_PSTATE_Field is
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
   for SYSCTL_BEEPER_PSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  GPIO Channel State
   type SYSCTL_BEEPER_GSTATE_Field is
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
   for SYSCTL_BEEPER_GSTATE_Field use
     (UNASSIGNED => 0,
      HANDOVER => 1,
      CONC_NOT_LOCKED => 2,
      CONC_LOCKED => 3);

   --  Pull down enable
   type SYSCTL_BEEPER_PIPD_Field is
     (--  No pull down
      NO_PULL_DOWN,
      --  Pull down
      PULL_DOWN)
     with Size => 1;
   for SYSCTL_BEEPER_PIPD_Field use
     (NO_PULL_DOWN => 0,
      PULL_DOWN => 1);

   --  Pull up enable
   type SYSCTL_BEEPER_PIPU_Field is
     (--  No pull up
      NO_PULL_UP,
      --  Pull up
      PULL_UP)
     with Size => 1;
   for SYSCTL_BEEPER_PIPU_Field use
     (NO_PULL_UP => 0,
      PULL_UP => 1);

   --  Input enable
   type SYSCTL_BEEPER_INENA_Field is
     (--  Inputs 0 to connected core
      INP_DISABLE,
      --  Inputs IO pad value to connected core
      INP_ENABLE)
     with Size => 1;
   for SYSCTL_BEEPER_INENA_Field use
     (INP_DISABLE => 0,
      INP_ENABLE => 1);

   --  Hysteresis enable
   type SYSCTL_BEEPER_HYSTEN_Field is
     (--  No hysteresis
      DIS_HYST,
      --  Hysteresis on
      EN_HYST)
     with Size => 1;
   for SYSCTL_BEEPER_HYSTEN_Field use
     (DIS_HYST => 0,
      EN_HYST => 1);

   --  Drive strength options
   type SYSCTL_BEEPER_DRV_Field is
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
   for SYSCTL_BEEPER_DRV_Field use
     (STRENGTH_0 => 0,
      STRENGTH_1 => 1,
      STRENGTH_2 => 2,
      STRENGTH_3 => 3,
      STRENGTH_4 => 4,
      STRENGTH_5 => 5,
      STRENGTH_6 => 6,
      STRENGTH_7 => 7);

   --  High-Z instead of low output
   type SYSCTL_BEEPER_HIGHZ0_Field is
     (--  Pin can be driven low
      DRV_LOW,
      --  Pin is tri-stated instead of driven low
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_BEEPER_HIGHZ0_Field use
     (DRV_LOW => 0,
      DRV_HIZ => 1);

   --  High-Z instead of high output
   type SYSCTL_BEEPER_HIGHZ1_Field is
     (--  Pin can be driven high
      DRV_HIGH,
      --  Pin is tri-stated instead of driven high
      DRV_HIZ)
     with Size => 1;
   for SYSCTL_BEEPER_HIGHZ1_Field use
     (DRV_HIGH => 0,
      DRV_HIZ => 1);

   --  Invert digital input/output relative to peripheral/GPIO
   type SYSCTL_BEEPER_INV_Field is
     (--  Input and output are non-inverted
      NO_CHNG,
      --  Input and output are inverted
      CHNG)
     with Size => 1;
   for SYSCTL_BEEPER_INV_Field use
     (NO_CHNG => 0,
      CHNG => 1);

   --  Wake up enable
   type SYSCTL_BEEPER_WUEN_Field is
     (--  Wake up not enabled
      NO_WAKEUP,
      --  Wake up enabled
      WAKEUP)
     with Size => 1;
   for SYSCTL_BEEPER_WUEN_Field use
     (NO_WAKEUP => 0,
      WAKEUP => 1);

   --  Wake up compare value
   type SYSCTL_BEEPER_WCOMP_Field is
     (--  Match 0 will wake
      MATCH_ZERO,
      --  Match 1 will wake
      MATCH_ONE)
     with Size => 1;
   for SYSCTL_BEEPER_WCOMP_Field use
     (MATCH_ZERO => 0,
      MATCH_ONE => 1);

   --  Reserved Slew Rate Control
   type SYSCTL_BEEPER_SLEW_Field is
     (--  No Slew Rate Control
      DISABLE,
      --  Use Slew Rate Control
      ENABLE)
     with Size => 1;
   for SYSCTL_BEEPER_SLEW_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Glitch Filter Enable
   type SYSCTL_BEEPER_GFLT_Field is
     (--  No internal glitch filter
      DISABLE,
      --  Use internal glitch filter
      ENABLE)
     with Size => 1;
   for SYSCTL_BEEPER_GFLT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BEEPER
   type SYSCTL_BEEPER_SYSCTL_PINCM[%s]_Register is record
      --  unspecified
      Reserved_0_5   : HAL.UInt6 := 16#0#;
      --  Peripheral-Analog Channel State
      PSTATE         : SYSCTL_BEEPER_PSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  unspecified
      Reserved_8_13  : HAL.UInt6 := 16#0#;
      --  GPIO Channel State
      GSTATE         : SYSCTL_BEEPER_GSTATE_Field :=
                        MSPMC1104_SVD.SYSCTL.UNASSIGNED;
      --  Pull down enable
      PIPD           : SYSCTL_BEEPER_PIPD_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_DOWN;
      --  Pull up enable
      PIPU           : SYSCTL_BEEPER_PIPU_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_PULL_UP;
      --  Input enable
      INENA          : SYSCTL_BEEPER_INENA_Field :=
                        MSPMC1104_SVD.SYSCTL.INP_DISABLE;
      --  Hysteresis enable
      HYSTEN         : SYSCTL_BEEPER_HYSTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DIS_HYST;
      --  Drive strength options
      DRV            : SYSCTL_BEEPER_DRV_Field :=
                        MSPMC1104_SVD.SYSCTL.STRENGTH_0;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  High-Z instead of low output
      HIGHZ0         : SYSCTL_BEEPER_HIGHZ0_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_LOW;
      --  High-Z instead of high output
      HIGHZ1         : SYSCTL_BEEPER_HIGHZ1_Field :=
                        MSPMC1104_SVD.SYSCTL.DRV_HIGH;
      --  Invert digital input/output relative to peripheral/GPIO
      INV            : SYSCTL_BEEPER_INV_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_CHNG;
      --  Wake up enable
      WUEN           : SYSCTL_BEEPER_WUEN_Field :=
                        MSPMC1104_SVD.SYSCTL.NO_WAKEUP;
      --  Wake up compare value
      WCOMP          : SYSCTL_BEEPER_WCOMP_Field :=
                        MSPMC1104_SVD.SYSCTL.MATCH_ZERO;
      --  Reserved Slew Rate Control
      SLEW           : SYSCTL_BEEPER_SLEW_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Glitch Filter Enable
      GFLT           : SYSCTL_BEEPER_GFLT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BEEPER_SYSCTL_PINCM[%s]_Register use record
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
      SLEW           at 0 range 29 .. 29;
      GFLT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   type SYSCTL_PINCM[%s]_Cluster is record
      --  CLK_OUT
      SYSCTL_CLK_OUT    : aliased SYSCTL_CLK_OUT_SYSCTL_PINCM[%s]_Register;
      --  BSL Invoke
      SYSCTL_BSL_INVOKE : aliased SYSCTL_BSL_INVOKE_SYSCTL_PINCM[%s]_Register;
      --  BSL Invoke
      SYSCTL_LFCLKIN    : aliased SYSCTL_LFCLKIN_SYSCTL_PINCM[%s]_Register;
      --  BSL Invoke
      SYSCTL_HFCLKIN    : aliased SYSCTL_HFCLKIN_SYSCTL_PINCM[%s]_Register;
      --  BSL Invoke
      SYSCTL_FCC_IN     : aliased SYSCTL_FCC_IN_SYSCTL_PINCM[%s]_Register;
      --  BEEPER
      SYSCTL_BEEPER     : aliased SYSCTL_BEEPER_SYSCTL_PINCM[%s]_Register;
   end record
     with Size => 192;

   for SYSCTL_PINCM[%s]_Cluster use record
      SYSCTL_CLK_OUT    at 16#0# range 0 .. 31;
      SYSCTL_BSL_INVOKE at 16#4# range 0 .. 31;
      SYSCTL_LFCLKIN    at 16#8# range 0 .. 31;
      SYSCTL_HFCLKIN    at 16#C# range 0 .. 31;
      SYSCTL_FCC_IN     at 16#10# range 0 .. 31;
      SYSCTL_BEEPER     at 16#14# range 0 .. 31;
   end record;

   --  Interrupt Index Register -- Read Only
   type SYSCTL_IIDX_STAT_Field is
     (--  No Interrupt
      NO_INTR,
      LFOSCGOOD,
      BORLVL,
      FLASHDED,
      FLASHSEC,
      LFXTGOOD,
      LFCLKFAIL,
      HFCLKGOOD,
      SYSPLLGOOD,
      HSCLKGOOD)
     with Size => 4;
   for SYSCTL_IIDX_STAT_Field use
     (NO_INTR => 0,
      LFOSCGOOD => 1,
      BORLVL => 2,
      FLASHDED => 3,
      FLASHSEC => 4,
      LFXTGOOD => 5,
      LFCLKFAIL => 6,
      HFCLKGOOD => 7,
      SYSPLLGOOD => 8,
      HSCLKGOOD => 9);

   --  Event IIDX
   type SYSCTL_IIDX_Register is record
      --  Read-only. Interrupt Index Register -- Read Only
      STAT          : SYSCTL_IIDX_STAT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_IIDX_Register use record
      STAT          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  LFOSC GOOD
   type SYSCTL_IMASK_LFOSCGOOD_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_LFOSCGOOD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  BOR Level Indicator
   type SYSCTL_IMASK_BORLVL_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_BORLVL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Flash Double Error Detect
   type SYSCTL_IMASK_FLASHDED_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_FLASHDED_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Flash Single Error Correct
   type SYSCTL_IMASK_FLASHSEC_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_FLASHSEC_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  LFXT GOOD
   type SYSCTL_IMASK_LFXTGOOD_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_LFXTGOOD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  LFXT-EXLF Monitor Fail
   type SYSCTL_IMASK_LFCLKFAIL_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_LFCLKFAIL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  HFCLK GOOD
   type SYSCTL_IMASK_HFCLKGOOD_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_HFCLKGOOD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSPLL GOOD
   type SYSCTL_IMASK_SYSPLLGOOD_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_SYSPLLGOOD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  HSCLK GOOD
   type SYSCTL_IMASK_HSCLKGOOD_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_IMASK_HSCLKGOOD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Event IMASK
   type SYSCTL_IMASK_Register is record
      --  LFOSC GOOD
      LFOSCGOOD     : SYSCTL_IMASK_LFOSCGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  BOR Level Indicator
      BORLVL        : SYSCTL_IMASK_BORLVL_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Flash Double Error Detect
      FLASHDED      : SYSCTL_IMASK_FLASHDED_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Flash Single Error Correct
      FLASHSEC      : SYSCTL_IMASK_FLASHSEC_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  LFXT GOOD
      LFXTGOOD      : SYSCTL_IMASK_LFXTGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  LFXT-EXLF Monitor Fail
      LFCLKFAIL     : SYSCTL_IMASK_LFCLKFAIL_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  HFCLK GOOD
      HFCLKGOOD     : SYSCTL_IMASK_HFCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  SYSPLL GOOD
      SYSPLLGOOD    : SYSCTL_IMASK_SYSPLLGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  HSCLK GOOD
      HSCLKGOOD     : SYSCTL_IMASK_HSCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_IMASK_Register use record
      LFOSCGOOD     at 0 range 0 .. 0;
      BORLVL        at 0 range 1 .. 1;
      FLASHDED      at 0 range 2 .. 2;
      FLASHSEC      at 0 range 3 .. 3;
      LFXTGOOD      at 0 range 4 .. 4;
      LFCLKFAIL     at 0 range 5 .. 5;
      HFCLKGOOD     at 0 range 6 .. 6;
      SYSPLLGOOD    at 0 range 7 .. 7;
      HSCLKGOOD     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LFOSC GOOD
   type SYSCTL_RIS_LFOSCGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_LFOSCGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  BOR Level Indicator
   type SYSCTL_RIS_BORLVL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_BORLVL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Flash Double Error Detect
   type SYSCTL_RIS_FLASHDED_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_FLASHDED_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Flash Single Error Correct
   type SYSCTL_RIS_FLASHSEC_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_FLASHSEC_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT GOOD
   type SYSCTL_RIS_LFXTGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_LFXTGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT-EXLF Monitor Fail
   type SYSCTL_RIS_LFCLKFAIL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_LFCLKFAIL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HFCLK GOOD
   type SYSCTL_RIS_HFCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_HFCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SYSPLL GOOD
   type SYSCTL_RIS_SYSPLLGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_SYSPLLGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HSCLK GOOD
   type SYSCTL_RIS_HSCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_RIS_HSCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Event RIS
   type SYSCTL_RIS_Register is record
      --  Read-only. LFOSC GOOD
      LFOSCGOOD     : SYSCTL_RIS_LFOSCGOOD_Field;
      --  Read-only. BOR Level Indicator
      BORLVL        : SYSCTL_RIS_BORLVL_Field;
      --  Read-only. Flash Double Error Detect
      FLASHDED      : SYSCTL_RIS_FLASHDED_Field;
      --  Read-only. Flash Single Error Correct
      FLASHSEC      : SYSCTL_RIS_FLASHSEC_Field;
      --  Read-only. LFXT GOOD
      LFXTGOOD      : SYSCTL_RIS_LFXTGOOD_Field;
      --  Read-only. LFXT-EXLF Monitor Fail
      LFCLKFAIL     : SYSCTL_RIS_LFCLKFAIL_Field;
      --  Read-only. HFCLK GOOD
      HFCLKGOOD     : SYSCTL_RIS_HFCLKGOOD_Field;
      --  Read-only. SYSPLL GOOD
      SYSPLLGOOD    : SYSCTL_RIS_SYSPLLGOOD_Field;
      --  Read-only. HSCLK GOOD
      HSCLKGOOD     : SYSCTL_RIS_HSCLKGOOD_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_RIS_Register use record
      LFOSCGOOD     at 0 range 0 .. 0;
      BORLVL        at 0 range 1 .. 1;
      FLASHDED      at 0 range 2 .. 2;
      FLASHSEC      at 0 range 3 .. 3;
      LFXTGOOD      at 0 range 4 .. 4;
      LFCLKFAIL     at 0 range 5 .. 5;
      HFCLKGOOD     at 0 range 6 .. 6;
      SYSPLLGOOD    at 0 range 7 .. 7;
      HSCLKGOOD     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LFOSC GOOD
   type SYSCTL_MIS_LFOSCGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_LFOSCGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  BOR Level Indicator
   type SYSCTL_MIS_BORLVL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_BORLVL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Flash Double Error Detect
   type SYSCTL_MIS_FLASHDED_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_FLASHDED_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Flash Single Error Correct
   type SYSCTL_MIS_FLASHSEC_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_FLASHSEC_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT GOOD
   type SYSCTL_MIS_LFXTGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_LFXTGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT-EXLF Monitor Fail
   type SYSCTL_MIS_LFCLKFAIL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_LFCLKFAIL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HFCLK GOOD
   type SYSCTL_MIS_HFCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_HFCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SYSPLL GOOD
   type SYSCTL_MIS_SYSPLLGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_SYSPLLGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HSCLK GOOD
   type SYSCTL_MIS_HSCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_MIS_HSCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Event MIS
   type SYSCTL_MIS_Register is record
      --  Read-only. LFOSC GOOD
      LFOSCGOOD     : SYSCTL_MIS_LFOSCGOOD_Field;
      --  Read-only. BOR Level Indicator
      BORLVL        : SYSCTL_MIS_BORLVL_Field;
      --  Read-only. Flash Double Error Detect
      FLASHDED      : SYSCTL_MIS_FLASHDED_Field;
      --  Read-only. Flash Single Error Correct
      FLASHSEC      : SYSCTL_MIS_FLASHSEC_Field;
      --  Read-only. LFXT GOOD
      LFXTGOOD      : SYSCTL_MIS_LFXTGOOD_Field;
      --  Read-only. LFXT-EXLF Monitor Fail
      LFCLKFAIL     : SYSCTL_MIS_LFCLKFAIL_Field;
      --  Read-only. HFCLK GOOD
      HFCLKGOOD     : SYSCTL_MIS_HFCLKGOOD_Field;
      --  Read-only. SYSPLL GOOD
      SYSPLLGOOD    : SYSCTL_MIS_SYSPLLGOOD_Field;
      --  Read-only. HSCLK GOOD
      HSCLKGOOD     : SYSCTL_MIS_HSCLKGOOD_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_MIS_Register use record
      LFOSCGOOD     at 0 range 0 .. 0;
      BORLVL        at 0 range 1 .. 1;
      FLASHDED      at 0 range 2 .. 2;
      FLASHSEC      at 0 range 3 .. 3;
      LFXTGOOD      at 0 range 4 .. 4;
      LFCLKFAIL     at 0 range 5 .. 5;
      HFCLKGOOD     at 0 range 6 .. 6;
      SYSPLLGOOD    at 0 range 7 .. 7;
      HSCLKGOOD     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LFOSC GOOD
   type SYSCTL_ISET_LFOSCGOOD_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_LFOSCGOOD_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  BOR Level Indicator
   type SYSCTL_ISET_BORLVL_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_BORLVL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Flash Double Error Detect
   type SYSCTL_ISET_FLASHDED_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_FLASHDED_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Flash Single Error Correct
   type SYSCTL_ISET_FLASHSEC_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_FLASHSEC_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  LFXT GOOD
   type SYSCTL_ISET_LFXTGOOD_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_LFXTGOOD_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  LFXT-EXLF Monitor Fail
   type SYSCTL_ISET_LFCLKFAIL_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_LFCLKFAIL_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  HFCLK GOOD
   type SYSCTL_ISET_HFCLKGOOD_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_HFCLKGOOD_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  SYSPLL GOOD
   type SYSCTL_ISET_SYSPLLGOOD_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_SYSPLLGOOD_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  HSCLK GOOD
   type SYSCTL_ISET_HSCLKGOOD_Field is
     (NO_EFFECT,
      SET)
     with Size => 1;
   for SYSCTL_ISET_HSCLKGOOD_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Event ISET
   type SYSCTL_ISET_Register is record
      --  Write-only. LFOSC GOOD
      LFOSCGOOD     : SYSCTL_ISET_LFOSCGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. BOR Level Indicator
      BORLVL        : SYSCTL_ISET_BORLVL_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. Flash Double Error Detect
      FLASHDED      : SYSCTL_ISET_FLASHDED_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. Flash Single Error Correct
      FLASHSEC      : SYSCTL_ISET_FLASHSEC_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. LFXT GOOD
      LFXTGOOD      : SYSCTL_ISET_LFXTGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. LFXT-EXLF Monitor Fail
      LFCLKFAIL     : SYSCTL_ISET_LFCLKFAIL_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. HFCLK GOOD
      HFCLKGOOD     : SYSCTL_ISET_HFCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. SYSPLL GOOD
      SYSPLLGOOD    : SYSCTL_ISET_SYSPLLGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. HSCLK GOOD
      HSCLKGOOD     : SYSCTL_ISET_HSCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ISET_Register use record
      LFOSCGOOD     at 0 range 0 .. 0;
      BORLVL        at 0 range 1 .. 1;
      FLASHDED      at 0 range 2 .. 2;
      FLASHSEC      at 0 range 3 .. 3;
      LFXTGOOD      at 0 range 4 .. 4;
      LFCLKFAIL     at 0 range 5 .. 5;
      HFCLKGOOD     at 0 range 6 .. 6;
      SYSPLLGOOD    at 0 range 7 .. 7;
      HSCLKGOOD     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  LFOSC GOOD
   type SYSCTL_ICLR_LFOSCGOOD_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_LFOSCGOOD_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  BOR Level Indicator
   type SYSCTL_ICLR_BORLVL_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_BORLVL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Flash Double Error Detect
   type SYSCTL_ICLR_FLASHDED_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_FLASHDED_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Flash Single Error Correct
   type SYSCTL_ICLR_FLASHSEC_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_FLASHSEC_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  LFXT GOOD
   type SYSCTL_ICLR_LFXTGOOD_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_LFXTGOOD_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  LFXT-EXLF Monitor Fail
   type SYSCTL_ICLR_LFCLKFAIL_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_LFCLKFAIL_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  HFCLK GOOD
   type SYSCTL_ICLR_HFCLKGOOD_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_HFCLKGOOD_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  SYSPLL GOOD
   type SYSCTL_ICLR_SYSPLLGOOD_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_SYSPLLGOOD_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  HSCLK GOOD
   type SYSCTL_ICLR_HSCLKGOOD_Field is
     (NO_EFFECT,
      CLR)
     with Size => 1;
   for SYSCTL_ICLR_HSCLKGOOD_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Event ICLR
   type SYSCTL_ICLR_Register is record
      --  Write-only. LFOSC GOOD
      LFOSCGOOD     : SYSCTL_ICLR_LFOSCGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. BOR Level Indicator
      BORLVL        : SYSCTL_ICLR_BORLVL_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. Flash Double Error Detect
      FLASHDED      : SYSCTL_ICLR_FLASHDED_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. Flash Single Error Correct
      FLASHSEC      : SYSCTL_ICLR_FLASHSEC_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. LFXT GOOD
      LFXTGOOD      : SYSCTL_ICLR_LFXTGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. LFXT-EXLF Monitor Fail
      LFCLKFAIL     : SYSCTL_ICLR_LFCLKFAIL_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. HFCLK GOOD
      HFCLKGOOD     : SYSCTL_ICLR_HFCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. SYSPLL GOOD
      SYSPLLGOOD    : SYSCTL_ICLR_SYSPLLGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  Write-only. HSCLK GOOD
      HSCLKGOOD     : SYSCTL_ICLR_HSCLKGOOD_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ICLR_Register use record
      LFOSCGOOD     at 0 range 0 .. 0;
      BORLVL        at 0 range 1 .. 1;
      FLASHDED      at 0 range 2 .. 2;
      FLASHSEC      at 0 range 3 .. 3;
      LFXTGOOD      at 0 range 4 .. 4;
      LFCLKFAIL     at 0 range 5 .. 5;
      HFCLKGOOD     at 0 range 6 .. 6;
      SYSPLLGOOD    at 0 range 7 .. 7;
      HSCLKGOOD     at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Freq Target: 0: BASE 1: 4M 2: USER 3: Reserved for Turbo 48MHz
   type SYSCTL_SYSOSCCFG_FREQ_Field is
     (SYSOSCBASE,
      SYSOSC4M,
      SYSOSCUSER,
      SYSOSCTURBO)
     with Size => 2;
   for SYSCTL_SYSOSCCFG_FREQ_Field use
     (SYSOSCBASE => 0,
      SYSOSC4M => 1,
      SYSOSCUSER => 2,
      SYSOSCTURBO => 3);

   --  SYOSC Frequency during stop 0: 32M 1: 4M
   type SYSCTL_SYSOSCCFG_USE4MHZSTOP_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_USE4MHZSTOP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Disable SYSOSC when in STOP mode to allow STOP with LFCLK
   type SYSCTL_SYSOSCCFG_DISABLESTOP_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_DISABLESTOP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Disable SYSOSC to run all power modes with LFCLK
   type SYSCTL_SYSOSCCFG_DISABLE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_DISABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Force BASE (or higher) Freqency when there is async sysosc request 0:
   --  Leave as current frequency 1: Force BASE or current that is higher
   type SYSCTL_SYSOSCCFG_FASTCLKONAREQ_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_FASTCLKONAREQ_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Block all async requests from enabling SYSOSC via hardware, ie keep
   --  running from LFCLK
   type SYSCTL_SYSOSCCFG_BLOCKASYNCALL_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_BLOCKASYNCALL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Block all UART async requests from enabling SYSOSC via hardware, ie keep
   --  running from LFCLK if UART is requester
   type SYSCTL_SYSOSCCFG_BLOCKASYNCUART_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_BLOCKASYNCUART_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Block all ACOMP async requests from enabling SYSOSC via hardware, ie
   --  keep running from LFCLK if UART is requester
   type SYSCTL_SYSOSCCFG_BLOCKASYNCACOMP_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSOSCCFG_BLOCKASYNCACOMP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSOSC Configuration
   type SYSCTL_SYSOSCCFG_Register is record
      --  Freq Target: 0: BASE 1: 4M 2: USER 3: Reserved for Turbo 48MHz
      FREQ            : SYSCTL_SYSOSCCFG_FREQ_Field :=
                         MSPMC1104_SVD.SYSCTL.SYSOSCBASE;
      --  unspecified
      Reserved_2_7    : HAL.UInt6 := 16#0#;
      --  SYOSC Frequency during stop 0: 32M 1: 4M
      USE4MHZSTOP     : SYSCTL_SYSOSCCFG_USE4MHZSTOP_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Disable SYSOSC when in STOP mode to allow STOP with LFCLK
      DISABLESTOP     : SYSCTL_SYSOSCCFG_DISABLESTOP_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Disable SYSOSC to run all power modes with LFCLK
      DISABLE         : SYSCTL_SYSOSCCFG_DISABLE_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Force BASE (or higher) Freqency when there is async sysosc request 0:
      --  Leave as current frequency 1: Force BASE or current that is higher
      FASTCLKONAREQ   : SYSCTL_SYSOSCCFG_FASTCLKONAREQ_Field :=
                         MSPMC1104_SVD.SYSCTL.ENABLE;
      --  unspecified
      Reserved_12_15  : HAL.UInt4 := 16#0#;
      --  Block all async requests from enabling SYSOSC via hardware, ie keep
      --  running from LFCLK
      BLOCKASYNCALL   : SYSCTL_SYSOSCCFG_BLOCKASYNCALL_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Block all UART async requests from enabling SYSOSC via hardware, ie
      --  keep running from LFCLK if UART is requester
      BLOCKASYNCUART  : SYSCTL_SYSOSCCFG_BLOCKASYNCUART_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Block all ACOMP async requests from enabling SYSOSC via hardware, ie
      --  keep running from LFCLK if UART is requester
      BLOCKASYNCACOMP : SYSCTL_SYSOSCCFG_BLOCKASYNCACOMP_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_19_31  : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCCFG_Register use record
      FREQ            at 0 range 0 .. 1;
      Reserved_2_7    at 0 range 2 .. 7;
      USE4MHZSTOP     at 0 range 8 .. 8;
      DISABLESTOP     at 0 range 9 .. 9;
      DISABLE         at 0 range 10 .. 10;
      FASTCLKONAREQ   at 0 range 11 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
      BLOCKASYNCALL   at 0 range 16 .. 16;
      BLOCKASYNCUART  at 0 range 17 .. 17;
      BLOCKASYNCACOMP at 0 range 18 .. 18;
      Reserved_19_31  at 0 range 19 .. 31;
   end record;

   subtype SYSCTL_MCLKCFG_MDIV_Field is HAL.UInt4;

   --  UDIV Divider 0: MCLK 1: MCLK div 22: MCLK div 3 when USEHSCLK is TRUE
   type SYSCTL_MCLKCFG_UDIV_Field is
     (--  ULPCLK is MCLK
      NODIVIDE,
      --  ULPCLK is MCLK div 2
      DIVIDE2)
     with Size => 2;
   for SYSCTL_MCLKCFG_UDIV_Field use
     (NODIVIDE => 0,
      DIVIDE2 => 1);

   subtype SYSCTL_MCLKCFG_FLASHWAIT_Field is HAL.UInt4;

   --  USE the MFTICK feature (this will limit MDIV options)
   type SYSCTL_MCLKCFG_USEMFTICK_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_MCLKCFG_USEMFTICK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  High Speed Clock Selected for MCLK (HFCLK, PLL,...)
   type SYSCTL_MCLKCFG_USEHSCLK_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_MCLKCFG_USEHSCLK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Low Frequency Clock Selected for MCLK
   type SYSCTL_MCLKCFG_USELFCLK_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_MCLKCFG_USELFCLK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  STOP ULPCLK Root during STANDBY, Only wake on ASYNC IO Events
   type SYSCTL_MCLKCFG_STOPCLKSTBY_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_MCLKCFG_STOPCLKSTBY_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Configuration related to MCLK
   type SYSCTL_MCLKCFG_Register is record
      --  MDIV Divider 1..16 when RUN-SLEEP
      MDIV           : SYSCTL_MCLKCFG_MDIV_Field := 16#0#;
      --  UDIV Divider 0: MCLK 1: MCLK div 22: MCLK div 3 when USEHSCLK is TRUE
      UDIV           : SYSCTL_MCLKCFG_UDIV_Field :=
                        MSPMC1104_SVD.SYSCTL.DIVIDE2;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Flash wait states when using a high speed clock source - HFCLK or PLL
      FLASHWAIT      : SYSCTL_MCLKCFG_FLASHWAIT_Field := 16#2#;
      --  USE the MFTICK feature (this will limit MDIV options)
      USEMFTICK      : SYSCTL_MCLKCFG_USEMFTICK_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  High Speed Clock Selected for MCLK (HFCLK, PLL,...)
      USEHSCLK       : SYSCTL_MCLKCFG_USEHSCLK_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Low Frequency Clock Selected for MCLK
      USELFCLK       : SYSCTL_MCLKCFG_USELFCLK_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  STOP ULPCLK Root during STANDBY, Only wake on ASYNC IO Events
      STOPCLKSTBY    : SYSCTL_MCLKCFG_STOPCLKSTBY_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_MCLKCFG_Register use record
      MDIV           at 0 range 0 .. 3;
      UDIV           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLASHWAIT      at 0 range 8 .. 11;
      USEMFTICK      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      USEHSCLK       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      USELFCLK       at 0 range 20 .. 20;
      STOPCLKSTBY    at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Enable the HFXT Crystal
   type SYSCTL_HSCLKEN_HFXTEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_HSCLKEN_HFXTEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable the SYSTEM PLL
   type SYSCTL_HSCLKEN_SYSPLLEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_HSCLKEN_SYSPLLEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Use External Pin as High Frequency Oscillator Source(HFCLK)
   type SYSCTL_HSCLKEN_USEEXTHFCLK_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_HSCLKEN_USEEXTHFCLK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  High Speed Clock Configuration
   type SYSCTL_HSCLKEN_Register is record
      --  Enable the HFXT Crystal
      HFXTEN         : SYSCTL_HSCLKEN_HFXTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Enable the SYSTEM PLL
      SYSPLLEN       : SYSCTL_HSCLKEN_SYSPLLEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Use External Pin as High Frequency Oscillator Source(HFCLK)
      USEEXTHFCLK    : SYSCTL_HSCLKEN_USEEXTHFCLK_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HSCLKEN_Register use record
      HFXTEN         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SYSPLLEN       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      USEEXTHFCLK    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  High Speed Clock Source 0: SYSPLL, 1:HFCLKCLK
   type SYSCTL_HSCLKCFG_HSCLKSEL_Field is
     (SYSPLL,
      HFCLKCLK)
     with Size => 1;
   for SYSCTL_HSCLKCFG_HSCLKSEL_Field use
     (SYSPLL => 0,
      HFCLKCLK => 1);

   --  High Speed Clock Configuration
   type SYSCTL_HSCLKCFG_Register is record
      --  High Speed Clock Source 0: SYSPLL, 1:HFCLKCLK
      HSCLKSEL      : SYSCTL_HSCLKCFG_HSCLKSEL_Field :=
                       MSPMC1104_SVD.SYSCTL.SYSPLL;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HSCLKCFG_Register use record
      HSCLKSEL      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCTL_HFCLKCLKCFG_HFXTTIME_Field is HAL.UInt8;
   subtype SYSCTL_HFCLKCLKCFG_HFXTRSEL_Field is HAL.UInt2;

   --  Check for stuck fault on HFCLK related pins
   type SYSCTL_HFCLKCLKCFG_HFCLKFLTCHK_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_HFCLKCLKCFG_HFCLKFLTCHK_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  High Frequency OSC Clock Configuration
   type SYSCTL_HFCLKCLKCFG_Register is record
      --  HFXT startup time in 64 usec resolution
      HFXTTIME       : SYSCTL_HFCLKCLKCFG_HFXTTIME_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  HFXT Range Select
      HFXTRSEL       : SYSCTL_HFCLKCLKCFG_HFXTRSEL_Field := 16#0#;
      --  unspecified
      Reserved_14_27 : HAL.UInt14 := 16#0#;
      --  Check for stuck fault on HFCLK related pins
      HFCLKFLTCHK    : SYSCTL_HFCLKCLKCFG_HFCLKFLTCHK_Field :=
                        MSPMC1104_SVD.SYSCTL.ENABLE;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HFCLKCLKCFG_Register use record
      HFXTTIME       at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      HFXTRSEL       at 0 range 12 .. 13;
      Reserved_14_27 at 0 range 14 .. 27;
      HFCLKFLTCHK    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Drive strength and power consumption option
   type SYSCTL_LFCLKCFG_XT1DRIVE_Field is
     (--  Lowest Drive and Current
      LOWESTDRV,
      --  Lower Drive and Current
      LOWERDRV,
      --  Higher Drive and Current
      HIGHERDRV,
      --  Highest Drive and Current
      HIGHESTDRV)
     with Size => 2;
   for SYSCTL_LFCLKCFG_XT1DRIVE_Field use
     (LOWESTDRV => 0,
      LOWERDRV => 1,
      HIGHERDRV => 2,
      HIGHESTDRV => 3);

   --  Use Monitor for LFXT, EXLF failure
   type SYSCTL_LFCLKCFG_MONITOR_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_LFCLKCFG_MONITOR_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Can be enabled if CAP is less than 3pf for reduced power
   type SYSCTL_LFCLKCFG_LOWCAP_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_LFCLKCFG_LOWCAP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Low Frequency External Clock Configuration
   type SYSCTL_LFCLKCFG_Register is record
      --  Drive strength and power consumption option
      XT1DRIVE      : SYSCTL_LFCLKCFG_XT1DRIVE_Field :=
                       MSPMC1104_SVD.SYSCTL.HIGHESTDRV;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Use Monitor for LFXT, EXLF failure
      MONITOR       : SYSCTL_LFCLKCFG_MONITOR_Field :=
                       MSPMC1104_SVD.SYSCTL.ENABLE;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Can be enabled if CAP is less than 3pf for reduced power
      LOWCAP        : SYSCTL_LFCLKCFG_LOWCAP_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFCLKCFG_Register use record
      XT1DRIVE      at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      MONITOR       at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      LOWCAP        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  System PLL Reference Clock Source 0: SYSOSC, 1:HFCLK
   type SYSCTL_SYSPLLCFG0_SYSPLLREF_Field is
     (SYSOSC,
      HFCLK)
     with Size => 1;
   for SYSCTL_SYSPLLCFG0_SYSPLLREF_Field use
     (SYSOSC => 0,
      HFCLK => 1);

   --  Use PLL CLK2X PATH as source for MCLK
   type SYSCTL_SYSPLLCFG0_MCLK2XVCO_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSPLLCFG0_MCLK2XVCO_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  PLL CLK0 Output enabled
   type SYSCTL_SYSPLLCFG0_ENABLECLK0_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSPLLCFG0_ENABLECLK0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSCTL_SYSPLLCFG0_ENABLECLK array
   type SYSCTL_SYSPLLCFG0_ENABLECLK_Field_Array is array (0 .. 1)
     of SYSCTL_SYSPLLCFG0_ENABLECLK0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCTL_SYSPLLCFG0_ENABLECLK
   type SYSCTL_SYSPLLCFG0_ENABLECLK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENABLECLK as a value
            Val : HAL.UInt2;
         when True =>
            --  ENABLECLK as an array
            Arr : SYSCTL_SYSPLLCFG0_ENABLECLK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCTL_SYSPLLCFG0_ENABLECLK_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PLL CLK2X Output enabled
   type SYSCTL_SYSPLLCFG0_ENABLECLK2X_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSPLLCFG0_ENABLECLK2X_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSCTL_SYSPLLCFG0_RDIVCLK array element
   subtype SYSCTL_SYSPLLCFG0_RDIVCLK_Element is HAL.UInt4;

   --  SYSCTL_SYSPLLCFG0_RDIVCLK array
   type SYSCTL_SYSPLLCFG0_RDIVCLK_Field_Array is array (0 .. 1)
     of SYSCTL_SYSPLLCFG0_RDIVCLK_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for SYSCTL_SYSPLLCFG0_RDIVCLK
   type SYSCTL_SYSPLLCFG0_RDIVCLK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDIVCLK as a value
            Val : HAL.UInt8;
         when True =>
            --  RDIVCLK as an array
            Arr : SYSCTL_SYSPLLCFG0_RDIVCLK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for SYSCTL_SYSPLLCFG0_RDIVCLK_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype SYSCTL_SYSPLLCFG0_RDIVCLK2X_Field is HAL.UInt4;

   --  System PLL Configuration 0 MMR
   type SYSCTL_SYSPLLCFG0_Register is record
      --  System PLL Reference Clock Source 0: SYSOSC, 1:HFCLK
      SYSPLLREF      : SYSCTL_SYSPLLCFG0_SYSPLLREF_Field :=
                        MSPMC1104_SVD.SYSCTL.SYSOSC;
      --  Use PLL CLK2X PATH as source for MCLK
      MCLK2XVCO      : SYSCTL_SYSPLLCFG0_MCLK2XVCO_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  PLL CLK0 Output enabled
      ENABLECLK      : SYSCTL_SYSPLLCFG0_ENABLECLK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  PLL CLK2X Output enabled
      ENABLECLK2X    : SYSCTL_SYSPLLCFG0_ENABLECLK2X_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Final Divider for CLK0 Output 1-16
      RDIVCLK        : SYSCTL_SYSPLLCFG0_RDIVCLK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Final Divider for CLK2X Output 1-16
      RDIVCLK2X      : SYSCTL_SYSPLLCFG0_RDIVCLK2X_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSPLLCFG0_Register use record
      SYSPLLREF      at 0 range 0 .. 0;
      MCLK2XVCO      at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENABLECLK      at 0 range 4 .. 5;
      ENABLECLK2X    at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RDIVCLK        at 0 range 8 .. 15;
      RDIVCLK2X      at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PLL Reference Clock Divider 1,2,4,8
   type SYSCTL_SYSPLLCFG1_PDIV_Field is
     (REFDIV1,
      REFDIV2,
      REFDIV4,
      REFDIV8)
     with Size => 2;
   for SYSCTL_SYSPLLCFG1_PDIV_Field use
     (REFDIV1 => 0,
      REFDIV2 => 1,
      REFDIV4 => 2,
      REFDIV8 => 3);

   subtype SYSCTL_SYSPLLCFG1_QDIV_Field is HAL.UInt7;

   --  System PLL Configuration 1 MMR
   type SYSCTL_SYSPLLCFG1_Register is record
      --  PLL Reference Clock Divider 1,2,4,8
      PDIV           : SYSCTL_SYSPLLCFG1_PDIV_Field :=
                        MSPMC1104_SVD.SYSCTL.REFDIV1;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  PLL Feedback Clock Divider 1-127 by 1
      QDIV           : SYSCTL_SYSPLLCFG1_QDIV_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSPLLCFG1_Register use record
      PDIV           at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      QDIV           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SYSCTL_SYSPLLPARAM0_STARTTIME_Field is HAL.UInt6;
   subtype SYSCTL_SYSPLLPARAM0_STARTTIMELP_Field is HAL.UInt6;
   subtype SYSCTL_SYSPLLPARAM0_CPCURRENT_Field is HAL.UInt6;
   subtype SYSCTL_SYSPLLPARAM0_CAPBVAL_Field is HAL.UInt5;

   --  Override Enable For Cap B
   type SYSCTL_SYSPLLPARAM0_CAPBOVERRIDE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SYSPLLPARAM0_CAPBOVERRIDE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  System PLL Paramater 0 MMR --- Data from Flash Table Lookup
   type SYSCTL_SYSPLLPARAM0_Register is record
      --  Startup time from Enable to Locked Clock in resolution of 1usec
      STARTTIME      : SYSCTL_SYSPLLPARAM0_STARTTIME_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Startup time from Low Power Exit to Locked Clock in resolution of
      --  1usec
      STARTTIMELP    : SYSCTL_SYSPLLPARAM0_STARTTIMELP_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Charge Pump Current
      CPCURRENT      : SYSCTL_SYSPLLPARAM0_CPCURRENT_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Override Value for Cap B
      CAPBVAL        : SYSCTL_SYSPLLPARAM0_CAPBVAL_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Override Enable For Cap B
      CAPBOVERRIDE   : SYSCTL_SYSPLLPARAM0_CAPBOVERRIDE_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSPLLPARAM0_Register use record
      STARTTIME      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STARTTIMELP    at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CPCURRENT      at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CAPBVAL        at 0 range 24 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      CAPBOVERRIDE   at 0 range 31 .. 31;
   end record;

   subtype SYSCTL_SYSPLLPARAM1_LPFCAPA_Field is HAL.UInt5;
   subtype SYSCTL_SYSPLLPARAM1_LPFRESA_Field is HAL.UInt10;
   subtype SYSCTL_SYSPLLPARAM1_LPFRESC_Field is HAL.UInt8;

   --  System PLL Paramater 1 MMR --- Data from Flash Table Lookup
   type SYSCTL_SYSPLLPARAM1_Register is record
      --  Loop Filter Cap A
      LPFCAPA        : SYSCTL_SYSPLLPARAM1_LPFCAPA_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Loop Filter Res A
      LPFRESA        : SYSCTL_SYSPLLPARAM1_LPFRESA_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Loop Filter Res C
      LPFRESC        : SYSCTL_SYSPLLPARAM1_LPFRESC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSPLLPARAM1_Register use record
      LPFCAPA        at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      LPFRESA        at 0 range 8 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      LPFRESC        at 0 range 24 .. 31;
   end record;

   --  External Clock Source Select
   type SYSCTL_GENCLKCFG_EXCLKSRC_Field is
     (SYSOSC,
      --  NOTE: This must be divided in post divider
      ULPCLK,
      LFCLK,
      --  NOTE: This must be divided in post divider
      MFCLK,
      HFCLK,
      --  NOTE: Must be 48MHz or below
      SYSPLLOUT1)
     with Size => 3;
   for SYSCTL_GENCLKCFG_EXCLKSRC_Field use
     (SYSOSC => 0,
      ULPCLK => 1,
      LFCLK => 2,
      MFCLK => 3,
      HFCLK => 4,
      SYSPLLOUT1 => 5);

   type SYSCTL_GENCLKCFG_EXCLKDIVVAL_Field is
     (DIV2,
      DIV4,
      DIV6,
      DIV8,
      DIV10,
      DIV12,
      DIV14,
      DIV16)
     with Size => 3;
   for SYSCTL_GENCLKCFG_EXCLKDIVVAL_Field use
     (DIV2 => 0,
      DIV4 => 1,
      DIV6 => 2,
      DIV8 => 3,
      DIV10 => 4,
      DIV12 => 5,
      DIV14 => 6,
      DIV16 => 7);

   --  1: Enable divide 0: Pass Src Clock Through
   type SYSCTL_GENCLKCFG_EXCLKDIVEN_Field is
     (PASSTHRU,
      ENABLE)
     with Size => 1;
   for SYSCTL_GENCLKCFG_EXCLKDIVEN_Field use
     (PASSTHRU => 0,
      ENABLE => 1);

   --  Source for CAN Clock
   type SYSCTL_GENCLKCFG_CANCLKSRC_Field is
     (HFCLK,
      SYSPLLOUT1)
     with Size => 1;
   for SYSCTL_GENCLKCFG_CANCLKSRC_Field use
     (HFCLK => 0,
      SYSPLLOUT1 => 1);

   --  Source for MFPCLK Clock
   type SYSCTL_GENCLKCFG_MFPCLKSRC_Field is
     (SYSOSC,
      HFCLK)
     with Size => 1;
   for SYSCTL_GENCLKCFG_MFPCLKSRC_Field use
     (SYSOSC => 0,
      HFCLK => 1);

   subtype SYSCTL_GENCLKCFG_HFCLK4MFPCLKDIV_Field is HAL.UInt4;

   --  General Clock Configuration
   type SYSCTL_GENCLKCFG_Register is record
      --  External Clock Source Select
      EXCLKSRC        : SYSCTL_GENCLKCFG_EXCLKSRC_Field :=
                         MSPMC1104_SVD.SYSCTL.SYSOSC;
      --  unspecified
      Reserved_3_3    : HAL.Bit := 16#0#;
      EXCLKDIVVAL     : SYSCTL_GENCLKCFG_EXCLKDIVVAL_Field :=
                         MSPMC1104_SVD.SYSCTL.DIV2;
      --  1: Enable divide 0: Pass Src Clock Through
      EXCLKDIVEN      : SYSCTL_GENCLKCFG_EXCLKDIVEN_Field :=
                         MSPMC1104_SVD.SYSCTL.PASSTHRU;
      --  Source for CAN Clock
      CANCLKSRC       : SYSCTL_GENCLKCFG_CANCLKSRC_Field :=
                         MSPMC1104_SVD.SYSCTL.HFCLK;
      --  Source for MFPCLK Clock
      MFPCLKSRC       : SYSCTL_GENCLKCFG_MFPCLKSRC_Field :=
                         MSPMC1104_SVD.SYSCTL.SYSOSC;
      --  unspecified
      Reserved_10_11  : HAL.UInt2 := 16#0#;
      --  HFCLK Divider 1..16
      HFCLK4MFPCLKDIV : SYSCTL_GENCLKCFG_HFCLK4MFPCLKDIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_GENCLKCFG_Register use record
      EXCLKSRC        at 0 range 0 .. 2;
      Reserved_3_3    at 0 range 3 .. 3;
      EXCLKDIVVAL     at 0 range 4 .. 6;
      EXCLKDIVEN      at 0 range 7 .. 7;
      CANCLKSRC       at 0 range 8 .. 8;
      MFPCLKSRC       at 0 range 9 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      HFCLK4MFPCLKDIV at 0 range 12 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  Enable the External Clock Output
   type SYSCTL_GENCLKEN_EXCLKEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_GENCLKEN_EXCLKEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable the MFCLK
   type SYSCTL_GENCLKEN_MFCLKEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_GENCLKEN_MFCLKEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  General Clock Enables
   type SYSCTL_GENCLKEN_Register is record
      --  Enable the External Clock Output
      EXCLKEN       : SYSCTL_GENCLKEN_EXCLKEN_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Enable the MFCLK
      MFCLKEN       : SYSCTL_GENCLKEN_MFCLKEN_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_GENCLKEN_Register use record
      EXCLKEN       at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      MFCLKEN       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Action to be taken on DEEPSLEEP 0: STOP, 1:STANDBY, 2: SHUTDOWN 3:
   --  Reserved
   type SYSCTL_PMODECFG_DSLEEP_Field is
     (STOP,
      STANDBY,
      SHUTDOWN)
     with Size => 2;
   for SYSCTL_PMODECFG_DSLEEP_Field use
     (STOP => 0,
      STANDBY => 1,
      SHUTDOWN => 2);

   --  Power Mode Configurations
   type SYSCTL_PMODECFG_Register is record
      --  Action to be taken on DEEPSLEEP 0: STOP, 1:STANDBY, 2: SHUTDOWN 3:
      --  Reserved
      DSLEEP        : SYSCTL_PMODECFG_DSLEEP_Field :=
                       MSPMC1104_SVD.SYSCTL.STOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PMODECFG_Register use record
      DSLEEP        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  1: SWAP upper banks to lower 0: Normal Memory Map
   type SYSCTL_SOCLOCK_FLBANKSWAP_USEUPPER_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SOCLOCK_FLBANKSWAP_USEUPPER_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Flash Bank Swap
   type SYSCTL_SOCLOCK_FLBANKSWAP_Register is record
      --  Read-only. 1: SWAP upper banks to lower 0: Normal Memory Map
      USEUPPER      : SYSCTL_SOCLOCK_FLBANKSWAP_USEUPPER_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SOCLOCK_FLBANKSWAP_Register use record
      USEUPPER      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Freq Target: 0: NOT VALID TRIM 1: 16M 2: 24M 3: Reserved
   type SYSCTL_SYSOSCTRIMUSER_FREQ_Field is
     (--  Reset value for the field
      SYSCTL_SYSOSCTRIMUSER_FREQ_Field_Reset,
      SYSOSC16M,
      SYSOSC24M)
     with Size => 2;
   for SYSCTL_SYSOSCTRIMUSER_FREQ_Field use
     (SYSCTL_SYSOSCTRIMUSER_FREQ_Field_Reset => 0,
      SYSOSC16M => 1,
      SYSOSC24M => 2);

   subtype SYSCTL_SYSOSCTRIMUSER_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIMUSER_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIMUSER_RESFINE_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIMUSER_RDIV_Field is HAL.UInt9;

   --  SYSOSC Trim Values specified by user
   type SYSCTL_SYSOSCTRIMUSER_Register is record
      --  Freq Target: 0: NOT VALID TRIM 1: 16M 2: 24M 3: Reserved
      FREQ           : SYSCTL_SYSOSCTRIMUSER_FREQ_Field :=
                        SYSCTL_SYSOSCTRIMUSER_FREQ_Field_Reset;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIMUSER_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIMUSER_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIMUSER_RESFINE_Field := 16#0#;
      --  FCL RDIV TRIM - Changes per frequency target
      RDIV           : SYSCTL_SYSOSCTRIMUSER_RDIV_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIMUSER_Register use record
      FREQ           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      RDIV           at 0 range 20 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  0: Flash ECC Double Error will issue System Reset (default) 1: Reset is
   --  disable but sysstatus will be provided
   type SYSCTL_SYSTEMCFG_FLASHECCRSTDIS_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSTEMCFG_FLASHECCRSTDIS_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SRAM Write Protect
   type SYSCTL_SYSTEMCFG_Register is record
      --  0: Flash ECC Double Error will issue System Reset (default) 1: Reset
      --  is disable but sysstatus will be provided
      FLASHECCRSTDIS : SYSCTL_SYSTEMCFG_FLASHECCRSTDIS_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSTEMCFG_Register use record
      FLASHECCRSTDIS at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  LOCK configuration MMRs from write
   type SYSCTL_WRITELOCK_ACTIVE_Field is
     (--  Disallow Writes to Lockable MMRs
      DISABLE,
      --  Allow Writes to Lockable MMRs
      ENABLE)
     with Size => 1;
   for SYSCTL_WRITELOCK_ACTIVE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSOSC Trim Values specified by user
   type SYSCTL_WRITELOCK_Register is record
      --  LOCK configuration MMRs from write
      ACTIVE        : SYSCTL_WRITELOCK_ACTIVE_Field :=
                       MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_WRITELOCK_Register use record
      ACTIVE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Current SYSOSC frequency setting
   type SYSCTL_CLKSTATUS_SYSOSCFREQ_Field is
     (SYSOSC32M,
      SYSOSC4M,
      SYSOSCUSER,
      SYSOSCTURBO)
     with Size => 2;
   for SYSCTL_CLKSTATUS_SYSOSCFREQ_Field use
     (SYSOSC32M => 0,
      SYSOSC4M => 1,
      SYSOSCUSER => 2,
      SYSOSCTURBO => 3);

   --  High Speed Clock Selected for MCLK (HFCLK, PLL,...)
   type SYSCTL_CLKSTATUS_HSCLKMUX_Field is
     (SYSOSC,
      HSCLK)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HSCLKMUX_Field use
     (SYSOSC => 0,
      HSCLK => 1);

   --  Low Frequency Clock Selected
   type SYSCTL_CLKSTATUS_LFCLKMUX_Field is
     (--  Internal LFOSC
      LFOSC,
      --  LF Crystal
      LFXT,
      --  External LFCLK IN
      EXLF)
     with Size => 2;
   for SYSCTL_CLKSTATUS_LFCLKMUX_Field use
     (LFOSC => 0,
      LFXT => 1,
      EXLF => 2);

   --  High Frequency Clock ON
   type SYSCTL_CLKSTATUS_HFCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HFCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SYSTEM PLL ON
   type SYSCTL_CLKSTATUS_SYSPLLGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_SYSPLLGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT is Valid
   type SYSCTL_CLKSTATUS_LFXTGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_LFXTGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFOSC is Valid
   type SYSCTL_CLKSTATUS_LFOSCGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_LFOSCGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  All PLLs, HFCLKs are OFF or DEAD
   type SYSCTL_CLKSTATUS_HSCLKSOFF_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HSCLKSOFF_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HFCLKs is OFF or DEAD
   type SYSCTL_CLKSTATUS_HFCLKOFF_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HFCLKOFF_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SYSPLL is OFF or DEAD
   type SYSCTL_CLKSTATUS_SYSPLLOFF_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_SYSPLLOFF_Field use
     (FALSE => 0,
      TRUE => 1);

   --  High Speed Clock Source 0: SYSPLL, 1:HFCLK
   type SYSCTL_CLKSTATUS_CURHSCLKSEL_Field is
     (SYSPLL,
      HFCLK)
     with Size => 1;
   for SYSCTL_CLKSTATUS_CURHSCLKSEL_Field use
     (SYSPLL => 0,
      HFCLK => 1);

   --  MCLK Clock Source 0: NOT LFCLK, 1:LFCLK
   type SYSCTL_CLKSTATUS_CURMCLKSEL_Field is
     (NOTLFCLK,
      LFCLK)
     with Size => 1;
   for SYSCTL_CLKSTATUS_CURMCLKSEL_Field use
     (NOTLFCLK => 0,
      LFCLK => 1);

   --  High Speed Clock Stuck Fault
   type SYSCTL_CLKSTATUS_HSCLKDEAD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HSCLKDEAD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  High Speed Clock Good
   type SYSCTL_CLKSTATUS_HSCLKGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HSCLKGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Clock Fail for LFXT or EXLF clock source
   type SYSCTL_CLKSTATUS_LFCLKFAIL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_LFCLKFAIL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  SYSOSC FCL MODE ON
   type SYSCTL_CLKSTATUS_FCLMODE_Field is
     (DISABLED,
      ENABLED)
     with Size => 1;
   for SYSCTL_CLKSTATUS_FCLMODE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Writes to HFCLKCLKCFG are blocked
   type SYSCTL_CLKSTATUS_HFCLKBLKUPD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_HFCLKBLKUPD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Writes to SYSPLLCFG0-1, SYSPLLPARAM0-1 are blocked
   type SYSCTL_CLKSTATUS_SYSPLLBLKUPD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_SYSPLLBLKUPD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Error with OPAMP Clock Generation
   type SYSCTL_CLKSTATUS_OPAMPCLKERR_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_OPAMPCLKERR_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Error with Anacomp High Speed CP Clock Generation - SYSOSC must not run
   --  at 4MHz
   type SYSCTL_CLKSTATUS_ACOMPHSCLKERR_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_CLKSTATUS_ACOMPHSCLKERR_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Useful debug status of clock selections
   type SYSCTL_CLKSTATUS_Register is record
      --  Read-only. Current SYSOSC frequency setting
      SYSOSCFREQ     : SYSCTL_CLKSTATUS_SYSOSCFREQ_Field;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. High Speed Clock Selected for MCLK (HFCLK, PLL,...)
      HSCLKMUX       : SYSCTL_CLKSTATUS_HSCLKMUX_Field;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. Low Frequency Clock Selected
      LFCLKMUX       : SYSCTL_CLKSTATUS_LFCLKMUX_Field;
      --  Read-only. High Frequency Clock ON
      HFCLKGOOD      : SYSCTL_CLKSTATUS_HFCLKGOOD_Field;
      --  Read-only. SYSTEM PLL ON
      SYSPLLGOOD     : SYSCTL_CLKSTATUS_SYSPLLGOOD_Field;
      --  Read-only. LFXT is Valid
      LFXTGOOD       : SYSCTL_CLKSTATUS_LFXTGOOD_Field;
      --  Read-only. LFOSC is Valid
      LFOSCGOOD      : SYSCTL_CLKSTATUS_LFOSCGOOD_Field;
      --  Read-only. All PLLs, HFCLKs are OFF or DEAD
      HSCLKSOFF      : SYSCTL_CLKSTATUS_HSCLKSOFF_Field;
      --  Read-only. HFCLKs is OFF or DEAD
      HFCLKOFF       : SYSCTL_CLKSTATUS_HFCLKOFF_Field;
      --  Read-only. SYSPLL is OFF or DEAD
      SYSPLLOFF      : SYSCTL_CLKSTATUS_SYSPLLOFF_Field;
      --  unspecified
      Reserved_15_15 : HAL.Bit;
      --  Read-only. High Speed Clock Source 0: SYSPLL, 1:HFCLK
      CURHSCLKSEL    : SYSCTL_CLKSTATUS_CURHSCLKSEL_Field;
      --  Read-only. MCLK Clock Source 0: NOT LFCLK, 1:LFCLK
      CURMCLKSEL     : SYSCTL_CLKSTATUS_CURMCLKSEL_Field;
      --  unspecified
      Reserved_18_19 : HAL.UInt2;
      --  Read-only. High Speed Clock Stuck Fault
      HSCLKDEAD      : SYSCTL_CLKSTATUS_HSCLKDEAD_Field;
      --  Read-only. High Speed Clock Good
      HSCLKGOOD      : SYSCTL_CLKSTATUS_HSCLKGOOD_Field;
      --  unspecified
      Reserved_22_22 : HAL.Bit;
      --  Read-only. Clock Fail for LFXT or EXLF clock source
      LFCLKFAIL      : SYSCTL_CLKSTATUS_LFCLKFAIL_Field;
      --  Read-only. SYSOSC FCL MODE ON
      FCLMODE        : SYSCTL_CLKSTATUS_FCLMODE_Field;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. Writes to HFCLKCLKCFG are blocked
      HFCLKBLKUPD    : SYSCTL_CLKSTATUS_HFCLKBLKUPD_Field;
      --  Read-only. Writes to SYSPLLCFG0-1, SYSPLLPARAM0-1 are blocked
      SYSPLLBLKUPD   : SYSCTL_CLKSTATUS_SYSPLLBLKUPD_Field;
      --  Read-only. Error with OPAMP Clock Generation
      OPAMPCLKERR    : SYSCTL_CLKSTATUS_OPAMPCLKERR_Field;
      --  Read-only. Error with Anacomp High Speed CP Clock Generation - SYSOSC
      --  must not run at 4MHz
      ACOMPHSCLKERR  : SYSCTL_CLKSTATUS_ACOMPHSCLKERR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_CLKSTATUS_Register use record
      SYSOSCFREQ     at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      HSCLKMUX       at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      LFCLKMUX       at 0 range 6 .. 7;
      HFCLKGOOD      at 0 range 8 .. 8;
      SYSPLLGOOD     at 0 range 9 .. 9;
      LFXTGOOD       at 0 range 10 .. 10;
      LFOSCGOOD      at 0 range 11 .. 11;
      HSCLKSOFF      at 0 range 12 .. 12;
      HFCLKOFF       at 0 range 13 .. 13;
      SYSPLLOFF      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CURHSCLKSEL    at 0 range 16 .. 16;
      CURMCLKSEL     at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      HSCLKDEAD      at 0 range 20 .. 20;
      HSCLKGOOD      at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      LFCLKFAIL      at 0 range 23 .. 23;
      FCLMODE        at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      HFCLKBLKUPD    at 0 range 28 .. 28;
      SYSPLLBLKUPD   at 0 range 29 .. 29;
      OPAMPCLKERR    at 0 range 30 .. 30;
      ACOMPHSCLKERR  at 0 range 31 .. 31;
   end record;

   --  Double Error Detect on Flash
   type SYSCTL_SYSSTATUS_FLASHDED_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSSTATUS_FLASHDED_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Single Error Correction on Flash
   type SYSCTL_SYSSTATUS_FLASHSEC_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSSTATUS_FLASHSEC_Field use
     (FALSE => 0,
      TRUE => 1);

   --  BOR LEVEL STATUS Indicator
   type SYSCTL_SYSSTATUS_BORLVL_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSSTATUS_BORLVL_Field use
     (FALSE => 0,
      TRUE => 1);

   --  PMU IFREF GOOD
   type SYSCTL_SYSSTATUS_PMUIREFGOOD_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSSTATUS_PMUIREFGOOD_Field use
     (FALSE => 0,
      TRUE => 1);

   --  MCAN0 Ready
   type SYSCTL_SYSSTATUS_MCAN0READY_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_SYSSTATUS_MCAN0READY_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Useful System Status Data
   type SYSCTL_SYSSTATUS_Register is record
      --  Read-only. Double Error Detect on Flash
      FLASHDED      : SYSCTL_SYSSTATUS_FLASHDED_Field;
      --  Read-only. Single Error Correction on Flash
      FLASHSEC      : SYSCTL_SYSSTATUS_FLASHSEC_Field;
      --  Read-only. BOR LEVEL STATUS Indicator
      BORLVL        : SYSCTL_SYSSTATUS_BORLVL_Field;
      --  unspecified
      Reserved_3_3  : HAL.Bit;
      --  Read-only. PMU IFREF GOOD
      PMUIREFGOOD   : SYSCTL_SYSSTATUS_PMUIREFGOOD_Field;
      --  unspecified
      Reserved_5_7  : HAL.UInt3;
      --  Read-only. MCAN0 Ready
      MCAN0READY    : SYSCTL_SYSSTATUS_MCAN0READY_Field;
      --  unspecified
      Reserved_9_31 : HAL.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSSTATUS_Register use record
      FLASHDED      at 0 range 0 .. 0;
      FLASHSEC      at 0 range 1 .. 1;
      BORLVL        at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      PMUIREFGOOD   at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      MCAN0READY    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Reset Level 0: CPU plus peripherals, 1: BOR level reset to BOOTCODE, 2:
   --  Do CPU plus Peripheral reset then BOOTLOADER, 3: Full Power On Reset --
   --  vcore disabled
   type SYSCTL_RESETLEVEL_LEVEL_Field is
     (--  Reset CPU plus peripherals only
      CPU,
      --  Reset Main Infrastructure including TRIM
      BOOT,
      --  Reset Main Infrastructure and Run BOOTLOADER
      BOOTLOADER,
      --  Reset as a Power On Reset
      POR)
     with Size => 2;
   for SYSCTL_RESETLEVEL_LEVEL_Field use
     (CPU => 0,
      BOOT => 1,
      BOOTLOADER => 2,
      POR => 3);

   --  Reset Level for Application Reset Command
   type SYSCTL_RESETLEVEL_Register is record
      --  Reset Level 0: CPU plus peripherals, 1: BOR level reset to BOOTCODE,
      --  2: Do CPU plus Peripheral reset then BOOTLOADER, 3: Full Power On
      --  Reset -- vcore disabled
      LEVEL         : SYSCTL_RESETLEVEL_LEVEL_Field :=
                       MSPMC1104_SVD.SYSCTL.CPU;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_RESETLEVEL_Register use record
      LEVEL         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Execute Reset defined in RESETLEVEL
   type SYSCTL_RESETCMD_GO_Field is
     (--  Reset value for the field
      SYSCTL_RESETCMD_GO_Field_Reset,
      --  Issue Reset
      TRUE)
     with Size => 1;
   for SYSCTL_RESETCMD_GO_Field use
     (SYSCTL_RESETCMD_GO_Field_Reset => 0,
      TRUE => 1);

   --  Execute Reset Command
   type SYSCTL_RESETCMD_Register is record
      --  Write-only. Execute Reset defined in RESETLEVEL
      GO            : SYSCTL_RESETCMD_GO_Field :=
                       SYSCTL_RESETCMD_GO_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_RESETCMD_Register use record
      GO            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  BOR Threshold Level 0: Full Re-boot This level is always enforced
   --  regardless of MMR seting 1-3: Generates interrupt
   type SYSCTL_BORTHRESHOLD_LEVEL_Field is
     (--  Minimum allowed threshold - will force a re-boot
      BORMIN,
      --  BOR Level 1 -- Generates an Interupt
      BORLEVEL1,
      --  BOR Level 2 -- Generates an Interupt
      BORLEVEL2,
      --  BOR Level 3 -- Generates an Interupt
      BORLEVEL3)
     with Size => 2;
   for SYSCTL_BORTHRESHOLD_LEVEL_Field use
     (BORMIN => 0,
      BORLEVEL1 => 1,
      BORLEVEL2 => 2,
      BORLEVEL3 => 3);

   --  BOR Threshold Level
   type SYSCTL_BORTHRESHOLD_Register is record
      --  BOR Threshold Level 0: Full Re-boot This level is always enforced
      --  regardless of MMR seting 1-3: Generates interrupt
      LEVEL         : SYSCTL_BORTHRESHOLD_LEVEL_Field :=
                       MSPMC1104_SVD.SYSCTL.BORMIN;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BORTHRESHOLD_Register use record
      LEVEL         at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Use Freq Control Loop
   type SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field is
     (--  Reset value for the field
      SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field_Reset,
      --  Set FCL Control
      TRUE)
     with Size => 1;
   for SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field use
     (SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field_Reset => 0,
      TRUE => 1);

   --  SYSOSC Frequency Control Loop with External Resistor
   type SYSCTL_SYSOSCFCLCTL_Register is record
      --  Write-only. Use Freq Control Loop
      SETUSEFCL     : SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field :=
                       SYSCTL_SYSOSCFCLCTL_SETUSEFCL_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCFCLCTL_Register use record
      SETUSEFCL     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start LFXT
   type SYSCTL_LFXTCTL_STARTLFXT_Field is
     (FALSE,
      --  Start LFXT
      TRUE)
     with Size => 1;
   for SYSCTL_LFXTCTL_STARTLFXT_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Use LFXT
   type SYSCTL_LFXTCTL_SETUSELFXT_Field is
     (FALSE,
      --  Use LFXT as 32KHz source
      TRUE)
     with Size => 1;
   for SYSCTL_LFXTCTL_SETUSELFXT_Field use
     (FALSE => 0,
      TRUE => 1);

   --  LFXT Control -- Only BOR Level Reset will clear
   type SYSCTL_LFXTCTL_Register is record
      --  Write-only. Start LFXT
      STARTLFXT     : SYSCTL_LFXTCTL_STARTLFXT_Field :=
                       MSPMC1104_SVD.SYSCTL.FALSE;
      --  Write-only. Use LFXT
      SETUSELFXT    : SYSCTL_LFXTCTL_SETUSELFXT_Field :=
                       MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFXTCTL_Register use record
      STARTLFXT     at 0 range 0 .. 0;
      SETUSELFXT    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Use external LF CLK IN
   type SYSCTL_EXLFCTL_SETUSEEXLF_Field is
     (FALSE,
      --  Use External LF source
      TRUE)
     with Size => 1;
   for SYSCTL_EXLFCTL_SETUSEEXLF_Field use
     (FALSE => 0,
      TRUE => 1);

   --  EX LF Control -- Only BOR Level Reset will clear
   type SYSCTL_EXLFCTL_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Use external LF CLK IN
      SETUSEEXLF    : SYSCTL_EXLFCTL_SETUSEEXLF_Field :=
                       MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_EXLFCTL_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      SETUSEEXLF    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Release IO after Shutdown
   type SYSCTL_SHDNIOREL_RELEASE_Field is
     (--  Reset value for the field
      SYSCTL_SHDNIOREL_RELEASE_Field_Reset,
      --  Release IO after SHUTDOWN Exit
      TRUE)
     with Size => 1;
   for SYSCTL_SHDNIOREL_RELEASE_Field use
     (SYSCTL_SHDNIOREL_RELEASE_Field_Reset => 0,
      TRUE => 1);

   --  Shutdown IO Release Command
   type SYSCTL_SHDNIOREL_Register is record
      --  Write-only. Release IO after Shutdown
      RELEASE       : SYSCTL_SHDNIOREL_RELEASE_Field :=
                       SYSCTL_SHDNIOREL_RELEASE_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SHDNIOREL_Register use record
      RELEASE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Disable External Reset
   type SYSCTL_EXRSTPIN_DISABLE_Field is
     (FALSE,
      --  Disable External Reset
      TRUE)
     with Size => 1;
   for SYSCTL_EXRSTPIN_DISABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Disable use of external Reset Pin
   type SYSCTL_EXRSTPIN_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Disable External Reset
      DISABLE       : SYSCTL_EXRSTPIN_DISABLE_Field :=
                       MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_EXRSTPIN_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DISABLE       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clear ALL ECC related SYSSTATUS indicators
   type SYSCTL_SYSSTATUSCLR_ALLECC_Field is
     (--  Reset value for the field
      SYSCTL_SYSSTATUSCLR_ALLECC_Field_Reset,
      --  Clear ECC state
      CLEAR)
     with Size => 1;
   for SYSCTL_SYSSTATUSCLR_ALLECC_Field use
     (SYSCTL_SYSSTATUSCLR_ALLECC_Field_Reset => 0,
      CLEAR => 1);

   --  Clear sticky bits of SYSSTATUS
   type SYSCTL_SYSSTATUSCLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear ALL ECC related SYSSTATUS indicators
      ALLECC        : SYSCTL_SYSSTATUSCLR_ALLECC_Field :=
                       SYSCTL_SYSSTATUSCLR_ALLECC_Field_Reset;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSSTATUSCLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      ALLECC        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Disable SWD
   type SYSCTL_SWDCFG_DISABLE_Field is
     (FALSE,
      --  Disable SWD
      TRUE)
     with Size => 1;
   for SYSCTL_SWDCFG_DISABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Disable SWD
   type SYSCTL_SWDCFG_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. Disable SWD
      DISABLE       : SYSCTL_SWDCFG_DISABLE_Field :=
                       MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SWDCFG_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DISABLE       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable PMU OPAMP
   type SYSCTL_PMUOPAMP_ENABLE_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_PMUOPAMP_ENABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Positive Channel Input Enable
   type SYSCTL_PMUOPAMP_PCHENABLE_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_PMUOPAMP_PCHENABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Negative Channel Input Select
   type SYSCTL_PMUOPAMP_NSEL_Field is
     (--  Select buf output pad as input
      SEL0,
      --  select unbuf output pad as input
      SEL1,
      --  select internal buffer output as input
      SEL2,
      --  no channel selected
      SEL3)
     with Size => 2;
   for SYSCTL_PMUOPAMP_NSEL_Field use
     (SEL0 => 0,
      SEL1 => 1,
      SEL2 => 2,
      SEL3 => 3);

   --  Rail to Rail Input Mode Select
   type SYSCTL_PMUOPAMP_RRI_Field is
     (--  select PMOS input pairs mode
      MODE0,
      --  select NMOS input pairs mode
      MODE1,
      --  select rail to rail mode
      MODE2,
      --  select sample channel 0
      MODE3)
     with Size => 2;
   for SYSCTL_PMUOPAMP_RRI_Field use
     (MODE0 => 0,
      MODE1 => 1,
      MODE2 => 2,
      MODE3 => 3);

   --  Output To Pad Enable
   type SYSCTL_PMUOPAMP_OUTENABLE_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_PMUOPAMP_OUTENABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  CHOP Clock frequency select
   type SYSCTL_PMUOPAMP_CHOPCLKFREQ_Field is
     (CLK16KHZ,
      CLK8KHZ,
      CLK4KHZ,
      CLK2KHZ)
     with Size => 2;
   for SYSCTL_PMUOPAMP_CHOPCLKFREQ_Field use
     (CLK16KHZ => 0,
      CLK8KHZ => 1,
      CLK4KHZ => 2,
      CLK2KHZ => 3);

   --  CHOP Clock Mode
   type SYSCTL_PMUOPAMP_CHOPCLKMODE_Field is
     (--  Chop Disabled
      CHOPDISABLED,
      --  Regular Chop
      REGCHOP,
      --  ADC Assisted Chop
      ADCASSIST)
     with Size => 2;
   for SYSCTL_PMUOPAMP_CHOPCLKMODE_Field use
     (CHOPDISABLED => 0,
      REGCHOP => 1,
      ADCASSIST => 2);

   --  PMU OPAMP Control
   type SYSCTL_PMUOPAMP_Register is record
      --  Enable PMU OPAMP
      ENABLE         : SYSCTL_PMUOPAMP_ENABLE_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  Positive Channel Input Enable
      PCHENABLE      : SYSCTL_PMUOPAMP_PCHENABLE_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  Negative Channel Input Select
      NSEL           : SYSCTL_PMUOPAMP_NSEL_Field :=
                        MSPMC1104_SVD.SYSCTL.SEL0;
      --  Rail to Rail Input Mode Select
      RRI            : SYSCTL_PMUOPAMP_RRI_Field :=
                        MSPMC1104_SVD.SYSCTL.MODE0;
      --  Output To Pad Enable
      OUTENABLE      : SYSCTL_PMUOPAMP_OUTENABLE_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CHOP Clock frequency select
      CHOPCLKFREQ    : SYSCTL_PMUOPAMP_CHOPCLKFREQ_Field :=
                        MSPMC1104_SVD.SYSCTL.CLK16KHZ;
      --  CHOP Clock Mode
      CHOPCLKMODE    : SYSCTL_PMUOPAMP_CHOPCLKMODE_Field :=
                        MSPMC1104_SVD.SYSCTL.CHOPDISABLED;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PMUOPAMP_Register use record
      ENABLE         at 0 range 0 .. 0;
      PCHENABLE      at 0 range 1 .. 1;
      NSEL           at 0 range 2 .. 3;
      RRI            at 0 range 4 .. 5;
      OUTENABLE      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CHOPCLKFREQ    at 0 range 8 .. 9;
      CHOPCLKMODE    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SYSCTL_SHUTDNSTORE_DATA_Field is HAL.UInt8;

   --  Shutdown Storage Byte 0
   type SYSCTL_SHUTDNSTORE_Register is record
      --  Shutdown Storage Byte 0
      DATA          : SYSCTL_SHUTDNSTORE_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SHUTDNSTORE_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Device Lifecycle set by BOOTCODE READY=0x69(105), ATTEST=0x55(85),
   --  PREPROBE=0x96(150)
   type SYSCTL_LIFECYCLE_VALUE_Field is
     (--  Device in TI Test Mode
      ATTEST,
      --  Device in Product Mode
      READY,
      --  Device in Pre Probe State
      PREPROBE)
     with Size => 8;
   for SYSCTL_LIFECYCLE_VALUE_Field use
     (ATTEST => 85,
      READY => 105,
      PREPROBE => 150);

   --  Device Lifecycle
   type SYSCTL_LIFECYCLE_Register is record
      --  Device Lifecycle set by BOOTCODE READY=0x69(105), ATTEST=0x55(85),
      --  PREPROBE=0x96(150)
      VALUE         : SYSCTL_LIFECYCLE_VALUE_Field :=
                       MSPMC1104_SVD.SYSCTL.ATTEST;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LIFECYCLE_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Reset Vector target location at next reset
   type SYSCTL_BOOTCFG_STARTVEC_Field is
     (--  Reset to BOOTCODE
      BOOTCODE,
      --  Reset to BOOTLOADER
      BOOTLOADER,
      --  Reset to FLASH 0x0
      APPFLASH,
      --  Reset to SRAM 0x0
      APPSRAM)
     with Size => 2;
   for SYSCTL_BOOTCFG_STARTVEC_Field use
     (BOOTCODE => 0,
      BOOTLOADER => 1,
      APPFLASH => 2,
      APPSRAM => 3);

   --  Configuration of CPURESET Vector
   type SYSCTL_BOOTCFG_Register is record
      --  Reset Vector target location at next reset
      STARTVEC       : SYSCTL_BOOTCFG_STARTVEC_Field :=
                        MSPMC1104_SVD.SYSCTL.BOOTCODE;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  0: NonMain Flash area can be modified 1: Program-Erase will be
      --  ignored
      NONMAINWEPROT  : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  0: Normal operation 1: CPU held in reset for debugger to control
      --  release
      WAITINRESET    : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  0: Full Bringup 1: TRIM already loaded, requesting BSL
      BSLREQ         : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BOOTCFG_Register use record
      STARTVEC       at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NONMAINWEPROT  at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      WAITINRESET    at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      BSLREQ         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  BOOTCODE writes 1 for PASS, left unwritten a timeout will occur if not
   --  blocked
   type SYSCTL_BOOTDONE_PASS_Field is
     (--  Reset value for the field
      SYSCTL_BOOTDONE_PASS_Field_Reset,
      --  BOOTCODE PASS
      TRUE)
     with Size => 1;
   for SYSCTL_BOOTDONE_PASS_Field use
     (SYSCTL_BOOTDONE_PASS_Field_Reset => 0,
      TRUE => 1);

   --  BOOTCODE PASS
   type SYSCTL_BOOTDONE_Register is record
      --  Write-only. BOOTCODE writes 1 for PASS, left unwritten a timeout will
      --  occur if not blocked
      PASS          : SYSCTL_BOOTDONE_PASS_Field :=
                       SYSCTL_BOOTDONE_PASS_Field_Reset;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BOOTDONE_Register use record
      PASS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  BOOTCODE writes 1 for reloading BOOT TIMEOUT Counter
   type SYSCTL_BOOTTIMEOUT_PET_Field is
     (--  Reset value for the field
      SYSCTL_BOOTTIMEOUT_PET_Field_Reset,
      --  Restart Bootcode Timeout Counter
      TRUE)
     with Size => 1;
   for SYSCTL_BOOTTIMEOUT_PET_Field use
     (SYSCTL_BOOTTIMEOUT_PET_Field_Reset => 0,
      TRUE => 1);

   --  BOOTCODE writes 1 for STOPPING BOOT TIMEOUT Counter
   type SYSCTL_BOOTTIMEOUT_STOP_Field is
     (--  Reset value for the field
      SYSCTL_BOOTTIMEOUT_STOP_Field_Reset,
      --  STOP Bootcode Timeout Counter
      TRUE)
     with Size => 1;
   for SYSCTL_BOOTTIMEOUT_STOP_Field use
     (SYSCTL_BOOTTIMEOUT_STOP_Field_Reset => 0,
      TRUE => 1);

   --  BOOT TIMEOUT Control
   type SYSCTL_BOOTTIMEOUT_Register is record
      --  Write-only. BOOTCODE writes 1 for reloading BOOT TIMEOUT Counter
      PET           : SYSCTL_BOOTTIMEOUT_PET_Field :=
                       SYSCTL_BOOTTIMEOUT_PET_Field_Reset;
      --  Write-only. BOOTCODE writes 1 for STOPPING BOOT TIMEOUT Counter
      STOP          : SYSCTL_BOOTTIMEOUT_STOP_Field :=
                       SYSCTL_BOOTTIMEOUT_STOP_Field_Reset;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BOOTTIMEOUT_Register use record
      PET           at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Infrastructure Status
   type SYSCTL_INFRASTATUS_Register is record
      --  Read-only. DMA TRIM signiture fail
      DMATRIMSIGFAIL : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. TRIM MMRs are UNLOCKED
      TRIMUNLOCK     : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. SRAM repair is completed or not supported on this SOC
      SRAMREPAIRDONE : Boolean;
      --  unspecified
      Reserved_17_23 : HAL.UInt7;
      --  Read-only. Flash 1T Read mode is available
      READY1T        : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_INFRASTATUS_Register use record
      DMATRIMSIGFAIL at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      TRIMUNLOCK     at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      SRAMREPAIRDONE at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      READY1T        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SYSCTL_BOOTDIAG_DATA_Field is HAL.UInt8;

   --  8 bit boot diagnostic to Debugss
   type SYSCTL_BOOTDIAG_Register is record
      --  8 bit boot diagnostic to Debugss
      DATA          : SYSCTL_BOOTDIAG_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_BOOTDIAG_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Infrastructure Status 2
   type SYSCTL_INFRASTATUS1_Register is record
      --  Read-only. Customer Return Pad
      CRPAD         : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_INFRASTATUS1_Register use record
      CRPAD         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCTL_FWEPROTMAINB0_DATA_Field is HAL.UInt16;

   --  8xSector Write-Erase per bit starting at address 0x0 of flash
   type SYSCTL_FWEPROTMAINB0_Register is record
      --  8xSector Write Erase protection 1: prohibits write-erase, 0: allows
      DATA           : SYSCTL_FWEPROTMAINB0_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FWEPROTMAINB0_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIMBASE_IBIAS_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIMBASE_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIMBASE_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIMBASE_RESFINE_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIMBASE_ILDO_Field is HAL.UInt3;

   --  SYSOSC Trim Values for frequency when change from disable to enable,
   --  generally 32MHz
   type SYSCTL_SYSOSCTRIMBASE_Register is record
      --  IBIAS TRIM - Only 1 value, not frequency dependent
      IBIAS          : SYSCTL_SYSOSCTRIMBASE_IBIAS_Field := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIMBASE_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIMBASE_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIMBASE_RESFINE_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  ILDO TRIM -- Only 1 value, Not frequency dependent
      ILDO           : SYSCTL_SYSOSCTRIMBASE_ILDO_Field := 16#0#;
      --  VCTRL SEL used potentially needed for FCL mode. Default 0
      VCTRLSEL       : Boolean := False;
      --  SYSOSC 48MHz (TURBO) TI trim can be used
      ALLOWTURBO     : Boolean := False;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  TRIM Data Valid- used to trigger FSM
      TRIMVALID      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIMBASE_Register use record
      IBIAS          at 0 range 0 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ILDO           at 0 range 24 .. 26;
      VCTRLSEL       at 0 range 27 .. 27;
      ALLOWTURBO     at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      TRIMVALID      at 0 range 31 .. 31;
   end record;

   subtype SYSCTL_PMUTRIM_DATA_Field is HAL.UInt10;

   --  PMU TRIM 0
   type SYSCTL_PMUTRIM_Register is record
      --  SEE PMU definition for usage
      DATA           : SYSCTL_PMUTRIM_DATA_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PMUTRIM_Register use record
      DATA           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCTL_FLASHBANK0REPAIR_DATA_Field is HAL.UInt14;

   --  $brname Flash Repair
   type SYSCTL_FLASHBANK0REPAIR_Register is record
      --  Repair Bits
      DATA           : SYSCTL_FLASHBANK0REPAIR_DATA_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FLASHBANK0REPAIR_Register use record
      DATA           at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SYSCTL_FLASHSRAMCFG_FLSIZE_Field is HAL.UInt2;
   subtype SYSCTL_FLASHSRAMCFG_SRSIZE_Field is HAL.UInt2;

   --  Flash and SRAM Configuration
   type SYSCTL_FLASHSRAMCFG_Register is record
      --  Flash Paper Spin 0: Full size, 1: 1/2, 2: 1/4
      FLSIZE        : SYSCTL_FLASHSRAMCFG_FLSIZE_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  SRAM Paper Spin 0: Full size, 1: 1/2, 2: 1/4
      SRSIZE        : SYSCTL_FLASHSRAMCFG_SRSIZE_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  1: Main (nonmain) are 2T access 0: Main (nonmain) are 1T access
      MAIN2T        : Boolean := False;
      --  unspecified
      Reserved_9_30 : HAL.UInt22 := 16#0#;
      --  1: Flash TRIM bits loaded 0: TRIM unwritten
      FLTRIMDONE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FLASHSRAMCFG_Register use record
      FLSIZE        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SRSIZE        at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      MAIN2T        at 0 range 8 .. 8;
      Reserved_9_30 at 0 range 9 .. 30;
      FLTRIMDONE    at 0 range 31 .. 31;
   end record;

   subtype SYSCTL_SRAMTIMING_TISORISE2XONFALL_Field is HAL.UInt4;
   subtype SYSCTL_SRAMTIMING_TSTRONG_Field is HAL.UInt4;
   subtype SYSCTL_SRAMTIMING_TPGOODRISE2ISOFALL_Field is HAL.UInt4;
   subtype SYSCTL_SRAMTIMING_TISOGOODFALL2CLKRISE_Field is HAL.UInt4;

   --  SRAM timing MMR for ESRAM controller, based on 4MHz
   type SYSCTL_SRAMTIMING_Register is record
      --  ISO Rise to any ON FALL, spec 500ns (boot 750ns)
      TISORISE2XONFALL     : SYSCTL_SRAMTIMING_TISORISE2XONFALL_Field :=
                              16#2#;
      --  Driver Weak to Stong timing, spec 1000ns (boot 1500ns)
      TSTRONG              : SYSCTL_SRAMTIMING_TSTRONG_Field := 16#5#;
      --  PGOOD RISE to ISO FALL, spec 750ns (boot 1500ns)
      TPGOODRISE2ISOFALL   : SYSCTL_SRAMTIMING_TPGOODRISE2ISOFALL_Field :=
                              16#5#;
      --  ISO GOOD FALL to CLKRISE, spec 250ns (boot 500ns)
      TISOGOODFALL2CLKRISE : SYSCTL_SRAMTIMING_TISOGOODFALL2CLKRISE_Field :=
                              16#1#;
      --  unspecified
      Reserved_16_31       : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SRAMTIMING_Register use record
      TISORISE2XONFALL     at 0 range 0 .. 3;
      TSTRONG              at 0 range 4 .. 7;
      TPGOODRISE2ISOFALL   at 0 range 8 .. 11;
      TISOGOODFALL2CLKRISE at 0 range 12 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIM4MHZ_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIM4MHZ_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIM4MHZ_RESFINE_Field is HAL.UInt4;

   --  SYSOSC Trim Values for 4MHz target
   type SYSCTL_SYSOSCTRIM4MHZ_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIM4MHZ_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIM4MHZ_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIM4MHZ_RESFINE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIM4MHZ_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIM4MHZFCL_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIM4MHZFCL_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIM4MHZFCL_RESFINE_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIM4MHZFCL_RDIV_Field is HAL.UInt9;

   --  SYSOSC Trim Values for 4MHz target with FCL enabled
   type SYSCTL_SYSOSCTRIM4MHZFCL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIM4MHZFCL_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIM4MHZFCL_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIM4MHZFCL_RESFINE_Field := 16#0#;
      --  FCL RDIV TRIM - Changes per frequency target
      RDIV           : SYSCTL_SYSOSCTRIM4MHZFCL_RDIV_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIM4MHZFCL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      RDIV           at 0 range 20 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIMBASEFCL_FCLOTAIBIAS_Field is HAL.UInt2;
   subtype SYSCTL_SYSOSCTRIMBASEFCL_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIMBASEFCL_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIMBASEFCL_RESFINE_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIMBASEFCL_RDIV_Field is HAL.UInt9;

   --  SYSOSC Trim Values for 32MHz target with FCL enabled
   type SYSCTL_SYSOSCTRIMBASEFCL_Register is record
      --  FCL IBIAS TRIM, Not frequency dependent
      FCLOTAIBIAS    : SYSCTL_SYSOSCTRIMBASEFCL_FCLOTAIBIAS_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIMBASEFCL_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIMBASEFCL_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Fine TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIMBASEFCL_RESFINE_Field := 16#0#;
      --  FCL RDIV TRIM - Changes per frequency target
      RDIV           : SYSCTL_SYSOSCTRIMBASEFCL_RDIV_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIMBASEFCL_Register use record
      FCLOTAIBIAS    at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      RDIV           at 0 range 20 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYSCTL_LFOSCTRIM0_RCODE_Field is HAL.UInt5;
   subtype SYSCTL_LFOSCTRIM0_CCODE_Field is HAL.UInt5;

   --  LFOSC TRIM values
   type SYSCTL_LFOSCTRIM0_Register is record
      --  LFOSC Res Frequency Trim
      RCODE          : SYSCTL_LFOSCTRIM0_RCODE_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  LFOSC Cap Frequency Trim
      CCODE          : SYSCTL_LFOSCTRIM0_CCODE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFOSCTRIM0_Register use record
      RCODE          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CCODE          at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype SYSCTL_LFOSCTRIM1_CFG_Field is HAL.UInt15;
   subtype SYSCTL_LFOSCTRIM1_MUXCFG_Field is HAL.UInt4;
   subtype SYSCTL_LFOSCTRIM1_RTN_Field is HAL.UInt5;

   --  LFOSC TRIM values
   type SYSCTL_LFOSCTRIM1_Register is record
      --  LFOSC CFG Trim
      CFG            : SYSCTL_LFOSCTRIM1_CFG_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  LFOSC Mux CFG Trim
      MUXCFG         : SYSCTL_LFOSCTRIM1_MUXCFG_Field := 16#0#;
      --  LFOSC RSHIFT Trim
      RSHIFT         : Boolean := False;
      --  0: divide LFOSC by 2 to give 32KHz, 1: pass through 64KHz
      CLKSEL         : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  LFOSC Noise Trim
      RTN            : SYSCTL_LFOSCTRIM1_RTN_Field := 16#4#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFOSCTRIM1_Register use record
      CFG            at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      MUXCFG         at 0 range 16 .. 19;
      RSHIFT         at 0 range 20 .. 20;
      CLKSEL         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      RTN            at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYSCTL_LFXTTRIM_MANTRIMLOWEST_Field is HAL.UInt4;
   subtype SYSCTL_LFXTTRIM_MANTRIMLOWER_Field is HAL.UInt4;
   subtype SYSCTL_LFXTTRIM_MANTRIMHIGHER_Field is HAL.UInt4;
   subtype SYSCTL_LFXTTRIM_MANTRIMHIGHEST_Field is HAL.UInt4;
   subtype SYSCTL_LFXTTRIM_HYSCFG_Field is HAL.UInt4;
   subtype SYSCTL_LFXTTRIM_STARTUPTIME_Field is HAL.UInt3;

   --  Glitch Filter Enable
   type SYSCTL_LFXTTRIM_GLITCHFILTER_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_LFXTTRIM_GLITCHFILTER_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype SYSCTL_LFXTTRIM_MAININV_Field is HAL.UInt2;
   subtype SYSCTL_LFXTTRIM_MONITOROFFTIME_Field is HAL.UInt2;

   --  LFXT TRIM values
   type SYSCTL_LFXTTRIM_Register is record
      --  LFXT Man Reg Trim Lowest Power
      MANTRIMLOWEST  : SYSCTL_LFXTTRIM_MANTRIMLOWEST_Field := 16#0#;
      --  LFXT Man Reg Trim Lower Power
      MANTRIMLOWER   : SYSCTL_LFXTTRIM_MANTRIMLOWER_Field := 16#0#;
      --  LFXT Man Reg Trim Higher Power
      MANTRIMHIGHER  : SYSCTL_LFXTTRIM_MANTRIMHIGHER_Field := 16#0#;
      --  LFXT Man Reg Trim Highest Power
      MANTRIMHIGHEST : SYSCTL_LFXTTRIM_MANTRIMHIGHEST_Field := 16#0#;
      --  LFXT Hysterisys Config
      HYSCFG         : SYSCTL_LFXTTRIM_HYSCFG_Field := 16#0#;
      --  LFXT Startup Time
      STARTUPTIME    : SYSCTL_LFXTTRIM_STARTUPTIME_Field := 16#0#;
      --  LFXT Fast Startup Select
      FASTSTARTUP    : Boolean := False;
      --  LFXT GFCFG
      GFCFG          : Boolean := False;
      --  LFXT Leakage Comp Disable
      LKCOMPDISABLE  : Boolean := False;
      --  LFXT SW Supply Enable
      SWSUPPLYEN     : Boolean := False;
      --  Glitch Filter Enable
      GLITCHFILTER   : SYSCTL_LFXTTRIM_GLITCHFILTER_Field :=
                        MSPMC1104_SVD.SYSCTL.ENABLE;
      --  LFXT Main Inverter Strength
      MAININV        : SYSCTL_LFXTTRIM_MAININV_Field := 16#0#;
      --  XT Monitor Off Time Trim
      MONITOROFFTIME : SYSCTL_LFXTTRIM_MONITOROFFTIME_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_LFXTTRIM_Register use record
      MANTRIMLOWEST  at 0 range 0 .. 3;
      MANTRIMLOWER   at 0 range 4 .. 7;
      MANTRIMHIGHER  at 0 range 8 .. 11;
      MANTRIMHIGHEST at 0 range 12 .. 15;
      HYSCFG         at 0 range 16 .. 19;
      STARTUPTIME    at 0 range 20 .. 22;
      FASTSTARTUP    at 0 range 23 .. 23;
      GFCFG          at 0 range 24 .. 24;
      LKCOMPDISABLE  at 0 range 25 .. 25;
      SWSUPPLYEN     at 0 range 26 .. 26;
      GLITCHFILTER   at 0 range 27 .. 27;
      MAININV        at 0 range 28 .. 29;
      MONITOROFFTIME at 0 range 30 .. 31;
   end record;

   subtype SYSCTL_HFXTTRIM0_MAGR0_Field is HAL.UInt6;
   subtype SYSCTL_HFXTTRIM0_MAGR1_Field is HAL.UInt6;
   subtype SYSCTL_HFXTTRIM0_MAGR2_Field is HAL.UInt6;
   subtype SYSCTL_HFXTTRIM0_MAGR3_Field is HAL.UInt6;

   --  Use this TRIM value instead of hardwired
   type SYSCTL_HFXTTRIM0_MAGOVERRIDE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_HFXTTRIM0_MAGOVERRIDE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  DISABLE Kickstart
   type SYSCTL_HFXTTRIM0_KICKSTARTDISABLE_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_HFXTTRIM0_KICKSTARTDISABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  HFXT TRIM and Override
   type SYSCTL_HFXTTRIM0_Register is record
      --  Value for MAG TRIM Range 0
      MAGR0            : SYSCTL_HFXTTRIM0_MAGR0_Field := 16#0#;
      --  unspecified
      Reserved_6_7     : HAL.UInt2 := 16#0#;
      --  Value for MAG TRIM Range 1
      MAGR1            : SYSCTL_HFXTTRIM0_MAGR1_Field := 16#0#;
      --  unspecified
      Reserved_14_15   : HAL.UInt2 := 16#0#;
      --  Value for MAG TRIM Range 2
      MAGR2            : SYSCTL_HFXTTRIM0_MAGR2_Field := 16#0#;
      --  unspecified
      Reserved_22_23   : HAL.UInt2 := 16#0#;
      --  Value for MAG TRIM Range 3
      MAGR3            : SYSCTL_HFXTTRIM0_MAGR3_Field := 16#0#;
      --  Use this TRIM value instead of hardwired
      MAGOVERRIDE      : SYSCTL_HFXTTRIM0_MAGOVERRIDE_Field :=
                          MSPMC1104_SVD.SYSCTL.DISABLE;
      --  DISABLE Kickstart
      KICKSTARTDISABLE : SYSCTL_HFXTTRIM0_KICKSTARTDISABLE_Field :=
                          MSPMC1104_SVD.SYSCTL.FALSE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HFXTTRIM0_Register use record
      MAGR0            at 0 range 0 .. 5;
      Reserved_6_7     at 0 range 6 .. 7;
      MAGR1            at 0 range 8 .. 13;
      Reserved_14_15   at 0 range 14 .. 15;
      MAGR2            at 0 range 16 .. 21;
      Reserved_22_23   at 0 range 22 .. 23;
      MAGR3            at 0 range 24 .. 29;
      MAGOVERRIDE      at 0 range 30 .. 30;
      KICKSTARTDISABLE at 0 range 31 .. 31;
   end record;

   --  SYSCTL_HFXTTRIM1_DRVR array element
   subtype SYSCTL_HFXTTRIM1_DRVR_Element is HAL.UInt8;

   --  SYSCTL_HFXTTRIM1_DRVR array
   type SYSCTL_HFXTTRIM1_DRVR_Field_Array is array (0 .. 3)
     of SYSCTL_HFXTTRIM1_DRVR_Element
     with Component_Size => 8, Size => 32;

   --  HFXT TRIM and Override
   type SYSCTL_HFXTTRIM1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DRVR as a value
            Val : HAL.UInt32;
         when True =>
            --  DRVR as an array
            Arr : SYSCTL_HFXTTRIM1_DRVR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_HFXTTRIM1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Force Freq Search to ALWAYS be performed
   type SYSCTL_PLLTRIM0_SEARCHALWAYS_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_PLLTRIM0_SEARCHALWAYS_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Select Search Mode Algorithm
   type SYSCTL_PLLTRIM0_SEARCHALGO_Field is
     (ALG1,
      ALG2)
     with Size => 1;
   for SYSCTL_PLLTRIM0_SEARCHALGO_Field use
     (ALG1 => 0,
      ALG2 => 1);

   --  Search iterations to perform
   type SYSCTL_PLLTRIM0_SEARCHITER_Field is
     (OneIteration,
      TwoIteration,
      ThreeIteration,
      FourIteration)
     with Size => 2;
   for SYSCTL_PLLTRIM0_SEARCHITER_Field use
     (OneIteration => 0,
      TwoIteration => 1,
      ThreeIteration => 2,
      FourIteration => 3);

   subtype SYSCTL_PLLTRIM0_VCOJUMPTIME_Field is HAL.UInt4;
   subtype SYSCTL_PLLTRIM0_VCOSTARTTIME_Field is HAL.UInt6;
   subtype SYSCTL_PLLTRIM0_LPFVCOVTUNE_Field is HAL.UInt5;

   --  PLL TRIM and Override
   type SYSCTL_PLLTRIM0_Register is record
      --  Force Freq Search to ALWAYS be performed
      SEARCHALWAYS   : SYSCTL_PLLTRIM0_SEARCHALWAYS_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Select Search Mode Algorithm
      SEARCHALGO     : SYSCTL_PLLTRIM0_SEARCHALGO_Field :=
                        MSPMC1104_SVD.SYSCTL.ALG1;
      --  Search iterations to perform
      SEARCHITER     : SYSCTL_PLLTRIM0_SEARCHITER_Field :=
                        MSPMC1104_SVD.SYSCTL.OneIteration;
      --  VCO Freq Jump Settling Time
      VCOJUMPTIME    : SYSCTL_PLLTRIM0_VCOJUMPTIME_Field := 16#0#;
      --  VCO Start Settling Time in SYSOSC BASE clocks generally 32MHz - this
      --  comes before STARTTIME-STARTTIMELP
      VCOSTARTTIME   : SYSCTL_PLLTRIM0_VCOSTARTTIME_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  LPF VCOVTUNE NOM Value
      LPFVCOVTUNE    : SYSCTL_PLLTRIM0_LPFVCOVTUNE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PLLTRIM0_Register use record
      SEARCHALWAYS   at 0 range 0 .. 0;
      SEARCHALGO     at 0 range 1 .. 1;
      SEARCHITER     at 0 range 2 .. 3;
      VCOJUMPTIME    at 0 range 4 .. 7;
      VCOSTARTTIME   at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      LPFVCOVTUNE    at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SYSCTL_PLLTRIM1_IDACSTART_Field is HAL.UInt7;
   subtype SYSCTL_PLLTRIM1_IDACOFFSET_Field is HAL.UInt7;
   subtype SYSCTL_PLLTRIM1_VCOIDACOVRDVAL_Field is HAL.UInt7;

   --  VCO Feq IDAC mcode override enable
   type SYSCTL_PLLTRIM1_VCOIDACOVRDEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_PLLTRIM1_VCOIDACOVRDEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Exchange 1X and 2X clock paths - Experimental
   type SYSCTL_PLLTRIM1_EXCHG1X2X_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_PLLTRIM1_EXCHG1X2X_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  PLL TRIM and Override
   type SYSCTL_PLLTRIM1_Register is record
      --  IDAC Start Value
      IDACSTART      : SYSCTL_PLLTRIM1_IDACSTART_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  IDAC Offset Value
      IDACOFFSET     : SYSCTL_PLLTRIM1_IDACOFFSET_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  VCO Feq IDAC mcode override val
      VCOIDACOVRDVAL : SYSCTL_PLLTRIM1_VCOIDACOVRDVAL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  VCO Feq IDAC mcode override enable
      VCOIDACOVRDEN  : SYSCTL_PLLTRIM1_VCOIDACOVRDEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Exchange 1X and 2X clock paths - Experimental
      EXCHG1X2X      : SYSCTL_PLLTRIM1_EXCHG1X2X_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PLLTRIM1_Register use record
      IDACSTART      at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IDACOFFSET     at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VCOIDACOVRDVAL at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VCOIDACOVRDEN  at 0 range 24 .. 24;
      EXCHG1X2X      at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype SYSCTL_ADC12B0TRIM2_CDACUPPER_Field is HAL.UInt2;
   subtype SYSCTL_ADC12B0TRIM2_RESISTOR_Field is HAL.UInt2;
   subtype SYSCTL_ADC12B0TRIM2_OFFSET_Field is HAL.UInt12;
   subtype SYSCTL_ADC12B0TRIM2_LATCH_Field is HAL.UInt7;

   --  Bits 65..64 of CDAC, and other ADC12B0 always trims
   type SYSCTL_ADC12B0TRIM2_Register is record
      --  Bits 65..64 of CDAC
      CDACUPPER      : SYSCTL_ADC12B0TRIM2_CDACUPPER_Field := 16#0#;
      --  RESISTOR TRIM
      RESISTOR       : SYSCTL_ADC12B0TRIM2_RESISTOR_Field := 16#0#;
      --  OFFSET TRIM
      OFFSET         : SYSCTL_ADC12B0TRIM2_OFFSET_Field := 16#0#;
      --  LATCH TRIM
      LATCH          : SYSCTL_ADC12B0TRIM2_LATCH_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ADC12B0TRIM2_Register use record
      CDACUPPER      at 0 range 0 .. 1;
      RESISTOR       at 0 range 2 .. 3;
      OFFSET         at 0 range 4 .. 15;
      LATCH          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SYSCTL_ADC12B0TRIM3_PERIOD_Field is HAL.UInt4;
   subtype SYSCTL_ADC12B0TRIM3_OSC_Field is HAL.UInt6;

   --  Additional ADC trims for 12B 4MSPS
   type SYSCTL_ADC12B0TRIM3_Register is record
      --  Period
      PERIOD         : SYSCTL_ADC12B0TRIM3_PERIOD_Field := 16#8#;
      --  Oscillator
      OSC            : SYSCTL_ADC12B0TRIM3_OSC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ADC12B0TRIM3_Register use record
      PERIOD         at 0 range 0 .. 3;
      OSC            at 0 range 4 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCTL_ADC12B1TRIM2_CDACUPPER_Field is HAL.UInt2;
   subtype SYSCTL_ADC12B1TRIM2_RESISTOR_Field is HAL.UInt2;
   subtype SYSCTL_ADC12B1TRIM2_OFFSET_Field is HAL.UInt12;
   subtype SYSCTL_ADC12B1TRIM2_LATCH_Field is HAL.UInt7;

   --  Bits 65..64 of CDAC, and other ADC12B1 always trims
   type SYSCTL_ADC12B1TRIM2_Register is record
      --  Bits 65..64 of CDAC
      CDACUPPER      : SYSCTL_ADC12B1TRIM2_CDACUPPER_Field := 16#0#;
      --  RESISTOR TRIM
      RESISTOR       : SYSCTL_ADC12B1TRIM2_RESISTOR_Field := 16#0#;
      --  OFFSET TRIM
      OFFSET         : SYSCTL_ADC12B1TRIM2_OFFSET_Field := 16#0#;
      --  LATCH TRIM
      LATCH          : SYSCTL_ADC12B1TRIM2_LATCH_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ADC12B1TRIM2_Register use record
      CDACUPPER      at 0 range 0 .. 1;
      RESISTOR       at 0 range 2 .. 3;
      OFFSET         at 0 range 4 .. 15;
      LATCH          at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SYSCTL_ADC12B1TRIM3_PERIOD_Field is HAL.UInt4;
   subtype SYSCTL_ADC12B1TRIM3_OSC_Field is HAL.UInt6;

   --  Additional ADC trims for 12B 4MSPS
   type SYSCTL_ADC12B1TRIM3_Register is record
      --  Period
      PERIOD         : SYSCTL_ADC12B1TRIM3_PERIOD_Field := 16#8#;
      --  Oscillator
      OSC            : SYSCTL_ADC12B1TRIM3_OSC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ADC12B1TRIM3_Register use record
      PERIOD         at 0 range 0 .. 3;
      OSC            at 0 range 4 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCTL_DAC12B0TRIM_IBIAS_Field is HAL.UInt2;
   subtype SYSCTL_DAC12B0TRIM_OFFSETRNG_Field is HAL.UInt2;
   subtype SYSCTL_DAC12B0TRIM_CALIBCLKDIV_Field is HAL.UInt2;
   subtype SYSCTL_DAC12B0TRIM_RDYCNT_Field is HAL.UInt6;

   --  Trims for 12B DAC
   type SYSCTL_DAC12B0TRIM_Register is record
      --  IBIAS
      IBIAS          : SYSCTL_DAC12B0TRIM_IBIAS_Field := 16#0#;
      --  Offset Range
      OFFSETRNG      : SYSCTL_DAC12B0TRIM_OFFSETRNG_Field := 16#0#;
      --  Trim Enable Override
      TRIMENOVRD     : Boolean := False;
      --  Calibration Clock Divide Conrol
      CALIBCLKDIV    : SYSCTL_DAC12B0TRIM_CALIBCLKDIV_Field := 16#0#;
      --  SPARE bit
      SPARE          : Boolean := False;
      --  Ready Count in 1 usec resolution
      RDYCNT         : SYSCTL_DAC12B0TRIM_RDYCNT_Field := 16#7#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DAC12B0TRIM_Register use record
      IBIAS          at 0 range 0 .. 1;
      OFFSETRNG      at 0 range 2 .. 3;
      TRIMENOVRD     at 0 range 4 .. 4;
      CALIBCLKDIV    at 0 range 5 .. 6;
      SPARE          at 0 range 7 .. 7;
      RDYCNT         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype SYSCTL_OPAMP0TRIM_DATA_Field is HAL.UInt6;
   --  SYSCTL_OPAMP0TRIM_RDYGBW0GAIN array element
   subtype SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Element is HAL.UInt6;

   --  SYSCTL_OPAMP0TRIM_RDYGBW0GAIN array
   type SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Field_Array is array (1 .. 2)
     of SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Element
     with Component_Size => 6, Size => 12;

   --  Type definition for SYSCTL_OPAMP0TRIM_RDYGBW0GAIN
   type SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDYGBW0GAIN as a value
            Val : HAL.UInt12;
         when True =>
            --  RDYGBW0GAIN as an array
            Arr : SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  SYSCTL_OPAMP0TRIM_RDYGBW1GAIN array element
   subtype SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Element is HAL.UInt6;

   --  SYSCTL_OPAMP0TRIM_RDYGBW1GAIN array
   type SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Field_Array is array (1 .. 2)
     of SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Element
     with Component_Size => 6, Size => 12;

   --  Type definition for SYSCTL_OPAMP0TRIM_RDYGBW1GAIN
   type SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDYGBW1GAIN as a value
            Val : HAL.UInt12;
         when True =>
            --  RDYGBW1GAIN as an array
            Arr : SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 12;

   for SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Field use record
      Val at 0 range 0 .. 11;
      Arr at 0 range 0 .. 11;
   end record;

   --  Trims for Opamp0
   type SYSCTL_OPAMP0TRIM_Register is record
      --  Opamp0 Trim
      DATA         : SYSCTL_OPAMP0TRIM_DATA_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : HAL.UInt2 := 16#0#;
      --  Common Opamp Ready time (in usec) for GBW 0, GAIN 1
      RDYGBW0GAIN  : SYSCTL_OPAMP0TRIM_RDYGBW0GAIN_Field :=
                      (As_Array => False, Val => 16#9#);
      --  Common Opamp Ready time (in usec)for GBW 1, GAIN 1
      RDYGBW1GAIN  : SYSCTL_OPAMP0TRIM_RDYGBW1GAIN_Field :=
                      (As_Array => False, Val => 16#4#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_OPAMP0TRIM_Register use record
      DATA         at 0 range 0 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      RDYGBW0GAIN  at 0 range 8 .. 19;
      RDYGBW1GAIN  at 0 range 20 .. 31;
   end record;

   subtype SYSCTL_OPAMP1TRIM_DATA_Field is HAL.UInt6;

   --  Trims for Opamp1
   type SYSCTL_OPAMP1TRIM_Register is record
      --  Opamp1 Trim
      DATA          : SYSCTL_OPAMP1TRIM_DATA_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_OPAMP1TRIM_Register use record
      DATA          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SYSCTL_ANACOMPTRIM_RDYCNT_Field is HAL.UInt6;
   subtype SYSCTL_ANACOMPTRIM_DACMODE0RDYCNT_Field is HAL.UInt6;
   subtype SYSCTL_ANACOMPTRIM_DACMODE1RDYCNT_Field is HAL.UInt6;
   subtype SYSCTL_ANACOMPTRIM_TSRDYCNT_Field is HAL.UInt6;

   --  Common Trims for Anacomp
   type SYSCTL_ANACOMPTRIM_Register is record
      --  Ready Count in 1 usec resolution
      RDYCNT         : SYSCTL_ANACOMPTRIM_RDYCNT_Field := 16#F#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  DAC Ready Count in 250ns usec resolution
      DACMODE0RDYCNT : SYSCTL_ANACOMPTRIM_DACMODE0RDYCNT_Field := 16#3#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  DAC Ready Count in 1 usec resolution
      DACMODE1RDYCNT : SYSCTL_ANACOMPTRIM_DACMODE1RDYCNT_Field := 16#19#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  TempSense Ready Count in 1 usec resolution
      TSRDYCNT       : SYSCTL_ANACOMPTRIM_TSRDYCNT_Field := 16#19#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_ANACOMPTRIM_Register use record
      RDYCNT         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DACMODE0RDYCNT at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DACMODE1RDYCNT at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TSRDYCNT       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SYSCTL_TRNGTRIM_VLDO_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_VCMPUMP_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_LDOCURRENT_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_PULSERES_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_AMPCURRENT_Field is HAL.UInt3;
   subtype SYSCTL_TRNGTRIM_PULSEDELAY_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_V2ICURRENT_Field is HAL.UInt2;
   subtype SYSCTL_TRNGTRIM_IREF_Field is HAL.UInt3;
   subtype SYSCTL_TRNGTRIM_CPCURRENT_Field is HAL.UInt3;
   subtype SYSCTL_TRNGTRIM_VCMNOISE_Field is HAL.UInt2;

   --  Trim for TRNG
   type SYSCTL_TRNGTRIM_Register is record
      --  TRNG VLDO TRIM
      VLDO           : SYSCTL_TRNGTRIM_VLDO_Field := 16#0#;
      --  TRNG VCM Pump TRIM
      VCMPUMP        : SYSCTL_TRNGTRIM_VCMPUMP_Field := 16#2#;
      --  TRNG LDO Current TRIM
      LDOCURRENT     : SYSCTL_TRNGTRIM_LDOCURRENT_Field := 16#2#;
      --  TRNG Pulse Res TRIM
      PULSERES       : SYSCTL_TRNGTRIM_PULSERES_Field := 16#1#;
      --  TRNG Amp Current TRIM
      AMPCURRENT     : SYSCTL_TRNGTRIM_AMPCURRENT_Field := 16#7#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  TRNG Pulse Delay TRIM
      PULSEDELAY     : SYSCTL_TRNGTRIM_PULSEDELAY_Field := 16#1#;
      --  TRNG V2i Current TRIM
      V2ICURRENT     : SYSCTL_TRNGTRIM_V2ICURRENT_Field := 16#2#;
      --  TRNG IREF TRIM
      IREF           : SYSCTL_TRNGTRIM_IREF_Field := 16#2#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  TRNG CP Current TRIM
      CPCURRENT      : SYSCTL_TRNGTRIM_CPCURRENT_Field := 16#4#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  TRNG VCM Noise TRIM
      VCMNOISE       : SYSCTL_TRNGTRIM_VCMNOISE_Field := 16#2#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_TRNGTRIM_Register use record
      VLDO           at 0 range 0 .. 1;
      VCMPUMP        at 0 range 2 .. 3;
      LDOCURRENT     at 0 range 4 .. 5;
      PULSERES       at 0 range 6 .. 7;
      AMPCURRENT     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PULSEDELAY     at 0 range 12 .. 13;
      V2ICURRENT     at 0 range 14 .. 15;
      IREF           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CPCURRENT      at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VCMNOISE       at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype SYSCTL_MISCTRIM_AFEVREF_Field is HAL.UInt3;
   subtype SYSCTL_MISCTRIM_AFEVREFRDYCNT_Field is HAL.UInt6;
   subtype SYSCTL_MISCTRIM_ANAFLTFALL_Field is HAL.UInt5;
   subtype SYSCTL_MISCTRIM_ANAFLTRIS_Field is HAL.UInt5;

   --  Various Small TRIM
   type SYSCTL_MISCTRIM_Register is record
      --  VREF TRIM
      AFEVREF        : SYSCTL_MISCTRIM_AFEVREF_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  VREF Ready Count Nano is in 1 usec, Micro in 8 usec resolution
      AFEVREFRDYCNT  : SYSCTL_MISCTRIM_AFEVREFRDYCNT_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Analog GlitchFilter Falling Trim
      ANAFLTFALL     : SYSCTL_MISCTRIM_ANAFLTFALL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Analog GlitchFilter Rising Trim
      ANAFLTRIS      : SYSCTL_MISCTRIM_ANAFLTRIS_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_MISCTRIM_Register use record
      AFEVREF        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      AFEVREFRDYCNT  at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      ANAFLTFALL     at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ANAFLTRIS      at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYSCTL_PADEXIST1_DATA_Field is HAL.UInt28;

   --  PAD Exist for IOMUX
   type SYSCTL_PADEXIST1_Register is record
      --  Padexists Vector bits
      DATA           : SYSCTL_PADEXIST1_DATA_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_PADEXIST1_Register use record
      DATA           at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_wwdtlp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_wwdtlp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_rtc_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_rtc_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_i2c0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_i2c0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  SYSCTL_IPAVAIL0_i2c array
   type SYSCTL_IPAVAIL0_i2c_Field_Array is array (0 .. 1)
     of SYSCTL_IPAVAIL0_i2c0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCTL_IPAVAIL0_i2c
   type SYSCTL_IPAVAIL0_i2c_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  i2c as a value
            Val : HAL.UInt2;
         when True =>
            --  i2c as an array
            Arr : SYSCTL_IPAVAIL0_i2c_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCTL_IPAVAIL0_i2c_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_uartlp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_uartlp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gptimer16b0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gptimer16b0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  SYSCTL_IPAVAIL0_gptimer16b array
   type SYSCTL_IPAVAIL0_gptimer16b_Field_Array is array (0 .. 1)
     of SYSCTL_IPAVAIL0_gptimer16b0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCTL_IPAVAIL0_gptimer16b
   type SYSCTL_IPAVAIL0_gptimer16b_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  gptimer16b as a value
            Val : HAL.UInt2;
         when True =>
            --  gptimer16b as an array
            Arr : SYSCTL_IPAVAIL0_gptimer16b_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCTL_IPAVAIL0_gptimer16b_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_opamp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_opamp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_dac12b0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_dac12b0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_anacomp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_anacomp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_adc12b4msps0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_adc12b4msps0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gpio0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gpio0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_uartadvlp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_uartadvlp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_spi0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_spi0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_crc0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_crc0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gptimer16bqei0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gptimer16bqei0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_uartlp1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_uartlp1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_uart0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_uart0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_opamp1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_opamp1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_anacomp1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_anacomp1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  SYSCTL_IPAVAIL0_anacomp array
   type SYSCTL_IPAVAIL0_anacomp_Field_Array is array (1 .. 2)
     of SYSCTL_IPAVAIL0_anacomp1_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCTL_IPAVAIL0_anacomp
   type SYSCTL_IPAVAIL0_anacomp_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  anacomp as a value
            Val : HAL.UInt2;
         when True =>
            --  anacomp as an array
            Arr : SYSCTL_IPAVAIL0_anacomp_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCTL_IPAVAIL0_anacomp_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_adc12b4msps1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_adc12b4msps1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gpio1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gpio1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_spi1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_spi1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_trng_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_trng_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_aes_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_aes_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_wwdtlp1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_wwdtlp1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gptimer16bsp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gptimer16bsp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  SYSCTL_IPAVAIL0_gptimer16bsp array
   type SYSCTL_IPAVAIL0_gptimer16bsp_Field_Array is array (0 .. 2)
     of SYSCTL_IPAVAIL0_gptimer16bsp0_Field
     with Component_Size => 1, Size => 3;

   --  Type definition for SYSCTL_IPAVAIL0_gptimer16bsp
   type SYSCTL_IPAVAIL0_gptimer16bsp_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  gptimer16bsp as a value
            Val : HAL.UInt3;
         when True =>
            --  gptimer16bsp as an array
            Arr : SYSCTL_IPAVAIL0_gptimer16bsp_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SYSCTL_IPAVAIL0_gptimer16bsp_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_gptimer24bp0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_gptimer24bp0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL0_mcan0_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL0_mcan0_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  IP Available Paper Spin
   type SYSCTL_IPAVAIL0_Register is record
      --  Peripheral Instance Available
      wwdtlp0        : SYSCTL_IPAVAIL0_wwdtlp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      rtc            : SYSCTL_IPAVAIL0_rtc_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      i2c            : SYSCTL_IPAVAIL0_i2c_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Peripheral Instance Available
      uartlp0        : SYSCTL_IPAVAIL0_uartlp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      gptimer16b     : SYSCTL_IPAVAIL0_gptimer16b_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Peripheral Instance Available
      opamp0         : SYSCTL_IPAVAIL0_opamp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      dac12b0        : SYSCTL_IPAVAIL0_dac12b0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      anacomp0       : SYSCTL_IPAVAIL0_anacomp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      adc12b4msps0   : SYSCTL_IPAVAIL0_adc12b4msps0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      gpio0          : SYSCTL_IPAVAIL0_gpio0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      uartadvlp0     : SYSCTL_IPAVAIL0_uartadvlp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      spi0           : SYSCTL_IPAVAIL0_spi0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      crc0           : SYSCTL_IPAVAIL0_crc0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      gptimer16bqei0 : SYSCTL_IPAVAIL0_gptimer16bqei0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      uartlp1        : SYSCTL_IPAVAIL0_uartlp1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      uart0          : SYSCTL_IPAVAIL0_uart0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      opamp1         : SYSCTL_IPAVAIL0_opamp1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      anacomp        : SYSCTL_IPAVAIL0_anacomp_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Peripheral Instance Available
      adc12b4msps1   : SYSCTL_IPAVAIL0_adc12b4msps1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      gpio1          : SYSCTL_IPAVAIL0_gpio1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      spi1           : SYSCTL_IPAVAIL0_spi1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      trng           : SYSCTL_IPAVAIL0_trng_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      aes            : SYSCTL_IPAVAIL0_aes_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      wwdtlp1        : SYSCTL_IPAVAIL0_wwdtlp1_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      gptimer16bsp   : SYSCTL_IPAVAIL0_gptimer16bsp_Field :=
                        (As_Array => False, Val => 16#1#);
      --  Peripheral Instance Available
      gptimer24bp0   : SYSCTL_IPAVAIL0_gptimer24bp0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      mcan0          : SYSCTL_IPAVAIL0_mcan0_Field :=
                        MSPMC1104_SVD.SYSCTL.AVAILABLE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_IPAVAIL0_Register use record
      wwdtlp0        at 0 range 0 .. 0;
      rtc            at 0 range 1 .. 1;
      i2c            at 0 range 2 .. 3;
      uartlp0        at 0 range 4 .. 4;
      gptimer16b     at 0 range 5 .. 6;
      opamp0         at 0 range 7 .. 7;
      dac12b0        at 0 range 8 .. 8;
      anacomp0       at 0 range 9 .. 9;
      adc12b4msps0   at 0 range 10 .. 10;
      gpio0          at 0 range 11 .. 11;
      uartadvlp0     at 0 range 12 .. 12;
      spi0           at 0 range 13 .. 13;
      crc0           at 0 range 14 .. 14;
      gptimer16bqei0 at 0 range 15 .. 15;
      uartlp1        at 0 range 16 .. 16;
      uart0          at 0 range 17 .. 17;
      opamp1         at 0 range 18 .. 18;
      anacomp        at 0 range 19 .. 20;
      adc12b4msps1   at 0 range 21 .. 21;
      gpio1          at 0 range 22 .. 22;
      spi1           at 0 range 23 .. 23;
      trng           at 0 range 24 .. 24;
      aes            at 0 range 25 .. 25;
      wwdtlp1        at 0 range 26 .. 26;
      gptimer16bsp   at 0 range 27 .. 29;
      gptimer24bp0   at 0 range 30 .. 30;
      mcan0          at 0 range 31 .. 31;
   end record;

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL1_matcacl_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL1_matcacl_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL1_tmalite1_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL1_tmalite1_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  Peripheral Instance Available
   type SYSCTL_IPAVAIL1_vref_Field is
     (NOTAVAILABLE,
      AVAILABLE)
     with Size => 1;
   for SYSCTL_IPAVAIL1_vref_Field use
     (NOTAVAILABLE => 0,
      AVAILABLE => 1);

   --  IP Available Paper Spin
   type SYSCTL_IPAVAIL1_Register is record
      --  Peripheral Instance Available
      matcacl       : SYSCTL_IPAVAIL1_matcacl_Field :=
                       MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      tmalite1      : SYSCTL_IPAVAIL1_tmalite1_Field :=
                       MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  Peripheral Instance Available
      vref          : SYSCTL_IPAVAIL1_vref_Field :=
                       MSPMC1104_SVD.SYSCTL.AVAILABLE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_IPAVAIL1_Register use record
      matcacl       at 0 range 0 .. 0;
      tmalite1      at 0 range 1 .. 1;
      vref          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Functional Paper Spin Options
   type SYSCTL_FUNCPSPIN_Register is record
      --  MCAN FD enabled
      MCANFD        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FUNCPSPIN_Register use record
      MCANFD        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIMTURBO_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIMTURBO_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIMTURBO_RESFINE_Field is HAL.UInt4;

   --  SYSOSC Trim Values for R&amp;D Maximum target, likely 48MHz
   type SYSCTL_SYSOSCTRIMTURBO_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIMTURBO_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIMTURBO_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIMTURBO_RESFINE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIMTURBO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype SYSCTL_SYSOSCTRIMTURBOFCL_CAP_Field is HAL.UInt3;
   subtype SYSCTL_SYSOSCTRIMTURBOFCL_RESCOARSE_Field is HAL.UInt6;
   subtype SYSCTL_SYSOSCTRIMTURBOFCL_RESFINE_Field is HAL.UInt4;
   subtype SYSCTL_SYSOSCTRIMTURBOFCL_RDIV_Field is HAL.UInt9;

   --  SYSOSC Trim Values for TURBO target with FCL enabled
   type SYSCTL_SYSOSCTRIMTURBOFCL_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  CAP TRIM - Changes per frequency target
      CAP            : SYSCTL_SYSOSCTRIMTURBOFCL_CAP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESCOARSE      : SYSCTL_SYSOSCTRIMTURBOFCL_RESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Resister Coarse TRIM - Changes per frequency target
      RESFINE        : SYSCTL_SYSOSCTRIMTURBOFCL_RESFINE_Field := 16#0#;
      --  FCL RDIV TRIM - Changes per frequency target
      RDIV           : SYSCTL_SYSOSCTRIMTURBOFCL_RDIV_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SYSOSCTRIMTURBOFCL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      CAP            at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESCOARSE      at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RESFINE        at 0 range 16 .. 19;
      RDIV           at 0 range 20 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYSCTL_TRIMCRC_DATA_Field is HAL.UInt16;

   --  FINAL 16 bit CRC of the TRIM load
   type SYSCTL_TRIMCRC_Register is record
      --  final 16 bit CRC value
      DATA           : SYSCTL_TRIMCRC_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_TRIMCRC_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCTL_DFTSYSOSC_ATBEN_Field is HAL.UInt2;

   --  Enable DTB Structure
   type SYSCTL_DFTSYSOSC_DTBEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSOSC_DTBEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype SYSCTL_DFTSYSOSC_DBUGCTL_Field is HAL.UInt2;
   subtype SYSCTL_DFTSYSOSC_ATBCTL_Field is HAL.UInt4;

   --  DFT Control for HFXT
   type SYSCTL_DFTSYSOSC_Register is record
      --  Enable ATB Structure
      ATBEN          : SYSCTL_DFTSYSOSC_ATBEN_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Enable DTB Structure
      DTBEN          : SYSCTL_DFTSYSOSC_DTBEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Debug Control
      DBUGCTL        : SYSCTL_DFTSYSOSC_DBUGCTL_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  ATB Control
      ATBCTL         : SYSCTL_DFTSYSOSC_ATBCTL_Field := 16#0#;
      --  Override the FCL Enable into the hard macro
      FCLOVRRIDE     : Boolean := False;
      --  Override Value for the FCL Enable into the hard macro
      FCLVAL         : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTSYSOSC_Register use record
      ATBEN          at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DTBEN          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DBUGCTL        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      ATBCTL         at 0 range 12 .. 15;
      FCLOVRRIDE     at 0 range 16 .. 16;
      FCLVAL         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SYSCTL_DFTLFCLK_ATB_Field is HAL.UInt2;
   subtype SYSCTL_DFTLFCLK_DTBSEL_Field is HAL.UInt2;
   subtype SYSCTL_DFTLFCLK_ATBBUFSEL_Field is HAL.UInt3;
   subtype SYSCTL_DFTLFCLK_ATBUNBUFSEL_Field is HAL.UInt2;
   subtype SYSCTL_DFTLFCLK_DLYTESTCTL_Field is HAL.UInt4;

   --  DFT Control for LFCLK Hard Macro
   type SYSCTL_DFTLFCLK_Register is record
      --  Bit1: enables buffered path, Bit0 enables unbuffered path
      ATB            : SYSCTL_DFTLFCLK_ATB_Field := 16#0#;
      --  DTB Select at hard macro
      DTBSEL         : SYSCTL_DFTLFCLK_DTBSEL_Field := 16#0#;
      --  ATB Buffered Signal Select
      ATBBUFSEL      : SYSCTL_DFTLFCLK_ATBBUFSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ATB Buffered Signal Select
      ATBUNBUFSEL    : SYSCTL_DFTLFCLK_ATBUNBUFSEL_Field := 16#0#;
      --  DTB Select for Upper 4 bits of DTBO[11:0] of hard macro
      DTBSELUPPER    : Boolean := False;
      --  Delay Cell Trim Bypass
      DLYTRIMBP      : Boolean := False;
      --  Delay Cell Trim Enable
      DLYTRIMEN      : Boolean := False;
      --  Delay Cell Test Enable
      DLYTESTEN      : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Delay Cell Test CTL
      DLYTESTCTL     : SYSCTL_DFTLFCLK_DLYTESTCTL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTLFCLK_Register use record
      ATB            at 0 range 0 .. 1;
      DTBSEL         at 0 range 2 .. 3;
      ATBBUFSEL      at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ATBUNBUFSEL    at 0 range 8 .. 9;
      DTBSELUPPER    at 0 range 10 .. 10;
      DLYTRIMBP      at 0 range 11 .. 11;
      DLYTRIMEN      at 0 range 12 .. 12;
      DLYTESTEN      at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DLYTESTCTL     at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  BYPASS ALL Normal Control
   type SYSCTL_DFTVBSTCP_BYPASS_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_BYPASS_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  EN to Hard Macro
   type SYSCTL_DFTVBSTCP_BYPEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_BYPEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  CP Clock Select
   type SYSCTL_DFTVBSTCP_BYPCLKSEL_Field is
     (CLK4MHZ,
      CLK1MHZ,
      CLK32KHZ,
      DTBI0)
     with Size => 2;
   for SYSCTL_DFTVBSTCP_BYPCLKSEL_Field use
     (CLK4MHZ => 0,
      CLK1MHZ => 1,
      CLK32KHZ => 2,
      DTBI0 => 3);

   --  Multiply CP clk by 8
   type SYSCTL_DFTVBSTCP_BYPCLKMUL_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_BYPCLKMUL_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  No filter makes power up faster
   type SYSCTL_DFTVBSTCP_BYPFILTER_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_BYPFILTER_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  This must be enabled for ATB muxing to operate
   type SYSCTL_DFTVBSTCP_ATBEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_ATBEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Not conditioned with Bypass. Creates weak test output
   type SYSCTL_DFTVBSTCP_TESTOUT_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTVBSTCP_TESTOUT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  DFT for VBOOST Charge Pump
   type SYSCTL_DFTVBSTCP_Register is record
      --  BYPASS ALL Normal Control
      BYPASS         : SYSCTL_DFTVBSTCP_BYPASS_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  EN to Hard Macro
      BYPEN          : SYSCTL_DFTVBSTCP_BYPEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  CP Clock Select
      BYPCLKSEL      : SYSCTL_DFTVBSTCP_BYPCLKSEL_Field :=
                        MSPMC1104_SVD.SYSCTL.CLK4MHZ;
      --  Multiply CP clk by 8
      BYPCLKMUL      : SYSCTL_DFTVBSTCP_BYPCLKMUL_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  No filter makes power up faster
      BYPFILTER      : SYSCTL_DFTVBSTCP_BYPFILTER_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  This must be enabled for ATB muxing to operate
      ATBEN          : SYSCTL_DFTVBSTCP_ATBEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Not conditioned with Bypass. Creates weak test output
      TESTOUT        : SYSCTL_DFTVBSTCP_TESTOUT_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTVBSTCP_Register use record
      BYPASS         at 0 range 0 .. 0;
      BYPEN          at 0 range 1 .. 1;
      BYPCLKSEL      at 0 range 2 .. 3;
      BYPCLKMUL      at 0 range 4 .. 4;
      BYPFILTER      at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ATBEN          at 0 range 8 .. 8;
      TESTOUT        at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Enable ATB Structure
   type SYSCTL_DFTHFXT_ATB_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTHFXT_ATB_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype SYSCTL_DFTHFXT_ATBBUFSEL_Field is HAL.UInt3;
   subtype SYSCTL_DFTHFXT_ATBUNBUFSEL_Field is HAL.UInt3;

   --  Override outputs of HFCLK FSM
   type SYSCTL_DFTHFXT_FSMOVERRIDE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTHFXT_FSMOVERRIDE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Use External Pin as High Frequency Oscillator Source(HFCLK)
   type SYSCTL_DFTHFXT_HFCLKSEL_Field is
     (HFXT,
      EXTHF)
     with Size => 1;
   for SYSCTL_DFTHFXT_HFCLKSEL_Field use
     (HFXT => 0,
      EXTHF => 1);

   --  Override value for HFXT ENABLE to Hard Macro
   type SYSCTL_DFTHFXT_HFXTEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTHFXT_HFXTEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Override Turn HFCLK related ICGs ON qualified with HFCLKSEL
   type SYSCTL_DFTHFXT_ICG_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTHFXT_ICG_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Turn off slicer
   type SYSCTL_DFTHFXT_SLICERDISABLE_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_DFTHFXT_SLICERDISABLE_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Isolate HFXT analog from 3V PAD
   type SYSCTL_DFTHFXT_SUP2ULLISO_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_DFTHFXT_SUP2ULLISO_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Use DTBI[0] as the HFCLK output
   type SYSCTL_DFTHFXT_USEDTBI0_Field is
     (FALSE,
      TRUE)
     with Size => 1;
   for SYSCTL_DFTHFXT_USEDTBI0_Field use
     (FALSE => 0,
      TRUE => 1);

   --  DFT Control for HFXT
   type SYSCTL_DFTHFXT_Register is record
      --  Enable ATB Structure
      ATB            : SYSCTL_DFTHFXT_ATB_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  ATB Buffered Signal Select
      ATBBUFSEL      : SYSCTL_DFTHFXT_ATBBUFSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ATB Buffered Signal Select
      ATBUNBUFSEL    : SYSCTL_DFTHFXT_ATBUNBUFSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Override outputs of HFCLK FSM
      FSMOVERRIDE    : SYSCTL_DFTHFXT_FSMOVERRIDE_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Use External Pin as High Frequency Oscillator Source(HFCLK)
      HFCLKSEL       : SYSCTL_DFTHFXT_HFCLKSEL_Field :=
                        MSPMC1104_SVD.SYSCTL.HFXT;
      --  Override value for HFXT ENABLE to Hard Macro
      HFXTEN         : SYSCTL_DFTHFXT_HFXTEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Override Turn HFCLK related ICGs ON qualified with HFCLKSEL
      ICG            : SYSCTL_DFTHFXT_ICG_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Turn off slicer
      SLICERDISABLE  : SYSCTL_DFTHFXT_SLICERDISABLE_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  Isolate HFXT analog from 3V PAD
      SUP2ULLISO     : SYSCTL_DFTHFXT_SUP2ULLISO_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  Use DTBI[0] as the HFCLK output
      USEDTBI0       : SYSCTL_DFTHFXT_USEDTBI0_Field :=
                        MSPMC1104_SVD.SYSCTL.FALSE;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTHFXT_Register use record
      ATB            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ATBBUFSEL      at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ATBUNBUFSEL    at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      FSMOVERRIDE    at 0 range 16 .. 16;
      HFCLKSEL       at 0 range 17 .. 17;
      HFXTEN         at 0 range 18 .. 18;
      ICG            at 0 range 19 .. 19;
      SLICERDISABLE  at 0 range 20 .. 20;
      SUP2ULLISO     at 0 range 21 .. 21;
      USEDTBI0       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Enable ATB Structure
   type SYSCTL_DFTSYSPLL0_ATB_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL0_ATB_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable DTB Structure
   type SYSCTL_DFTSYSPLL0_DTB_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL0_DTB_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype SYSCTL_DFTSYSPLL0_ATBBUFSEL_Field is HAL.UInt3;
   subtype SYSCTL_DFTSYSPLL0_ATBUNBUFSEL_Field is HAL.UInt3;
   subtype SYSCTL_DFTSYSPLL0_DTBSEL_Field is HAL.UInt3;

   --  Override Enable For VCO Freq Idac Code
   type SYSCTL_DFTSYSPLL0_VCOIDACOVERRIDE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL0_VCOIDACOVERRIDE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   subtype SYSCTL_DFTSYSPLL0_VCOIDACVAL_Field is HAL.UInt6;

   --  DFT Control for SYSPLL
   type SYSCTL_DFTSYSPLL0_Register is record
      --  Enable ATB Structure
      ATB             : SYSCTL_DFTSYSPLL0_ATB_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Enable DTB Structure
      DTB             : SYSCTL_DFTSYSPLL0_DTB_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  ATB Buffered Signal Select
      ATBBUFSEL       : SYSCTL_DFTSYSPLL0_ATBBUFSEL_Field := 16#0#;
      --  unspecified
      Reserved_7_7    : HAL.Bit := 16#0#;
      --  ATB UnBuffered Signal Select
      ATBUNBUFSEL     : SYSCTL_DFTSYSPLL0_ATBUNBUFSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11  : HAL.Bit := 16#0#;
      --  DTB Signal Select
      DTBSEL          : SYSCTL_DFTSYSPLL0_DTBSEL_Field := 16#0#;
      --  unspecified
      Reserved_15_15  : HAL.Bit := 16#0#;
      --  Override Enable For VCO Freq Idac Code
      VCOIDACOVERRIDE : SYSCTL_DFTSYSPLL0_VCOIDACOVERRIDE_Field :=
                         MSPMC1104_SVD.SYSCTL.DISABLE;
      --  unspecified
      Reserved_17_19  : HAL.UInt3 := 16#0#;
      --  Override Value For VCO Freq Idac Code
      VCOIDACVAL      : SYSCTL_DFTSYSPLL0_VCOIDACVAL_Field := 16#0#;
      --  unspecified
      Reserved_26_31  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTSYSPLL0_Register use record
      ATB             at 0 range 0 .. 0;
      DTB             at 0 range 1 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      ATBBUFSEL       at 0 range 4 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      ATBUNBUFSEL     at 0 range 8 .. 10;
      Reserved_11_11  at 0 range 11 .. 11;
      DTBSEL          at 0 range 12 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
      VCOIDACOVERRIDE at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      VCOIDACVAL      at 0 range 20 .. 25;
      Reserved_26_31  at 0 range 26 .. 31;
   end record;

   --  Override outputs of PLL FSM
   type SYSCTL_DFTSYSPLL1_FSMOVERRIDE_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_FSMOVERRIDE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Override value for PLL ENABLE to PLL
   type SYSCTL_DFTSYSPLL1_PLLEN_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_PLLEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Assert ONDOMAIN RST to the hard macro
   type SYSCTL_DFTSYSPLL1_ONDOMAINRST_Field is
     (DEASSERT,
      ASSERT)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_ONDOMAINRST_Field use
     (DEASSERT => 0,
      ASSERT => 1);

   --  Assert RST PD to the hard macro
   type SYSCTL_DFTSYSPLL1_PDRST_Field is
     (DEASSERT,
      ASSERT)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_PDRST_Field use
     (DEASSERT => 0,
      ASSERT => 1);

   --  Assert ISO PD to the hard macro
   type SYSCTL_DFTSYSPLL1_PDISO_Field is
     (DEASSERT,
      ASSERT)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_PDISO_Field use
     (DEASSERT => 0,
      ASSERT => 1);

   --  Override value to turn PLL ICGCLK0 ON
   type SYSCTL_DFTSYSPLL1_ICG0_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_ICG0_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  SYSCTL_DFTSYSPLL1_ICG array
   type SYSCTL_DFTSYSPLL1_ICG_Field_Array is array (0 .. 1)
     of SYSCTL_DFTSYSPLL1_ICG0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCTL_DFTSYSPLL1_ICG
   type SYSCTL_DFTSYSPLL1_ICG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICG as a value
            Val : HAL.UInt2;
         when True =>
            --  ICG as an array
            Arr : SYSCTL_DFTSYSPLL1_ICG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCTL_DFTSYSPLL1_ICG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Override value to turn PLL ICGCLK2X ON
   type SYSCTL_DFTSYSPLL1_ICG2X_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_DFTSYSPLL1_ICG2X_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Override value to select Ref Clk
   type SYSCTL_DFTSYSPLL1_REFCLKSEL_Field is
     (SYSOSC,
      HFCLK,
      DTBI0)
     with Size => 2;
   for SYSCTL_DFTSYSPLL1_REFCLKSEL_Field use
     (SYSOSC => 0,
      HFCLK => 1,
      DTBI0 => 2);

   --  DFT Control for SYSPLL
   type SYSCTL_DFTSYSPLL1_Register is record
      --  Override outputs of PLL FSM
      FSMOVERRIDE    : SYSCTL_DFTSYSPLL1_FSMOVERRIDE_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Override value for PLL ENABLE to PLL
      PLLEN          : SYSCTL_DFTSYSPLL1_PLLEN_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Assert ONDOMAIN RST to the hard macro
      ONDOMAINRST    : SYSCTL_DFTSYSPLL1_ONDOMAINRST_Field :=
                        MSPMC1104_SVD.SYSCTL.DEASSERT;
      --  Assert RST PD to the hard macro
      PDRST          : SYSCTL_DFTSYSPLL1_PDRST_Field :=
                        MSPMC1104_SVD.SYSCTL.DEASSERT;
      --  Assert ISO PD to the hard macro
      PDISO          : SYSCTL_DFTSYSPLL1_PDISO_Field :=
                        MSPMC1104_SVD.SYSCTL.DEASSERT;
      --  Override value to turn PLL ICGCLK0 ON
      ICG            : SYSCTL_DFTSYSPLL1_ICG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Override value to turn PLL ICGCLK2X ON
      ICG2X          : SYSCTL_DFTSYSPLL1_ICG2X_Field :=
                        MSPMC1104_SVD.SYSCTL.DISABLE;
      --  Override value to select Ref Clk
      REFCLKSEL      : SYSCTL_DFTSYSPLL1_REFCLKSEL_Field :=
                        MSPMC1104_SVD.SYSCTL.SYSOSC;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTSYSPLL1_Register use record
      FSMOVERRIDE    at 0 range 0 .. 0;
      PLLEN          at 0 range 1 .. 1;
      ONDOMAINRST    at 0 range 2 .. 2;
      PDRST          at 0 range 3 .. 3;
      PDISO          at 0 range 4 .. 4;
      ICG            at 0 range 5 .. 6;
      ICG2X          at 0 range 7 .. 7;
      REFCLKSEL      at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCTL_DFTPMUATB_BUFFERMDSEL_Field is HAL.UInt3;
   subtype SYSCTL_DFTPMUATB_BUFFERFB_Field is HAL.UInt2;

   --  DFT Control for PMU ATB
   type SYSCTL_DFTPMUATB_Register is record
      --  ATB Buffered Output Enable
      BUFEN          : Boolean := False;
      --  ATB UnBuffered Output Enable
      UBUFEN         : Boolean := False;
      SENSEEN        : Boolean := False;
      SENSEMUXSEL    : Boolean := False;
      BYPASSSWEN     : Boolean := False;
      BUFFEREN       : Boolean := False;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      BUFFERMDSEL    : SYSCTL_DFTPMUATB_BUFFERMDSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      BUFFERFB       : SYSCTL_DFTPMUATB_BUFFERFB_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      BUFMUXSEL      : Boolean := False;
      UBUFMUXSEL     : Boolean := False;
      UBUF2BUFEN     : Boolean := False;
      UBUF2BUFPADEN  : Boolean := False;
      BUFOUTSWEN     : Boolean := False;
      UNBUFOUTSWEN   : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTPMUATB_Register use record
      BUFEN          at 0 range 0 .. 0;
      UBUFEN         at 0 range 1 .. 1;
      SENSEEN        at 0 range 2 .. 2;
      SENSEMUXSEL    at 0 range 3 .. 3;
      BYPASSSWEN     at 0 range 4 .. 4;
      BUFFEREN       at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BUFFERMDSEL    at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      BUFFERFB       at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BUFMUXSEL      at 0 range 16 .. 16;
      UBUFMUXSEL     at 0 range 17 .. 17;
      UBUF2BUFEN     at 0 range 18 .. 18;
      UBUF2BUFPADEN  at 0 range 19 .. 19;
      BUFOUTSWEN     at 0 range 20 .. 20;
      UNBUFOUTSWEN   at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SYSCTL_DFTPMUCTL_PMUBUFCTRL_Field is HAL.UInt4;
   subtype SYSCTL_DFTPMUCTL_PMUUBUFCTRL_Field is HAL.UInt4;
   subtype SYSCTL_DFTPMUCTL_DTBOSEL_Field is HAL.UInt3;

   --  DFT Control for PMU CTL
   type SYSCTL_DFTPMUCTL_Register is record
      --  ATB Buffered Output Enable
      PMUBUFEN       : Boolean := False;
      --  ATB UnBuffered Output Enable
      PMUUBUFEN      : Boolean := False;
      PMUBUFCTRL     : SYSCTL_DFTPMUCTL_PMUBUFCTRL_Field := 16#0#;
      PMUUBUFCTRL    : SYSCTL_DFTPMUCTL_PMUUBUFCTRL_Field := 16#0#;
      REFCHOPCFG     : Boolean := False;
      REFEXTBGSEL    : Boolean := False;
      BORRDIVPD      : Boolean := False;
      BORCTOPFLIP    : Boolean := False;
      BORDISHYS      : Boolean := False;
      BORDISRST      : Boolean := False;
      LDODISPD       : Boolean := False;
      LDOENCLAMP     : Boolean := False;
      LDODISLDO      : Boolean := False;
      LDOCOMPEN      : Boolean := False;
      DFTPORREQ      : Boolean := False;
      PARBYPASS      : Boolean := False;
      PARDIS         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      DTBOSEL        : SYSCTL_DFTPMUCTL_DTBOSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTPMUCTL_Register use record
      PMUBUFEN       at 0 range 0 .. 0;
      PMUUBUFEN      at 0 range 1 .. 1;
      PMUBUFCTRL     at 0 range 2 .. 5;
      PMUUBUFCTRL    at 0 range 6 .. 9;
      REFCHOPCFG     at 0 range 10 .. 10;
      REFEXTBGSEL    at 0 range 11 .. 11;
      BORRDIVPD      at 0 range 12 .. 12;
      BORCTOPFLIP    at 0 range 13 .. 13;
      BORDISHYS      at 0 range 14 .. 14;
      BORDISRST      at 0 range 15 .. 15;
      LDODISPD       at 0 range 16 .. 16;
      LDOENCLAMP     at 0 range 17 .. 17;
      LDODISLDO      at 0 range 18 .. 18;
      LDOCOMPEN      at 0 range 19 .. 19;
      DFTPORREQ      at 0 range 20 .. 20;
      PARBYPASS      at 0 range 21 .. 21;
      PARDIS         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DTBOSEL        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  DFT Control for PMU LPM
   type SYSCTL_DFTPMULPM_Register is record
      OVRDEN        : Boolean := False;
      MODE          : Boolean := False;
      SMPL          : Boolean := False;
      SMPLEN        : Boolean := False;
      LOADRNG       : Boolean := False;
      CPEN          : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTPMULPM_Register use record
      OVRDEN        at 0 range 0 .. 0;
      MODE          at 0 range 1 .. 1;
      SMPL          at 0 range 2 .. 2;
      SMPLEN        at 0 range 3 .. 3;
      LOADRNG       at 0 range 4 .. 4;
      CPEN          at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SYSCTL_DFTPMCU_DTBOSEL_Field is HAL.UInt4;
   subtype SYSCTL_DFTPMCU_EXTCLKSEL_Field is HAL.UInt4;

   --  Overall PMCU DFT Controls
   type SYSCTL_DFTPMCU_Register is record
      --  Major DTB Output Select
      DTBOSEL       : SYSCTL_DFTPMCU_DTBOSEL_Field := 16#0#;
      --  External Clock DFT Selections
      EXTCLKSEL     : SYSCTL_DFTPMCU_EXTCLKSEL_Field := 16#0#;
      --  External Clock Override for DFT SEL
      EXTCLKOVRD    : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_DFTPMCU_Register use record
      DTBOSEL       at 0 range 0 .. 3;
      EXTCLKSEL     at 0 range 4 .. 7;
      EXTCLKOVRD    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SYSCTL_FWEPROTMAIN_DATA_Field is HAL.UInt16;

   --  1 Sector Write-Erase per bit starting at address 0x0 of flash
   type SYSCTL_FWEPROTMAIN_Register is record
      --  1 Sector Write Erase protection 1: prohibits write-erase, 0: allows
      DATA           : SYSCTL_FWEPROTMAIN_DATA_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FWEPROTMAIN_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCTL_FRWPROTMAINDATA_DATA_Field is HAL.UInt8;

   --  1KB sector based RW protection of first 4KB of data bank
   type SYSCTL_FRWPROTMAINDATA_Register is record
      --  Each 1KB is configured for protection with 2 bits: 00 - No protection
      --  - Both RW allowed 01 - Write protection - R only, no W 10 -
      --  Read-write protection - No R, No W 11 - Not used (No R, only W does
      --  not make sense)
      DATA          : SYSCTL_FRWPROTMAINDATA_DATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FRWPROTMAINDATA_Register use record
      DATA          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SYSCTL_FRXPROTMAIN_START_RSVD_Field is HAL.UInt6;
   subtype SYSCTL_FRXPROTMAIN_START_ADDR_Field is HAL.UInt26;

   --  Customer programmable RX firewall. Start and End are specified at 64B
   --  sector granularity. If Start == End, then one sector is RX protected If
   --  End == Start + 1, then two sectors are RX protected. And so on. If End
   --  &lt; Start, then no address range is RX protected. HW will not check
   --  this. Since the start and end addresses are sector granularity, we do
   --  not need to store the 6 LSBs. Assuming a max protected range of 256KB,
   --  we will need only 12 higher order bits to be stored.
   type SYSCTL_FRXPROTMAIN_START_Register is record
      RSVD : SYSCTL_FRXPROTMAIN_START_RSVD_Field := 16#0#;
      --  Higher order bits of start of RX protected MAIN flash bank address
      --  (ignoring least 6 bits that are sector-specific).
      ADDR : SYSCTL_FRXPROTMAIN_START_ADDR_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FRXPROTMAIN_START_Register use record
      RSVD at 0 range 0 .. 5;
      ADDR at 0 range 6 .. 31;
   end record;

   subtype SYSCTL_FRXPROTMAIN_END_RSVD_Field is HAL.UInt6;
   subtype SYSCTL_FRXPROTMAIN_END_ADDR_Field is HAL.UInt26;

   --  Customer programmable RX firewall. Start and End are specified at 64B
   --  sector granularity. If Start == End, then one sector is RX protected If
   --  End == Start + 1, then two sectors are RX protected. And so on. If End
   --  &lt; Start, then no address range is RX protected. HW will not check
   --  this. Since the start and end addresses are sector granularity, we do
   --  not need to store the 10 LSBs. Assuming a max protected range of 256KB,
   --  we will need only 12 higher order bits to be stored.
   type SYSCTL_FRXPROTMAIN_END_Register is record
      RSVD : SYSCTL_FRXPROTMAIN_END_RSVD_Field := 16#1#;
      --  Higher order bits of start of RX protected MAIN flash bank address
      --  (ignoring least 6 bits that are sector-specific).
      ADDR : SYSCTL_FRXPROTMAIN_END_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FRXPROTMAIN_END_Register use record
      RSVD at 0 range 0 .. 5;
      ADDR at 0 range 6 .. 31;
   end record;

   subtype SYSCTL_FIPPROT_START_RSVD_Field is HAL.UInt6;
   subtype SYSCTL_FIPPROT_START_ADDR_Field is HAL.UInt26;

   --  Customer programmable IP prorection firewall. Start and End are
   --  specified at 1KB sector granularity. If Start == End, then one sector is
   --  IP protected If End == Start + 1, then two sectors are IP protected. And
   --  so on. If End &lt; Start, then no address range is IP protected. Since
   --  the start and end addresses are sector granularity, we do not need to
   --  store the 10 LSBs. Assuming a max protected range of 256KB, we will need
   --  only 12 higher order bits to be stored.
   type SYSCTL_FIPPROT_START_Register is record
      RSVD : SYSCTL_FIPPROT_START_RSVD_Field := 16#1#;
      --  Higher order bits of start of RX protected MAIN flash bank address
      --  (ignoring least 6 bits that are sector-specific).
      ADDR : SYSCTL_FIPPROT_START_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FIPPROT_START_Register use record
      RSVD at 0 range 0 .. 5;
      ADDR at 0 range 6 .. 31;
   end record;

   subtype SYSCTL_FIPPROT_END_RSVD_Field is HAL.UInt6;
   subtype SYSCTL_FIPPROT_END_ADDR_Field is HAL.UInt26;

   --  Customer programmable IP prorection firewall. Start and End are
   --  specified at 64B sector granularity. If Start == End, then one sector is
   --  IP protected If End == Start + 1, then two sectors are IP protected. And
   --  so on. If End &lt; Start, then no address range is IP protected. Since
   --  the start and end addresses are sector granularity, we do not need to
   --  store the 10 LSBs. Assuming a max protected range of 256KB, we will need
   --  only 12 higher order bits to be stored.
   type SYSCTL_FIPPROT_END_Register is record
      RSVD : SYSCTL_FIPPROT_END_RSVD_Field := 16#1#;
      --  Higher order bits of start of RX protected MAIN flash bank address
      --  (ignoring least 6 bits that are sector-specific).
      ADDR : SYSCTL_FIPPROT_END_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FIPPROT_END_Register use record
      RSVD at 0 range 0 .. 5;
      ADDR at 0 range 6 .. 31;
   end record;

   --  Flash Bank Swap Policy Intent. CSC can configure this to indicate SWAP.
   --  By default, at BOOTRST, the system comes up as NO_SWAP. BOOTCODE could
   --  set the policy to SWAP (via a shadowed bit in TRIMCFG). If set to SWAP,
   --  then CSC can not un-set it. Writing 0 has no effect. However, it is
   --  possible that BOOTCODE did not set the POLICY to 1, and CSC sets it to
   --  1.
   type SYSCTL_FLBANKSWP_POLICY_POLICY_Field is
     (--  No Effect
      NO_EFFECT,
      --  Bank Swap
      SWAP)
     with Size => 1;
   for SYSCTL_FLBANKSWP_POLICY_POLICY_Field use
     (NO_EFFECT => 0,
      SWAP => 1);

   --  Bank Swap Policy
   type SYSCTL_FLBANKSWP_POLICY_Register is record
      --  Write-only. Flash Bank Swap Policy Intent. CSC can configure this to
      --  indicate SWAP. By default, at BOOTRST, the system comes up as
      --  NO_SWAP. BOOTCODE could set the policy to SWAP (via a shadowed bit in
      --  TRIMCFG). If set to SWAP, then CSC can not un-set it. Writing 0 has
      --  no effect. However, it is possible that BOOTCODE did not set the
      --  POLICY to 1, and CSC sets it to 1.
      POLICY        : SYSCTL_FLBANKSWP_POLICY_POLICY_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FLBANKSWP_POLICY_Register use record
      POLICY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  1: SWAP upper banks to lower 0: Normal Memory Map
   type SYSCTL_SECCFG_FLBANKSWAP_USEUPPER_Field is
     (DISABLE,
      ENABLE)
     with Size => 1;
   for SYSCTL_SECCFG_FLBANKSWAP_USEUPPER_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Flash Bank Swap
   type SYSCTL_SECCFG_FLBANKSWAP_Register is record
      --  Read-only. 1: SWAP upper banks to lower 0: Normal Memory Map
      USEUPPER      : SYSCTL_SECCFG_FLBANKSWAP_USEUPPER_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SECCFG_FLBANKSWAP_Register use record
      USEUPPER      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   type SYSCTL_FWENABLE_FLRXPROT_Field is
     (NO_EFFECT,
      ENABLE)
     with Size => 1;
   for SYSCTL_FWENABLE_FLRXPROT_Field use
     (NO_EFFECT => 0,
      ENABLE => 1);

   type SYSCTL_FWENABLE_FLIPPROT_Field is
     (NO_EFFECT,
      ENABLE)
     with Size => 1;
   for SYSCTL_FWENABLE_FLIPPROT_Field use
     (NO_EFFECT => 0,
      ENABLE => 1);

   --  SRAM Boundary Lock set 0 -- > Leave Boundary MMR writeable post INITDONE
   --  1 -- > Lock Boundary from being written post INITDONE
   type SYSCTL_FWENABLE_SRAMBOUNDARY_LOCK_Field is
     (NO_EFFECT,
      ENABLE)
     with Size => 1;
   for SYSCTL_FWENABLE_SRAMBOUNDARY_LOCK_Field use
     (NO_EFFECT => 0,
      ENABLE => 1);

   --  Firewall lock enable register
   type SYSCTL_FWENABLE_Register is record
      --  unspecified
      Reserved_0_3      : HAL.UInt4 := 16#0#;
      --  Write-only.
      FLRXPROT          : SYSCTL_FWENABLE_FLRXPROT_Field :=
                           MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_5_5      : HAL.Bit := 16#0#;
      --  Write-only.
      FLIPPROT          : SYSCTL_FWENABLE_FLIPPROT_Field :=
                           MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_7_7      : HAL.Bit := 16#0#;
      --  Write-only. SRAM Boundary Lock set 0 -- > Leave Boundary MMR
      --  writeable post INITDONE 1 -- > Lock Boundary from being written post
      --  INITDONE
      SRAMBOUNDARY_LOCK : SYSCTL_FWENABLE_SRAMBOUNDARY_LOCK_Field :=
                           MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_9_31     : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_FWENABLE_Register use record
      Reserved_0_3      at 0 range 0 .. 3;
      FLRXPROT          at 0 range 4 .. 4;
      Reserved_5_5      at 0 range 5 .. 5;
      FLIPPROT          at 0 range 6 .. 6;
      Reserved_7_7      at 0 range 7 .. 7;
      SRAMBOUNDARY_LOCK at 0 range 8 .. 8;
      Reserved_9_31     at 0 range 9 .. 31;
   end record;

   type SYSCTL_SECSTAT_INITDONE_Field is
     (--  INIT is not yet done
      NO,
      --  INIT is Done
      YES)
     with Size => 1;
   for SYSCTL_SECSTAT_INITDONE_Field use
     (NO => 0,
      YES => 1);

   type SYSCTL_SECSTAT_CSC_EXISTS_Field is
     (--  No, system does not have a CSC
      NO,
      --  System has a CSC.
      YES)
     with Size => 1;
   for SYSCTL_SECSTAT_CSC_EXISTS_Field use
     (NO => 0,
      YES => 1);

   --  Firewall validity. 0 -- > not valid, 1 -- > valid
   type SYSCTL_SECSTAT_FLRXPROT_VALID_Field is
     (DISABLED,
      ENABLED)
     with Size => 1;
   for SYSCTL_SECSTAT_FLRXPROT_VALID_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Firewall validity. 0 -- > not valid, 1 -- > valid
   type SYSCTL_SECSTAT_FLIPPROT_VALID_Field is
     (DISABLED,
      ENABLED)
     with Size => 1;
   for SYSCTL_SECSTAT_FLIPPROT_VALID_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  SRAM Boundary Lock. 0 -- > not locked, 1 -- > locked
   type SYSCTL_SECSTAT_SRBNDRY_LOCK_Field is
     (DISABLED,
      ENABLED)
     with Size => 1;
   for SYSCTL_SECSTAT_SRBNDRY_LOCK_Field use
     (DISABLED => 0,
      ENABLED => 1);

   type SYSCTL_SECSTAT_FLBANK_SWAP_Field is
     (--  System has a CSC.
      YES,
      --  No, system does not have a CSC
      NO)
     with Size => 1;
   for SYSCTL_SECSTAT_FLBANK_SWAP_Field use
     (YES => 1,
      NO => 2);

   --  Firewall status register
   type SYSCTL_SECSTAT_Register is record
      --  Read-only.
      INITDONE       : SYSCTL_SECSTAT_INITDONE_Field;
      --  unspecified
      Reserved_1_1   : HAL.Bit;
      --  Read-only.
      CSC_EXISTS     : SYSCTL_SECSTAT_CSC_EXISTS_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Firewall validity. 0 -- > not valid, 1 -- > valid
      FLRXPROT_VALID : SYSCTL_SECSTAT_FLRXPROT_VALID_Field;
      --  unspecified
      Reserved_5_5   : HAL.Bit;
      --  Read-only. Firewall validity. 0 -- > not valid, 1 -- > valid
      FLIPPROT_VALID : SYSCTL_SECSTAT_FLIPPROT_VALID_Field;
      --  unspecified
      Reserved_7_7   : HAL.Bit;
      --  Read-only. SRAM Boundary Lock. 0 -- > not locked, 1 -- > locked
      SRBNDRY_LOCK   : SYSCTL_SECSTAT_SRBNDRY_LOCK_Field;
      --  unspecified
      Reserved_9_9   : HAL.Bit;
      --  Read-only.
      FLBANK_SWAP    : SYSCTL_SECSTAT_FLBANK_SWAP_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_SECSTAT_Register use record
      INITDONE       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CSC_EXISTS     at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FLRXPROT_VALID at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      FLIPPROT_VALID at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRBNDRY_LOCK   at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      FLBANK_SWAP    at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype SYSCTL_APSTART_ADDR_Field is HAL.UInt20;

   --  Application Reset Handler address
   type SYSCTL_APSTART_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      ADDR           : SYSCTL_APSTART_ADDR_Field := 16#1#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_APSTART_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ADDR           at 0 range 2 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype SYSCTL_APPSP_ADDR_Field is HAL.UInt20;

   --  Application Stack Pointer
   type SYSCTL_APPSP_Register is record
      ADDR           : SYSCTL_APPSP_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_APPSP_Register use record
      ADDR           at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Customer Startup Code writes 3 for PASS, No timeout enforcement.
   type SYSCTL_INITDONE_PASS_Field is
     (NO_EFFECT,
      --  BOOTCODE PASS
      TRUE)
     with Size => 2;
   for SYSCTL_INITDONE_PASS_Field use
     (NO_EFFECT => 0,
      TRUE => 3);

   --  INITDONE PASS
   type SYSCTL_INITDONE_Register is record
      --  Write-only. Customer Startup Code writes 3 for PASS, No timeout
      --  enforcement.
      PASS          : SYSCTL_INITDONE_PASS_Field :=
                       MSPMC1104_SVD.SYSCTL.NO_EFFECT;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCTL_INITDONE_Register use record
      PASS          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SYSCTL
   type SYSCTL_Peripheral is record
      SYSCTL_PINCM[%s]          : aliased SYSCTL_PINCM[%s]_Cluster;
      --  Event IIDX
      SYSCTL_IIDX               : aliased SYSCTL_IIDX_Register;
      --  Event IMASK
      SYSCTL_IMASK              : aliased SYSCTL_IMASK_Register;
      --  Event RIS
      SYSCTL_RIS                : aliased SYSCTL_RIS_Register;
      --  Event MIS
      SYSCTL_MIS                : aliased SYSCTL_MIS_Register;
      --  Event ISET
      SYSCTL_ISET               : aliased SYSCTL_ISET_Register;
      --  Event ICLR
      SYSCTL_ICLR               : aliased SYSCTL_ICLR_Register;
      --  SYSOSC Configuration
      SYSCTL_SYSOSCCFG          : aliased SYSCTL_SYSOSCCFG_Register;
      --  Configuration related to MCLK
      SYSCTL_MCLKCFG            : aliased SYSCTL_MCLKCFG_Register;
      --  High Speed Clock Configuration
      SYSCTL_HSCLKEN            : aliased SYSCTL_HSCLKEN_Register;
      --  High Speed Clock Configuration
      SYSCTL_HSCLKCFG           : aliased SYSCTL_HSCLKCFG_Register;
      --  High Frequency OSC Clock Configuration
      SYSCTL_HFCLKCLKCFG        : aliased SYSCTL_HFCLKCLKCFG_Register;
      --  Low Frequency External Clock Configuration
      SYSCTL_LFCLKCFG           : aliased SYSCTL_LFCLKCFG_Register;
      --  System PLL Configuration 0 MMR
      SYSCTL_SYSPLLCFG0         : aliased SYSCTL_SYSPLLCFG0_Register;
      --  System PLL Configuration 1 MMR
      SYSCTL_SYSPLLCFG1         : aliased SYSCTL_SYSPLLCFG1_Register;
      --  System PLL Paramater 0 MMR --- Data from Flash Table Lookup
      SYSCTL_SYSPLLPARAM0       : aliased SYSCTL_SYSPLLPARAM0_Register;
      --  System PLL Paramater 1 MMR --- Data from Flash Table Lookup
      SYSCTL_SYSPLLPARAM1       : aliased SYSCTL_SYSPLLPARAM1_Register;
      --  General Clock Configuration
      SYSCTL_GENCLKCFG          : aliased SYSCTL_GENCLKCFG_Register;
      --  General Clock Enables
      SYSCTL_GENCLKEN           : aliased SYSCTL_GENCLKEN_Register;
      --  Power Mode Configurations
      SYSCTL_PMODECFG           : aliased SYSCTL_PMODECFG_Register;
      --  Flash Bank Swap
      SYSCTL_SOCLOCK_FLBANKSWAP : aliased SYSCTL_SOCLOCK_FLBANKSWAP_Register;
      --  SYSOSC Trim Values specified by user
      SYSCTL_SYSOSCTRIMUSER     : aliased SYSCTL_SYSOSCTRIMUSER_Register;
      --  SRAM Write Protect
      SYSCTL_SYSMEMWEPROT       : aliased HAL.UInt32;
      --  SRAM Write Protect
      SYSCTL_SYSTEMCFG          : aliased SYSCTL_SYSTEMCFG_Register;
      --  SYSOSC Trim Values specified by user
      SYSCTL_WRITELOCK          : aliased SYSCTL_WRITELOCK_Register;
      --  Useful debug status of clock selections
      SYSCTL_CLKSTATUS          : aliased SYSCTL_CLKSTATUS_Register;
      --  Useful System Status Data
      SYSCTL_SYSSTATUS          : aliased SYSCTL_SYSSTATUS_Register;
      --  Reset Level for Application Reset Command
      SYSCTL_RESETLEVEL         : aliased SYSCTL_RESETLEVEL_Register;
      --  Execute Reset Command
      SYSCTL_RESETCMD           : aliased SYSCTL_RESETCMD_Register;
      --  BOR Threshold Level
      SYSCTL_BORTHRESHOLD       : aliased SYSCTL_BORTHRESHOLD_Register;
      --  SYSOSC Frequency Control Loop with External Resistor
      SYSCTL_SYSOSCFCLCTL       : aliased SYSCTL_SYSOSCFCLCTL_Register;
      --  LFXT Control -- Only BOR Level Reset will clear
      SYSCTL_LFXTCTL            : aliased SYSCTL_LFXTCTL_Register;
      --  EX LF Control -- Only BOR Level Reset will clear
      SYSCTL_EXLFCTL            : aliased SYSCTL_EXLFCTL_Register;
      --  Shutdown IO Release Command
      SYSCTL_SHDNIOREL          : aliased SYSCTL_SHDNIOREL_Register;
      --  Disable use of external Reset Pin
      SYSCTL_EXRSTPIN           : aliased SYSCTL_EXRSTPIN_Register;
      --  Clear sticky bits of SYSSTATUS
      SYSCTL_SYSSTATUSCLR       : aliased SYSCTL_SYSSTATUSCLR_Register;
      --  Disable SWD
      SYSCTL_SWDCFG             : aliased SYSCTL_SWDCFG_Register;
      --  PMU OPAMP Control
      SYSCTL_PMUOPAMP           : aliased SYSCTL_PMUOPAMP_Register;
      --  Shutdown Storage Byte 0
      SYSCTL_SHUTDNSTORE0       : aliased SYSCTL_SHUTDNSTORE_Register;
      --  Shutdown Storage Byte 1
      SYSCTL_SHUTDNSTORE1       : aliased SYSCTL_SHUTDNSTORE_Register;
      --  Shutdown Storage Byte 2
      SYSCTL_SHUTDNSTORE2       : aliased SYSCTL_SHUTDNSTORE_Register;
      --  Shutdown Storage Byte 3
      SYSCTL_SHUTDNSTORE3       : aliased SYSCTL_SHUTDNSTORE_Register;
      --  Device Lifecycle
      SYSCTL_LIFECYCLE          : aliased SYSCTL_LIFECYCLE_Register;
      --  Configuration of CPURESET Vector
      SYSCTL_BOOTCFG            : aliased SYSCTL_BOOTCFG_Register;
      --  BOOTCODE PASS
      SYSCTL_BOOTDONE           : aliased SYSCTL_BOOTDONE_Register;
      --  BOOT TIMEOUT Control
      SYSCTL_BOOTTIMEOUT        : aliased SYSCTL_BOOTTIMEOUT_Register;
      --  BootCode TRIM Unlock
      SYSCTL_BCTRIMUNLOCK       : aliased HAL.UInt32;
      --  Infrastructure Status
      SYSCTL_INFRASTATUS        : aliased SYSCTL_INFRASTATUS_Register;
      --  8 bit boot diagnostic to Debugss
      SYSCTL_BOOTDIAG           : aliased SYSCTL_BOOTDIAG_Register;
      --  Infrastructure Status 2
      SYSCTL_INFRASTATUS1       : aliased SYSCTL_INFRASTATUS1_Register;
      --  1 Sector Write-Erase per bit starting at address 0x0 of flash
      SYSCTL_FWEPROTMAINA       : aliased HAL.UInt32;
      --  8xSector Write-Erase per bit starting at address 0x0 of flash
      SYSCTL_FWEPROTMAINB0      : aliased SYSCTL_FWEPROTMAINB0_Register;
      --  JTAG USERCODE
      SYSCTL_JTAGUSERCODE       : aliased HAL.UInt32;
      --  DMA TRIM Unlock
      SYSCTL_DMATRIMUNLOCK      : aliased HAL.UInt32;
      --  SYSOSC Trim Values for frequency when change from disable to enable,
      --  generally 32MHz
      SYSCTL_SYSOSCTRIMBASE     : aliased SYSCTL_SYSOSCTRIMBASE_Register;
      --  PMU TRIM 0
      SYSCTL_PMUTRIM0           : aliased SYSCTL_PMUTRIM_Register;
      --  PMU TRIM 1
      SYSCTL_PMUTRIM1           : aliased SYSCTL_PMUTRIM_Register;
      --  PMU TRIM 2
      SYSCTL_PMUTRIM2           : aliased SYSCTL_PMUTRIM_Register;
      --  PMU TRIM 3
      SYSCTL_PMUTRIM3           : aliased SYSCTL_PMUTRIM_Register;
      --  PMU TRIM 4
      SYSCTL_PMUTRIM4           : aliased SYSCTL_PMUTRIM_Register;
      --  PMU TRIM 5
      SYSCTL_PMUTRIM5           : aliased SYSCTL_PMUTRIM_Register;
      --  Flash Pump TRIM-CFG
      SYSCTL_FLASHPUMPTRIM      : aliased HAL.UInt32;
      --  $btname TRIM-CFG
      SYSCTL_FLASHBANK0TRIM     : aliased HAL.UInt32;
      --  $brname Flash Repair
      SYSCTL_FLASHBANK0REPAIR   : aliased SYSCTL_FLASHBANK0REPAIR_Register;
      --  Flash and SRAM Configuration
      SYSCTL_FLASHSRAMCFG       : aliased SYSCTL_FLASHSRAMCFG_Register;
      --  SRAM timing MMR for ESRAM controller, based on 4MHz
      SYSCTL_SRAMTIMING         : aliased SYSCTL_SRAMTIMING_Register;
      --  SYSOSC Trim Values for 4MHz target
      SYSCTL_SYSOSCTRIM4MHZ     : aliased SYSCTL_SYSOSCTRIM4MHZ_Register;
      --  SYSOSC Trim Values for 4MHz target with FCL enabled
      SYSCTL_SYSOSCTRIM4MHZFCL  : aliased SYSCTL_SYSOSCTRIM4MHZFCL_Register;
      --  SYSOSC Trim Values for 32MHz target with FCL enabled
      SYSCTL_SYSOSCTRIMBASEFCL  : aliased SYSCTL_SYSOSCTRIMBASEFCL_Register;
      --  LFOSC TRIM values
      SYSCTL_LFOSCTRIM0         : aliased SYSCTL_LFOSCTRIM0_Register;
      --  LFOSC TRIM values
      SYSCTL_LFOSCTRIM1         : aliased SYSCTL_LFOSCTRIM1_Register;
      --  LFXT TRIM values
      SYSCTL_LFXTTRIM           : aliased SYSCTL_LFXTTRIM_Register;
      --  HFXT TRIM and Override
      SYSCTL_HFXTTRIM0          : aliased SYSCTL_HFXTTRIM0_Register;
      --  HFXT TRIM and Override
      SYSCTL_HFXTTRIM1          : aliased SYSCTL_HFXTTRIM1_Register;
      --  PLL TRIM and Override
      SYSCTL_PLLTRIM0           : aliased SYSCTL_PLLTRIM0_Register;
      --  PLL TRIM and Override
      SYSCTL_PLLTRIM1           : aliased SYSCTL_PLLTRIM1_Register;
      --  Bits 31..0 of CDAC
      SYSCTL_ADC12B0TRIM0       : aliased HAL.UInt32;
      --  Bits 63..32 of CDAC
      SYSCTL_ADC12B0TRIM1       : aliased HAL.UInt32;
      --  Bits 65..64 of CDAC, and other ADC12B0 always trims
      SYSCTL_ADC12B0TRIM2       : aliased SYSCTL_ADC12B0TRIM2_Register;
      --  Additional ADC trims for 12B 4MSPS
      SYSCTL_ADC12B0TRIM3       : aliased SYSCTL_ADC12B0TRIM3_Register;
      --  Bits 31..0 of CDAC
      SYSCTL_ADC12B1TRIM0       : aliased HAL.UInt32;
      --  Bits 63..32 of CDAC
      SYSCTL_ADC12B1TRIM1       : aliased HAL.UInt32;
      --  Bits 65..64 of CDAC, and other ADC12B1 always trims
      SYSCTL_ADC12B1TRIM2       : aliased SYSCTL_ADC12B1TRIM2_Register;
      --  Additional ADC trims for 12B 4MSPS
      SYSCTL_ADC12B1TRIM3       : aliased SYSCTL_ADC12B1TRIM3_Register;
      --  Trims for 12B DAC
      SYSCTL_DAC12B0TRIM        : aliased SYSCTL_DAC12B0TRIM_Register;
      --  Trims for Opamp0
      SYSCTL_OPAMP0TRIM         : aliased SYSCTL_OPAMP0TRIM_Register;
      --  Trims for Opamp1
      SYSCTL_OPAMP1TRIM         : aliased SYSCTL_OPAMP1TRIM_Register;
      --  Common Trims for Anacomp
      SYSCTL_ANACOMPTRIM        : aliased SYSCTL_ANACOMPTRIM_Register;
      --  Trim for TRNG
      SYSCTL_TRNGTRIM           : aliased SYSCTL_TRNGTRIM_Register;
      --  Various Small TRIM
      SYSCTL_MISCTRIM           : aliased SYSCTL_MISCTRIM_Register;
      --  PAD Exist for IOMUX
      SYSCTL_PADEXIST0          : aliased HAL.UInt32;
      --  PAD Exist for IOMUX
      SYSCTL_PADEXIST1          : aliased SYSCTL_PADEXIST1_Register;
      --  IP Available Paper Spin
      SYSCTL_IPAVAIL0           : aliased SYSCTL_IPAVAIL0_Register;
      --  IP Available Paper Spin
      SYSCTL_IPAVAIL1           : aliased SYSCTL_IPAVAIL1_Register;
      --  Functional Paper Spin Options
      SYSCTL_FUNCPSPIN          : aliased SYSCTL_FUNCPSPIN_Register;
      --  SYSOSC Trim Values for R&amp;D Maximum target, likely 48MHz
      SYSCTL_SYSOSCTRIMTURBO    : aliased SYSCTL_SYSOSCTRIMTURBO_Register;
      --  SYSOSC Trim Values for TURBO target with FCL enabled
      SYSCTL_SYSOSCTRIMTURBOFCL : aliased SYSCTL_SYSOSCTRIMTURBOFCL_Register;
      --  FINAL 16 bit CRC of the TRIM load
      SYSCTL_TRIMCRC            : aliased SYSCTL_TRIMCRC_Register;
      --  DFT Control for HFXT
      SYSCTL_DFTSYSOSC          : aliased SYSCTL_DFTSYSOSC_Register;
      --  DFT Control for LFCLK Hard Macro
      SYSCTL_DFTLFCLK           : aliased SYSCTL_DFTLFCLK_Register;
      --  DFT for VBOOST Charge Pump
      SYSCTL_DFTVBSTCP          : aliased SYSCTL_DFTVBSTCP_Register;
      --  DFT Control for HFXT
      SYSCTL_DFTHFXT            : aliased SYSCTL_DFTHFXT_Register;
      --  DFT Control for SYSPLL
      SYSCTL_DFTSYSPLL0         : aliased SYSCTL_DFTSYSPLL0_Register;
      --  DFT Control for SYSPLL
      SYSCTL_DFTSYSPLL1         : aliased SYSCTL_DFTSYSPLL1_Register;
      --  DFT Control for PMU ATB
      SYSCTL_DFTPMUATB          : aliased SYSCTL_DFTPMUATB_Register;
      --  DFT Control for PMU CTL
      SYSCTL_DFTPMUCTL          : aliased SYSCTL_DFTPMUCTL_Register;
      --  DFT Control for PMU LPM
      SYSCTL_DFTPMULPM          : aliased SYSCTL_DFTPMULPM_Register;
      --  Overall PMCU DFT Controls
      SYSCTL_DFTPMCU            : aliased SYSCTL_DFTPMCU_Register;
      --  1 Sector Write-Erase per bit starting at address 0x0 of flash
      SYSCTL_FWEPROTMAIN        : aliased SYSCTL_FWEPROTMAIN_Register;
      --  1KB sector based RW protection of first 4KB of data bank
      SYSCTL_FRWPROTMAINDATA    : aliased SYSCTL_FRWPROTMAINDATA_Register;
      --  Customer programmable RX firewall. Start and End are specified at 64B
      --  sector granularity. If Start == End, then one sector is RX protected
      --  If End == Start + 1, then two sectors are RX protected. And so on. If
      --  End &lt; Start, then no address range is RX protected. HW will not
      --  check this. Since the start and end addresses are sector granularity,
      --  we do not need to store the 6 LSBs. Assuming a max protected range of
      --  256KB, we will need only 12 higher order bits to be stored.
      SYSCTL_FRXPROTMAIN_START  : aliased SYSCTL_FRXPROTMAIN_START_Register;
      --  Customer programmable RX firewall. Start and End are specified at 64B
      --  sector granularity. If Start == End, then one sector is RX protected
      --  If End == Start + 1, then two sectors are RX protected. And so on. If
      --  End &lt; Start, then no address range is RX protected. HW will not
      --  check this. Since the start and end addresses are sector granularity,
      --  we do not need to store the 10 LSBs. Assuming a max protected range
      --  of 256KB, we will need only 12 higher order bits to be stored.
      SYSCTL_FRXPROTMAIN_END    : aliased SYSCTL_FRXPROTMAIN_END_Register;
      --  Customer programmable IP prorection firewall. Start and End are
      --  specified at 1KB sector granularity. If Start == End, then one sector
      --  is IP protected If End == Start + 1, then two sectors are IP
      --  protected. And so on. If End &lt; Start, then no address range is IP
      --  protected. Since the start and end addresses are sector granularity,
      --  we do not need to store the 10 LSBs. Assuming a max protected range
      --  of 256KB, we will need only 12 higher order bits to be stored.
      SYSCTL_FIPPROT_START      : aliased SYSCTL_FIPPROT_START_Register;
      --  Customer programmable IP prorection firewall. Start and End are
      --  specified at 64B sector granularity. If Start == End, then one sector
      --  is IP protected If End == Start + 1, then two sectors are IP
      --  protected. And so on. If End &lt; Start, then no address range is IP
      --  protected. Since the start and end addresses are sector granularity,
      --  we do not need to store the 10 LSBs. Assuming a max protected range
      --  of 256KB, we will need only 12 higher order bits to be stored.
      SYSCTL_FIPPROT_END        : aliased SYSCTL_FIPPROT_END_Register;
      --  Bank Swap Policy
      SYSCTL_FLBANKSWP_POLICY   : aliased SYSCTL_FLBANKSWP_POLICY_Register;
      --  Flash Bank Swap
      SYSCTL_SECCFG_FLBANKSWAP  : aliased SYSCTL_SECCFG_FLBANKSWAP_Register;
      --  Firewall lock enable register
      SYSCTL_FWENABLE           : aliased SYSCTL_FWENABLE_Register;
      --  Firewall status register
      SYSCTL_SECSTAT            : aliased SYSCTL_SECSTAT_Register;
      --  Application Reset Handler address
      SYSCTL_APSTART            : aliased SYSCTL_APSTART_Register;
      --  Application Stack Pointer
      SYSCTL_APPSP              : aliased SYSCTL_APPSP_Register;
      --  INITDONE PASS
      SYSCTL_INITDONE           : aliased SYSCTL_INITDONE_Register;
   end record
     with Volatile;

   for SYSCTL_Peripheral use record
      SYSCTL_PINCM[%s]          at 16#4# range 0 .. 191;
      SYSCTL_IIDX               at 16#1020# range 0 .. 31;
      SYSCTL_IMASK              at 16#1028# range 0 .. 31;
      SYSCTL_RIS                at 16#1030# range 0 .. 31;
      SYSCTL_MIS                at 16#1038# range 0 .. 31;
      SYSCTL_ISET               at 16#1040# range 0 .. 31;
      SYSCTL_ICLR               at 16#1048# range 0 .. 31;
      SYSCTL_SYSOSCCFG          at 16#1100# range 0 .. 31;
      SYSCTL_MCLKCFG            at 16#1104# range 0 .. 31;
      SYSCTL_HSCLKEN            at 16#1108# range 0 .. 31;
      SYSCTL_HSCLKCFG           at 16#110C# range 0 .. 31;
      SYSCTL_HFCLKCLKCFG        at 16#1110# range 0 .. 31;
      SYSCTL_LFCLKCFG           at 16#1114# range 0 .. 31;
      SYSCTL_SYSPLLCFG0         at 16#1120# range 0 .. 31;
      SYSCTL_SYSPLLCFG1         at 16#1124# range 0 .. 31;
      SYSCTL_SYSPLLPARAM0       at 16#1128# range 0 .. 31;
      SYSCTL_SYSPLLPARAM1       at 16#112C# range 0 .. 31;
      SYSCTL_GENCLKCFG          at 16#1138# range 0 .. 31;
      SYSCTL_GENCLKEN           at 16#113C# range 0 .. 31;
      SYSCTL_PMODECFG           at 16#1140# range 0 .. 31;
      SYSCTL_SOCLOCK_FLBANKSWAP at 16#1168# range 0 .. 31;
      SYSCTL_SYSOSCTRIMUSER     at 16#1170# range 0 .. 31;
      SYSCTL_SYSMEMWEPROT       at 16#1178# range 0 .. 31;
      SYSCTL_SYSTEMCFG          at 16#1180# range 0 .. 31;
      SYSCTL_WRITELOCK          at 16#1200# range 0 .. 31;
      SYSCTL_CLKSTATUS          at 16#1204# range 0 .. 31;
      SYSCTL_SYSSTATUS          at 16#1208# range 0 .. 31;
      SYSCTL_RESETLEVEL         at 16#1300# range 0 .. 31;
      SYSCTL_RESETCMD           at 16#1304# range 0 .. 31;
      SYSCTL_BORTHRESHOLD       at 16#1308# range 0 .. 31;
      SYSCTL_SYSOSCFCLCTL       at 16#1310# range 0 .. 31;
      SYSCTL_LFXTCTL            at 16#1314# range 0 .. 31;
      SYSCTL_EXLFCTL            at 16#1318# range 0 .. 31;
      SYSCTL_SHDNIOREL          at 16#131C# range 0 .. 31;
      SYSCTL_EXRSTPIN           at 16#1320# range 0 .. 31;
      SYSCTL_SYSSTATUSCLR       at 16#1324# range 0 .. 31;
      SYSCTL_SWDCFG             at 16#1328# range 0 .. 31;
      SYSCTL_PMUOPAMP           at 16#1380# range 0 .. 31;
      SYSCTL_SHUTDNSTORE0       at 16#1400# range 0 .. 31;
      SYSCTL_SHUTDNSTORE1       at 16#1404# range 0 .. 31;
      SYSCTL_SHUTDNSTORE2       at 16#1408# range 0 .. 31;
      SYSCTL_SHUTDNSTORE3       at 16#140C# range 0 .. 31;
      SYSCTL_LIFECYCLE          at 16#2000# range 0 .. 31;
      SYSCTL_BOOTCFG            at 16#2004# range 0 .. 31;
      SYSCTL_BOOTDONE           at 16#2008# range 0 .. 31;
      SYSCTL_BOOTTIMEOUT        at 16#200C# range 0 .. 31;
      SYSCTL_BCTRIMUNLOCK       at 16#2010# range 0 .. 31;
      SYSCTL_INFRASTATUS        at 16#2014# range 0 .. 31;
      SYSCTL_BOOTDIAG           at 16#2018# range 0 .. 31;
      SYSCTL_INFRASTATUS1       at 16#201C# range 0 .. 31;
      SYSCTL_FWEPROTMAINA       at 16#2020# range 0 .. 31;
      SYSCTL_FWEPROTMAINB0      at 16#2024# range 0 .. 31;
      SYSCTL_JTAGUSERCODE       at 16#2040# range 0 .. 31;
      SYSCTL_DMATRIMUNLOCK      at 16#2400# range 0 .. 31;
      SYSCTL_SYSOSCTRIMBASE     at 16#2404# range 0 .. 31;
      SYSCTL_PMUTRIM0           at 16#2408# range 0 .. 31;
      SYSCTL_PMUTRIM1           at 16#240C# range 0 .. 31;
      SYSCTL_PMUTRIM2           at 16#2410# range 0 .. 31;
      SYSCTL_PMUTRIM3           at 16#2414# range 0 .. 31;
      SYSCTL_PMUTRIM4           at 16#2418# range 0 .. 31;
      SYSCTL_PMUTRIM5           at 16#241C# range 0 .. 31;
      SYSCTL_FLASHPUMPTRIM      at 16#2420# range 0 .. 31;
      SYSCTL_FLASHBANK0TRIM     at 16#2424# range 0 .. 31;
      SYSCTL_FLASHBANK0REPAIR   at 16#2428# range 0 .. 31;
      SYSCTL_FLASHSRAMCFG       at 16#242C# range 0 .. 31;
      SYSCTL_SRAMTIMING         at 16#2430# range 0 .. 31;
      SYSCTL_SYSOSCTRIM4MHZ     at 16#2434# range 0 .. 31;
      SYSCTL_SYSOSCTRIM4MHZFCL  at 16#2438# range 0 .. 31;
      SYSCTL_SYSOSCTRIMBASEFCL  at 16#243C# range 0 .. 31;
      SYSCTL_LFOSCTRIM0         at 16#2440# range 0 .. 31;
      SYSCTL_LFOSCTRIM1         at 16#2444# range 0 .. 31;
      SYSCTL_LFXTTRIM           at 16#2448# range 0 .. 31;
      SYSCTL_HFXTTRIM0          at 16#244C# range 0 .. 31;
      SYSCTL_HFXTTRIM1          at 16#2450# range 0 .. 31;
      SYSCTL_PLLTRIM0           at 16#2454# range 0 .. 31;
      SYSCTL_PLLTRIM1           at 16#2458# range 0 .. 31;
      SYSCTL_ADC12B0TRIM0       at 16#245C# range 0 .. 31;
      SYSCTL_ADC12B0TRIM1       at 16#2460# range 0 .. 31;
      SYSCTL_ADC12B0TRIM2       at 16#2464# range 0 .. 31;
      SYSCTL_ADC12B0TRIM3       at 16#2468# range 0 .. 31;
      SYSCTL_ADC12B1TRIM0       at 16#246C# range 0 .. 31;
      SYSCTL_ADC12B1TRIM1       at 16#2470# range 0 .. 31;
      SYSCTL_ADC12B1TRIM2       at 16#2474# range 0 .. 31;
      SYSCTL_ADC12B1TRIM3       at 16#2478# range 0 .. 31;
      SYSCTL_DAC12B0TRIM        at 16#247C# range 0 .. 31;
      SYSCTL_OPAMP0TRIM         at 16#2480# range 0 .. 31;
      SYSCTL_OPAMP1TRIM         at 16#2484# range 0 .. 31;
      SYSCTL_ANACOMPTRIM        at 16#2488# range 0 .. 31;
      SYSCTL_TRNGTRIM           at 16#248C# range 0 .. 31;
      SYSCTL_MISCTRIM           at 16#2490# range 0 .. 31;
      SYSCTL_PADEXIST0          at 16#2494# range 0 .. 31;
      SYSCTL_PADEXIST1          at 16#2498# range 0 .. 31;
      SYSCTL_IPAVAIL0           at 16#249C# range 0 .. 31;
      SYSCTL_IPAVAIL1           at 16#24A0# range 0 .. 31;
      SYSCTL_FUNCPSPIN          at 16#24A4# range 0 .. 31;
      SYSCTL_SYSOSCTRIMTURBO    at 16#24A8# range 0 .. 31;
      SYSCTL_SYSOSCTRIMTURBOFCL at 16#24AC# range 0 .. 31;
      SYSCTL_TRIMCRC            at 16#24B0# range 0 .. 31;
      SYSCTL_DFTSYSOSC          at 16#2C00# range 0 .. 31;
      SYSCTL_DFTLFCLK           at 16#2C04# range 0 .. 31;
      SYSCTL_DFTVBSTCP          at 16#2C08# range 0 .. 31;
      SYSCTL_DFTHFXT            at 16#2C10# range 0 .. 31;
      SYSCTL_DFTSYSPLL0         at 16#2C20# range 0 .. 31;
      SYSCTL_DFTSYSPLL1         at 16#2C24# range 0 .. 31;
      SYSCTL_DFTPMUATB          at 16#2C40# range 0 .. 31;
      SYSCTL_DFTPMUCTL          at 16#2C44# range 0 .. 31;
      SYSCTL_DFTPMULPM          at 16#2C48# range 0 .. 31;
      SYSCTL_DFTPMCU            at 16#2C60# range 0 .. 31;
      SYSCTL_FWEPROTMAIN        at 16#3000# range 0 .. 31;
      SYSCTL_FRWPROTMAINDATA    at 16#3014# range 0 .. 31;
      SYSCTL_FRXPROTMAIN_START  at 16#3018# range 0 .. 31;
      SYSCTL_FRXPROTMAIN_END    at 16#301C# range 0 .. 31;
      SYSCTL_FIPPROT_START      at 16#3020# range 0 .. 31;
      SYSCTL_FIPPROT_END        at 16#3024# range 0 .. 31;
      SYSCTL_FLBANKSWP_POLICY   at 16#3038# range 0 .. 31;
      SYSCTL_SECCFG_FLBANKSWAP  at 16#303C# range 0 .. 31;
      SYSCTL_FWENABLE           at 16#3044# range 0 .. 31;
      SYSCTL_SECSTAT            at 16#3048# range 0 .. 31;
      SYSCTL_APSTART            at 16#304C# range 0 .. 31;
      SYSCTL_APPSP              at 16#3050# range 0 .. 31;
      SYSCTL_INITDONE           at 16#3060# range 0 .. 31;
   end record;

   --  SYSCTL
   SYSCTL_Periph : aliased SYSCTL_Peripheral
     with Import, Address => SYSCTL_Base;

end MSPMC1104_SVD.SYSCTL;
