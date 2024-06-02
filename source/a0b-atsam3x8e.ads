--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

package A0B.ATSAM3X8E
  with Pure
is

   type Peripheral_Identifier is range 0 .. 44;
   --  Peripheral identifier, value is equal to NVIC interrupt number.

   --  Peripheral identifiers/external interrupt identifiers.

   Universal_Asynchronous_Receiver_Transceiver               : constant := 8;

   Parallel_IO_Controller_A                                  : constant := 11;
   Parallel_IO_Controller_B                                  : constant := 12;
   Parallel_IO_Controller_C                                  : constant := 13;
   Parallel_IO_Controller_D                                  : constant := 14;

   Universal_Synchronous_Asynchronous_Receiver_Transmitter_0 : constant := 17;
   Universal_Synchronous_Asynchronous_Receiver_Transmitter_1 : constant := 18;
   Universal_Synchronous_Asynchronous_Receiver_Transmitter_2 : constant := 19;
   Universal_Synchronous_Asynchronous_Receiver_Transmitter_3 : constant := 20;

   Two_Wire_Interface_0                                      : constant := 22;
   Two_Wire_Interface_1                                      : constant := 23;
   Serial_Peripheral_Interface_0                             : constant := 24;

   Timer_Counter_Channel_0                                   : constant := 27;
   Timer_Counter_Channel_1                                   : constant := 28;
   Timer_Counter_Channel_2                                   : constant := 29;
   Timer_Counter_Channel_3                                   : constant := 30;
   Timer_Counter_Channel_4                                   : constant := 31;
   Timer_Counter_Channel_5                                   : constant := 32;
   Timer_Counter_Channel_6                                   : constant := 33;
   Timer_Counter_Channel_7                                   : constant := 34;
   Timer_Counter_Channel_8                                   : constant := 35;

   type Line_Function is
     (URXD,
      UTXD,
      --  UART

      TWCK0,
      TWD0,
      TWCK1,
      TWD1);
      --  TWI
   --  Function line

end A0B.ATSAM3X8E;
