pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.FLASHCTL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Indicates which interrupt has fired. 0x0 means no event pending. The
   --  priority order is fixed. On each read, only one interrupt is indicated.
   --  On a read, the current interrupt (highest priority) is automatically
   --  cleared by the hardware and the corresponding interrupt flags in the RIS
   --  and MIS are cleared as well. After a read from the CPU (not from the
   --  debug interface), the register must be updated with the next highest
   --  priority interrupt.
   type FLASHCTL_IIDX_STAT_Field is
     (--  No Interrupt Pending
      NO_INTR,
      --  DONE Interrupt Pending
      DONE)
     with Size => 1;
   for FLASHCTL_IIDX_STAT_Field use
     (NO_INTR => 0,
      DONE => 1);

   --  Interrupt Index Register
   type FLASHCTL_IIDX_Register is record
      --  Read-only. Indicates which interrupt has fired. 0x0 means no event
      --  pending. The priority order is fixed. On each read, only one
      --  interrupt is indicated. On a read, the current interrupt (highest
      --  priority) is automatically cleared by the hardware and the
      --  corresponding interrupt flags in the RIS and MIS are cleared as well.
      --  After a read from the CPU (not from the debug interface), the
      --  register must be updated with the next highest priority interrupt.
      STAT          : FLASHCTL_IIDX_STAT_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_IIDX_Register use record
      STAT          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt mask for DONE: 0: Interrupt is disabled in MIS register 1:
   --  Interrupt is enabled in MIS register
   type FLASHCTL_IMASK_DONE_Field is
     (--  Interrupt is masked out
      DISABLED,
      --  Interrupt will request an interrupt service routine and corresponding bit
--  in [IPSTANDARD.MIS] will be set
      ENABLED)
     with Size => 1;
   for FLASHCTL_IMASK_DONE_Field use
     (DISABLED => 0,
      ENABLED => 1);

   --  Interrupt Mask Register
   type FLASHCTL_IMASK_Register is record
      --  Interrupt mask for DONE: 0: Interrupt is disabled in MIS register 1:
      --  Interrupt is enabled in MIS register
      DONE          : FLASHCTL_IMASK_DONE_Field :=
                       MSPMC1104_SVD.FLASHCTL.DISABLED;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_IMASK_Register use record
      DONE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Flash wrapper operation completed. This interrupt bit is set by firmware
   --  or the corresponding bit in the ISET register. It is cleared by the
   --  corresponding bit in in the ICLR register or reading the IIDX register
   --  when this interrupt is the highest priority.
   type FLASHCTL_RIS_DONE_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for FLASHCTL_RIS_DONE_Field use
     (CLR => 0,
      SET => 1);

   --  Raw Interrupt Status Register
   type FLASHCTL_RIS_Register is record
      --  Read-only. Flash wrapper operation completed. This interrupt bit is
      --  set by firmware or the corresponding bit in the ISET register. It is
      --  cleared by the corresponding bit in in the ICLR register or reading
      --  the IIDX register when this interrupt is the highest priority.
      DONE          : FLASHCTL_RIS_DONE_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_RIS_Register use record
      DONE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Flash wrapper operation completed. This masked interrupt bit reflects
   --  the bitwise AND of the corresponding RIS and IMASK bits.
   type FLASHCTL_MIS_DONE_Field is
     (--  Masked interrupt did not occur
      CLR,
      --  Masked interrupt occurred
      SET)
     with Size => 1;
   for FLASHCTL_MIS_DONE_Field use
     (CLR => 0,
      SET => 1);

   --  Masked Interrupt Status Register
   type FLASHCTL_MIS_Register is record
      --  Read-only. Flash wrapper operation completed. This masked interrupt
      --  bit reflects the bitwise AND of the corresponding RIS and IMASK bits.
      DONE          : FLASHCTL_MIS_DONE_Field;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_MIS_Register use record
      DONE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  0: No effect 1: Set the DONE interrupt in the RIS register
   type FLASHCTL_ISET_DONE_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  Set [IPSTANDARD.RIS] bit
      SET)
     with Size => 1;
   for FLASHCTL_ISET_DONE_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  Interrupt Set Register
   type FLASHCTL_ISET_Register is record
      --  Write-only. 0: No effect 1: Set the DONE interrupt in the RIS
      --  register
      DONE          : FLASHCTL_ISET_DONE_Field :=
                       MSPMC1104_SVD.FLASHCTL.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_ISET_Register use record
      DONE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  0: No effect 1: Clear the DONE interrupt in the RIS register
   type FLASHCTL_ICLR_DONE_Field is
     (--  Writing a 0 has no effect
      NO_EFFECT,
      --  Clear [IPSTANDARD.RIS] bit
      CLR)
     with Size => 1;
   for FLASHCTL_ICLR_DONE_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  Interrupt Clear Register
   type FLASHCTL_ICLR_Register is record
      --  Write-only. 0: No effect 1: Clear the DONE interrupt in the RIS
      --  register
      DONE          : FLASHCTL_ICLR_DONE_Field :=
                       MSPMC1104_SVD.FLASHCTL.NO_EFFECT;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_ICLR_Register use record
      DONE          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Event line mode select for peripheral event
   type FLASHCTL_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. Hardware must clear the
--  RIS.
      HARDWARE)
     with Size => 2;
   for FLASHCTL_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type FLASHCTL_EVT_MODE_Register is record
      --  Read-only. Event line mode select for peripheral event
      INT0_CFG      : FLASHCTL_EVT_MODE_INT0_CFG_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLASHCTL_DESC_MINREV_Field is HAL.UInt4;
   subtype FLASHCTL_DESC_MAJREV_Field is HAL.UInt4;
   subtype FLASHCTL_DESC_INSTNUM_Field is HAL.UInt4;
   subtype FLASHCTL_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype FLASHCTL_DESC_MODULEID_Field is HAL.UInt16;

   --  Hardware Version Description Register
   type FLASHCTL_DESC_Register is record
      --  Read-only. Minor Revision
      MINREV     : FLASHCTL_DESC_MINREV_Field;
      --  Read-only. Major Revision
      MAJREV     : FLASHCTL_DESC_MAJREV_Field;
      --  Read-only. Instance number
      INSTNUM    : FLASHCTL_DESC_INSTNUM_Field;
      --  Read-only. Feature set
      FEATUREVER : FLASHCTL_DESC_FEATUREVER_Field;
      --  Read-only. Module ID
      MODULEID   : FLASHCTL_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_DESC_Register use record
      MINREV     at 0 range 0 .. 3;
      MAJREV     at 0 range 4 .. 7;
      INSTNUM    at 0 range 8 .. 11;
      FEATUREVER at 0 range 12 .. 15;
      MODULEID   at 0 range 16 .. 31;
   end record;

   --  Command Execute value Initiates execution of the command specified in
   --  the CMDTYPE register.
   type FLASHCTL_CMDEXEC_VAL_Field is
     (--  Command will not execute or is not executing in flash wrapper
      NOEXECUTE,
      --  Command will execute or is executing in flash wrapper
      EXECUTE)
     with Size => 1;
   for FLASHCTL_CMDEXEC_VAL_Field use
     (NOEXECUTE => 0,
      EXECUTE => 1);

   --  Command Execute Register
   type FLASHCTL_CMDEXEC_Register is record
      --  Command Execute value Initiates execution of the command specified in
      --  the CMDTYPE register.
      VAL           : FLASHCTL_CMDEXEC_VAL_Field :=
                       MSPMC1104_SVD.FLASHCTL.NOEXECUTE;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDEXEC_Register use record
      VAL           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Command type
   type FLASHCTL_CMDTYPE_COMMAND_Field is
     (--  No Operation
      NOOP,
      --  Program
      PROGRAM,
      --  Erase
      ERASE,
      --  Read Verify - Perform a standalone read verify operation.
      READVERIFY,
      --  Mode Change - Perform a mode change only, no other operation.
      MODECHANGE,
      --  Clear Status - Clear status bits in FW_SMSTAT only.
      CLEARSTATUS,
      --  Blank Verify - Check whether a flash word is in the erased state. This
--  command may only be used with CMDTYPE.SIZE = ONEWORD
      BLANKVERIFY)
     with Size => 3;
   for FLASHCTL_CMDTYPE_COMMAND_Field use
     (NOOP => 0,
      PROGRAM => 1,
      ERASE => 2,
      READVERIFY => 3,
      MODECHANGE => 4,
      CLEARSTATUS => 5,
      BLANKVERIFY => 6);

   --  Command size
   type FLASHCTL_CMDTYPE_SIZE_Field is
     (--  Operate on 1 flash word
      ONEWORD,
      --  Operate on 2 flash words
      TWOWORD,
      --  Operate on 4 flash words
      FOURWORD,
      --  Operate on 8 flash words
      EIGHTWORD,
      --  Operate on a flash sector
      SECTOR,
      --  Operate on an entire flash bank
      BANK)
     with Size => 3;
   for FLASHCTL_CMDTYPE_SIZE_Field use
     (ONEWORD => 0,
      TWOWORD => 1,
      FOURWORD => 2,
      EIGHTWORD => 3,
      SECTOR => 4,
      BANK => 5);

   --  Command Type Register
   type FLASHCTL_CMDTYPE_Register is record
      --  Command type
      COMMAND       : FLASHCTL_CMDTYPE_COMMAND_Field :=
                       MSPMC1104_SVD.FLASHCTL.NOOP;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Command size
      SIZE          : FLASHCTL_CMDTYPE_SIZE_Field :=
                       MSPMC1104_SVD.FLASHCTL.ONEWORD;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDTYPE_Register use record
      COMMAND       at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      SIZE          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Mode This field is only used for the Mode Change command type.
   --  Otherwise, bank and pump modes are set automaticlly through the NW
   --  hardware.
   type FLASHCTL_CMDCTL_MODESEL_Field is
     (--  Read Mode
      READ,
      --  Read Margin 0 Mode
      RDMARG0,
      --  Read Margin 1 Mode
      RDMARG1,
      --  Read Margin 0B Mode
      RDMARG0B,
      --  Read Margin 1B Mode
      RDMARG1B,
      --  Program Verify Mode
      PGMVER,
      --  Program Single Word
      PGMSW,
      --  Erase Verify Mode
      ERASEVER,
      --  Erase Sector
      ERASESECT,
      --  Program Multiple Word
      PGMMW,
      --  Erase Bank
      ERASEBNK)
     with Size => 4;
   for FLASHCTL_CMDCTL_MODESEL_Field use
     (READ => 0,
      RDMARG0 => 2,
      RDMARG1 => 4,
      RDMARG0B => 6,
      RDMARG1B => 7,
      PGMVER => 9,
      PGMSW => 10,
      ERASEVER => 11,
      ERASESECT => 12,
      PGMMW => 14,
      ERASEBNK => 15);

   --  Bank Region A specific region ID can be written to this field to
   --  indicate to which region an operation is to be applied if
   --  CMDCTL.ADDRXLATEOVR is set.
   type FLASHCTL_CMDCTL_REGIONSEL_Field is
     (--  Reset value for the field
      FLASHCTL_CMDCTL_REGIONSEL_Field_Reset,
      --  Main Region
      MAIN,
      --  Non-Main Region
      NONMAIN,
      --  Trim Region
      TRIM,
      --  Engr Region
      ENGR)
     with Size => 4;
   for FLASHCTL_CMDCTL_REGIONSEL_Field use
     (FLASHCTL_CMDCTL_REGIONSEL_Field_Reset => 0,
      MAIN => 1,
      NONMAIN => 2,
      TRIM => 4,
      ENGR => 8);

   --  Override hardware address translation of address in CMDADDR from a
   --  system address to a bank address and bank ID. Use data written to
   --  CMDADDR directly as the bank address. Use the value written to
   --  CMDCTL.BANKSEL directly as the bank ID. Use the value written to
   --  CMDCTL.REGIONSEL directly as the region ID.
   type FLASHCTL_CMDCTL_ADDRXLATEOVR_Field is
     (--  Do not override
      NOOVERRIDE,
      --  Override
      OVERRIDE)
     with Size => 1;
   for FLASHCTL_CMDCTL_ADDRXLATEOVR_Field use
     (NOOVERRIDE => 0,
      OVERRIDE => 1);

   --  Disable Stair-Step Erase. If set, the default VHV trim voltage setting
   --  will be used for all erase pulses. By default, this bit is reset,
   --  meaning that the VHV voltage will be stepped during successive erase
   --  pulses. The step count, step voltage, begin and end voltages are all
   --  hard-wired.
   type FLASHCTL_CMDCTL_SSERASEDIS_Field is
     (--  Enable
      ENABLE,
      --  Disable
      DISABLE)
     with Size => 1;
   for FLASHCTL_CMDCTL_SSERASEDIS_Field use
     (ENABLE => 0,
      DISABLE => 1);

   --  Enable invalid data verify. This checks for 0->1 transitions in the
   --  memory when a program operation is initiated. If such a transition is
   --  found, the program will fail with an error without executing the
   --  program.
   type FLASHCTL_CMDCTL_DATAVEREN_Field is
     (--  Disable
      DISABLE,
      --  Enable
      ENABLE)
     with Size => 1;
   for FLASHCTL_CMDCTL_DATAVEREN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Command Control Register
   type FLASHCTL_CMDCTL_Register is record
      --  Mode This field is only used for the Mode Change command type.
      --  Otherwise, bank and pump modes are set automaticlly through the NW
      --  hardware.
      MODESEL        : FLASHCTL_CMDCTL_MODESEL_Field :=
                        MSPMC1104_SVD.FLASHCTL.READ;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Bank Region A specific region ID can be written to this field to
      --  indicate to which region an operation is to be applied if
      --  CMDCTL.ADDRXLATEOVR is set.
      REGIONSEL      : FLASHCTL_CMDCTL_REGIONSEL_Field :=
                        FLASHCTL_CMDCTL_REGIONSEL_Field_Reset;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Override hardware address translation of address in CMDADDR from a
      --  system address to a bank address and bank ID. Use data written to
      --  CMDADDR directly as the bank address. Use the value written to
      --  CMDCTL.BANKSEL directly as the bank ID. Use the value written to
      --  CMDCTL.REGIONSEL directly as the region ID.
      ADDRXLATEOVR   : FLASHCTL_CMDCTL_ADDRXLATEOVR_Field :=
                        MSPMC1104_SVD.FLASHCTL.NOOVERRIDE;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Disable Stair-Step Erase. If set, the default VHV trim voltage
      --  setting will be used for all erase pulses. By default, this bit is
      --  reset, meaning that the VHV voltage will be stepped during successive
      --  erase pulses. The step count, step voltage, begin and end voltages
      --  are all hard-wired.
      SSERASEDIS     : FLASHCTL_CMDCTL_SSERASEDIS_Field :=
                        MSPMC1104_SVD.FLASHCTL.ENABLE;
      --  Enable invalid data verify. This checks for 0->1 transitions in the
      --  memory when a program operation is initiated. If such a transition is
      --  found, the program will fail with an error without executing the
      --  program.
      DATAVEREN      : FLASHCTL_CMDCTL_DATAVEREN_Field :=
                        MSPMC1104_SVD.FLASHCTL.DISABLE;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDCTL_Register use record
      MODESEL        at 0 range 0 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      REGIONSEL      at 0 range 9 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ADDRXLATEOVR   at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SSERASEDIS     at 0 range 20 .. 20;
      DATAVEREN      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype FLASHCTL_CMDBYTEN_VAL_Field is HAL.UInt8;

   --  Command Program Byte Enable Register
   type FLASHCTL_CMDBYTEN_Register is record
      --  Command Byte Enable value. A 1-bit per flash word byte value is
      --  placed in this register.
      VAL           : FLASHCTL_CMDBYTEN_VAL_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDBYTEN_Register use record
      VAL           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FLASHCTL_CMDWEPROTB_VAL_Field is HAL.UInt4;

   --  Command Write Erase Protect B Register
   type FLASHCTL_CMDWEPROTB_Register is record
      --  Each bit protects a group of 8 sectors. When a bit is 1, the
      --  associated 8 sectors in the flash will be protected from program and
      --  erase. A maximum of 256 sectors can be protected with this register.
      VAL           : FLASHCTL_CMDWEPROTB_VAL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDWEPROTB_Register use record
      VAL           at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Command Write Erase Protect Non-Main Register
   type FLASHCTL_CMDWEPROTNM_Register is record
      --  Each bit protects 1 sector. bit [0]:	When 1, sector 0 of the non-main
      --  region will be protected from program 		and erase. bit [1]:	When 1,
      --  sector 1 of the non-main region will be protected from program 		and
      --  erase. 	: 	: bit [31]:	When 1, sector 31 of the non-main will be
      --  protected from program 		and erase.
      VAL           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDWEPROTNM_Register use record
      VAL           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Command Write Erase Protect Trim Register
   type FLASHCTL_CMDWEPROTTR_Register is record
      --  Each bit protects 1 sector. bit [0]:	When 1, sector 0 of the engr
      --  region will be protected from program 		and erase. bit [1]:	When 1,
      --  sector 1 of the engr region will be protected from program 		and
      --  erase. 	: 	: bit [31]:	When 1, sector 31 of the engr region will be
      --  protected from program 		and erase.
      VAL           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDWEPROTTR_Register use record
      VAL           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype FLASHCTL_CMDWEPROTEN_VAL_Field is HAL.UInt2;

   --  Command Write Erase Protect Engr Register
   type FLASHCTL_CMDWEPROTEN_Register is record
      --  Each bit protects 1 sector. bit [0]:	When 1, sector 0 of the engr
      --  region will be protected from program 		and erase. bit [1]:	When 1,
      --  sector 1 of the engr region will be protected from program 		and
      --  erase. 	: 	: bit [31]:	When 1, sector 31 of the engr region will be
      --  protected from program 		and erase.
      VAL           : FLASHCTL_CMDWEPROTEN_VAL_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CMDWEPROTEN_Register use record
      VAL           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype FLASHCTL_CFGCMD_WAITSTATE_Field is HAL.UInt4;

   --  Command Configuration Register
   type FLASHCTL_CFGCMD_Register is record
      --  Wait State setting for program verify, erase verify and read verify
      WAITSTATE     : FLASHCTL_CFGCMD_WAITSTATE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CFGCMD_Register use record
      WAITSTATE     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Override hard-wired maximum pulse count. If MAXERSPCNTOVR is not set,
   --  then setting this value alone will override the max pulse count for both
   --  program and erase. If MAXERSPCNTOVR is set, then this bit will only
   --  control the max pulse count setting for program. By default, this bit is
   --  0, and a hard-wired max pulse count is used.
   type FLASHCTL_CFGPCNT_MAXPCNTOVR_Field is
     (--  Use hard-wired (default) value for maximum pulse count
      DEFAULT,
      --  Use value from MAXPCNTVAL field as maximum puse count
      OVERRIDE)
     with Size => 1;
   for FLASHCTL_CFGPCNT_MAXPCNTOVR_Field use
     (DEFAULT => 0,
      OVERRIDE => 1);

   subtype FLASHCTL_CFGPCNT_MAXPCNTVAL_Field is HAL.UInt8;

   --  Pulse Counter Configuration Register
   type FLASHCTL_CFGPCNT_Register is record
      --  Override hard-wired maximum pulse count. If MAXERSPCNTOVR is not set,
      --  then setting this value alone will override the max pulse count for
      --  both program and erase. If MAXERSPCNTOVR is set, then this bit will
      --  only control the max pulse count setting for program. By default,
      --  this bit is 0, and a hard-wired max pulse count is used.
      MAXPCNTOVR     : FLASHCTL_CFGPCNT_MAXPCNTOVR_Field :=
                        MSPMC1104_SVD.FLASHCTL.DEFAULT;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Override maximum pulse counter with this value. If MAXPCNTOVR = 0,
      --  then this field is ignored. If MAXPCNTOVR = 1 and MAXERSPCNTOVR = 0,
      --  then this value will be used to override the max pulse count for both
      --  program and erase. Full max value will be {4'h0, MAXPCNTVAL} . If
      --  MAXPCNTOVR = 1 and MAXERSPCNTOVR = 1, then this value will be used to
      --  override the max pulse count for program only. Full max value will be
      --  {4'h0, MAXPCNTVAL}.
      MAXPCNTVAL     : FLASHCTL_CFGPCNT_MAXPCNTVAL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_CFGPCNT_Register use record
      MAXPCNTOVR     at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MAXPCNTVAL     at 0 range 4 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Command Done
   type FLASHCTL_STATCMD_CMDDONE_Field is
     (--  Not Done
      STATNOTDONE,
      --  Done
      STATDONE)
     with Size => 1;
   for FLASHCTL_STATCMD_CMDDONE_Field use
     (STATNOTDONE => 0,
      STATDONE => 1);

   --  Command Pass - valid when CMD_DONE field is 1
   type FLASHCTL_STATCMD_CMDPASS_Field is
     (--  Fail
      STATFAIL,
      --  Pass
      STATPASS)
     with Size => 1;
   for FLASHCTL_STATCMD_CMDPASS_Field use
     (STATFAIL => 0,
      STATPASS => 1);

   --  Command In Progress
   type FLASHCTL_STATCMD_CMDINPROGRESS_Field is
     (--  Complete
      STATCOMPLETE,
      --  In Progress
      STATINPROGRESS)
     with Size => 1;
   for FLASHCTL_STATCMD_CMDINPROGRESS_Field use
     (STATCOMPLETE => 0,
      STATINPROGRESS => 1);

   --  Command failed due to Write/Erase Protect Sector Violation
   type FLASHCTL_STATCMD_FAILWEPROT_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILWEPROT_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Command failed due to verify error
   type FLASHCTL_STATCMD_FAILVERIFY_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILVERIFY_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Command failed due to the use of an illegal address
   type FLASHCTL_STATCMD_FAILILLADDR_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILILLADDR_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Command failed because a bank has been set to a mode other than READ.
   --  Program and Erase commands cannot be initiated unless all banks are in
   --  READ mode.
   type FLASHCTL_STATCMD_FAILMODE_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILMODE_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Program command failed because an attempt was made to program a stored 0
   --  value to a 1.
   type FLASHCTL_STATCMD_FAILINVDATA_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILINVDATA_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Command failed due to error other than write/erase protect violation or
   --  verify error. This is an extra bit in case a new failure mechanism is
   --  added which requires a status bit.
   type FLASHCTL_STATCMD_FAILMISC_Field is
     (--  No Fail
      STATNOFAIL,
      --  Fail
      STATFAIL)
     with Size => 1;
   for FLASHCTL_STATCMD_FAILMISC_Field use
     (STATNOFAIL => 0,
      STATFAIL => 1);

   --  Command Status Register
   type FLASHCTL_STATCMD_Register is record
      --  Read-only. Command Done
      CMDDONE        : FLASHCTL_STATCMD_CMDDONE_Field;
      --  Read-only. Command Pass - valid when CMD_DONE field is 1
      CMDPASS        : FLASHCTL_STATCMD_CMDPASS_Field;
      --  Read-only. Command In Progress
      CMDINPROGRESS  : FLASHCTL_STATCMD_CMDINPROGRESS_Field;
      --  unspecified
      Reserved_3_3   : HAL.Bit;
      --  Read-only. Command failed due to Write/Erase Protect Sector Violation
      FAILWEPROT     : FLASHCTL_STATCMD_FAILWEPROT_Field;
      --  Read-only. Command failed due to verify error
      FAILVERIFY     : FLASHCTL_STATCMD_FAILVERIFY_Field;
      --  Read-only. Command failed due to the use of an illegal address
      FAILILLADDR    : FLASHCTL_STATCMD_FAILILLADDR_Field;
      --  Read-only. Command failed because a bank has been set to a mode other
      --  than READ. Program and Erase commands cannot be initiated unless all
      --  banks are in READ mode.
      FAILMODE       : FLASHCTL_STATCMD_FAILMODE_Field;
      --  Read-only. Program command failed because an attempt was made to
      --  program a stored 0 value to a 1.
      FAILINVDATA    : FLASHCTL_STATCMD_FAILINVDATA_Field;
      --  unspecified
      Reserved_9_11  : HAL.UInt3;
      --  Read-only. Command failed due to error other than write/erase protect
      --  violation or verify error. This is an extra bit in case a new failure
      --  mechanism is added which requires a status bit.
      FAILMISC       : FLASHCTL_STATCMD_FAILMISC_Field;
      --  unspecified
      Reserved_13_31 : HAL.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_STATCMD_Register use record
      CMDDONE        at 0 range 0 .. 0;
      CMDPASS        at 0 range 1 .. 1;
      CMDINPROGRESS  at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FAILWEPROT     at 0 range 4 .. 4;
      FAILVERIFY     at 0 range 5 .. 5;
      FAILILLADDR    at 0 range 6 .. 6;
      FAILMODE       at 0 range 7 .. 7;
      FAILINVDATA    at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      FAILMISC       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype FLASHCTL_STATADDR_BANKADDR_Field is HAL.UInt16;

   --  Current Region ID A region indicator is stored in this register which
   --  represents the current flash region on which the state machine is
   --  operating.
   type FLASHCTL_STATADDR_REGIONID_Field is
     (--  Main Region
      MAIN,
      --  Non-Main Region
      NONMAIN,
      --  Trim Region
      TRIM,
      --  Engr Region
      ENGR)
     with Size => 5;
   for FLASHCTL_STATADDR_REGIONID_Field use
     (MAIN => 1,
      NONMAIN => 2,
      TRIM => 4,
      ENGR => 8);

   --  Current Bank ID A bank indicator is stored in this register which
   --  represents the current bank on which the state machine is operating.
   --  There is 1 bit per bank.
   type FLASHCTL_STATADDR_BANKID_Field is
     (--  Bank 0
      BANK0,
      --  Bank 1
      BANK1,
      --  Bank 2
      BANK2,
      --  Bank 3
      BANK3,
      --  Bank 4
      BANK4)
     with Size => 5;
   for FLASHCTL_STATADDR_BANKID_Field use
     (BANK0 => 1,
      BANK1 => 2,
      BANK2 => 4,
      BANK3 => 8,
      BANK4 => 16);

   --  Address Status Register
   type FLASHCTL_STATADDR_Register is record
      --  Read-only. Current Bank Address A bank offset address is stored in
      --  this register.
      BANKADDR       : FLASHCTL_STATADDR_BANKADDR_Field;
      --  Read-only. Current Region ID A region indicator is stored in this
      --  register which represents the current flash region on which the state
      --  machine is operating.
      REGIONID       : FLASHCTL_STATADDR_REGIONID_Field;
      --  Read-only. Current Bank ID A bank indicator is stored in this
      --  register which represents the current bank on which the state machine
      --  is operating. There is 1 bit per bank.
      BANKID         : FLASHCTL_STATADDR_BANKID_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_STATADDR_Register use record
      BANKADDR       at 0 range 0 .. 15;
      REGIONID       at 0 range 16 .. 20;
      BANKID         at 0 range 21 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FLASHCTL_STATPCNT_PULSECNT_Field is HAL.UInt12;

   --  Pulse Count Status Register
   type FLASHCTL_STATPCNT_Register is record
      --  Read-only. Current Pulse Counter Value
      PULSECNT       : FLASHCTL_STATPCNT_PULSECNT_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_STATPCNT_Register use record
      PULSECNT       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Bank not in read mode. Indicates which banks are not in READ mode. There
   --  is 1 bit per bank.
   type FLASHCTL_STATMODE_BANKNOTINRD_Field is
     (--  Bank 0
      BANK0,
      --  Bank 1
      BANK1,
      --  Bank 2
      BANK2,
      --  Bank 3
      BANK3,
      --  Bank 4
      BANK4)
     with Size => 1;
   for FLASHCTL_STATMODE_BANKNOTINRD_Field use
     (BANK0 => 1,
      BANK1 => 2,
      BANK2 => 4,
      BANK3 => 8,
      BANK4 => 16);

   --  Indicates mode of bank(s) that are not in READ mode
   type FLASHCTL_STATMODE_BANKMODE_Field is
     (--  Read Mode
      READ,
      --  Read Margin 0 Mode
      RDMARG0,
      --  Read Margin 1 Mode
      RDMARG1,
      --  Read Margin 0B Mode
      RDMARG0B,
      --  Read Margin 1B Mode
      RDMARG1B,
      --  Program Verify Mode
      PGMVER,
      --  Program Single Word
      PGMSW,
      --  Erase Verify Mode
      ERASEVER,
      --  Erase Sector
      ERASESECT,
      --  Program Multiple Word
      PGMMW,
      --  Erase Bank
      ERASEBNK)
     with Size => 4;
   for FLASHCTL_STATMODE_BANKMODE_Field use
     (READ => 0,
      RDMARG0 => 2,
      RDMARG1 => 4,
      RDMARG0B => 6,
      RDMARG1B => 7,
      PGMVER => 9,
      PGMSW => 10,
      ERASEVER => 11,
      ERASESECT => 12,
      PGMMW => 14,
      ERASEBNK => 15);

   --  Bank 2T Ready. Bank(s) are ready for 2T access. This is accomplished
   --  when the pump has fully driven power rails to the bank(s).
   type FLASHCTL_STATMODE_BANK2TRDY_Field is
     (--  Not ready
      FALSE,
      --  Ready
      TRUE)
     with Size => 1;
   for FLASHCTL_STATMODE_BANK2TRDY_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Bank 1T Ready. Bank(s) are ready for 1T access. This is accomplished
   --  when the bank and pump have been trimmed.
   type FLASHCTL_STATMODE_BANK1TRDY_Field is
     (--  Not ready
      FALSE,
      --  Ready
      TRUE)
     with Size => 1;
   for FLASHCTL_STATMODE_BANK1TRDY_Field use
     (FALSE => 0,
      TRUE => 1);

   --  Mode Status Register
   type FLASHCTL_STATMODE_Register is record
      --  Read-only. Bank not in read mode. Indicates which banks are not in
      --  READ mode. There is 1 bit per bank.
      BANKNOTINRD    : FLASHCTL_STATMODE_BANKNOTINRD_Field;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Indicates mode of bank(s) that are not in READ mode
      BANKMODE       : FLASHCTL_STATMODE_BANKMODE_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
      --  Read-only. Bank 2T Ready. Bank(s) are ready for 2T access. This is
      --  accomplished when the pump has fully driven power rails to the
      --  bank(s).
      BANK2TRDY      : FLASHCTL_STATMODE_BANK2TRDY_Field;
      --  Read-only. Bank 1T Ready. Bank(s) are ready for 1T access. This is
      --  accomplished when the bank and pump have been trimmed.
      BANK1TRDY      : FLASHCTL_STATMODE_BANK1TRDY_Field;
      --  unspecified
      Reserved_18_31 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_STATMODE_Register use record
      BANKNOTINRD    at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      BANKMODE       at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      BANK2TRDY      at 0 range 16 .. 16;
      BANK1TRDY      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Sector size in bytes
   type FLASHCTL_GBLINFO0_SECTORSIZE_Field is
     (--  Sector size is ONEKB
      ONEKB,
      --  Sector size is TWOKB
      TWOKB)
     with Size => 16;
   for FLASHCTL_GBLINFO0_SECTORSIZE_Field use
     (ONEKB => 1024,
      TWOKB => 2048);

   subtype FLASHCTL_GBLINFO0_NUMBANKS_Field is HAL.UInt3;

   --  Global Information Register 0
   type FLASHCTL_GBLINFO0_Register is record
      --  Read-only. Sector size in bytes
      SECTORSIZE     : FLASHCTL_GBLINFO0_SECTORSIZE_Field;
      --  Read-only. Number of banks instantiated Minimum:	1 Maximum:	5
      NUMBANKS       : FLASHCTL_GBLINFO0_NUMBANKS_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_GBLINFO0_Register use record
      SECTORSIZE     at 0 range 0 .. 15;
      NUMBANKS       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Data width in bits
   type FLASHCTL_GBLINFO1_DATAWIDTH_Field is
     (--  Data width is 64 bits
      W64BIT,
      --  Data width is 128 bits
      W128BIT)
     with Size => 8;
   for FLASHCTL_GBLINFO1_DATAWIDTH_Field use
     (W64BIT => 64,
      W128BIT => 128);

   --  ECC data width in bits
   type FLASHCTL_GBLINFO1_ECCWIDTH_Field is
     (--  ECC data width is 0. ECC not used.
      W0BIT,
      --  ECC data width is 8 bits
      W8BIT,
      --  ECC data width is 16 bits
      W16BIT)
     with Size => 5;
   for FLASHCTL_GBLINFO1_ECCWIDTH_Field use
     (W0BIT => 0,
      W8BIT => 8,
      W16BIT => 16);

   --  Redundant data width in bits
   type FLASHCTL_GBLINFO1_REDWIDTH_Field is
     (--  Redundant data width is 0. Redundancy/Repair not present.
      W0BIT,
      --  Redundant data width is 2 bits
      W2BIT,
      --  Redundant data width is 4 bits
      W4BIT)
     with Size => 3;
   for FLASHCTL_GBLINFO1_REDWIDTH_Field use
     (W0BIT => 0,
      W2BIT => 2,
      W4BIT => 4);

   --  Global Information Register 1
   type FLASHCTL_GBLINFO1_Register is record
      --  Read-only. Data width in bits
      DATAWIDTH      : FLASHCTL_GBLINFO1_DATAWIDTH_Field;
      --  Read-only. ECC data width in bits
      ECCWIDTH       : FLASHCTL_GBLINFO1_ECCWIDTH_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Redundant data width in bits
      REDWIDTH       : FLASHCTL_GBLINFO1_REDWIDTH_Field;
      --  unspecified
      Reserved_19_31 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_GBLINFO1_Register use record
      DATAWIDTH      at 0 range 0 .. 7;
      ECCWIDTH       at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      REDWIDTH       at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype FLASHCTL_GBLINFO2_DATAREGISTERS_Field is HAL.UInt4;

   --  Global Information Register 2
   type FLASHCTL_GBLINFO2_Register is record
      --  Read-only. Number of data registers present.
      DATAREGISTERS : FLASHCTL_GBLINFO2_DATAREGISTERS_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_GBLINFO2_Register use record
      DATAREGISTERS at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Main region size in sectors Minimum:	0x8 (8) Maximum:	0x200 (512)
   type FLASHCTL_BANK0INFO0_MAINSIZE_Field is
     (--  Minimum value of [MAINSIZE]
      MINSECTORS,
      --  Maximum value of [MAINSIZE]
      MAXSECTORS)
     with Size => 12;
   for FLASHCTL_BANK0INFO0_MAINSIZE_Field use
     (MINSECTORS => 8,
      MAXSECTORS => 512);

   --  Bank Information Register 0 for Bank 0
   type FLASHCTL_BANK0INFO0_Register is record
      --  Read-only. Main region size in sectors Minimum:	0x8 (8)
      --  Maximum:	0x200 (512)
      MAINSIZE       : FLASHCTL_BANK0INFO0_MAINSIZE_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_BANK0INFO0_Register use record
      MAINSIZE       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Non-main region size in sectors Minimum:	0x0 (0) Maximum:	0x10 (16)
   type FLASHCTL_BANK0INFO1_NONMAINSIZE_Field is
     (--  Minimum value of [NONMAINSIZE]
      MINSECTORS,
      --  Maximum value of [NONMAINSIZE]
      MAXSECTORS)
     with Size => 8;
   for FLASHCTL_BANK0INFO1_NONMAINSIZE_Field use
     (MINSECTORS => 0,
      MAXSECTORS => 32);

   --  Trim region size in sectors Minimum:	0x0 (0) Maximum:	0x10 (16)
   type FLASHCTL_BANK0INFO1_TRIMSIZE_Field is
     (--  Minimum value of [TRIMSIZE]
      MINSECTORS,
      --  Maximum value of [TRIMSIZE]
      MAXSECTORS)
     with Size => 8;
   for FLASHCTL_BANK0INFO1_TRIMSIZE_Field use
     (MINSECTORS => 0,
      MAXSECTORS => 32);

   --  Engr region size in sectors Minimum:	0x0 (0) Maximum:	0x10 (16)
   type FLASHCTL_BANK0INFO1_ENGRSIZE_Field is
     (--  Minimum value of [ENGRSIZE]
      MINSECTORS,
      --  Maximum value of [ENGRSIZE]
      MAXSECTORS)
     with Size => 8;
   for FLASHCTL_BANK0INFO1_ENGRSIZE_Field use
     (MINSECTORS => 0,
      MAXSECTORS => 32);

   --  Bank Information Register 1 for Bank 0
   type FLASHCTL_BANK0INFO1_Register is record
      --  Read-only. Non-main region size in sectors Minimum:	0x0 (0)
      --  Maximum:	0x10 (16)
      NONMAINSIZE    : FLASHCTL_BANK0INFO1_NONMAINSIZE_Field;
      --  Read-only. Trim region size in sectors Minimum:	0x0 (0) Maximum:	0x10
      --  (16)
      TRIMSIZE       : FLASHCTL_BANK0INFO1_TRIMSIZE_Field;
      --  Read-only. Engr region size in sectors Minimum:	0x0 (0) Maximum:	0x10
      --  (16)
      ENGRSIZE       : FLASHCTL_BANK0INFO1_ENGRSIZE_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCTL_BANK0INFO1_Register use record
      NONMAINSIZE    at 0 range 0 .. 7;
      TRIMSIZE       at 0 range 8 .. 15;
      ENGRSIZE       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  NVMNW_TINMAN
   type FLASHCTL_Peripheral is record
      --  Interrupt Index Register
      FLASHCTL_IIDX        : aliased FLASHCTL_IIDX_Register;
      --  Interrupt Mask Register
      FLASHCTL_IMASK       : aliased FLASHCTL_IMASK_Register;
      --  Raw Interrupt Status Register
      FLASHCTL_RIS         : aliased FLASHCTL_RIS_Register;
      --  Masked Interrupt Status Register
      FLASHCTL_MIS         : aliased FLASHCTL_MIS_Register;
      --  Interrupt Set Register
      FLASHCTL_ISET        : aliased FLASHCTL_ISET_Register;
      --  Interrupt Clear Register
      FLASHCTL_ICLR        : aliased FLASHCTL_ICLR_Register;
      --  Event Mode
      FLASHCTL_EVT_MODE    : aliased FLASHCTL_EVT_MODE_Register;
      --  Hardware Version Description Register
      FLASHCTL_DESC        : aliased FLASHCTL_DESC_Register;
      --  Command Execute Register
      FLASHCTL_CMDEXEC     : aliased FLASHCTL_CMDEXEC_Register;
      --  Command Type Register
      FLASHCTL_CMDTYPE     : aliased FLASHCTL_CMDTYPE_Register;
      --  Command Control Register
      FLASHCTL_CMDCTL      : aliased FLASHCTL_CMDCTL_Register;
      --  Command Address Register
      FLASHCTL_CMDADDR     : aliased HAL.UInt32;
      --  Command Program Byte Enable Register
      FLASHCTL_CMDBYTEN    : aliased FLASHCTL_CMDBYTEN_Register;
      --  Command Data Register 0
      FLASHCTL_CMDDATA0    : aliased HAL.UInt32;
      --  Command Data Register 1
      FLASHCTL_CMDDATA1    : aliased HAL.UInt32;
      --  Command Write Erase Protect A Register
      FLASHCTL_CMDWEPROTA  : aliased HAL.UInt32;
      --  Command Write Erase Protect B Register
      FLASHCTL_CMDWEPROTB  : aliased FLASHCTL_CMDWEPROTB_Register;
      --  Command Write Erase Protect C Register
      FLASHCTL_CMDWEPROTC  : aliased HAL.UInt32;
      --  Command Write Erase Protect Non-Main Register
      FLASHCTL_CMDWEPROTNM : aliased FLASHCTL_CMDWEPROTNM_Register;
      --  Command Write Erase Protect Trim Register
      FLASHCTL_CMDWEPROTTR : aliased FLASHCTL_CMDWEPROTTR_Register;
      --  Command Write Erase Protect Engr Register
      FLASHCTL_CMDWEPROTEN : aliased FLASHCTL_CMDWEPROTEN_Register;
      --  Command Configuration Register
      FLASHCTL_CFGCMD      : aliased FLASHCTL_CFGCMD_Register;
      --  Pulse Counter Configuration Register
      FLASHCTL_CFGPCNT     : aliased FLASHCTL_CFGPCNT_Register;
      --  Command Status Register
      FLASHCTL_STATCMD     : aliased FLASHCTL_STATCMD_Register;
      --  Address Status Register
      FLASHCTL_STATADDR    : aliased FLASHCTL_STATADDR_Register;
      --  Pulse Count Status Register
      FLASHCTL_STATPCNT    : aliased FLASHCTL_STATPCNT_Register;
      --  Mode Status Register
      FLASHCTL_STATMODE    : aliased FLASHCTL_STATMODE_Register;
      --  Global Information Register 0
      FLASHCTL_GBLINFO0    : aliased FLASHCTL_GBLINFO0_Register;
      --  Global Information Register 1
      FLASHCTL_GBLINFO1    : aliased FLASHCTL_GBLINFO1_Register;
      --  Global Information Register 2
      FLASHCTL_GBLINFO2    : aliased FLASHCTL_GBLINFO2_Register;
      --  Bank Information Register 0 for Bank 0
      FLASHCTL_BANK0INFO0  : aliased FLASHCTL_BANK0INFO0_Register;
      --  Bank Information Register 1 for Bank 0
      FLASHCTL_BANK0INFO1  : aliased FLASHCTL_BANK0INFO1_Register;
   end record
     with Volatile;

   for FLASHCTL_Peripheral use record
      FLASHCTL_IIDX        at 16#1020# range 0 .. 31;
      FLASHCTL_IMASK       at 16#1028# range 0 .. 31;
      FLASHCTL_RIS         at 16#1030# range 0 .. 31;
      FLASHCTL_MIS         at 16#1038# range 0 .. 31;
      FLASHCTL_ISET        at 16#1040# range 0 .. 31;
      FLASHCTL_ICLR        at 16#1048# range 0 .. 31;
      FLASHCTL_EVT_MODE    at 16#10E0# range 0 .. 31;
      FLASHCTL_DESC        at 16#10FC# range 0 .. 31;
      FLASHCTL_CMDEXEC     at 16#1100# range 0 .. 31;
      FLASHCTL_CMDTYPE     at 16#1104# range 0 .. 31;
      FLASHCTL_CMDCTL      at 16#1108# range 0 .. 31;
      FLASHCTL_CMDADDR     at 16#1120# range 0 .. 31;
      FLASHCTL_CMDBYTEN    at 16#1124# range 0 .. 31;
      FLASHCTL_CMDDATA0    at 16#1130# range 0 .. 31;
      FLASHCTL_CMDDATA1    at 16#1134# range 0 .. 31;
      FLASHCTL_CMDWEPROTA  at 16#11D0# range 0 .. 31;
      FLASHCTL_CMDWEPROTB  at 16#11D4# range 0 .. 31;
      FLASHCTL_CMDWEPROTC  at 16#11D8# range 0 .. 31;
      FLASHCTL_CMDWEPROTNM at 16#1210# range 0 .. 31;
      FLASHCTL_CMDWEPROTTR at 16#1214# range 0 .. 31;
      FLASHCTL_CMDWEPROTEN at 16#1218# range 0 .. 31;
      FLASHCTL_CFGCMD      at 16#13B0# range 0 .. 31;
      FLASHCTL_CFGPCNT     at 16#13B4# range 0 .. 31;
      FLASHCTL_STATCMD     at 16#13D0# range 0 .. 31;
      FLASHCTL_STATADDR    at 16#13D4# range 0 .. 31;
      FLASHCTL_STATPCNT    at 16#13D8# range 0 .. 31;
      FLASHCTL_STATMODE    at 16#13DC# range 0 .. 31;
      FLASHCTL_GBLINFO0    at 16#13F0# range 0 .. 31;
      FLASHCTL_GBLINFO1    at 16#13F4# range 0 .. 31;
      FLASHCTL_GBLINFO2    at 16#13F8# range 0 .. 31;
      FLASHCTL_BANK0INFO0  at 16#1400# range 0 .. 31;
      FLASHCTL_BANK0INFO1  at 16#1404# range 0 .. 31;
   end record;

   --  NVMNW_TINMAN
   FLASHCTL_Periph : aliased FLASHCTL_Peripheral
     with Import, Address => FLASHCTL_Base;

end MSPMC1104_SVD.FLASHCTL;
