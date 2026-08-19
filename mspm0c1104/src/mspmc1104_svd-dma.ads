pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.DMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-255 = connected to channelID = CHANID.
   type DMA_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for DMA_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 0
   type DMA_FSUB_0_Register is record
      --  0 = disconnected. 1-255 = connected to channelID = CHANID.
      CHANID        : DMA_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.DMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-255 = connected to channelID = CHANID.
   type DMA_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for DMA_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type DMA_FSUB_1_Register is record
      --  0 = disconnected. 1-255 = connected to channelID = CHANID.
      CHANID        : DMA_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.DMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-255 = connected to channelID = CHANID.
   type DMA_FPUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for DMA_FPUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Publisher Port 0
   type DMA_FPUB_1_Register is record
      --  0 = disconnected. 1-255 = connected to channelID = CHANID.
      CHANID        : DMA_FPUB_1_CHANID_Field :=
                       MSPMC1104_SVD.DMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_FPUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  NWPW connect bit.
   type DMA_CPU_CONNECT_0_NWPW_CONN_Field is
     (--  The NWPW is not connected.
      UNCONNECTED,
      --  The NWPW is connected.
      CONNECTED)
     with Size => 1;
   for DMA_CPU_CONNECT_0_NWPW_CONN_Field use
     (UNCONNECTED => 0,
      CONNECTED => 1);

   --  CPUSS0 connect bit.
   type DMA_CPU_CONNECT_0_CPUSS0_CONN_Field is
     (--  The CPU is not connected.
      UNCONNECTED,
      --  The CPU is connected.
      CONNECTED)
     with Size => 1;
   for DMA_CPU_CONNECT_0_CPUSS0_CONN_Field use
     (UNCONNECTED => 0,
      CONNECTED => 1);

   --  CPU Connect
   type DMA_CPU_CONNECT_0_Register is record
      --  NWPW connect bit.
      NWPW_CONN     : DMA_CPU_CONNECT_0_NWPW_CONN_Field :=
                       MSPMC1104_SVD.DMA.UNCONNECTED;
      --  CPUSS0 connect bit.
      CPUSS0_CONN   : DMA_CPU_CONNECT_0_CPUSS0_CONN_Field :=
                       MSPMC1104_SVD.DMA.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_CPU_CONNECT_0_Register use record
      NWPW_CONN     at 0 range 0 .. 0;
      CPUSS0_CONN   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Free run control
   type DMA_PDBGCTL_FREE_Field is
     (--  The peripheral freezes functionality while the Core Halted input is
--  asserted and resumes when it is deasserted.
      STOP,
      --  The peripheral ignores the state of the Core Halted input
      RUN)
     with Size => 1;
   for DMA_PDBGCTL_FREE_Field use
     (STOP => 0,
      RUN => 1);

   --  Soft halt boundary control. This function is only available, if [FREE]
   --  is set to 'STOP'
   type DMA_PDBGCTL_SOFT_Field is
     (--  The peripheral will halt immediately, even if the resultant state will
--  result in corruption if the system is restarted
      IMMEDIATE,
      --  The peripheral blocks the debug freeze until it has reached a boundary
--  where it can resume without corruption
      DELAYED)
     with Size => 1;
   for DMA_PDBGCTL_SOFT_Field use
     (IMMEDIATE => 0,
      DELAYED => 1);

   --  Peripheral Debug Control
   type DMA_PDBGCTL_Register is record
      --  Free run control
      FREE          : DMA_PDBGCTL_FREE_Field := MSPMC1104_SVD.DMA.STOP;
      --  Soft halt boundary control. This function is only available, if
      --  [FREE] is set to 'STOP'
      SOFT          : DMA_PDBGCTL_SOFT_Field := MSPMC1104_SVD.DMA.IMMEDIATE;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_PDBGCTL_Register use record
      FREE          at 0 range 0 .. 0;
      SOFT          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   ---------------------------------------
   -- DMA_INT_EVENT cluster's Registers --
   ---------------------------------------

   --  Interrupt index status
   type DMA_IIDX_STAT_Field is
     (--  No bit is set means there is no pending interrupt request
      NO_INTR,
      --  DMA Channel 0 size counter reached zero (DMASZ=0).
      DMACH0,
      --  DMA Channel 1 size counter reached zero (DMASZ=0).
      DMACH1,
      --  DMA Channel 2 size counter reached zero (DMASZ=0).
      DMACH2,
      --  DMA Channel 3 size counter reached zero (DMASZ=0).
      DMACH3,
      --  DMA Channel 4 size counter reached zero (DMASZ=0).
      DMACH4,
      --  DMA Channel 5 size counter reached zero (DMASZ=0).
      DMACH5,
      --  DMA Channel 6 size counter reached zero (DMASZ=0).
      DMACH6,
      --  DMA Channel 7 size counter reached zero (DMASZ=0).
      DMACH7,
      --  DMA Channel 8 size counter reached zero (DMASZ=0).
      DMACH8,
      --  DMA Channel 9 size counter reached zero (DMASZ=0).
      DMACH9,
      --  DMA Channel 10 size counter reached zero (DMASZ=0).
      DMACH10,
      --  DMA Channel 11 size counter reached zero (DMASZ=0).
      DMACH11,
      --  DMA Channel 12 size counter reached zero (DMASZ=0).
      DMACH12,
      --  DMA Channel 13 size counter reached zero (DMASZ=0).
      DMACH13,
      --  DMA Channel 14 size counter reached zero (DMASZ=0).
      DMACH14,
      --  DMA Channel 15 size counter reached zero (DMASZ=0).
      DMACH15,
      --  PRE-IRQ event for DMA Channel 0.
      PREIRQCH0,
      --  PRE-IRQ event for DMA Channel 1.
      PREIRQCH1,
      --  PRE-IRQ event for DMA Channel 2.
      PREIRQCH2,
      --  PRE-IRQ event for DMA Channel 3.
      PREIRQCH3,
      --  PRE-IRQ event for DMA Channel 4.
      PREIRQCH4,
      --  PRE-IRQ event for DMA Channel 5.
      PREIRQCH5,
      --  PRE-IRQ event for DMA Channel 6.
      PREIRQCH6,
      --  PRE-IRQ event for DMA Channel 7.
      PREIRQCH7,
      --  DMA address error, SRC address not reachable.
      ADDRERR,
      --  DMA data error, SRC data might be corrupted (PAR or ECC error).
      DATAERR)
     with Size => 8;
   for DMA_IIDX_STAT_Field use
     (NO_INTR => 0,
      DMACH0 => 1,
      DMACH1 => 2,
      DMACH2 => 3,
      DMACH3 => 4,
      DMACH4 => 5,
      DMACH5 => 6,
      DMACH6 => 7,
      DMACH7 => 8,
      DMACH8 => 9,
      DMACH9 => 10,
      DMACH10 => 11,
      DMACH11 => 12,
      DMACH12 => 13,
      DMACH13 => 14,
      DMACH14 => 15,
      DMACH15 => 16,
      PREIRQCH0 => 17,
      PREIRQCH1 => 18,
      PREIRQCH2 => 19,
      PREIRQCH3 => 20,
      PREIRQCH4 => 21,
      PREIRQCH5 => 22,
      PREIRQCH6 => 23,
      PREIRQCH7 => 24,
      ADDRERR => 25,
      DATAERR => 26);

   --  Interrupt index
   type DMA_IIDX_DMA_INT_EVENT_Register is record
      --  Read-only. Interrupt index status
      STAT          : DMA_IIDX_STAT_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IIDX_DMA_INT_EVENT_Register use record
      STAT          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Channel 0 interrupt signal. Size counter reached zero (DMASZ=0).
   type DMA_IMASK_DMACH0_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_IMASK_DMACH0_Field use
     (CLR => 0,
      SET => 1);

   --  DMA address error, SRC address not reachable.
   type DMA_IMASK_ADDRERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_IMASK_ADDRERR_Field use
     (CLR => 0,
      SET => 1);

   --  DMA data error, SRC data might be corrupted (PAR or ECC error).
   type DMA_IMASK_DATAERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_IMASK_DATAERR_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt mask
   type DMA_IMASK_DMA_INT_EVENT_Register is record
      --  DMA Channel 0 interrupt signal. Size counter reached zero (DMASZ=0).
      DMACH0         : DMA_IMASK_DMACH0_Field := MSPMC1104_SVD.DMA.CLR;
      --  unspecified
      Reserved_1_23  : HAL.UInt23 := 16#0#;
      --  DMA address error, SRC address not reachable.
      ADDRERR        : DMA_IMASK_ADDRERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  DMA data error, SRC data might be corrupted (PAR or ECC error).
      DATAERR        : DMA_IMASK_DATAERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_IMASK_DMA_INT_EVENT_Register use record
      DMACH0         at 0 range 0 .. 0;
      Reserved_1_23  at 0 range 1 .. 23;
      ADDRERR        at 0 range 24 .. 24;
      DATAERR        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  DMA Channel 0 interrupt signals that size counter reached zero
   --  (DMASZ=0).
   type DMA_RIS_DMACH0_Field is
     (--  Interrupt did not occur
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for DMA_RIS_DMACH0_Field use
     (CLR => 0,
      SET => 1);

   --  DMA address error, SRC address not reachable.
   type DMA_RIS_ADDRERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_RIS_ADDRERR_Field use
     (CLR => 0,
      SET => 1);

   --  DMA data error, SRC data might be corrupted (PAR or ECC error).
   type DMA_RIS_DATAERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_RIS_DATAERR_Field use
     (CLR => 0,
      SET => 1);

   --  Raw interrupt status
   type DMA_RIS_DMA_INT_EVENT_Register is record
      --  Read-only. DMA Channel 0 interrupt signals that size counter reached
      --  zero (DMASZ=0).
      DMACH0         : DMA_RIS_DMACH0_Field;
      --  unspecified
      Reserved_1_23  : HAL.UInt23;
      --  Read-only. DMA address error, SRC address not reachable.
      ADDRERR        : DMA_RIS_ADDRERR_Field;
      --  Read-only. DMA data error, SRC data might be corrupted (PAR or ECC
      --  error).
      DATAERR        : DMA_RIS_DATAERR_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_RIS_DMA_INT_EVENT_Register use record
      DMACH0         at 0 range 0 .. 0;
      Reserved_1_23  at 0 range 1 .. 23;
      ADDRERR        at 0 range 24 .. 24;
      DATAERR        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  DMA Channel 0 interrupt signals that size counter reached zero
   --  (DMASZ=0).
   type DMA_MIS_DMACH0_Field is
     (--  Interrupt did not occur or is masked out
      CLR,
      --  Interrupt occurred
      SET)
     with Size => 1;
   for DMA_MIS_DMACH0_Field use
     (CLR => 0,
      SET => 1);

   --  DMA address error, SRC address not reachable.
   type DMA_MIS_ADDRERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_MIS_ADDRERR_Field use
     (CLR => 0,
      SET => 1);

   --  DMA data error, SRC data might be corrupted (PAR or ECC error).
   type DMA_MIS_DATAERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_MIS_DATAERR_Field use
     (CLR => 0,
      SET => 1);

   --  Masked interrupt status
   type DMA_MIS_DMA_INT_EVENT_Register is record
      --  Read-only. DMA Channel 0 interrupt signals that size counter reached
      --  zero (DMASZ=0).
      DMACH0         : DMA_MIS_DMACH0_Field;
      --  unspecified
      Reserved_1_23  : HAL.UInt23;
      --  Read-only. DMA address error, SRC address not reachable.
      ADDRERR        : DMA_MIS_ADDRERR_Field;
      --  Read-only. DMA data error, SRC data might be corrupted (PAR or ECC
      --  error).
      DATAERR        : DMA_MIS_DATAERR_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_MIS_DMA_INT_EVENT_Register use record
      DMACH0         at 0 range 0 .. 0;
      Reserved_1_23  at 0 range 1 .. 23;
      ADDRERR        at 0 range 24 .. 24;
      DATAERR        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  DMA Channel 0 interrupt signals that size counter reached zero
   --  (DMASZ=0).
   type DMA_ISET_DMACH0_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Set interrupt
      SET)
     with Size => 1;
   for DMA_ISET_DMACH0_Field use
     (NO_EFFECT => 0,
      SET => 1);

   --  DMA address error, SRC address not reachable.
   type DMA_ISET_ADDRERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_ISET_ADDRERR_Field use
     (CLR => 0,
      SET => 1);

   --  DMA data error, SRC data might be corrupted (PAR or ECC error).
   type DMA_ISET_DATAERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_ISET_DATAERR_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt set
   type DMA_ISET_DMA_INT_EVENT_Register is record
      --  Write-only. DMA Channel 0 interrupt signals that size counter reached
      --  zero (DMASZ=0).
      DMACH0         : DMA_ISET_DMACH0_Field := MSPMC1104_SVD.DMA.NO_EFFECT;
      --  unspecified
      Reserved_1_23  : HAL.UInt23 := 16#0#;
      --  Write-only. DMA address error, SRC address not reachable.
      ADDRERR        : DMA_ISET_ADDRERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  Write-only. DMA data error, SRC data might be corrupted (PAR or ECC
      --  error).
      DATAERR        : DMA_ISET_DATAERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_ISET_DMA_INT_EVENT_Register use record
      DMACH0         at 0 range 0 .. 0;
      Reserved_1_23  at 0 range 1 .. 23;
      ADDRERR        at 0 range 24 .. 24;
      DATAERR        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  DMA Channel 0 interrupt signals that size counter reached zero
   --  (DMASZ=0).
   type DMA_ICLR_DMACH0_Field is
     (--  Writing 0 has no effect
      NO_EFFECT,
      --  Clear interrupt
      CLR)
     with Size => 1;
   for DMA_ICLR_DMACH0_Field use
     (NO_EFFECT => 0,
      CLR => 1);

   --  DMA address error, SRC address not reachable.
   type DMA_ICLR_ADDRERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_ICLR_ADDRERR_Field use
     (CLR => 0,
      SET => 1);

   --  DMA data error, SRC data might be corrupted (PAR or ECC error).
   type DMA_ICLR_DATAERR_Field is
     (--  Clear interrupt mask bit
      CLR,
      --  Set interrupt mask bit
      SET)
     with Size => 1;
   for DMA_ICLR_DATAERR_Field use
     (CLR => 0,
      SET => 1);

   --  Interrupt clear
   type DMA_ICLR_DMA_INT_EVENT_Register is record
      --  Write-only. DMA Channel 0 interrupt signals that size counter reached
      --  zero (DMASZ=0).
      DMACH0         : DMA_ICLR_DMACH0_Field := MSPMC1104_SVD.DMA.NO_EFFECT;
      --  unspecified
      Reserved_1_23  : HAL.UInt23 := 16#0#;
      --  Write-only. DMA address error, SRC address not reachable.
      ADDRERR        : DMA_ICLR_ADDRERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  Write-only. DMA data error, SRC data might be corrupted (PAR or ECC
      --  error).
      DATAERR        : DMA_ICLR_DATAERR_Field := MSPMC1104_SVD.DMA.CLR;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_ICLR_DMA_INT_EVENT_Register use record
      DMACH0         at 0 range 0 .. 0;
      Reserved_1_23  at 0 range 1 .. 23;
      ADDRERR        at 0 range 24 .. 24;
      DATAERR        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   type DMA_INT_EVENT_Cluster is record
      --  Interrupt index
      DMA_IIDX  : aliased DMA_IIDX_DMA_INT_EVENT_Register;
      --  Interrupt mask
      DMA_IMASK : aliased DMA_IMASK_DMA_INT_EVENT_Register;
      --  Raw interrupt status
      DMA_RIS   : aliased DMA_RIS_DMA_INT_EVENT_Register;
      --  Masked interrupt status
      DMA_MIS   : aliased DMA_MIS_DMA_INT_EVENT_Register;
      --  Interrupt set
      DMA_ISET  : aliased DMA_ISET_DMA_INT_EVENT_Register;
      --  Interrupt clear
      DMA_ICLR  : aliased DMA_ICLR_DMA_INT_EVENT_Register;
   end record
     with Size => 352;

   for DMA_INT_EVENT_Cluster use record
      DMA_IIDX  at 16#0# range 0 .. 31;
      DMA_IMASK at 16#8# range 0 .. 31;
      DMA_RIS   at 16#10# range 0 .. 31;
      DMA_MIS   at 16#18# range 0 .. 31;
      DMA_ISET  at 16#20# range 0 .. 31;
      DMA_ICLR  at 16#28# range 0 .. 31;
   end record;

   type DMA_INT_EVENT_Clusters is array (0 .. 1) of DMA_INT_EVENT_Cluster;

   --  Event line mode select for event corresponding to interrupt event
   --  INT_EVENT[0]
   type DMA_EVT_MODE_INT0_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for DMA_EVT_MODE_INT0_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event line mode select for event corresponding to generic event
   --  INT_EVENT[1]
   type DMA_EVT_MODE_EVT1_CFG_Field is
     (--  The interrupt or event line is disabled.
      DISABLE,
      --  The interrupt or event line is in software mode. Software must clear the
--  RIS.
      SOFTWARE,
      --  The interrupt or event line is in hardware mode. The hardware (another
--  module) clears automatically the associated RIS flag.
      HARDWARE)
     with Size => 2;
   for DMA_EVT_MODE_EVT1_CFG_Field use
     (DISABLE => 0,
      SOFTWARE => 1,
      HARDWARE => 2);

   --  Event Mode
   type DMA_EVT_MODE_Register is record
      --  Read-only. Event line mode select for event corresponding to
      --  interrupt event INT_EVENT[0]
      INT0_CFG      : DMA_EVT_MODE_INT0_CFG_Field;
      --  Read-only. Event line mode select for event corresponding to generic
      --  event INT_EVENT[1]
      EVT1_CFG      : DMA_EVT_MODE_EVT1_CFG_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_EVT_MODE_Register use record
      INT0_CFG      at 0 range 0 .. 1;
      EVT1_CFG      at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DMA_DESC_MINREV_Field is HAL.UInt4;
   subtype DMA_DESC_MAJREV_Field is HAL.UInt4;
   subtype DMA_DESC_FEATUREVER_Field is HAL.UInt4;
   subtype DMA_DESC_MODULEID_Field is HAL.UInt16;

   --  Module Description
   type DMA_DESC_Register is record
      --  Read-only. Minor rev of the IP
      MINREV        : DMA_DESC_MINREV_Field;
      --  Read-only. Major rev of the IP
      MAJREV        : DMA_DESC_MAJREV_Field;
      --  unspecified
      Reserved_8_11 : HAL.UInt4;
      --  Read-only. Feature Set for the DMA: number of DMA channel minus one
      --  (e.g. 0->1ch, 2->3ch, 15->16ch).
      FEATUREVER    : DMA_DESC_FEATUREVER_Field;
      --  Read-only. Module identification contains a unique peripheral
      --  identification number. The assignments are maintained in a central
      --  database for all of the platform modules to ensure uniqueness.
      MODULEID      : DMA_DESC_MODULEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DESC_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_11 at 0 range 8 .. 11;
      FEATUREVER    at 0 range 12 .. 15;
      MODULEID      at 0 range 16 .. 31;
   end record;

   --  Round robin. This bit enables the round-robin DMA channel priorities.
   type DMA_DMAPRIO_ROUNDROBIN_Field is
     (--  Roundrobin priority disabled, DMA channel priority is fixed:
--  DMA0-DMA1-DMA2-...-DMA16
      DISABLE,
      --  Roundrobin priority enabled, DMA channel priority changes with each
--  transfer
      ENABLE)
     with Size => 1;
   for DMA_DMAPRIO_ROUNDROBIN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Define the burst size of a block transfer, before the priority is
   --  re-evaluated
   type DMA_DMAPRIO_BURSTSZ_Field is
     (--  There is no burst size, the whole block transfer is completed on one
--  transfer without interruption
      INFINITI,
      --  The burst size is 8, after 8 transfers the block transfer is interrupted
--  and the priority is reevaluated
      BURST_8,
      --  The burst size is 16, after 16 transfers the block transfer is interrupted
--  and the priority is reevaluated
      BUSRT_16,
      --  The burst size is 32, after 32 transfers the block transfer is interrupted
--  and the priority is reevaluated
      BURST_32)
     with Size => 2;
   for DMA_DMAPRIO_BURSTSZ_Field use
     (INFINITI => 0,
      BURST_8 => 1,
      BUSRT_16 => 2,
      BURST_32 => 3);

   --  DMA Channel Priority Control
   type DMA_DMAPRIO_Register is record
      --  Round robin. This bit enables the round-robin DMA channel priorities.
      ROUNDROBIN     : DMA_DMAPRIO_ROUNDROBIN_Field :=
                        MSPMC1104_SVD.DMA.DISABLE;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Define the burst size of a block transfer, before the priority is
      --  re-evaluated
      BURSTSZ        : DMA_DMAPRIO_BURSTSZ_Field :=
                        MSPMC1104_SVD.DMA.INFINITI;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DMAPRIO_Register use record
      ROUNDROBIN     at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      BURSTSZ        at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------------------------------
   -- DMA_DMATRIG[%s] cluster's Registers --
   -----------------------------------------

   --  DMA Trigger Select Note: Reference the datasheet of the device to see
   --  the specific trigger mapping.
   type DMA_DMATCTL_DMATSEL_Field is
     (--  Software trigger request
      DMAREQ)
     with Size => 6;
   for DMA_DMATCTL_DMATSEL_Field use
     (DMAREQ => 0);

   --  DMA Trigger by Internal Channel
   type DMA_DMATCTL_DMATINT_Field is
     (--  DMATSEL will define external trigger select as transfer trigger.
      EXTERNAL,
      --  DMATSEL will define internal channel as transfer trigger select. 0->
--  Channel0-done, 1-> Channel1-done, ...
      INTERNAL)
     with Size => 1;
   for DMA_DMATCTL_DMATINT_Field use
     (EXTERNAL => 0,
      INTERNAL => 1);

   --  DMA Trigger Select
   type DMA_DMATCTL_DMA_DMATRIG[%s]_Register is record
      --  DMA Trigger Select Note: Reference the datasheet of the device to see
      --  the specific trigger mapping.
      DMATSEL       : DMA_DMATCTL_DMATSEL_Field := MSPMC1104_SVD.DMA.DMAREQ;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  DMA Trigger by Internal Channel
      DMATINT       : DMA_DMATCTL_DMATINT_Field := MSPMC1104_SVD.DMA.EXTERNAL;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DMATCTL_DMA_DMATRIG[%s]_Register use record
      DMATSEL       at 0 range 0 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      DMATINT       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   type DMA_DMATRIG[%s]_Cluster is record
      --  DMA Trigger Select
      DMA_DMATCTL : aliased DMA_DMATCTL_DMA_DMATRIG[%s]_Register;
   end record
     with Size => 32;

   for DMA_DMATRIG[%s]_Cluster use record
      DMA_DMATCTL at 0 range 0 .. 31;
   end record;

   -----------------------------------------
   -- DMA_DMACHAN[%s] cluster's Registers --
   -----------------------------------------

   --  DMA request. Software-controlled DMA start. DMAREQ is reset
   --  automatically.
   type DMA_DMACTL_DMAREQ_Field is
     (--  Default read value
      IDLE,
      --  DMA transfer request (start DMA)
      REQUEST)
     with Size => 1;
   for DMA_DMACTL_DMAREQ_Field use
     (IDLE => 0,
      REQUEST => 1);

   --  DMA enable
   type DMA_DMACTL_DMAEN_Field is
     (--  DMA channel disabled
      DISABLE,
      --  DMA channel enabled
      ENABLE)
     with Size => 1;
   for DMA_DMACTL_DMAEN_Field use
     (DISABLE => 0,
      ENABLE => 1);

   --  Enable an early IRQ event. This can help software to react quicker to
   --  and DMA done event or allows some additional configuration before the
   --  channel is complete. Note: This register is only available in a
   --  FULL-channel configuration. Please consult the datasheet of the specific
   --  device to map which channel number has FULL or BASIC capability. In a
   --  BASIC configuration this register is a read only value and always reads
   --  as 0x0.
   type DMA_DMACTL_DMAPREIRQ_Field is
     (--  Pre-IRQ event disabled.
      PREIRQ_DISABLE,
      --  Issure Pre-IRQ event when DMASZ=1
      PREIRQ_1,
      --  Issure Pre-IRQ event when DMASZ=2
      PREIRQ_2,
      --  Issure Pre-IRQ event when DMASZ=4
      PREIRQ_4,
      --  Issure Pre-IRQ event when DMASZ=8
      PREIRQ_8,
      --  Issure Pre-IRQ event when DMASZ=32
      PREIRQ_32,
      --  Issure Pre-IRQ event when DMASZ=64
      PREIRQ_64,
      --  Issure Pre-IRQ event when DMASZ reached the half size point of the original
--  transfer size
      PREIRQ_HALF)
     with Size => 3;
   for DMA_DMACTL_DMAPREIRQ_Field use
     (PREIRQ_DISABLE => 0,
      PREIRQ_1 => 1,
      PREIRQ_2 => 2,
      PREIRQ_4 => 3,
      PREIRQ_8 => 4,
      PREIRQ_32 => 5,
      PREIRQ_64 => 6,
      PREIRQ_HALF => 7);

   --  DMA source width. This bit selects the source data width as a byte, half
   --  word, word or long word.
   type DMA_DMACTL_DMASRCWDTH_Field is
     (--  Source data width is BYTE (8-bit)
      BYTE,
      --  Source data width is HALF-WORD (16-bit)
      HALF,
      --  Source data width is WORD (32-bit)
      WORD,
      --  Source data width is LONG-WORD (64-bit)
      LONG)
     with Size => 2;
   for DMA_DMACTL_DMASRCWDTH_Field use
     (BYTE => 0,
      HALF => 1,
      WORD => 2,
      LONG => 3);

   --  DMA destination width. This bit selects the destination as a byte, half
   --  word, word or long word.
   type DMA_DMACTL_DMADSTWDTH_Field is
     (--  Destination data width is BYTE (8-bit)
      BYTE,
      --  Destination data width is HALF-WORD (16-bit)
      HALF,
      --  Destination data width is WORD (32-bit)
      WORD,
      --  Destination data width is LONG-WORD (64-bit)
      LONG)
     with Size => 2;
   for DMA_DMACTL_DMADSTWDTH_Field use
     (BYTE => 0,
      HALF => 1,
      WORD => 2,
      LONG => 3);

   --  DMA source increment. This bit selects automatic incrementing or
   --  decrementing of the source address DMASA for each transfer. The amount
   --  of change to the DMASA is based on the definitin in the DMASRCWDTH. For
   --  example an increment of 1 (+1) on a WORD transfer will increment the
   --  DMASA by 4.
   type DMA_DMACTL_DMASRCINCR_Field is
     (--  Address is unchanged (+0)
      UNCHANGED,
      --  Decremented by 1 (-1 * DMASRCWDTH)
      DECREMENT,
      --  Incremented by 1 (+1 * DMASRCWDTH)
      INCREMENT,
      --  Stride size 2 (+2 * DMASRCWDTH)
      STRIDE_2,
      --  Stride size 3 (+3 * DMASRCWDTH)
      STRIDE_3,
      --  Stride size 4 (+4 * DMASRCWDTH)
      STRIDE_4,
      --  Stride size 5 (+5 * DMASRCWDTH)
      STRIDE_5,
      --  Stride size 6 (+6 * DMASRCWDTH)
      STRIDE_6,
      --  Stride size 7 (+7 * DMASRCWDTH)
      STRIDE_7,
      --  Stride size 8 (+8 * DMASRCWDTH)
      STRIDE_8,
      --  Stride size 9 (+9 * DMASRCWDTH)
      STRIDE_9)
     with Size => 4;
   for DMA_DMACTL_DMASRCINCR_Field use
     (UNCHANGED => 0,
      DECREMENT => 2,
      INCREMENT => 3,
      STRIDE_2 => 8,
      STRIDE_3 => 9,
      STRIDE_4 => 10,
      STRIDE_5 => 11,
      STRIDE_6 => 12,
      STRIDE_7 => 13,
      STRIDE_8 => 14,
      STRIDE_9 => 15);

   --  DMA destination increment. This bit selects automatic incrementing or
   --  decrementing of the destination address DMADA for each transfer. The
   --  amount of change to the DMADA is based on the definitin in the
   --  DMADSTWDTH. For example an increment of 1 (+1) on a WORD transfer will
   --  increment the DMADA by 4.
   type DMA_DMACTL_DMADSTINCR_Field is
     (--  Address is unchanged (+0)
      UNCHANGED,
      --  Decremented by 1 (-1 * DMADSTWDTH)
      DECREMENT,
      --  Incremented by 1 (+1 * DMADSTWDTH)
      INCREMENT,
      --  Stride size 2 (+2 * DMADSTWDTH)
      STRIDE_2,
      --  Stride size 3 (+3 * DMADSTWDTH)
      STRIDE_3,
      --  Stride size 4 (+4 * DMADSTWDTH)
      STRIDE_4,
      --  Stride size 5 (+5 * DMADSTWDTH)
      STRIDE_5,
      --  Stride size 6 (+6 * DMADSTWDTH)
      STRIDE_6,
      --  Stride size 7 (+7 * DMADSTWDTH)
      STRIDE_7,
      --  Stride size 8 (+8 * DMADSTWDTH)
      STRIDE_8,
      --  Stride size 9 (+9 * DMADSTWDTH)
      STRIDE_9)
     with Size => 4;
   for DMA_DMACTL_DMADSTINCR_Field use
     (UNCHANGED => 0,
      DECREMENT => 2,
      INCREMENT => 3,
      STRIDE_2 => 8,
      STRIDE_3 => 9,
      STRIDE_4 => 10,
      STRIDE_5 => 11,
      STRIDE_6 => 12,
      STRIDE_7 => 13,
      STRIDE_8 => 14,
      STRIDE_9 => 15);

   --  DMA extended mode Note: The extended transfer modes are only available
   --  in a FULL-channel configuration. Please consult the datasheet of the
   --  specific device to map which channel number has FULL or BASIC
   --  capability. In a BASIC channel configuration this register is a
   --  read-only register and reads 0x0.
   type DMA_DMACTL_DMAEM_Field is
     (--  Normal mode is related to transfers from SRC to DST
      NORMAL,
      --  Fill mode will copy the SA register content as data to DA
      FILLMODE,
      --  Table mode will read an address and data value from SA and write the data
--  to address
      TABLEMODE)
     with Size => 2;
   for DMA_DMACTL_DMAEM_Field use
     (NORMAL => 0,
      FILLMODE => 2,
      TABLEMODE => 3);

   --  DMA transfer mode register Note: The repeat-single (2h) and repeat-block
   --  (3h) transfer are only available in a FULL-channel configuration. Please
   --  consult the datasheet of the specific device to map which channel number
   --  has FULL or BASIC capability. In a BASIC channel configuration only the
   --  values for single (0h) and block (1h) transfer can be set.
   type DMA_DMACTL_DMATM_Field is
     (--  Single transfer. Each transfers requires a new trigger. When the DMASZ
--  counts down to zero an event can be generated and the DMAEN is cleared.
      SINGLE,
      --  Block transfer. Each trigger transfers the complete block defined in DMASZ.
--  After the transfer is complete an event can be generated and the DMAEN is
--  cleared.
      BLOCK,
      --  Repeated single transfer. Each transfers requires a new trigger. When the
--  DMASZ counts down to zero an event can be generated. After the last
--  transfer the DMASA, DMADA, DAMSZ registers are restored to its initial
--  value and the DMAEN stays enabled.
      RPTSNGL,
      --  Repeated block transfer. Each trigger transfers the complete block defined
--  in DMASZ. After the last transfer the DMASA, DMADA, DAMSZ registers are
--  restored to its initial value and the DMAEN stays enabled.
      RPTBLCK)
     with Size => 2;
   for DMA_DMACTL_DMATM_Field use
     (SINGLE => 0,
      BLOCK => 1,
      RPTSNGL => 2,
      RPTBLCK => 3);

   --  DMA Channel Control
   type DMA_DMACTL_DMA_DMACHAN[%s]_Register is record
      --  DMA request. Software-controlled DMA start. DMAREQ is reset
      --  automatically.
      DMAREQ         : DMA_DMACTL_DMAREQ_Field := MSPMC1104_SVD.DMA.IDLE;
      --  DMA enable
      DMAEN          : DMA_DMACTL_DMAEN_Field := MSPMC1104_SVD.DMA.DISABLE;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Enable an early IRQ event. This can help software to react quicker to
      --  and DMA done event or allows some additional configuration before the
      --  channel is complete. Note: This register is only available in a
      --  FULL-channel configuration. Please consult the datasheet of the
      --  specific device to map which channel number has FULL or BASIC
      --  capability. In a BASIC configuration this register is a read only
      --  value and always reads as 0x0.
      DMAPREIRQ      : DMA_DMACTL_DMAPREIRQ_Field :=
                        MSPMC1104_SVD.DMA.PREIRQ_DISABLE;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  DMA source width. This bit selects the source data width as a byte,
      --  half word, word or long word.
      DMASRCWDTH     : DMA_DMACTL_DMASRCWDTH_Field := MSPMC1104_SVD.DMA.BYTE;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  DMA destination width. This bit selects the destination as a byte,
      --  half word, word or long word.
      DMADSTWDTH     : DMA_DMACTL_DMADSTWDTH_Field := MSPMC1104_SVD.DMA.BYTE;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  DMA source increment. This bit selects automatic incrementing or
      --  decrementing of the source address DMASA for each transfer. The
      --  amount of change to the DMASA is based on the definitin in the
      --  DMASRCWDTH. For example an increment of 1 (+1) on a WORD transfer
      --  will increment the DMASA by 4.
      DMASRCINCR     : DMA_DMACTL_DMASRCINCR_Field :=
                        MSPMC1104_SVD.DMA.UNCHANGED;
      --  DMA destination increment. This bit selects automatic incrementing or
      --  decrementing of the destination address DMADA for each transfer. The
      --  amount of change to the DMADA is based on the definitin in the
      --  DMADSTWDTH. For example an increment of 1 (+1) on a WORD transfer
      --  will increment the DMADA by 4.
      DMADSTINCR     : DMA_DMACTL_DMADSTINCR_Field :=
                        MSPMC1104_SVD.DMA.UNCHANGED;
      --  DMA extended mode Note: The extended transfer modes are only
      --  available in a FULL-channel configuration. Please consult the
      --  datasheet of the specific device to map which channel number has FULL
      --  or BASIC capability. In a BASIC channel configuration this register
      --  is a read-only register and reads 0x0.
      DMAEM          : DMA_DMACTL_DMAEM_Field := MSPMC1104_SVD.DMA.NORMAL;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  DMA transfer mode register Note: The repeat-single (2h) and
      --  repeat-block (3h) transfer are only available in a FULL-channel
      --  configuration. Please consult the datasheet of the specific device to
      --  map which channel number has FULL or BASIC capability. In a BASIC
      --  channel configuration only the values for single (0h) and block (1h)
      --  transfer can be set.
      DMATM          : DMA_DMACTL_DMATM_Field := MSPMC1104_SVD.DMA.SINGLE;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DMACTL_DMA_DMACHAN[%s]_Register use record
      DMAREQ         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      DMAPREIRQ      at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DMASRCWDTH     at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      DMADSTWDTH     at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DMASRCINCR     at 0 range 16 .. 19;
      DMADSTINCR     at 0 range 20 .. 23;
      DMAEM          at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      DMATM          at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DMA_DMASZ_DMA_DMACHAN[%s]_SIZE_Field is HAL.UInt16;

   --  DMA Channel Size
   type DMA_DMASZ_DMA_DMACHAN[%s]_Register is record
      --  DMA Channel Size in number of transfers
      SIZE           : DMA_DMASZ_DMA_DMACHAN[%s]_SIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMA_DMASZ_DMA_DMACHAN[%s]_Register use record
      SIZE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   type DMA_DMACHAN[%s]_Cluster is record
      --  DMA Channel Control
      DMA_DMACTL : aliased DMA_DMACTL_DMA_DMACHAN[%s]_Register;
      --  DMA Channel Source Address
      DMA_DMASA  : aliased HAL.UInt32;
      --  DMA Channel Destination Address
      DMA_DMADA  : aliased HAL.UInt32;
      --  DMA Channel Size
      DMA_DMASZ  : aliased DMA_DMASZ_DMA_DMACHAN[%s]_Register;
   end record
     with Size => 128;

   for DMA_DMACHAN[%s]_Cluster use record
      DMA_DMACTL at 16#0# range 0 .. 31;
      DMA_DMASA  at 16#4# range 0 .. 31;
      DMA_DMADA  at 16#8# range 0 .. 31;
      DMA_DMASZ  at 16#C# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type DMA_Peripheral is record
      --  Subscriber Port 0
      DMA_FSUB_0        : aliased DMA_FSUB_0_Register;
      --  Subscriber Port 1
      DMA_FSUB_1        : aliased DMA_FSUB_1_Register;
      --  Publisher Port 0
      DMA_FPUB_1        : aliased DMA_FPUB_1_Register;
      --  CPU Connect
      DMA_CPU_CONNECT_0 : aliased DMA_CPU_CONNECT_0_Register;
      --  Peripheral Debug Control
      DMA_PDBGCTL       : aliased DMA_PDBGCTL_Register;
      DMA_INT_EVENT     : aliased DMA_INT_EVENT_Clusters;
      --  Event Mode
      DMA_EVT_MODE      : aliased DMA_EVT_MODE_Register;
      --  Module Description
      DMA_DESC          : aliased DMA_DESC_Register;
      --  DMA Channel Priority Control
      DMA_DMAPRIO       : aliased DMA_DMAPRIO_Register;
      DMA_DMATRIG[%s]   : aliased DMA_DMATRIG[%s]_Cluster;
      DMA_DMACHAN[%s]   : aliased DMA_DMACHAN[%s]_Cluster;
   end record
     with Volatile;

   for DMA_Peripheral use record
      DMA_FSUB_0        at 16#400# range 0 .. 31;
      DMA_FSUB_1        at 16#404# range 0 .. 31;
      DMA_FPUB_1        at 16#444# range 0 .. 31;
      DMA_CPU_CONNECT_0 at 16#480# range 0 .. 31;
      DMA_PDBGCTL       at 16#1018# range 0 .. 31;
      DMA_INT_EVENT     at 16#1020# range 0 .. 703;
      DMA_EVT_MODE      at 16#10E0# range 0 .. 31;
      DMA_DESC          at 16#10FC# range 0 .. 31;
      DMA_DMAPRIO       at 16#1100# range 0 .. 31;
      DMA_DMATRIG[%s]   at 16#1110# range 0 .. 31;
      DMA_DMACHAN[%s]   at 16#1200# range 0 .. 127;
   end record;

   --  PERIPHERALREGION
   DMA_Periph : aliased DMA_Peripheral
     with Import, Address => DMA_Base;

end MSPMC1104_SVD.DMA;
