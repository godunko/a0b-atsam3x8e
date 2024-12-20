pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with A0B.Types.SVD;
with System;

--  Universal Asynchronous Receiver Transmitter
package A0B.ATSAM3X8E.SVD.UART is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type UART_CR_Register is record
      --  unspecified
      Reserved_0_1  : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX         : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX         : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN          : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS         : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN          : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS         : Boolean := False;
      --  Write-only. Reset Status Bits
      RSTSTA        : Boolean := False;
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_CR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RSTRX         at 0 range 2 .. 2;
      RSTTX         at 0 range 3 .. 3;
      RXEN          at 0 range 4 .. 4;
      RXDIS         at 0 range 5 .. 5;
      TXEN          at 0 range 6 .. 6;
      TXDIS         at 0 range 7 .. 7;
      RSTSTA        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Parity Type
   type MR_PAR_Field is
     (--  Even Parity
      EVEN,
      --  Odd Parity
      ODD,
      --  Space: parity forced to 0
      SPACE,
      --  Mark: parity forced to 1
      MARK,
      --  No Parity
      NO)
     with Size => 3;
   for MR_PAR_Field use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4);

   --  Channel Mode
   type MR_CHMODE_Field is
     (--  Normal Mode
      NORMAL,
      --  Automatic Echo
      AUTOMATIC,
      --  Local Loopback
      LOCAL_LOOPBACK,
      --  Remote Loopback
      REMOTE_LOOPBACK)
     with Size => 2;
   for MR_CHMODE_Field use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   --  Mode Register
   type UART_MR_Register is record
      --  unspecified
      Reserved_0_8   : A0B.Types.SVD.UInt9 := 16#0#;
      --  Parity Type
      PAR            : MR_PAR_Field := A0B.ATSAM3X8E.SVD.UART.EVEN;
      --  unspecified
      Reserved_12_13 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Channel Mode
      CHMODE         : MR_CHMODE_Field := A0B.ATSAM3X8E.SVD.UART.NORMAL;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_MR_Register use record
      Reserved_0_8   at 0 range 0 .. 8;
      PAR            at 0 range 9 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      CHMODE         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type UART_IER_Register is record
      --  Write-only. Enable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Enable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Enable End of Receive Transfer Interrupt
      ENDRX          : Boolean := False;
      --  Write-only. Enable End of Transmit Interrupt
      ENDTX          : Boolean := False;
      --  Write-only. Enable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Enable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Enable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Enable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Enable Buffer Empty Interrupt
      TXBUFE         : Boolean := False;
      --  Write-only. Enable Buffer Full Interrupt
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Disable Register
   type UART_IDR_Register is record
      --  Write-only. Disable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Disable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Disable End of Receive Transfer Interrupt
      ENDRX          : Boolean := False;
      --  Write-only. Disable End of Transmit Interrupt
      ENDTX          : Boolean := False;
      --  Write-only. Disable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Disable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Disable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Disable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  Write-only. Disable Buffer Empty Interrupt
      TXBUFE         : Boolean := False;
      --  Write-only. Disable Buffer Full Interrupt
      RXBUFF         : Boolean := False;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Interrupt Mask Register
   type UART_IMR_Register is record
      --  Read-only. Mask RXRDY Interrupt
      RXRDY          : Boolean;
      --  Read-only. Disable TXRDY Interrupt
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit;
      --  Read-only. Mask End of Receive Transfer Interrupt
      ENDRX          : Boolean;
      --  Read-only. Mask End of Transmit Interrupt
      ENDTX          : Boolean;
      --  Read-only. Mask Overrun Error Interrupt
      OVRE           : Boolean;
      --  Read-only. Mask Framing Error Interrupt
      FRAME          : Boolean;
      --  Read-only. Mask Parity Error Interrupt
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit;
      --  Read-only. Mask TXEMPTY Interrupt
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit;
      --  Read-only. Mask TXBUFE Interrupt
      TXBUFE         : Boolean;
      --  Read-only. Mask RXBUFF Interrupt
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Status Register
   type UART_SR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit;
      --  Read-only. End of Receiver Transfer
      ENDRX          : Boolean;
      --  Read-only. End of Transmitter Transfer
      ENDTX          : Boolean;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : A0B.Types.SVD.Bit;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit;
      --  Read-only. Transmission Buffer Empty
      TXBUFE         : Boolean;
      --  Read-only. Receive Buffer Full
      RXBUFF         : Boolean;
      --  unspecified
      Reserved_13_31 : A0B.Types.SVD.UInt19;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      ENDRX          at 0 range 3 .. 3;
      ENDTX          at 0 range 4 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TXBUFE         at 0 range 11 .. 11;
      RXBUFF         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype UART_RHR_RXCHR_Field is A0B.Types.SVD.Byte;

   --  Receive Holding Register
   type UART_RHR_Register is record
      --  Read-only. Received Character
      RXCHR         : UART_RHR_RXCHR_Field;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_RHR_Register use record
      RXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART_THR_TXCHR_Field is A0B.Types.SVD.Byte;

   --  Transmit Holding Register
   type UART_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR         : UART_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : A0B.Types.SVD.UInt24 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_THR_Register use record
      TXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART_BRGR_CD_Field is A0B.Types.SVD.UInt16;

   --  Baud Rate Generator Register
   type UART_BRGR_Register is record
      --  Clock Divisor
      CD             : UART_BRGR_CD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_RCR_RXCTR_Field is A0B.Types.SVD.UInt16;

   --  Receive Counter Register
   type UART_RCR_Register is record
      --  Receive Counter Register
      RXCTR          : UART_RCR_RXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_RCR_Register use record
      RXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_TCR_TXCTR_Field is A0B.Types.SVD.UInt16;

   --  Transmit Counter Register
   type UART_TCR_Register is record
      --  Transmit Counter Register
      TXCTR          : UART_TCR_TXCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_TCR_Register use record
      TXCTR          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_RNCR_RXNCTR_Field is A0B.Types.SVD.UInt16;

   --  Receive Next Counter Register
   type UART_RNCR_Register is record
      --  Receive Next Counter
      RXNCTR         : UART_RNCR_RXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_RNCR_Register use record
      RXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_TNCR_TXNCTR_Field is A0B.Types.SVD.UInt16;

   --  Transmit Next Counter Register
   type UART_TNCR_Register is record
      --  Transmit Counter Next
      TXNCTR         : UART_TNCR_TXNCTR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_TNCR_Register use record
      TXNCTR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Transfer Control Register
   type UART_PTCR_Register is record
      --  Write-only. Receiver Transfer Enable
      RXTEN          : Boolean := False;
      --  Write-only. Receiver Transfer Disable
      RXTDIS         : Boolean := False;
      --  unspecified
      Reserved_2_7   : A0B.Types.SVD.UInt6 := 16#0#;
      --  Write-only. Transmitter Transfer Enable
      TXTEN          : Boolean := False;
      --  Write-only. Transmitter Transfer Disable
      TXTDIS         : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_PTCR_Register use record
      RXTEN          at 0 range 0 .. 0;
      RXTDIS         at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXTEN          at 0 range 8 .. 8;
      TXTDIS         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Transfer Status Register
   type UART_PTSR_Register is record
      --  Read-only. Receiver Transfer Enable
      RXTEN         : Boolean;
      --  unspecified
      Reserved_1_7  : A0B.Types.SVD.UInt7;
      --  Read-only. Transmitter Transfer Enable
      TXTEN         : Boolean;
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for UART_PTSR_Register use record
      RXTEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      TXTEN         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver Transmitter
   type UART_Peripheral is record
      --  Control Register
      CR   : aliased UART_CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Mode Register
      MR   : aliased UART_MR_Register;
      pragma Volatile_Full_Access (MR);
      --  Interrupt Enable Register
      IER  : aliased UART_IER_Register;
      pragma Volatile_Full_Access (IER);
      --  Interrupt Disable Register
      IDR  : aliased UART_IDR_Register;
      pragma Volatile_Full_Access (IDR);
      --  Interrupt Mask Register
      IMR  : aliased UART_IMR_Register;
      pragma Volatile_Full_Access (IMR);
      --  Status Register
      SR   : aliased UART_SR_Register;
      pragma Volatile_Full_Access (SR);
      --  Receive Holding Register
      RHR  : aliased UART_RHR_Register;
      pragma Volatile_Full_Access (RHR);
      --  Transmit Holding Register
      THR  : aliased UART_THR_Register;
      pragma Volatile_Full_Access (THR);
      --  Baud Rate Generator Register
      BRGR : aliased UART_BRGR_Register;
      pragma Volatile_Full_Access (BRGR);
      --  Receive Pointer Register
      RPR  : aliased A0B.Types.SVD.UInt32;
      --  Receive Counter Register
      RCR  : aliased UART_RCR_Register;
      pragma Volatile_Full_Access (RCR);
      --  Transmit Pointer Register
      TPR  : aliased A0B.Types.SVD.UInt32;
      --  Transmit Counter Register
      TCR  : aliased UART_TCR_Register;
      pragma Volatile_Full_Access (TCR);
      --  Receive Next Pointer Register
      RNPR : aliased A0B.Types.SVD.UInt32;
      --  Receive Next Counter Register
      RNCR : aliased UART_RNCR_Register;
      pragma Volatile_Full_Access (RNCR);
      --  Transmit Next Pointer Register
      TNPR : aliased A0B.Types.SVD.UInt32;
      --  Transmit Next Counter Register
      TNCR : aliased UART_TNCR_Register;
      pragma Volatile_Full_Access (TNCR);
      --  Transfer Control Register
      PTCR : aliased UART_PTCR_Register;
      pragma Volatile_Full_Access (PTCR);
      --  Transfer Status Register
      PTSR : aliased UART_PTSR_Register;
      pragma Volatile_Full_Access (PTSR);
   end record
     with Volatile;

   for UART_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      IDR  at 16#C# range 0 .. 31;
      IMR  at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
      RHR  at 16#18# range 0 .. 31;
      THR  at 16#1C# range 0 .. 31;
      BRGR at 16#20# range 0 .. 31;
      RPR  at 16#100# range 0 .. 31;
      RCR  at 16#104# range 0 .. 31;
      TPR  at 16#108# range 0 .. 31;
      TCR  at 16#10C# range 0 .. 31;
      RNPR at 16#110# range 0 .. 31;
      RNCR at 16#114# range 0 .. 31;
      TNPR at 16#118# range 0 .. 31;
      TNCR at 16#11C# range 0 .. 31;
      PTCR at 16#120# range 0 .. 31;
      PTSR at 16#124# range 0 .. 31;
   end record;

   --  Universal Asynchronous Receiver Transmitter
   UART_Periph : aliased UART_Peripheral
     with Import, Address => UART_Base;

end A0B.ATSAM3X8E.SVD.UART;
