pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------------------
   -- CRC_GPRCM[%s] cluster's Registers --
   ---------------------------------------

   --  Enable the power
   type CRC_PWREN_ENABLE_Field is
     (--  Disable Power
      DISABLE,
      --  Enable Power
      ENABLE)
     with Size => 1;
   for CRC_PWREN_ENABLE_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Power enable
   type CRC_PWREN_CRC_GPRCM[%s]_Register is record
      --  Enable the power
      ENABLE        : CRC_PWREN_ENABLE_Field := MSPMC1104_SVD.CRC.DISABLE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_PWREN_CRC_GPRCM[%s]_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Assert reset to the peripheral
   type CRC_RSTCTL_RESETASSERT_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Assert reset
      ASSERT)
     with Size => 1;
   for CRC_RSTCTL_RESETASSERT_Field use
     (NOP => 0,
      ASSERT => 1);

   --  Clear the RESETSTKY bit in the STAT register
   type CRC_RSTCTL_RESETSTKYCLR_Field is
     (--  Writing 0 has no effect
      NOP,
      --  Clear reset sticky bit
      CLR)
     with Size => 1;
   for CRC_RSTCTL_RESETSTKYCLR_Field use
     (NOP => 0,
      CLR => 1);

   --  Reset Control
   type CRC_RSTCTL_CRC_GPRCM[%s]_Register is record
      --  Write-only. Assert reset to the peripheral
      RESETASSERT   : CRC_RSTCTL_RESETASSERT_Field := MSPMC1104_SVD.CRC.NOP;
      --  Write-only. Clear the RESETSTKY bit in the STAT register
      RESETSTKYCLR  : CRC_RSTCTL_RESETSTKYCLR_Field := MSPMC1104_SVD.CRC.NOP;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_RSTCTL_CRC_GPRCM[%s]_Register use record
      RESETASSERT   at 0 range 0 .. 0;
      RESETSTKYCLR  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  This bit indicates, if the peripheral was reset, since this bit was
   --  cleared by RESETSTKYCLR in the RSTCTL register
   type CRC_STAT_RESETSTKY_Field is
     (--  The peripheral has not been reset since this bit was last cleared by
--  RESETSTKYCLR in the RSTCTL register
      NORES,
      --  The peripheral was reset since the last bit clear
      RESET)
     with Size => 1;
   for CRC_STAT_RESETSTKY_Field use
     (NORES => 0,
      RESET => 1);

   --  Status Register
   type CRC_STAT_CRC_GPRCM[%s]_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16;
      --  Read-only. This bit indicates, if the peripheral was reset, since
      --  this bit was cleared by RESETSTKYCLR in the RSTCTL register
      RESETSTKY      : CRC_STAT_RESETSTKY_Field;
      --  unspecified
      Reserved_17_31 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_STAT_CRC_GPRCM[%s]_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      RESETSTKY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   type CRC_GPRCM[%s]_Cluster is record
      --  Power enable
      CRC_PWREN  : aliased CRC_PWREN_CRC_GPRCM[%s]_Register;
      --  Reset Control
      CRC_RSTCTL : aliased CRC_RSTCTL_CRC_GPRCM[%s]_Register;
      --  Status Register
      CRC_STAT   : aliased CRC_STAT_CRC_GPRCM[%s]_Register;
   end record
     with Size => 192;

   for CRC_GPRCM[%s]_Cluster use record
      CRC_PWREN  at 16#0# range 0 .. 31;
      CRC_RSTCTL at 16#4# range 0 .. 31;
      CRC_STAT   at 16#14# range 0 .. 31;
   end record;

   subtype CRC_DESC_MINREV_Field is HAL.UInt4;
   subtype CRC_DESC_MAJREV_Field is HAL.UInt4;
   subtype CRC_DESC_INSTNUM_Field is HAL.UInt4;
   subtype CRC_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype CRC_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type CRC_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : CRC_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : CRC_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : CRC_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : CRC_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : CRC_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   --  CRC Bit Input and output Reverse. This bit indicates that the bit order
   --  of each input byte used for the CRC calculation is reversed before it is
   --  passed to the generator, and that the bit order of the calculated CRC is
   --  be reversed when read from CRC_RESULT.
   type CRC_CRCCTRL_BITREVERSE_Field is
     (--  Bit order is not reversed.
      NOT_REVERSED,
      --  Bit order is reversed.
      REVERSED)
     with Size => 1;
   for CRC_CRCCTRL_BITREVERSE_Field use
     (NOT_REVERSED => 0,
      REVERSED => 1);

   --  CRC Endian. This bit indicates the byte order within a word or half word
   --  of input data.
   type CRC_CRCCTRL_INPUT_ENDIANNESS_Field is
     (--  LSB is lowest memory address and first to be processed.
      LITTLE_ENDIAN,
      --  LSB is highest memory address and last to be processed.
      BIG_ENDIAN)
     with Size => 1;
   for CRC_CRCCTRL_INPUT_ENDIANNESS_Field use
     (LITTLE_ENDIAN => 0,
      BIG_ENDIAN => 1);

   --  CRC Output Byteswap Enable. This bit controls whether the output is
   --  byte-swapped upon a read of the CRCOUT register. If CRCOUT is accessed
   --  as a half-word, and the OUTPUT_BYTESWAP is set to to 1, then the two
   --  bytes in the 16-bit access are swapped and returned. B1 is returned as
   --  B0 B0 is returned as B1 If CRCOUT is accessed as a word, and the
   --  OUTPUT_BYTESWAP is set to 1, then the four bytes in the 32-bit read are
   --  swapped. B3 is returned as B0 B2 is returned as B1 B1 is returned as B2
   --  B0 is returned as B3 Note that if the CRC POLYSIZE is 16-bit and a
   --  32-bit read of CRCOUT is performed with OUTPUT_BYTESWAP enabled, then
   --  the output is: MSB LSB 0x0 0x0 B0 B1 If the CRC POLYSIZE is 16-bit and a
   --  32-bit read of CRCOUT is performed with OUTPUT_BYTESWAP disabled, then
   --  the output is: MSB LSB 0x0 0x0 B1 B0
   type CRC_CRCCTRL_OUTPUT_BYTESWAP_Field is
     (--  Output byteswapping is disabled
      DISABLE,
      --  Output byteswapping is enabled.
      ENABLE)
     with Size => 1;
   for CRC_CRCCTRL_OUTPUT_BYTESWAP_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  CRC Control Register
   type CRC_CRCCTRL_Register is record
      --  unspecified
      Reserved_0_0     : HAL.Bit := 16#0#;
      --  CRC Bit Input and output Reverse. This bit indicates that the bit
      --  order of each input byte used for the CRC calculation is reversed
      --  before it is passed to the generator, and that the bit order of the
      --  calculated CRC is be reversed when read from CRC_RESULT.
      BITREVERSE       : CRC_CRCCTRL_BITREVERSE_Field :=
                          MSPMC1104_SVD.CRC.NOT_REVERSED;
      --  CRC Endian. This bit indicates the byte order within a word or half
      --  word of input data.
      INPUT_ENDIANNESS : CRC_CRCCTRL_INPUT_ENDIANNESS_Field :=
                          MSPMC1104_SVD.CRC.LITTLE_ENDIAN;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  CRC Output Byteswap Enable. This bit controls whether the output is
      --  byte-swapped upon a read of the CRCOUT register. If CRCOUT is
      --  accessed as a half-word, and the OUTPUT_BYTESWAP is set to to 1, then
      --  the two bytes in the 16-bit access are swapped and returned. B1 is
      --  returned as B0 B0 is returned as B1 If CRCOUT is accessed as a word,
      --  and the OUTPUT_BYTESWAP is set to 1, then the four bytes in the
      --  32-bit read are swapped. B3 is returned as B0 B2 is returned as B1 B1
      --  is returned as B2 B0 is returned as B3 Note that if the CRC POLYSIZE
      --  is 16-bit and a 32-bit read of CRCOUT is performed with
      --  OUTPUT_BYTESWAP enabled, then the output is: MSB LSB 0x0 0x0 B0 B1 If
      --  the CRC POLYSIZE is 16-bit and a 32-bit read of CRCOUT is performed
      --  with OUTPUT_BYTESWAP disabled, then the output is: MSB LSB 0x0 0x0 B1
      --  B0
      OUTPUT_BYTESWAP  : CRC_CRCCTRL_OUTPUT_BYTESWAP_Field :=
                          MSPMC1104_SVD.CRC.DISABLE;
      --  unspecified
      Reserved_5_31    : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRC_CRCCTRL_Register use record
      Reserved_0_0     at 0 range 0 .. 0;
      BITREVERSE       at 0 range 1 .. 1;
      INPUT_ENDIANNESS at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      OUTPUT_BYTESWAP  at 0 range 4 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   --  CRC Input Data Array Register

   --  CRC Input Data Array Register
   type CRC_CRCIN_IDX_Registers is array (0 .. 511) of HAL.UInt32;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type CRC_Peripheral is record
      CRC_GPRCM[%s] : aliased CRC_GPRCM[%s]_Cluster;
      --  Module Description
      CRC_DESC      : aliased CRC_DESC_Register;
      --  CRC Control Register
      CRC_CRCCTRL   : aliased CRC_CRCCTRL_Register;
      --  CRC Seed Register
      CRC_CRCSEED   : aliased HAL.UInt32;
      --  CRC Input Data Register
      CRC_CRCIN     : aliased HAL.UInt32;
      --  CRC Output Result Register
      CRC_CRCOUT    : aliased HAL.UInt32;
      --  CRC Input Data Array Register
      CRC_CRCIN_IDX : aliased CRC_CRCIN_IDX_Registers;
   end record
     with Volatile;

   for CRC_Peripheral use record
      CRC_GPRCM[%s] at 16#800# range 0 .. 191;
      CRC_DESC      at 16#10FC# range 0 .. 31;
      CRC_CRCCTRL   at 16#1100# range 0 .. 31;
      CRC_CRCSEED   at 16#1104# range 0 .. 31;
      CRC_CRCIN     at 16#1108# range 0 .. 31;
      CRC_CRCOUT    at 16#110C# range 0 .. 31;
      CRC_CRCIN_IDX at 16#1800# range 0 .. 16383;
   end record;

   --  PERIPHERALREGION
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end MSPMC1104_SVD.CRC;
