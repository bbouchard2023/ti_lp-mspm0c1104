pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.EVENTLP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype EVENTLP_PUBCFG_DESC_EX_NUM_SINGLE_CHANNEL_Field is HAL.UInt8;
   subtype EVENTLP_PUBCFG_DESC_EX_NUM_DUAL_CHANNEL_Field is HAL.UInt8;
   subtype EVENTLP_PUBCFG_DESC_EX_NUM_IMPORT_Field is HAL.UInt8;
   subtype EVENTLP_PUBCFG_DESC_EX_NUM_EXPORT_Field is HAL.UInt8;

   --  Extended Module Description
   type EVENTLP_PUBCFG_DESC_EX_Register is record
      --  Read-only. Number of single channels contained in this instance of
      --  event manager
      NUM_SINGLE_CHANNEL : EVENTLP_PUBCFG_DESC_EX_NUM_SINGLE_CHANNEL_Field;
      --  Read-only. Number of dual channels contained in this instance of
      --  event manager
      NUM_DUAL_CHANNEL   : EVENTLP_PUBCFG_DESC_EX_NUM_DUAL_CHANNEL_Field;
      --  Read-only. Number of import ports available in this EventManager
      --  instantiation
      NUM_IMPORT         : EVENTLP_PUBCFG_DESC_EX_NUM_IMPORT_Field;
      --  Read-only. Number of export ports available in this EventManager
      --  instantiation
      NUM_EXPORT         : EVENTLP_PUBCFG_DESC_EX_NUM_EXPORT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_DESC_EX_Register use record
      NUM_SINGLE_CHANNEL at 0 range 0 .. 7;
      NUM_DUAL_CHANNEL   at 0 range 8 .. 15;
      NUM_IMPORT         at 0 range 16 .. 23;
      NUM_EXPORT         at 0 range 24 .. 31;
   end record;

   subtype EVENTLP_PUBCFG_DESC_MINREV_Field is HAL.UInt4;
   subtype EVENTLP_PUBCFG_DESC_MAJREV_Field is HAL.UInt4;
   subtype EVENTLP_PUBCFG_DESC_INSTNUM_Field is HAL.UInt4;
   subtype EVENTLP_PUBCFG_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype EVENTLP_PUBCFG_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type EVENTLP_PUBCFG_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : EVENTLP_PUBCFG_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : EVENTLP_PUBCFG_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : EVENTLP_PUBCFG_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : EVENTLP_PUBCFG_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : EVENTLP_PUBCFG_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   -------------------------------------------------
   -- EVENTLP_PUBCFG_FSUB[%s] cluster's Registers --
   -------------------------------------------------

   subtype EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_CHANID_Field is
     HAL.UInt8;

   --  Subscriber channel ID register
   type EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_Register is record
      --  Channel ID for subscriber to connect to
      CHANID        : EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Subscriber channel ID register
   type EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_Registers is array (0 .. 12)
     of EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_Register;

   type EVENTLP_PUBCFG_FSUB[%s]_Cluster is record
      --  Subscriber channel ID register
      EVENTLP_PUBCFG_FSUB_PORT : aliased EVENTLP_PUBCFG_FSUB_PORT_EVENTLP_PUBCFG_FSUB[%s]_Registers;
   end record
     with Size => 416;

   for EVENTLP_PUBCFG_FSUB[%s]_Cluster use record
      EVENTLP_PUBCFG_FSUB_PORT at 0 range 0 .. 415;
   end record;

   -------------------------------------------------
   -- EVENTLP_PUBCFG_FPUB[%s] cluster's Registers --
   -------------------------------------------------

   subtype EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_CHANID_Field is
     HAL.UInt8;

   --  Publisher channel ID register
   type EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_Register is record
      --  Channel ID for publisher to connect to
      CHANID        : EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Publisher channel ID register
   type EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_Registers is array (0 .. 9)
     of EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_Register;

   type EVENTLP_PUBCFG_FPUB[%s]_Cluster is record
      --  Publisher channel ID register
      EVENTLP_PUBCFG_FPUB_PORT : aliased EVENTLP_PUBCFG_FPUB_PORT_EVENTLP_PUBCFG_FPUB[%s]_Registers;
   end record
     with Size => 320;

   for EVENTLP_PUBCFG_FPUB[%s]_Cluster use record
      EVENTLP_PUBCFG_FPUB_PORT at 0 range 0 .. 319;
   end record;

   ---------------------------------------------------
   -- EVENTLP_PUBCFG_EXPORT[%s] cluster's Registers --
   ---------------------------------------------------

   subtype EVENTLP_PUBCFG_EXPORT_PORT_EVENTLP_PUBCFG_EXPORT[%s]_CHANID_Field is
     HAL.UInt8;

   --  Export channel ID register
   type EVENTLP_PUBCFG_EXPORT_PORT_EVENTLP_PUBCFG_EXPORT[%s]_Register is record
      --  Channel ID for export side to connect to
      CHANID        : EVENTLP_PUBCFG_EXPORT_PORT_EVENTLP_PUBCFG_EXPORT[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_EXPORT_PORT_EVENTLP_PUBCFG_EXPORT[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type EVENTLP_PUBCFG_EXPORT[%s]_Cluster is record
      --  Export channel ID register
      EVENTLP_PUBCFG_EXPORT_PORT : aliased EVENTLP_PUBCFG_EXPORT_PORT_EVENTLP_PUBCFG_EXPORT[%s]_Register;
   end record
     with Size => 32;

   for EVENTLP_PUBCFG_EXPORT[%s]_Cluster use record
      EVENTLP_PUBCFG_EXPORT_PORT at 0 range 0 .. 31;
   end record;

   ---------------------------------------------------
   -- EVENTLP_PUBCFG_IMPORT[%s] cluster's Registers --
   ---------------------------------------------------

   subtype EVENTLP_PUBCFG_IMPORT_PORT_EVENTLP_PUBCFG_IMPORT[%s]_CHANID_Field is
     HAL.UInt8;

   --  Import channel ID registe
   type EVENTLP_PUBCFG_IMPORT_PORT_EVENTLP_PUBCFG_IMPORT[%s]_Register is record
      --  Channel ID for import side to connect to
      CHANID        : EVENTLP_PUBCFG_IMPORT_PORT_EVENTLP_PUBCFG_IMPORT[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_PUBCFG_IMPORT_PORT_EVENTLP_PUBCFG_IMPORT[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type EVENTLP_PUBCFG_IMPORT[%s]_Cluster is record
      --  Import channel ID registe
      EVENTLP_PUBCFG_IMPORT_PORT : aliased EVENTLP_PUBCFG_IMPORT_PORT_EVENTLP_PUBCFG_IMPORT[%s]_Register;
   end record
     with Size => 32;

   for EVENTLP_PUBCFG_IMPORT[%s]_Cluster use record
      EVENTLP_PUBCFG_IMPORT_PORT at 0 range 0 .. 31;
   end record;

   --------------------------------------------------------
   -- EVENTLP_PUBCFG_CPU_CONNECT[%s] cluster's Registers --
   --------------------------------------------------------

   --  CPU connect register

   --  CPU connect register
   type EVENTLP_PUBCFG_CPU_NUM_EVENTLP_PUBCFG_CPU_CONNECT[%s]_Registers is array (0 .. 11)
     of HAL.UInt32;

   type EVENTLP_PUBCFG_CPU_CONNECT[%s]_Cluster is record
      --  CPU connect register
      EVENTLP_PUBCFG_CPU_NUM : aliased EVENTLP_PUBCFG_CPU_NUM_EVENTLP_PUBCFG_CPU_CONNECT[%s]_Registers;
   end record
     with Size => 384;

   for EVENTLP_PUBCFG_CPU_CONNECT[%s]_Cluster use record
      EVENTLP_PUBCFG_CPU_NUM at 0 range 0 .. 383;
   end record;

   subtype EVENTLP_SECCFG_DESC_EX_NUM_SINGLE_CHANNEL_Field is HAL.UInt8;
   subtype EVENTLP_SECCFG_DESC_EX_NUM_DUAL_CHANNEL_Field is HAL.UInt8;
   subtype EVENTLP_SECCFG_DESC_EX_NUM_IMPORT_Field is HAL.UInt8;
   subtype EVENTLP_SECCFG_DESC_EX_NUM_EXPORT_Field is HAL.UInt8;

   --  Extended Module Description
   type EVENTLP_SECCFG_DESC_EX_Register is record
      --  Read-only. Number of single channels contained in this instance of
      --  event manager
      NUM_SINGLE_CHANNEL : EVENTLP_SECCFG_DESC_EX_NUM_SINGLE_CHANNEL_Field;
      --  Read-only. Number of dual channels contained in this instance of
      --  event manager
      NUM_DUAL_CHANNEL   : EVENTLP_SECCFG_DESC_EX_NUM_DUAL_CHANNEL_Field;
      --  Read-only. Number of import ports available in this EventManager
      --  instantiation
      NUM_IMPORT         : EVENTLP_SECCFG_DESC_EX_NUM_IMPORT_Field;
      --  Read-only. Number of export ports available in this EventManager
      --  instantiation
      NUM_EXPORT         : EVENTLP_SECCFG_DESC_EX_NUM_EXPORT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_SECCFG_DESC_EX_Register use record
      NUM_SINGLE_CHANNEL at 0 range 0 .. 7;
      NUM_DUAL_CHANNEL   at 0 range 8 .. 15;
      NUM_IMPORT         at 0 range 16 .. 23;
      NUM_EXPORT         at 0 range 24 .. 31;
   end record;

   subtype EVENTLP_SECCFG_DESC_MINREV_Field is HAL.UInt4;
   subtype EVENTLP_SECCFG_DESC_MAJREV_Field is HAL.UInt4;
   subtype EVENTLP_SECCFG_DESC_INSTNUM_Field is HAL.UInt4;
   subtype EVENTLP_SECCFG_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype EVENTLP_SECCFG_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type EVENTLP_SECCFG_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV     : EVENTLP_SECCFG_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV     : EVENTLP_SECCFG_DESC_MAJREV_Field;
      --  Read-only. Instance Number within the device. This will be a
      --  parameter to the RTL for modules that can have multiple instances
      INSTNUM    : EVENTLP_SECCFG_DESC_INSTNUM_Field;
      --  Read-only. Feature Set for the module *instance*
      FEATUREVER : EVENTLP_SECCFG_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID   : EVENTLP_SECCFG_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_SECCFG_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   -------------------------------------------------
   -- EVENTLP_SECCFG_FSUB[%s] cluster's Registers --
   -------------------------------------------------

   --  Subscriber channel ID register

   --  Subscriber channel ID register
   type EVENTLP_SECCFG_FSUB_PORT_EVENTLP_SECCFG_FSUB[%s]_Registers is array (0 .. 12)
     of HAL.UInt8;

   type EVENTLP_SECCFG_FSUB[%s]_Cluster is record
      --  Subscriber channel ID register
      EVENTLP_SECCFG_FSUB_PORT : aliased EVENTLP_SECCFG_FSUB_PORT_EVENTLP_SECCFG_FSUB[%s]_Registers;
   end record
     with Size => 128;

   for EVENTLP_SECCFG_FSUB[%s]_Cluster use record
      EVENTLP_SECCFG_FSUB_PORT at 0 range 0 .. 103;
   end record;

   -------------------------------------------------
   -- EVENTLP_SECCFG_FPUB[%s] cluster's Registers --
   -------------------------------------------------

   --  Publisher channel ID register

   --  Publisher channel ID register
   type EVENTLP_SECCFG_FPUB_PORT_EVENTLP_SECCFG_FPUB[%s]_Registers is array (0 .. 9)
     of HAL.UInt8;

   type EVENTLP_SECCFG_FPUB[%s]_Cluster is record
      --  Publisher channel ID register
      EVENTLP_SECCFG_FPUB_PORT : aliased EVENTLP_SECCFG_FPUB_PORT_EVENTLP_SECCFG_FPUB[%s]_Registers;
   end record
     with Size => 96;

   for EVENTLP_SECCFG_FPUB[%s]_Cluster use record
      EVENTLP_SECCFG_FPUB_PORT at 0 range 0 .. 79;
   end record;

   ---------------------------------------------------
   -- EVENTLP_SECCFG_EXPORT[%s] cluster's Registers --
   ---------------------------------------------------

   type EVENTLP_SECCFG_EXPORT[%s]_Cluster is record
      --  Export channel ID register
      EVENTLP_SECCFG_EXPORT_PORT : aliased HAL.UInt8;
   end record
     with Size => 32;

   for EVENTLP_SECCFG_EXPORT[%s]_Cluster use record
      EVENTLP_SECCFG_EXPORT_PORT at 0 range 0 .. 7;
   end record;

   ---------------------------------------------------
   -- EVENTLP_SECCFG_IMPORT[%s] cluster's Registers --
   ---------------------------------------------------

   type EVENTLP_SECCFG_IMPORT[%s]_Cluster is record
      --  Import channel ID registe
      EVENTLP_SECCFG_IMPORT_PORT : aliased HAL.UInt8;
   end record
     with Size => 32;

   for EVENTLP_SECCFG_IMPORT[%s]_Cluster use record
      EVENTLP_SECCFG_IMPORT_PORT at 0 range 0 .. 7;
   end record;

   --------------------------------------------------------
   -- EVENTLP_SECCFG_CPU_CONNECT[%s] cluster's Registers --
   --------------------------------------------------------

   --  CPU connect register

   --  CPU connect register
   type EVENTLP_SECCFG_CPU_NUM_EVENTLP_SECCFG_CPU_CONNECT[%s]_Registers is array (0 .. 11)
     of HAL.UInt8;

   type EVENTLP_SECCFG_CPU_CONNECT[%s]_Cluster is record
      --  CPU connect register
      EVENTLP_SECCFG_CPU_NUM : aliased EVENTLP_SECCFG_CPU_NUM_EVENTLP_SECCFG_CPU_CONNECT[%s]_Registers;
   end record
     with Size => 96;

   for EVENTLP_SECCFG_CPU_CONNECT[%s]_Cluster use record
      EVENTLP_SECCFG_CPU_NUM at 0 range 0 .. 95;
   end record;

   --  Enable overwrite of config even if resources are already configured. By
   --  default, a configuration cannot be overwritten.
   type EVENTLP_CTL_OVRWR_EN_Field is
     (--  Reset value for the field
      EVENTLP_CTL_OVRWR_EN_Field_Reset,
      --  Overwrite is disabled. Mode is same as in UNASG aperture.
      DISABLE,
      --  Ovewrite is enabled
      ENABLED)
     with Size => 4;
   for EVENTLP_CTL_OVRWR_EN_Field use
     (EVENTLP_CTL_OVRWR_EN_Field_Reset => 0,
      DISABLE => 5,
      ENABLED => 10);

   --  Event Manager control register
   type EVENTLP_CTL_Register is record
      --  Enable overwrite of config even if resources are already configured.
      --  By default, a configuration cannot be overwritten.
      OVRWR_EN     : EVENTLP_CTL_OVRWR_EN_Field :=
                      EVENTLP_CTL_OVRWR_EN_Field_Reset;
      --  unspecified
      Reserved_4_7 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 8,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_CTL_Register use record
      OVRWR_EN     at 0 range 0 .. 3;
      Reserved_4_7 at 0 range 4 .. 7;
   end record;

   ----------------------------------------------------
   -- EVENTLP_LMGMT_SFTYDIAG[%s] cluster's Registers --
   ----------------------------------------------------

   --  Writing a 1 will cause the safety diagnostic logic to generate a
   --  diagnostic check.
   type EVENTLP_DIAGPAR192_ASSERTDIAG_Field is
     (--  No Effect
      NO_EFFECT,
      --  Generate diagnostic check
      START)
     with Size => 1;
   for EVENTLP_DIAGPAR192_ASSERTDIAG_Field use
     (NO_EFFECT => 0,
      START => 1);

   --  Diagnostic Parity Register 768
   type EVENTLP_DIAGPAR_Register is record
      --  Write-only. Writing a 1 will cause the safety diagnostic logic to
      --  generate a diagnostic check.
      ASSERTDIAG    : EVENTLP_DIAGPAR192_ASSERTDIAG_Field :=
                       MSPMC1104_SVD.EVENTLP.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_DIAGPAR_Register use record
      ASSERTDIAG    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Writing a 1 will synchronously clear the Diagnostic Interface. The
   --  STICKY bits for status and well as the PARFV will be cleared. If a true
   --  functional failure still exists, the interface will re-assert FUNCFAIL
   --  on the cycle following the interface reset
   type EVENTLP_DIAGIFRST_ASSERTIFRST_Field is
     (--  No Effect
      NO_EFFECT,
      --  Clear
      CLR)
     with Size => 1;
   for EVENTLP_DIAGIFRST_ASSERTIFRST_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Writing a 1 will synchronously clear the PARFV MMR DPINDEX field. The
   --  STICKY bit for DIAGPASS status will be cleared as well.
   type EVENTLP_DIAGIFRST_DIAGPASSCLR_Field is
     (--  No Effect
      NO_EFFECT,
      --  Clear
      CLR)
     with Size => 1;
   for EVENTLP_DIAGIFRST_DIAGPASSCLR_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Diagnostic Interface Reset Register
   type EVENTLP_DIAGIFRST_EVENTLP_LMGMT_SFTYDIAG[%s]_Register is record
      --  Write-only. Writing a 1 will synchronously clear the Diagnostic
      --  Interface. The STICKY bits for status and well as the PARFV will be
      --  cleared. If a true functional failure still exists, the interface
      --  will re-assert FUNCFAIL on the cycle following the interface reset
      ASSERTIFRST   : EVENTLP_DIAGIFRST_ASSERTIFRST_Field :=
                       MSPMC1104_SVD.EVENTLP.NO_EFFECT;
      --  Write-only. Writing a 1 will synchronously clear the PARFV MMR
      --  DPINDEX field. The STICKY bit for DIAGPASS status will be cleared as
      --  well.
      DIAGPASSCLR   : EVENTLP_DIAGIFRST_DIAGPASSCLR_Field :=
                       MSPMC1104_SVD.EVENTLP.NO_EFFECT;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_DIAGIFRST_EVENTLP_LMGMT_SFTYDIAG[%s]_Register use record
      ASSERTIFRST   at 0 range 0 .. 0;
      DIAGPASSCLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_INDEX_Field is
     HAL.UInt10;
   subtype EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_DPINDEX_Field is
     HAL.UInt10;

   --  Diagnostic Parity Fail Vector Register
   type EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_Register is record
      --  Read-only. Index of DIAG MMR creating the failure. NOTE: INDEX value
      --  of 1 corresponds to DIAGPAR0, 2 corresponds to DIAGPAR1 and so on.
      INDEX          : EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_INDEX_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
      --  Read-only. Index of DIAG PASS MMR. NOTE: DPINDEX value of 1
      --  corresponds to DIAGPAR0, 2 corresponds to DIAGPAR1 and so on.
      DPINDEX        : EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_DPINDEX_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_Register use record
      INDEX          at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      DPINDEX        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  Current diagnostic state
   type EVENTLP_DIAGSTAT_STATE_Field is
     (--  No failures and no diagnostic
      NONE,
      --  Functional Failure
      FUNC_FAIL,
      --  Diagnostic Failure
      DIAG_FAIL,
      --  Diagnostic Pass
      DIAG_PASS)
     with Size => 3;
   for EVENTLP_DIAGSTAT_STATE_Field use
     (NONE => 0,
      FUNC_FAIL => 1,
      DIAG_FAIL => 2,
      DIAG_PASS => 4);

   subtype EVENTLP_DIAGSTAT_EVENTLP_LMGMT_SFTYDIAG[%s]_NUMDIAG_Field is
     HAL.UInt10;

   --  Diagnostic Status Register
   type EVENTLP_DIAGSTAT_EVENTLP_LMGMT_SFTYDIAG[%s]_Register is record
      --  Read-only. Current diagnostic state
      STATE          : EVENTLP_DIAGSTAT_STATE_Field;
      --  unspecified
      Reserved_3_15  : HAL.UInt13;
      --  Read-only. This is a hardware constant that indicates how many
      --  DIAGPAR registers are included in this SFTYDIAG sub-region.
      NUMDIAG        : EVENTLP_DIAGSTAT_EVENTLP_LMGMT_SFTYDIAG[%s]_NUMDIAG_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_DIAGSTAT_EVENTLP_LMGMT_SFTYDIAG[%s]_Register use record
      STATE          at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      NUMDIAG        at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type EVENTLP_LMGMT_SFTYDIAG[%s]_Cluster is record
      --  Diagnostic Parity Register 768
      EVENTLP_DIAGPAR192 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 191
      EVENTLP_DIAGPAR191 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 190
      EVENTLP_DIAGPAR190 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 189
      EVENTLP_DIAGPAR189 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 188
      EVENTLP_DIAGPAR188 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 187
      EVENTLP_DIAGPAR187 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 186
      EVENTLP_DIAGPAR186 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 185
      EVENTLP_DIAGPAR185 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 184
      EVENTLP_DIAGPAR184 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 183
      EVENTLP_DIAGPAR183 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 182
      EVENTLP_DIAGPAR182 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 181
      EVENTLP_DIAGPAR181 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 180
      EVENTLP_DIAGPAR180 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 179
      EVENTLP_DIAGPAR179 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 178
      EVENTLP_DIAGPAR178 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 177
      EVENTLP_DIAGPAR177 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 176
      EVENTLP_DIAGPAR176 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 175
      EVENTLP_DIAGPAR175 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 174
      EVENTLP_DIAGPAR174 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 173
      EVENTLP_DIAGPAR173 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 172
      EVENTLP_DIAGPAR172 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 171
      EVENTLP_DIAGPAR171 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 170
      EVENTLP_DIAGPAR170 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 169
      EVENTLP_DIAGPAR169 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 168
      EVENTLP_DIAGPAR168 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 167
      EVENTLP_DIAGPAR167 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 166
      EVENTLP_DIAGPAR166 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 165
      EVENTLP_DIAGPAR165 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 164
      EVENTLP_DIAGPAR164 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 163
      EVENTLP_DIAGPAR163 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 162
      EVENTLP_DIAGPAR162 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 161
      EVENTLP_DIAGPAR161 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 160
      EVENTLP_DIAGPAR160 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 159
      EVENTLP_DIAGPAR159 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 158
      EVENTLP_DIAGPAR158 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 157
      EVENTLP_DIAGPAR157 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 156
      EVENTLP_DIAGPAR156 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 155
      EVENTLP_DIAGPAR155 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 154
      EVENTLP_DIAGPAR154 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 153
      EVENTLP_DIAGPAR153 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 152
      EVENTLP_DIAGPAR152 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 151
      EVENTLP_DIAGPAR151 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 150
      EVENTLP_DIAGPAR150 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 149
      EVENTLP_DIAGPAR149 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 148
      EVENTLP_DIAGPAR148 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 147
      EVENTLP_DIAGPAR147 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 146
      EVENTLP_DIAGPAR146 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 145
      EVENTLP_DIAGPAR145 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 144
      EVENTLP_DIAGPAR144 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 143
      EVENTLP_DIAGPAR143 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 142
      EVENTLP_DIAGPAR142 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 141
      EVENTLP_DIAGPAR141 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 140
      EVENTLP_DIAGPAR140 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 139
      EVENTLP_DIAGPAR139 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 138
      EVENTLP_DIAGPAR138 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 137
      EVENTLP_DIAGPAR137 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 136
      EVENTLP_DIAGPAR136 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 135
      EVENTLP_DIAGPAR135 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 134
      EVENTLP_DIAGPAR134 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 133
      EVENTLP_DIAGPAR133 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 132
      EVENTLP_DIAGPAR132 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 131
      EVENTLP_DIAGPAR131 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 130
      EVENTLP_DIAGPAR130 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 129
      EVENTLP_DIAGPAR129 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 128
      EVENTLP_DIAGPAR128 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 127
      EVENTLP_DIAGPAR127 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 126
      EVENTLP_DIAGPAR126 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 125
      EVENTLP_DIAGPAR125 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 124
      EVENTLP_DIAGPAR124 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 123
      EVENTLP_DIAGPAR123 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 122
      EVENTLP_DIAGPAR122 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 121
      EVENTLP_DIAGPAR121 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 120
      EVENTLP_DIAGPAR120 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 119
      EVENTLP_DIAGPAR119 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 118
      EVENTLP_DIAGPAR118 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 117
      EVENTLP_DIAGPAR117 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 116
      EVENTLP_DIAGPAR116 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 115
      EVENTLP_DIAGPAR115 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 114
      EVENTLP_DIAGPAR114 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 113
      EVENTLP_DIAGPAR113 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 112
      EVENTLP_DIAGPAR112 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 111
      EVENTLP_DIAGPAR111 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 110
      EVENTLP_DIAGPAR110 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 109
      EVENTLP_DIAGPAR109 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 108
      EVENTLP_DIAGPAR108 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 107
      EVENTLP_DIAGPAR107 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 106
      EVENTLP_DIAGPAR106 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 105
      EVENTLP_DIAGPAR105 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 104
      EVENTLP_DIAGPAR104 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 103
      EVENTLP_DIAGPAR103 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 102
      EVENTLP_DIAGPAR102 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 101
      EVENTLP_DIAGPAR101 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 100
      EVENTLP_DIAGPAR100 : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 99
      EVENTLP_DIAGPAR99  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 98
      EVENTLP_DIAGPAR98  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 97
      EVENTLP_DIAGPAR97  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 96
      EVENTLP_DIAGPAR96  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 95
      EVENTLP_DIAGPAR95  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 94
      EVENTLP_DIAGPAR94  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 93
      EVENTLP_DIAGPAR93  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 92
      EVENTLP_DIAGPAR92  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 91
      EVENTLP_DIAGPAR91  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 90
      EVENTLP_DIAGPAR90  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 89
      EVENTLP_DIAGPAR89  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 88
      EVENTLP_DIAGPAR88  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 87
      EVENTLP_DIAGPAR87  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 86
      EVENTLP_DIAGPAR86  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 85
      EVENTLP_DIAGPAR85  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 84
      EVENTLP_DIAGPAR84  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 83
      EVENTLP_DIAGPAR83  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 82
      EVENTLP_DIAGPAR82  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 81
      EVENTLP_DIAGPAR81  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 80
      EVENTLP_DIAGPAR80  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 79
      EVENTLP_DIAGPAR79  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 78
      EVENTLP_DIAGPAR78  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 77
      EVENTLP_DIAGPAR77  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 76
      EVENTLP_DIAGPAR76  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 75
      EVENTLP_DIAGPAR75  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 74
      EVENTLP_DIAGPAR74  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 73
      EVENTLP_DIAGPAR73  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 72
      EVENTLP_DIAGPAR72  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 71
      EVENTLP_DIAGPAR71  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 70
      EVENTLP_DIAGPAR70  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 69
      EVENTLP_DIAGPAR69  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 68
      EVENTLP_DIAGPAR68  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 67
      EVENTLP_DIAGPAR67  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 66
      EVENTLP_DIAGPAR66  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 65
      EVENTLP_DIAGPAR65  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 64
      EVENTLP_DIAGPAR64  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 63
      EVENTLP_DIAGPAR63  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 62
      EVENTLP_DIAGPAR62  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 61
      EVENTLP_DIAGPAR61  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 60
      EVENTLP_DIAGPAR60  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 59
      EVENTLP_DIAGPAR59  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 58
      EVENTLP_DIAGPAR58  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 57
      EVENTLP_DIAGPAR57  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 56
      EVENTLP_DIAGPAR56  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 55
      EVENTLP_DIAGPAR55  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 54
      EVENTLP_DIAGPAR54  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 53
      EVENTLP_DIAGPAR53  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 52
      EVENTLP_DIAGPAR52  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 51
      EVENTLP_DIAGPAR51  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 50
      EVENTLP_DIAGPAR50  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 49
      EVENTLP_DIAGPAR49  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 48
      EVENTLP_DIAGPAR48  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 47
      EVENTLP_DIAGPAR47  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 46
      EVENTLP_DIAGPAR46  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 45
      EVENTLP_DIAGPAR45  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 44
      EVENTLP_DIAGPAR44  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 43
      EVENTLP_DIAGPAR43  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 42
      EVENTLP_DIAGPAR42  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 41
      EVENTLP_DIAGPAR41  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 40
      EVENTLP_DIAGPAR40  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 39
      EVENTLP_DIAGPAR39  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 38
      EVENTLP_DIAGPAR38  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 37
      EVENTLP_DIAGPAR37  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 36
      EVENTLP_DIAGPAR36  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 35
      EVENTLP_DIAGPAR35  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 34
      EVENTLP_DIAGPAR34  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 33
      EVENTLP_DIAGPAR33  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 32
      EVENTLP_DIAGPAR32  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 31
      EVENTLP_DIAGPAR31  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 30
      EVENTLP_DIAGPAR30  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 29
      EVENTLP_DIAGPAR29  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 28
      EVENTLP_DIAGPAR28  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 27
      EVENTLP_DIAGPAR27  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 26
      EVENTLP_DIAGPAR26  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 25
      EVENTLP_DIAGPAR25  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 24
      EVENTLP_DIAGPAR24  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 23
      EVENTLP_DIAGPAR23  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 22
      EVENTLP_DIAGPAR22  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 21
      EVENTLP_DIAGPAR21  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 20
      EVENTLP_DIAGPAR20  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 19
      EVENTLP_DIAGPAR19  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 18
      EVENTLP_DIAGPAR18  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 17
      EVENTLP_DIAGPAR17  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 16
      EVENTLP_DIAGPAR16  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 15
      EVENTLP_DIAGPAR15  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 14
      EVENTLP_DIAGPAR14  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 13
      EVENTLP_DIAGPAR13  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 12
      EVENTLP_DIAGPAR12  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 11
      EVENTLP_DIAGPAR11  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 10
      EVENTLP_DIAGPAR10  : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 9
      EVENTLP_DIAGPAR9   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 8
      EVENTLP_DIAGPAR8   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 7
      EVENTLP_DIAGPAR7   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 6
      EVENTLP_DIAGPAR6   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 5
      EVENTLP_DIAGPAR5   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 4
      EVENTLP_DIAGPAR4   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 3
      EVENTLP_DIAGPAR3   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 2
      EVENTLP_DIAGPAR2   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 1
      EVENTLP_DIAGPAR1   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Parity Register 0
      EVENTLP_DIAGPAR0   : aliased EVENTLP_DIAGPAR_Register;
      --  Diagnostic Interface Reset Register
      EVENTLP_DIAGIFRST  : aliased EVENTLP_DIAGIFRST_EVENTLP_LMGMT_SFTYDIAG[%s]_Register;
      --  Diagnostic Parity Fail Vector Register
      EVENTLP_DIAGPARFV  : aliased EVENTLP_DIAGPARFV_EVENTLP_LMGMT_SFTYDIAG[%s]_Register;
      --  Diagnostic Status Register
      EVENTLP_DIAGSTAT   : aliased EVENTLP_DIAGSTAT_EVENTLP_LMGMT_SFTYDIAG[%s]_Register;
   end record
     with Size => 8192;

   for EVENTLP_LMGMT_SFTYDIAG[%s]_Cluster use record
      EVENTLP_DIAGPAR192 at 16#EC# range 0 .. 31;
      EVENTLP_DIAGPAR191 at 16#F0# range 0 .. 31;
      EVENTLP_DIAGPAR190 at 16#F4# range 0 .. 31;
      EVENTLP_DIAGPAR189 at 16#F8# range 0 .. 31;
      EVENTLP_DIAGPAR188 at 16#FC# range 0 .. 31;
      EVENTLP_DIAGPAR187 at 16#100# range 0 .. 31;
      EVENTLP_DIAGPAR186 at 16#104# range 0 .. 31;
      EVENTLP_DIAGPAR185 at 16#108# range 0 .. 31;
      EVENTLP_DIAGPAR184 at 16#10C# range 0 .. 31;
      EVENTLP_DIAGPAR183 at 16#110# range 0 .. 31;
      EVENTLP_DIAGPAR182 at 16#114# range 0 .. 31;
      EVENTLP_DIAGPAR181 at 16#118# range 0 .. 31;
      EVENTLP_DIAGPAR180 at 16#11C# range 0 .. 31;
      EVENTLP_DIAGPAR179 at 16#120# range 0 .. 31;
      EVENTLP_DIAGPAR178 at 16#124# range 0 .. 31;
      EVENTLP_DIAGPAR177 at 16#128# range 0 .. 31;
      EVENTLP_DIAGPAR176 at 16#12C# range 0 .. 31;
      EVENTLP_DIAGPAR175 at 16#130# range 0 .. 31;
      EVENTLP_DIAGPAR174 at 16#134# range 0 .. 31;
      EVENTLP_DIAGPAR173 at 16#138# range 0 .. 31;
      EVENTLP_DIAGPAR172 at 16#13C# range 0 .. 31;
      EVENTLP_DIAGPAR171 at 16#140# range 0 .. 31;
      EVENTLP_DIAGPAR170 at 16#144# range 0 .. 31;
      EVENTLP_DIAGPAR169 at 16#148# range 0 .. 31;
      EVENTLP_DIAGPAR168 at 16#14C# range 0 .. 31;
      EVENTLP_DIAGPAR167 at 16#150# range 0 .. 31;
      EVENTLP_DIAGPAR166 at 16#154# range 0 .. 31;
      EVENTLP_DIAGPAR165 at 16#158# range 0 .. 31;
      EVENTLP_DIAGPAR164 at 16#15C# range 0 .. 31;
      EVENTLP_DIAGPAR163 at 16#160# range 0 .. 31;
      EVENTLP_DIAGPAR162 at 16#164# range 0 .. 31;
      EVENTLP_DIAGPAR161 at 16#168# range 0 .. 31;
      EVENTLP_DIAGPAR160 at 16#16C# range 0 .. 31;
      EVENTLP_DIAGPAR159 at 16#170# range 0 .. 31;
      EVENTLP_DIAGPAR158 at 16#174# range 0 .. 31;
      EVENTLP_DIAGPAR157 at 16#178# range 0 .. 31;
      EVENTLP_DIAGPAR156 at 16#17C# range 0 .. 31;
      EVENTLP_DIAGPAR155 at 16#180# range 0 .. 31;
      EVENTLP_DIAGPAR154 at 16#184# range 0 .. 31;
      EVENTLP_DIAGPAR153 at 16#188# range 0 .. 31;
      EVENTLP_DIAGPAR152 at 16#18C# range 0 .. 31;
      EVENTLP_DIAGPAR151 at 16#190# range 0 .. 31;
      EVENTLP_DIAGPAR150 at 16#194# range 0 .. 31;
      EVENTLP_DIAGPAR149 at 16#198# range 0 .. 31;
      EVENTLP_DIAGPAR148 at 16#19C# range 0 .. 31;
      EVENTLP_DIAGPAR147 at 16#1A0# range 0 .. 31;
      EVENTLP_DIAGPAR146 at 16#1A4# range 0 .. 31;
      EVENTLP_DIAGPAR145 at 16#1A8# range 0 .. 31;
      EVENTLP_DIAGPAR144 at 16#1AC# range 0 .. 31;
      EVENTLP_DIAGPAR143 at 16#1B0# range 0 .. 31;
      EVENTLP_DIAGPAR142 at 16#1B4# range 0 .. 31;
      EVENTLP_DIAGPAR141 at 16#1B8# range 0 .. 31;
      EVENTLP_DIAGPAR140 at 16#1BC# range 0 .. 31;
      EVENTLP_DIAGPAR139 at 16#1C0# range 0 .. 31;
      EVENTLP_DIAGPAR138 at 16#1C4# range 0 .. 31;
      EVENTLP_DIAGPAR137 at 16#1C8# range 0 .. 31;
      EVENTLP_DIAGPAR136 at 16#1CC# range 0 .. 31;
      EVENTLP_DIAGPAR135 at 16#1D0# range 0 .. 31;
      EVENTLP_DIAGPAR134 at 16#1D4# range 0 .. 31;
      EVENTLP_DIAGPAR133 at 16#1D8# range 0 .. 31;
      EVENTLP_DIAGPAR132 at 16#1DC# range 0 .. 31;
      EVENTLP_DIAGPAR131 at 16#1E0# range 0 .. 31;
      EVENTLP_DIAGPAR130 at 16#1E4# range 0 .. 31;
      EVENTLP_DIAGPAR129 at 16#1E8# range 0 .. 31;
      EVENTLP_DIAGPAR128 at 16#1EC# range 0 .. 31;
      EVENTLP_DIAGPAR127 at 16#1F0# range 0 .. 31;
      EVENTLP_DIAGPAR126 at 16#1F4# range 0 .. 31;
      EVENTLP_DIAGPAR125 at 16#1F8# range 0 .. 31;
      EVENTLP_DIAGPAR124 at 16#1FC# range 0 .. 31;
      EVENTLP_DIAGPAR123 at 16#200# range 0 .. 31;
      EVENTLP_DIAGPAR122 at 16#204# range 0 .. 31;
      EVENTLP_DIAGPAR121 at 16#208# range 0 .. 31;
      EVENTLP_DIAGPAR120 at 16#20C# range 0 .. 31;
      EVENTLP_DIAGPAR119 at 16#210# range 0 .. 31;
      EVENTLP_DIAGPAR118 at 16#214# range 0 .. 31;
      EVENTLP_DIAGPAR117 at 16#218# range 0 .. 31;
      EVENTLP_DIAGPAR116 at 16#21C# range 0 .. 31;
      EVENTLP_DIAGPAR115 at 16#220# range 0 .. 31;
      EVENTLP_DIAGPAR114 at 16#224# range 0 .. 31;
      EVENTLP_DIAGPAR113 at 16#228# range 0 .. 31;
      EVENTLP_DIAGPAR112 at 16#22C# range 0 .. 31;
      EVENTLP_DIAGPAR111 at 16#230# range 0 .. 31;
      EVENTLP_DIAGPAR110 at 16#234# range 0 .. 31;
      EVENTLP_DIAGPAR109 at 16#238# range 0 .. 31;
      EVENTLP_DIAGPAR108 at 16#23C# range 0 .. 31;
      EVENTLP_DIAGPAR107 at 16#240# range 0 .. 31;
      EVENTLP_DIAGPAR106 at 16#244# range 0 .. 31;
      EVENTLP_DIAGPAR105 at 16#248# range 0 .. 31;
      EVENTLP_DIAGPAR104 at 16#24C# range 0 .. 31;
      EVENTLP_DIAGPAR103 at 16#250# range 0 .. 31;
      EVENTLP_DIAGPAR102 at 16#254# range 0 .. 31;
      EVENTLP_DIAGPAR101 at 16#258# range 0 .. 31;
      EVENTLP_DIAGPAR100 at 16#25C# range 0 .. 31;
      EVENTLP_DIAGPAR99  at 16#260# range 0 .. 31;
      EVENTLP_DIAGPAR98  at 16#264# range 0 .. 31;
      EVENTLP_DIAGPAR97  at 16#268# range 0 .. 31;
      EVENTLP_DIAGPAR96  at 16#26C# range 0 .. 31;
      EVENTLP_DIAGPAR95  at 16#270# range 0 .. 31;
      EVENTLP_DIAGPAR94  at 16#274# range 0 .. 31;
      EVENTLP_DIAGPAR93  at 16#278# range 0 .. 31;
      EVENTLP_DIAGPAR92  at 16#27C# range 0 .. 31;
      EVENTLP_DIAGPAR91  at 16#280# range 0 .. 31;
      EVENTLP_DIAGPAR90  at 16#284# range 0 .. 31;
      EVENTLP_DIAGPAR89  at 16#288# range 0 .. 31;
      EVENTLP_DIAGPAR88  at 16#28C# range 0 .. 31;
      EVENTLP_DIAGPAR87  at 16#290# range 0 .. 31;
      EVENTLP_DIAGPAR86  at 16#294# range 0 .. 31;
      EVENTLP_DIAGPAR85  at 16#298# range 0 .. 31;
      EVENTLP_DIAGPAR84  at 16#29C# range 0 .. 31;
      EVENTLP_DIAGPAR83  at 16#2A0# range 0 .. 31;
      EVENTLP_DIAGPAR82  at 16#2A4# range 0 .. 31;
      EVENTLP_DIAGPAR81  at 16#2A8# range 0 .. 31;
      EVENTLP_DIAGPAR80  at 16#2AC# range 0 .. 31;
      EVENTLP_DIAGPAR79  at 16#2B0# range 0 .. 31;
      EVENTLP_DIAGPAR78  at 16#2B4# range 0 .. 31;
      EVENTLP_DIAGPAR77  at 16#2B8# range 0 .. 31;
      EVENTLP_DIAGPAR76  at 16#2BC# range 0 .. 31;
      EVENTLP_DIAGPAR75  at 16#2C0# range 0 .. 31;
      EVENTLP_DIAGPAR74  at 16#2C4# range 0 .. 31;
      EVENTLP_DIAGPAR73  at 16#2C8# range 0 .. 31;
      EVENTLP_DIAGPAR72  at 16#2CC# range 0 .. 31;
      EVENTLP_DIAGPAR71  at 16#2D0# range 0 .. 31;
      EVENTLP_DIAGPAR70  at 16#2D4# range 0 .. 31;
      EVENTLP_DIAGPAR69  at 16#2D8# range 0 .. 31;
      EVENTLP_DIAGPAR68  at 16#2DC# range 0 .. 31;
      EVENTLP_DIAGPAR67  at 16#2E0# range 0 .. 31;
      EVENTLP_DIAGPAR66  at 16#2E4# range 0 .. 31;
      EVENTLP_DIAGPAR65  at 16#2E8# range 0 .. 31;
      EVENTLP_DIAGPAR64  at 16#2EC# range 0 .. 31;
      EVENTLP_DIAGPAR63  at 16#2F0# range 0 .. 31;
      EVENTLP_DIAGPAR62  at 16#2F4# range 0 .. 31;
      EVENTLP_DIAGPAR61  at 16#2F8# range 0 .. 31;
      EVENTLP_DIAGPAR60  at 16#2FC# range 0 .. 31;
      EVENTLP_DIAGPAR59  at 16#300# range 0 .. 31;
      EVENTLP_DIAGPAR58  at 16#304# range 0 .. 31;
      EVENTLP_DIAGPAR57  at 16#308# range 0 .. 31;
      EVENTLP_DIAGPAR56  at 16#30C# range 0 .. 31;
      EVENTLP_DIAGPAR55  at 16#310# range 0 .. 31;
      EVENTLP_DIAGPAR54  at 16#314# range 0 .. 31;
      EVENTLP_DIAGPAR53  at 16#318# range 0 .. 31;
      EVENTLP_DIAGPAR52  at 16#31C# range 0 .. 31;
      EVENTLP_DIAGPAR51  at 16#320# range 0 .. 31;
      EVENTLP_DIAGPAR50  at 16#324# range 0 .. 31;
      EVENTLP_DIAGPAR49  at 16#328# range 0 .. 31;
      EVENTLP_DIAGPAR48  at 16#32C# range 0 .. 31;
      EVENTLP_DIAGPAR47  at 16#330# range 0 .. 31;
      EVENTLP_DIAGPAR46  at 16#334# range 0 .. 31;
      EVENTLP_DIAGPAR45  at 16#338# range 0 .. 31;
      EVENTLP_DIAGPAR44  at 16#33C# range 0 .. 31;
      EVENTLP_DIAGPAR43  at 16#340# range 0 .. 31;
      EVENTLP_DIAGPAR42  at 16#344# range 0 .. 31;
      EVENTLP_DIAGPAR41  at 16#348# range 0 .. 31;
      EVENTLP_DIAGPAR40  at 16#34C# range 0 .. 31;
      EVENTLP_DIAGPAR39  at 16#350# range 0 .. 31;
      EVENTLP_DIAGPAR38  at 16#354# range 0 .. 31;
      EVENTLP_DIAGPAR37  at 16#358# range 0 .. 31;
      EVENTLP_DIAGPAR36  at 16#35C# range 0 .. 31;
      EVENTLP_DIAGPAR35  at 16#360# range 0 .. 31;
      EVENTLP_DIAGPAR34  at 16#364# range 0 .. 31;
      EVENTLP_DIAGPAR33  at 16#368# range 0 .. 31;
      EVENTLP_DIAGPAR32  at 16#36C# range 0 .. 31;
      EVENTLP_DIAGPAR31  at 16#370# range 0 .. 31;
      EVENTLP_DIAGPAR30  at 16#374# range 0 .. 31;
      EVENTLP_DIAGPAR29  at 16#378# range 0 .. 31;
      EVENTLP_DIAGPAR28  at 16#37C# range 0 .. 31;
      EVENTLP_DIAGPAR27  at 16#380# range 0 .. 31;
      EVENTLP_DIAGPAR26  at 16#384# range 0 .. 31;
      EVENTLP_DIAGPAR25  at 16#388# range 0 .. 31;
      EVENTLP_DIAGPAR24  at 16#38C# range 0 .. 31;
      EVENTLP_DIAGPAR23  at 16#390# range 0 .. 31;
      EVENTLP_DIAGPAR22  at 16#394# range 0 .. 31;
      EVENTLP_DIAGPAR21  at 16#398# range 0 .. 31;
      EVENTLP_DIAGPAR20  at 16#39C# range 0 .. 31;
      EVENTLP_DIAGPAR19  at 16#3A0# range 0 .. 31;
      EVENTLP_DIAGPAR18  at 16#3A4# range 0 .. 31;
      EVENTLP_DIAGPAR17  at 16#3A8# range 0 .. 31;
      EVENTLP_DIAGPAR16  at 16#3AC# range 0 .. 31;
      EVENTLP_DIAGPAR15  at 16#3B0# range 0 .. 31;
      EVENTLP_DIAGPAR14  at 16#3B4# range 0 .. 31;
      EVENTLP_DIAGPAR13  at 16#3B8# range 0 .. 31;
      EVENTLP_DIAGPAR12  at 16#3BC# range 0 .. 31;
      EVENTLP_DIAGPAR11  at 16#3C0# range 0 .. 31;
      EVENTLP_DIAGPAR10  at 16#3C4# range 0 .. 31;
      EVENTLP_DIAGPAR9   at 16#3C8# range 0 .. 31;
      EVENTLP_DIAGPAR8   at 16#3CC# range 0 .. 31;
      EVENTLP_DIAGPAR7   at 16#3D0# range 0 .. 31;
      EVENTLP_DIAGPAR6   at 16#3D4# range 0 .. 31;
      EVENTLP_DIAGPAR5   at 16#3D8# range 0 .. 31;
      EVENTLP_DIAGPAR4   at 16#3DC# range 0 .. 31;
      EVENTLP_DIAGPAR3   at 16#3E0# range 0 .. 31;
      EVENTLP_DIAGPAR2   at 16#3E4# range 0 .. 31;
      EVENTLP_DIAGPAR1   at 16#3E8# range 0 .. 31;
      EVENTLP_DIAGPAR0   at 16#3EC# range 0 .. 31;
      EVENTLP_DIAGIFRST  at 16#3F4# range 0 .. 31;
      EVENTLP_DIAGPARFV  at 16#3F8# range 0 .. 31;
      EVENTLP_DIAGSTAT   at 16#3FC# range 0 .. 31;
   end record;

   ------------------------------------------------------
   -- EVENTLP_IMPEXPCFG_EXPORT[%s] cluster's Registers --
   ------------------------------------------------------

   subtype EVENTLP_IMPEXPCFG_EXPORT_PORT_EVENTLP_IMPEXPCFG_EXPORT[%s]_CHANID_Field is
     HAL.UInt8;

   --  Export channel ID register
   type EVENTLP_IMPEXPCFG_EXPORT_PORT_EVENTLP_IMPEXPCFG_EXPORT[%s]_Register is record
      --  Channel ID for import side to connect to
      CHANID        : EVENTLP_IMPEXPCFG_EXPORT_PORT_EVENTLP_IMPEXPCFG_EXPORT[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_IMPEXPCFG_EXPORT_PORT_EVENTLP_IMPEXPCFG_EXPORT[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type EVENTLP_IMPEXPCFG_EXPORT[%s]_Cluster is record
      --  Export channel ID register
      EVENTLP_IMPEXPCFG_EXPORT_PORT : aliased EVENTLP_IMPEXPCFG_EXPORT_PORT_EVENTLP_IMPEXPCFG_EXPORT[%s]_Register;
   end record
     with Size => 32;

   for EVENTLP_IMPEXPCFG_EXPORT[%s]_Cluster use record
      EVENTLP_IMPEXPCFG_EXPORT_PORT at 0 range 0 .. 31;
   end record;

   ------------------------------------------------------
   -- EVENTLP_IMPEXPCFG_IMPORT[%s] cluster's Registers --
   ------------------------------------------------------

   subtype EVENTLP_IMPEXPCFG_IMPORT_PORT_EVENTLP_IMPEXPCFG_IMPORT[%s]_CHANID_Field is
     HAL.UInt8;

   --  Import channel ID registe
   type EVENTLP_IMPEXPCFG_IMPORT_PORT_EVENTLP_IMPEXPCFG_IMPORT[%s]_Register is record
      --  Channel ID for import side to connect to
      CHANID        : EVENTLP_IMPEXPCFG_IMPORT_PORT_EVENTLP_IMPEXPCFG_IMPORT[%s]_CHANID_Field :=
                       16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTLP_IMPEXPCFG_IMPORT_PORT_EVENTLP_IMPEXPCFG_IMPORT[%s]_Register use record
      CHANID        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type EVENTLP_IMPEXPCFG_IMPORT[%s]_Cluster is record
      --  Import channel ID registe
      EVENTLP_IMPEXPCFG_IMPORT_PORT : aliased EVENTLP_IMPEXPCFG_IMPORT_PORT_EVENTLP_IMPEXPCFG_IMPORT[%s]_Register;
   end record
     with Size => 32;

   for EVENTLP_IMPEXPCFG_IMPORT[%s]_Cluster use record
      EVENTLP_IMPEXPCFG_IMPORT_PORT at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type EVENTLP_Peripheral is record
      --  Extended Module Description
      EVENTLP_PUBCFG_DESC_EX         : aliased EVENTLP_PUBCFG_DESC_EX_Register;
      --  Module Description
      EVENTLP_PUBCFG_DESC            : aliased EVENTLP_PUBCFG_DESC_Register;
      EVENTLP_PUBCFG_FSUB[%s]        : aliased EVENTLP_PUBCFG_FSUB[%s]_Cluster;
      EVENTLP_PUBCFG_FPUB[%s]        : aliased EVENTLP_PUBCFG_FPUB[%s]_Cluster;
      EVENTLP_PUBCFG_EXPORT[%s]      : aliased EVENTLP_PUBCFG_EXPORT[%s]_Cluster;
      EVENTLP_PUBCFG_IMPORT[%s]      : aliased EVENTLP_PUBCFG_IMPORT[%s]_Cluster;
      EVENTLP_PUBCFG_CPU_CONNECT[%s] : aliased EVENTLP_PUBCFG_CPU_CONNECT[%s]_Cluster;
      --  Extended Module Description
      EVENTLP_SECCFG_DESC_EX         : aliased EVENTLP_SECCFG_DESC_EX_Register;
      --  Module Description
      EVENTLP_SECCFG_DESC            : aliased EVENTLP_SECCFG_DESC_Register;
      EVENTLP_SECCFG_FSUB[%s]        : aliased EVENTLP_SECCFG_FSUB[%s]_Cluster;
      EVENTLP_SECCFG_FPUB[%s]        : aliased EVENTLP_SECCFG_FPUB[%s]_Cluster;
      EVENTLP_SECCFG_EXPORT[%s]      : aliased EVENTLP_SECCFG_EXPORT[%s]_Cluster;
      EVENTLP_SECCFG_IMPORT[%s]      : aliased EVENTLP_SECCFG_IMPORT[%s]_Cluster;
      EVENTLP_SECCFG_CPU_CONNECT[%s] : aliased EVENTLP_SECCFG_CPU_CONNECT[%s]_Cluster;
      --  Event Manager control register
      EVENTLP_CTL                    : aliased EVENTLP_CTL_Register;
      EVENTLP_LMGMT_SFTYDIAG[%s]     : aliased EVENTLP_LMGMT_SFTYDIAG[%s]_Cluster;
      EVENTLP_IMPEXPCFG_EXPORT[%s]   : aliased EVENTLP_IMPEXPCFG_EXPORT[%s]_Cluster;
      EVENTLP_IMPEXPCFG_IMPORT[%s]   : aliased EVENTLP_IMPEXPCFG_IMPORT[%s]_Cluster;
   end record
     with Volatile;

   for EVENTLP_Peripheral use record
      EVENTLP_PUBCFG_DESC_EX         at 16#F8# range 0 .. 31;
      EVENTLP_PUBCFG_DESC            at 16#FC# range 0 .. 31;
      EVENTLP_PUBCFG_FSUB[%s]        at 16#100# range 0 .. 415;
      EVENTLP_PUBCFG_FPUB[%s]        at 16#300# range 0 .. 319;
      EVENTLP_PUBCFG_EXPORT[%s]      at 16#500# range 0 .. 31;
      EVENTLP_PUBCFG_IMPORT[%s]      at 16#700# range 0 .. 31;
      EVENTLP_PUBCFG_CPU_CONNECT[%s] at 16#900# range 0 .. 383;
      EVENTLP_SECCFG_DESC_EX         at 16#10F8# range 0 .. 31;
      EVENTLP_SECCFG_DESC            at 16#10FC# range 0 .. 31;
      EVENTLP_SECCFG_FSUB[%s]        at 16#1100# range 0 .. 127;
      EVENTLP_SECCFG_FPUB[%s]        at 16#1180# range 0 .. 95;
      EVENTLP_SECCFG_EXPORT[%s]      at 16#1200# range 0 .. 31;
      EVENTLP_SECCFG_IMPORT[%s]      at 16#1280# range 0 .. 31;
      EVENTLP_SECCFG_CPU_CONNECT[%s] at 16#1300# range 0 .. 95;
      EVENTLP_CTL                    at 16#1400# range 0 .. 7;
      EVENTLP_LMGMT_SFTYDIAG[%s]     at 16#1C00# range 0 .. 8191;
      EVENTLP_IMPEXPCFG_EXPORT[%s]   at 16#2000# range 0 .. 31;
      EVENTLP_IMPEXPCFG_IMPORT[%s]   at 16#2200# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   EVENTLP_Periph : aliased EVENTLP_Peripheral
     with Import, Address => EVENTLP_Base;

end MSPMC1104_SVD.EVENTLP;
