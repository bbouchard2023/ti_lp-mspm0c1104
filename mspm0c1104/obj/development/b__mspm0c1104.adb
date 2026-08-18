pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__mspm0c1104.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__mspm0c1104.adb");
pragma Suppress (Overflow_Check);

package body ada_main is



   procedure adainit is
   begin
      null;

   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_mspm0c1104");

   procedure main is
      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      adainit;
      Ada_Main_Program;
   end;

--  BEGIN Object file/option list
   --   /home/brendan/ti_lp-mspm0c1104/mspm0c1104/obj/development/mspm0c1104.o
   --   -L/home/brendan/ti_lp-mspm0c1104/mspm0c1104/obj/development/
   --   -L/home/brendan/ti_lp-mspm0c1104/mspm0c1104/obj/development/
   --   -L/home/brendan/.local/share/alire/toolchains/gnat_arm_elf_15.3.1_163eb73f/arm-eabi/lib/gnat/light-cortex-m0p/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
