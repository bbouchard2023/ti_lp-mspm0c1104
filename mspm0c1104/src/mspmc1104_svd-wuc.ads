pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package MSPMC1104_SVD.WUC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type WUC_FSUB_0_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for WUC_FSUB_0_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 0
   type WUC_FSUB_0_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : WUC_FSUB_0_CHANID_Field :=
                       MSPMC1104_SVD.WUC.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUC_FSUB_0_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  0 = disconnected. 1-15 = connected to channelID = CHANID.
   type WUC_FSUB_1_CHANID_Field is
     (--  A value of 0 specifies that the event is not connected
      UNCONNECTED)
     with Size => 2;
   for WUC_FSUB_1_CHANID_Field use
     (UNCONNECTED => 0);

   --  Subscriber Port 1
   type WUC_FSUB_1_Register is record
      --  0 = disconnected. 1-15 = connected to channelID = CHANID.
      CHANID        : WUC_FSUB_1_CHANID_Field :=
                       MSPMC1104_SVD.WUC.UNCONNECTED;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WUC_FSUB_1_Register use record
      CHANID        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PERIPHERALREGION
   type WUC_Peripheral is record
      --  Subscriber Port 0
      WUC_FSUB_0 : aliased WUC_FSUB_0_Register;
      --  Subscriber Port 1
      WUC_FSUB_1 : aliased WUC_FSUB_1_Register;
   end record
     with Volatile;

   for WUC_Peripheral use record
      WUC_FSUB_0 at 16#400# range 0 .. 31;
      WUC_FSUB_1 at 16#404# range 0 .. 31;
   end record;

   --  PERIPHERALREGION
   WUC_Periph : aliased WUC_Peripheral
     with Import, Address => WUC_Base;

end MSPMC1104_SVD.WUC;
