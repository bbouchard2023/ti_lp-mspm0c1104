pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.CPUSS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Event line mode select
   type CPUSS_EVT_MODE_INT_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  Event handled by software. Software must clear the associated RIS flag.
      SOFTWARE,
      --  Event handled by hardware. The hardware (another module) clears
--  automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for CPUSS_EVT_MODE_INT_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type CPUSS_EVT_MODE_Register is record
      --  Read-only. Event line mode select
      INT_CFG       : CPUSS_EVT_MODE_INT_CFG_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_EVT_MODE_Register use record
      INT_CFG       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CPUSS_DESC_MINREV_Field is HAL.UInt4;
   subtype CPUSS_DESC_MAJREV_Field is HAL.UInt4;
   subtype CPUSS_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype CPUSS_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type CPUSS_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV        : CPUSS_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV        : CPUSS_DESC_MAJREV_Field;
      --  unspecified
      Reserved_8_11 : HAL.UInt4;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER    : CPUSS_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID      : CPUSS_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_DESC_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_11 at 0 range 8 .. 11;
      FEATUREVER    at 0 range 12 .. 15;
      MODULEID      at 0 range 16 .. 31;
   end record;

   --  Interrupt index status
   type CPUSS_IIDX_STAT_Field is
     (--  No pending interrupt
      NO_INTR,
      --  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_IIDX_STAT_Field use
     (NO_INTR => 0,
      INT0 => 1,
      INT1 => 2,
      INT2 => 3,
      INT3 => 4,
      INT4 => 5,
      INT5 => 6,
      INT6 => 7,
      INT7 => 8);

   --  Interrupt index
   type CPUSS_IIDX_Register is record
      --  Read-only. Interrupt index status
      STAT          : CPUSS_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_IIDX_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Masks the corresponding interrupt
   type CPUSS_IMASK_INT_Field is
     (--  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_IMASK_INT_Field use
     (INT0 => 1,
      INT1 => 2,
      INT2 => 4,
      INT3 => 8,
      INT4 => 16,
      INT5 => 32,
      INT6 => 64,
      INT7 => 128);

   --  Interrupt mask
   type CPUSS_IMASK_Register is record
      --  Read-only. Masks the corresponding interrupt
      INT           : CPUSS_IMASK_INT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_IMASK_Register use record
      INT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Raw interrupt status for INT
   type CPUSS_RIS_INT_Field is
     (--  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_RIS_INT_Field use
     (INT0 => 1,
      INT1 => 2,
      INT2 => 4,
      INT3 => 8,
      INT4 => 16,
      INT5 => 32,
      INT6 => 64,
      INT7 => 128);

   --  Raw interrupt status
   type CPUSS_RIS_Register is record
      --  Read-only. Raw interrupt status for INT
      INT           : CPUSS_RIS_INT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_RIS_Register use record
      INT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Masked interrupt status for INT0
   type CPUSS_MIS_INT_Field is
     (--  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_MIS_INT_Field use
     (INT0 => 1,
      INT1 => 2,
      INT2 => 4,
      INT3 => 8,
      INT4 => 16,
      INT5 => 32,
      INT6 => 64,
      INT7 => 128);

   --  Masked interrupt status
   type CPUSS_MIS_Register is record
      --  Read-only. Masked interrupt status for INT0
      INT           : CPUSS_MIS_INT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_MIS_Register use record
      INT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Sets INT in RIS register
   type CPUSS_ISET_INT_Field is
     (--  Reset value for the field
      CPUSS_ISET_INT_Field_Reset,
      --  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_ISET_INT_Field use
     (CPUSS_ISET_INT_Field_Reset => 0,
      INT0 => 1,
      INT1 => 2,
      INT2 => 4,
      INT3 => 8,
      INT4 => 16,
      INT5 => 32,
      INT6 => 64,
      INT7 => 128);

   --  Interrupt set
   type CPUSS_ISET_Register is record
      --  Write-only. Sets INT in RIS register
      INT           : CPUSS_ISET_INT_Field := CPUSS_ISET_INT_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_ISET_Register use record
      INT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clears INT in RIS register
   type CPUSS_ICLR_INT_Field is
     (--  Reset value for the field
      CPUSS_ICLR_INT_Field_Reset,
      --  Interrupt 0
      INT0,
      --  Interrupt 1
      INT1,
      --  Interrupt 2
      INT2,
      --  Interrupt 3
      INT3,
      --  Interrupt 4
      INT4,
      --  Interrupt 5
      INT5,
      --  Interrupt 6
      INT6,
      --  Interrupt 7
      INT7)
     with Size => 8;
   for CPUSS_ICLR_INT_Field use
     (CPUSS_ICLR_INT_Field_Reset => 0,
      INT0 => 1,
      INT1 => 2,
      INT2 => 4,
      INT3 => 8,
      INT4 => 16,
      INT5 => 32,
      INT6 => 64,
      INT7 => 128);

   --  Interrupt clear
   type CPUSS_ICLR_Register is record
      --  Write-only. Clears INT in RIS register
      INT           : CPUSS_ICLR_INT_Field := CPUSS_ICLR_INT_Field_Reset;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_ICLR_Register use record
      INT           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Used to enable/disable instruction prefetch to Flash.
   type CPUSS_CTL_PREFETCH_Field is
     (--  Disable instruction prefetch.
      DISABLE,
      --  Enable instruction prefetch.
      ENABLE)
     with Size => 1;
   for CPUSS_CTL_PREFETCH_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Used to enable/disable Instruction caching on flash access.
   type CPUSS_CTL_ICACHE_Field is
     (--  Disable instruction caching.
      DISABLE,
      --  Enable instruction caching.
      ENABLE)
     with Size => 1;
   for CPUSS_CTL_ICACHE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Literal caching and prefetch enable. This bit is a subset of
   --  ICACHE/PREFETCH bit i.e. literal caching or literal prefetching will
   --  only happen if ICACHE or PREFETCH bits have been set respectively When
   --  enabled, the cache and prefetcher structures inside CPUSS will cache and
   --  prefetch literals When disabled, the cache and prefetcher structures
   --  inside CPUSS will not cache and prefetch literals
   type CPUSS_CTL_LITEN_Field is
     (--  Literal caching disabled
      DISABLE,
      --  Literal caching enabled
      ENABLE)
     with Size => 1;
   for CPUSS_CTL_LITEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Prefetch/Cache control
   type CPUSS_CTL_Register is record
      --  Used to enable/disable instruction prefetch to Flash.
      PREFETCH      : CPUSS_CTL_PREFETCH_Field := MSPMC1104_SVD.CPUSS.ENABLE;
      --  Used to enable/disable Instruction caching on flash access.
      ICACHE        : CPUSS_CTL_ICACHE_Field := MSPMC1104_SVD.CPUSS.ENABLE;
      --  Literal caching and prefetch enable. This bit is a subset of
      --  ICACHE/PREFETCH bit i.e. literal caching or literal prefetching will
      --  only happen if ICACHE or PREFETCH bits have been set respectively
      --  When enabled, the cache and prefetcher structures inside CPUSS will
      --  cache and prefetch literals When disabled, the cache and prefetcher
      --  structures inside CPUSS will not cache and prefetch literals
      LITEN         : CPUSS_CTL_LITEN_Field := MSPMC1104_SVD.CPUSS.ENABLE;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_CTL_Register use record
      PREFETCH      at 0 range 0 .. 0;
      ICACHE        at 0 range 1 .. 1;
      LITEN         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CPUSS_TEST0_DTB_MUX_SEL_CPU_Field is HAL.UInt3;
   subtype CPUSS_TEST0_DTB_MUX_SEL_WUC_Field is HAL.UInt5;

   --  DTB MUX Sel
   type CPUSS_TEST0_Register is record
      --  DTB Mux Sel Refer to implementaion spec for mux selection table.
      DTB_MUX_SEL_CPU : CPUSS_TEST0_DTB_MUX_SEL_CPU_Field := 16#0#;
      --  unspecified
      Reserved_3_4    : HAL.UInt2 := 16#0#;
      --  DTB Mux Sel Refer to implementaion spec for mux selection table.
      DTB_MUX_SEL_WUC : CPUSS_TEST0_DTB_MUX_SEL_WUC_Field := 16#0#;
      --  unspecified
      Reserved_10_31  : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CPUSS_TEST0_Register use record
      DTB_MUX_SEL_CPU at 0 range 0 .. 2;
      Reserved_3_4    at 0 range 3 .. 4;
      DTB_MUX_SEL_WUC at 0 range 5 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CPUSSMMR
   type CPUSS_Peripheral is record
      --  Event Mode
      CPUSS_EVT_MODE : aliased CPUSS_EVT_MODE_Register;
      --  Module Description
      CPUSS_DESC     : aliased CPUSS_DESC_Register;
      --  Interrupt index
      CPUSS_IIDX     : aliased CPUSS_IIDX_Register;
      --  Interrupt mask
      CPUSS_IMASK    : aliased CPUSS_IMASK_Register;
      --  Raw interrupt status
      CPUSS_RIS      : aliased CPUSS_RIS_Register;
      --  Masked interrupt status
      CPUSS_MIS      : aliased CPUSS_MIS_Register;
      --  Interrupt set
      CPUSS_ISET     : aliased CPUSS_ISET_Register;
      --  Interrupt clear
      CPUSS_ICLR     : aliased CPUSS_ICLR_Register;
      --  Prefetch/Cache control
      CPUSS_CTL      : aliased CPUSS_CTL_Register;
      --  DTB MUX Sel
      CPUSS_TEST0    : aliased CPUSS_TEST0_Register;
   end record
     with Volatile;

   for CPUSS_Peripheral use record
      CPUSS_EVT_MODE at 16#10E0# range 0 .. 31;
      CPUSS_DESC     at 16#10FC# range 0 .. 31;
      CPUSS_IIDX     at 16#1100# range 0 .. 31;
      CPUSS_IMASK    at 16#1108# range 0 .. 31;
      CPUSS_RIS      at 16#1110# range 0 .. 31;
      CPUSS_MIS      at 16#1118# range 0 .. 31;
      CPUSS_ISET     at 16#1120# range 0 .. 31;
      CPUSS_ICLR     at 16#1128# range 0 .. 31;
      CPUSS_CTL      at 16#1300# range 0 .. 31;
      CPUSS_TEST0    at 16#1E00# range 0 .. 31;
   end record;

   --  CPUSSMMR
   CPUSS_Periph : aliased CPUSS_Peripheral
     with Import, Address => CPUSS_Base;

end MSPMC1104_SVD.CPUSS;
