pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.IOMUX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IOMUX_PINCM_PF_Field is HAL.UInt6;

   --  Peripheral is Connected
   type IOMUX_PINCM_PC_Field is
     (--  The output of the peripheral (and its output enable) will not propagate to
--  the IOCELL
      UNCONNECTED,
      --  The output latch of the dataflow will be transparent
      CONNECTED)
     with Size => 1;
   for IOMUX_PINCM_PC_Field use
     (UNCONNECTED => 0,
      CONNECTED => 1);

   --  This has the IOPAD WAKEUP signal as status bit.
   type IOMUX_PINCM_WAKESTAT_Field is
     (--  wakeup source is NOT from this IOCELL
      DISABLE,
      --  wakeup source is from this IOCELL
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_WAKESTAT_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Pull Down control selection
   type IOMUX_PINCM_PIPD_Field is
     (--  Pull down is disabled.
      DISABLE,
      --  Pull down is enabled
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_PIPD_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Pull Up control selection
   type IOMUX_PINCM_PIPU_Field is
     (--  Pull up is disabled.
      DISABLE,
      --  Pull up is enabled
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_PIPU_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Input Enable Control Selection
   type IOMUX_PINCM_INENA_Field is
     (--  Input enable is disabled.
      DISABLE,
      --  Input enable is enabled.
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_INENA_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Hysteresis Enable Control Selection
   type IOMUX_PINCM_HYSTEN_Field is
     (--  hysteresis is disabled.
      DISABLE,
      --  hysteresis is enabled
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_HYSTEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Drive strength control selection, for HS IOCELL only
   type IOMUX_PINCM_DRV_Field is
     (--  Drive setting of 0 selected
      DRVVAL0,
      --  Drive setting of 1 selected
      DRVVAL1)
     with Size => 1;
   for IOMUX_PINCM_DRV_Field use
     (DRVVAL0 => 0,
      DRVVAL1 => 1);

   --  High output value will tri-state the output when this bit is enabled
   type IOMUX_PINCM_HIZ1_Field is
     (--  open-drain is disabled.
      DISABLE,
      --  open-drain is enabled.
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_HIZ1_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Data inversion selection
   type IOMUX_PINCM_INV_Field is
     (--  Data inversion is disabled.
      DISABLE,
      --  Data inversion is enabled
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_INV_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Enable bit
   type IOMUX_PINCM_WUEN_Field is
     (--  wakeup is disabled.
      DISABLE,
      --  wakeup is enabled
      ENABLE)
     with Size => 1;
   for IOMUX_PINCM_WUEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Wakeup Compare Value bit
   type IOMUX_PINCM_WCOMP_Field is
     (--  Wakeup on a match of 0
      MATCH0,
      --  Wakeup on a match of 1
      MATCH1)
     with Size => 1;
   for IOMUX_PINCM_WCOMP_Field use
     (MATCH0 => 0,
      MATCH1 => 1);

   --  Pin Control Management Register in SECCFG region
   type IOMUX_PINCM_Register is record
      --  Peripheral Function selection bits
      PF             : IOMUX_PINCM_PF_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      --  Peripheral is Connected
      PC             : IOMUX_PINCM_PC_Field :=
                        MSPMC1104_SVD.IOMUX.UNCONNECTED;
      --  unspecified
      Reserved_8_12  : HAL.UInt5 := 16#0#;
      --  Read-only. This has the IOPAD WAKEUP signal as status bit.
      WAKESTAT       : IOMUX_PINCM_WAKESTAT_Field :=
                        MSPMC1104_SVD.IOMUX.DISABLE;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Pull Down control selection
      PIPD           : IOMUX_PINCM_PIPD_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Pull Up control selection
      PIPU           : IOMUX_PINCM_PIPU_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Input Enable Control Selection
      INENA          : IOMUX_PINCM_INENA_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Hysteresis Enable Control Selection
      HYSTEN         : IOMUX_PINCM_HYSTEN_Field :=
                        MSPMC1104_SVD.IOMUX.DISABLE;
      --  Drive strength control selection, for HS IOCELL only
      DRV            : IOMUX_PINCM_DRV_Field := MSPMC1104_SVD.IOMUX.DRVVAL0;
      --  unspecified
      Reserved_21_24 : HAL.UInt4 := 16#0#;
      --  High output value will tri-state the output when this bit is enabled
      HIZ1           : IOMUX_PINCM_HIZ1_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Data inversion selection
      INV            : IOMUX_PINCM_INV_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Wakeup Enable bit
      WUEN           : IOMUX_PINCM_WUEN_Field := MSPMC1104_SVD.IOMUX.DISABLE;
      --  Wakeup Compare Value bit
      WCOMP          : IOMUX_PINCM_WCOMP_Field := MSPMC1104_SVD.IOMUX.MATCH0;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUX_PINCM_Register use record
      PF             at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      PC             at 0 range 7 .. 7;
      Reserved_8_12  at 0 range 8 .. 12;
      WAKESTAT       at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PIPD           at 0 range 16 .. 16;
      PIPU           at 0 range 17 .. 17;
      INENA          at 0 range 18 .. 18;
      HYSTEN         at 0 range 19 .. 19;
      DRV            at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      HIZ1           at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      WUEN           at 0 range 27 .. 27;
      WCOMP          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Pin Control Management Register in SECCFG region
   type IOMUX_PINCM_Registers is array (0 .. 60) of IOMUX_PINCM_Register;

   --------------------------------------------------
   -- IOMUX_LMGMT_DFT_ATRT[%s] cluster's Registers --
   --------------------------------------------------

   subtype IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_OUTIPSEL_Field is
     HAL.UInt7;

   --  PRAIL bit to identify the Power Rail of the selected IP.
   type IOMUX_DTBOUTSEL_PRAIL_Field is
     (--  Selected IP is SVT
      SVTSEL,
      --  Selected IP is ULL
      ULLSEL)
     with Size => 1;
   for IOMUX_DTBOUTSEL_PRAIL_Field use
     (SVTSEL => 0,
      ULLSEL => 1);

   --  DTBOUSEL Register
   type IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_Register is record
      --  Select bits to configure the output IP for the selected DTB Lane.
      OUTIPSEL      : IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_OUTIPSEL_Field :=
                       16#0#;
      --  PRAIL bit to identify the Power Rail of the selected IP.
      PRAIL         : IOMUX_DTBOUTSEL_PRAIL_Field :=
                       MSPMC1104_SVD.IOMUX.SVTSEL;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_Register use record
      OUTIPSEL      at 0 range 0 .. 6;
      PRAIL         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DTBOUSEL Register
   type IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_Registers is array (0 .. 1)
     of IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_Register;

   --  DTB lane direction bit, 0: DTB OUTPUT enable, 1: DTB INPUT enable
   type IOMUX_DTBDIR_DIR_Field is
     (--  DTN lane direction is output, from core to PAD
      OUT_k,
      --  DTN lane direction is input, from PAD to core
      IN_k)
     with Size => 6;
   for IOMUX_DTBDIR_DIR_Field use
     (OUT_k => 0,
      IN_k => 1);

   --  DTBDIR Register
   type IOMUX_DTBDIR_IOMUX_LMGMT_DFT_ATRT[%s]_Register is record
      --  DTB lane direction bit, 0: DTB OUTPUT enable, 1: DTB INPUT enable
      DIR           : IOMUX_DTBDIR_DIR_Field := MSPMC1104_SVD.IOMUX.OUT_k;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IOMUX_DTBDIR_IOMUX_LMGMT_DFT_ATRT[%s]_Register use record
      DIR           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DTBDIR Register
   type IOMUX_DTBDIR_IOMUX_LMGMT_DFT_ATRT[%s]_Registers is array (0 .. 1)
     of IOMUX_DTBDIR_IOMUX_LMGMT_DFT_ATRT[%s]_Register;

   type IOMUX_LMGMT_DFT_ATRT[%s]_Cluster is record
      --  DTB ENA Register
      IOMUX_DTBENA    : aliased HAL.UInt32;
      --  DTBBUSSEL Register
      IOMUX_DTBBUSSEL : aliased HAL.UInt32;
      --  DTBOUSEL Register
      IOMUX_DTBOUTSEL : aliased IOMUX_DTBOUTSEL_IOMUX_LMGMT_DFT_ATRT[%s]_Registers;
      --  DTBDIR Register
      IOMUX_DTBDIR    : aliased IOMUX_DTBDIR_IOMUX_LMGMT_DFT_ATRT[%s]_Registers;
      --  IOTB ENA Register0
      IOMUX_IOTBEN0   : aliased HAL.UInt32;
      --  IOTB ENA Register1
      IOMUX_IOTBEN1   : aliased HAL.UInt32;
      --  IOTB ENA Register2
      IOMUX_IOTBEN2   : aliased HAL.UInt32;
      --  IOTB ENA Register3
      IOMUX_IOTBEN3   : aliased HAL.UInt32;
   end record
     with Size => 1536;

   for IOMUX_LMGMT_DFT_ATRT[%s]_Cluster use record
      IOMUX_DTBENA    at 16#0# range 0 .. 31;
      IOMUX_DTBBUSSEL at 16#C# range 0 .. 31;
      IOMUX_DTBOUTSEL at 16#10# range 0 .. 63;
      IOMUX_DTBDIR    at 16#90# range 0 .. 63;
      IOMUX_IOTBEN0   at 16#B0# range 0 .. 31;
      IOMUX_IOTBEN1   at 16#B4# range 0 .. 31;
      IOMUX_IOTBEN2   at 16#B8# range 0 .. 31;
      IOMUX_IOTBEN3   at 16#BC# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type IOMUX_Peripheral is record
      --  Pin Control Management Register in SECCFG region
      IOMUX_PINCM              : aliased IOMUX_PINCM_Registers;
      IOMUX_LMGMT_DFT_ATRT[%s] : aliased IOMUX_LMGMT_DFT_ATRT[%s]_Cluster;
   end record
     with Volatile;

   for IOMUX_Peripheral use record
      IOMUX_PINCM              at 16#4# range 0 .. 1951;
      IOMUX_LMGMT_DFT_ATRT[%s] at 16#1900# range 0 .. 1535;
   end record;

   --  PERIPHERALREGION
   IOMUX_Periph : aliased IOMUX_Peripheral
     with Import, Address => IOMUX_Base;

end MSPMC1104_SVD.IOMUX;
