pragma Style_Checks (Off);

--  Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/   Redistribution and use in source and binary forms, with or without   modification, are permitted provided that the following conditions   are met:   Redistributions of source code must retain the above copyright    notice, this list of conditions and the following disclaimer.   Redistributions in binary form must reproduce the above copyright   notice, this list of conditions and the following disclaimer in the    documentation and/or other materials provided with the      distribution.   Neither the name of Texas Instruments Incorporated nor the names of   its contributors may be used to endorse or promote products derived   from this software without specific prior written permission.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from mspm0c110x.svd

pragma Restrictions (No_Elaboration_Code);

with System;

--  ARM Device
package MSPMC1104_SVD is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   FLASHCTL_Base : constant System.Address := System'To_Address (16#400CD000#);
   IOMUX_Base : constant System.Address := System'To_Address (16#40428000#);
   DEBUGSS_Base : constant System.Address := System'To_Address (16#400C7000#);
   SYSCTL_Base : constant System.Address := System'To_Address (16#400AF000#);
   CRC_Base : constant System.Address := System'To_Address (16#40440000#);
   WWDT0_Base : constant System.Address := System'To_Address (16#40080000#);
   EVENTLP_Base : constant System.Address := System'To_Address (16#400C9000#);
   UART0_Base : constant System.Address := System'To_Address (16#40108000#);
   GPIOA_Base : constant System.Address := System'To_Address (16#400A0000#);
   I2C0_Base : constant System.Address := System'To_Address (16#400F0000#);
   FLASH_Base : constant System.Address := System'To_Address (16#0#);
   DMA_Base : constant System.Address := System'To_Address (16#4042A000#);
   CPUSS_Base : constant System.Address := System'To_Address (16#40400000#);
   ADC0_Base : constant System.Address := System'To_Address (16#40004000#);
   ADC0_SVT_Base : constant System.Address := System'To_Address (16#4055A000#);
   SPI0_Base : constant System.Address := System'To_Address (16#40468000#);
   WUC_Base : constant System.Address := System'To_Address (16#40424000#);
   VREF_Base : constant System.Address := System'To_Address (16#40030000#);
   SYSMEM_Base : constant System.Address := System'To_Address (16#20000000#);
   TIMA0_Base : constant System.Address := System'To_Address (16#40860000#);
   TIMG8_Base : constant System.Address := System'To_Address (16#40090000#);
   TIMG14_Base : constant System.Address := System'To_Address (16#40084000#);

end MSPMC1104_SVD;
