--
--  Copyright (C) 2024-2025, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Startup utilities for ATSAM3X8E

with A0B.Types;

package A0B.ATSAM3X8E.Startup_Utilities
  with Preelaborate, No_Elaboration_Code_All
is

   generic
      FLASH_WAIT_STATE : A0B.Types.Unsigned_32;
      DIV              : A0B.Types.Unsigned_32;
      MUL              : A0B.Types.Unsigned_32;
      PRES             : A0B.Types.Unsigned_32;

   procedure Generic_Configure_System_Clocks;
   --  Do system clocks initialization:
   --   - configure FLASH
   --   - enable main oscillator
   --   - configure PLL
   --   - configure Master clock
   --   - switch to use PLL

end A0B.ATSAM3X8E.Startup_Utilities;
