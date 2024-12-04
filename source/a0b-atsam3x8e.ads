--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.ARMv7M;

package A0B.ATSAM3X8E
  with Pure, No_Elaboration_Code_All
is

   subtype Interrupt_Number is
     A0B.ARMv7M.External_Interrupt_Number range 0 .. 44;

   subtype Peripheral_Identifier is Interrupt_Number;
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

      CTS0,
      RTS0,
      RXD0,
      SCK0,
      TXD0,
      CTS1,
      RTS1,
      RXD1,
      SCK1,
      TXD1,
      CTS2,
      RTS2,
      RXD2,
      SCK2,
      TXD2,
      CTS3,
      RTS3,
      RXD3,
      SCK3,
      TXD3,
      --  USART

      TWCK0,
      TWD0,
      TWCK1,
      TWD1);
      --  TWI
   --  Function line

end A0B.ATSAM3X8E;
