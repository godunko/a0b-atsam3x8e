pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with A0B.Types.SVD;
with System;

--  True Random Number Generator
package A0B.ATSAM3X8E.SVD.TRNG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype TRNG_CR_KEY_Field is A0B.Types.SVD.UInt24;

   --  Control Register
   type TRNG_CR_Register is record
      --  Write-only. Enables the TRNG to provide random values
      ENABLE       : Boolean := False;
      --  unspecified
      Reserved_1_7 : A0B.Types.SVD.UInt7 := 16#0#;
      --  Write-only. Security Key
      KEY          : TRNG_CR_KEY_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TRNG_CR_Register use record
      ENABLE       at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      KEY          at 0 range 8 .. 31;
   end record;

   --  Interrupt Enable Register
   type TRNG_IER_Register is record
      --  Write-only. Data Ready Interrupt Enable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TRNG_IER_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type TRNG_IDR_Register is record
      --  Write-only. Data Ready Interrupt Disable
      DATRDY        : Boolean := False;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TRNG_IDR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type TRNG_IMR_Register is record
      --  Read-only. Data Ready Interrupt Mask
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TRNG_IMR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type TRNG_ISR_Register is record
      --  Read-only. Data Ready
      DATRDY        : Boolean;
      --  unspecified
      Reserved_1_31 : A0B.Types.SVD.UInt31;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for TRNG_ISR_Register use record
      DATRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  True Random Number Generator
   type TRNG_Peripheral is record
      --  Control Register
      CR    : aliased TRNG_CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Interrupt Enable Register
      IER   : aliased TRNG_IER_Register;
      pragma Volatile_Full_Access (IER);
      --  Interrupt Disable Register
      IDR   : aliased TRNG_IDR_Register;
      pragma Volatile_Full_Access (IDR);
      --  Interrupt Mask Register
      IMR   : aliased TRNG_IMR_Register;
      pragma Volatile_Full_Access (IMR);
      --  Interrupt Status Register
      ISR   : aliased TRNG_ISR_Register;
      pragma Volatile_Full_Access (ISR);
      --  Output Data Register
      ODATA : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for TRNG_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      IER   at 16#10# range 0 .. 31;
      IDR   at 16#14# range 0 .. 31;
      IMR   at 16#18# range 0 .. 31;
      ISR   at 16#1C# range 0 .. 31;
      ODATA at 16#50# range 0 .. 31;
   end record;

   --  True Random Number Generator
   TRNG_Periph : aliased TRNG_Peripheral
     with Import, Address => TRNG_Base;

end A0B.ATSAM3X8E.SVD.TRNG;
