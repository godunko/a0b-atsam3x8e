pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with A0B.Types.SVD;
with System;

--  Synchronous Serial Controller
package A0B.ATSAM3X8E.SVD.SSC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type SSC_CR_Register is record
      --  Write-only. Receive Enable
      RXEN           : Boolean := False;
      --  Write-only. Receive Disable
      RXDIS          : Boolean := False;
      --  unspecified
      Reserved_2_7   : A0B.Types.SVD.UInt6 := 16#0#;
      --  Write-only. Transmit Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmit Disable
      TXDIS          : Boolean := False;
      --  unspecified
      Reserved_10_14 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Write-only. Software Reset
      SWRST          : Boolean := False;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_CR_Register use record
      RXEN           at 0 range 0 .. 0;
      RXDIS          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      TXEN           at 0 range 8 .. 8;
      TXDIS          at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_CMR_DIV_Field is A0B.Types.SVD.UInt12;

   --  Clock Mode Register
   type SSC_CMR_Register is record
      --  Clock Divider
      DIV            : SSC_CMR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_CMR_Register use record
      DIV            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Receive Clock Selection
   type RCMR_CKS_Field is
     (--  Divided Clock
      MCK,
      --  TK Clock signal
      TK,
      --  RK pin
      RK)
     with Size => 2;
   for RCMR_CKS_Field use
     (MCK => 0,
      TK => 1,
      RK => 2);

   --  Receive Clock Output Mode Selection
   type RCMR_CKO_Field is
     (--  None, RK pin is an input
      NONE,
      --  Continuous Receive Clock, RK pin is an output
      CONTINUOUS,
      --  Receive Clock only during data transfers, RK pin is an output
      TRANSFER)
     with Size => 3;
   for RCMR_CKO_Field use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   --  Receive Clock Gating Selection
   type RCMR_CKG_Field is
     (--  None
      CONTINUOUS,
      --  Receive Clock enabled only if RF Low
      EN_RF_LOW,
      --  Receive Clock enabled only if RF High
      EN_RF_HIGH)
     with Size => 2;
   for RCMR_CKG_Field use
     (CONTINUOUS => 0,
      EN_RF_LOW => 1,
      EN_RF_HIGH => 2);

   --  Receive Start Selection
   type RCMR_START_Field is
     (--  Continuous, as soon as the receiver is enabled, and immediately after the
--  end of transfer of the previous data.
      CONTINUOUS,
      --  Transmit start
      TRANSMIT,
      --  Detection of a low level on RF signal
      RF_LOW,
      --  Detection of a high level on RF signal
      RF_HIGH,
      --  Detection of a falling edge on RF signal
      RF_FALLING,
      --  Detection of a rising edge on RF signal
      RF_RISING,
      --  Detection of any level change on RF signal
      RF_LEVEL,
      --  Detection of any edge on RF signal
      RF_EDGE,
      --  Compare 0
      CMP_0)
     with Size => 4;
   for RCMR_START_Field use
     (CONTINUOUS => 0,
      TRANSMIT => 1,
      RF_LOW => 2,
      RF_HIGH => 3,
      RF_FALLING => 4,
      RF_RISING => 5,
      RF_LEVEL => 6,
      RF_EDGE => 7,
      CMP_0 => 8);

   subtype SSC_RCMR_STTDLY_Field is A0B.Types.SVD.Byte;
   subtype SSC_RCMR_PERIOD_Field is A0B.Types.SVD.Byte;

   --  Receive Clock Mode Register
   type SSC_RCMR_Register is record
      --  Receive Clock Selection
      CKS            : RCMR_CKS_Field := A0B.ATSAM3X8E.SVD.SSC.MCK;
      --  Receive Clock Output Mode Selection
      CKO            : RCMR_CKO_Field := A0B.ATSAM3X8E.SVD.SSC.NONE;
      --  Receive Clock Inversion
      CKI            : Boolean := False;
      --  Receive Clock Gating Selection
      CKG            : RCMR_CKG_Field := A0B.ATSAM3X8E.SVD.SSC.CONTINUOUS;
      --  Receive Start Selection
      START          : RCMR_START_Field := A0B.ATSAM3X8E.SVD.SSC.CONTINUOUS;
      --  Receive Stop Selection
      STOP           : Boolean := False;
      --  unspecified
      Reserved_13_15 : A0B.Types.SVD.UInt3 := 16#0#;
      --  Receive Start Delay
      STTDLY         : SSC_RCMR_STTDLY_Field := 16#0#;
      --  Receive Period Divider Selection
      PERIOD         : SSC_RCMR_PERIOD_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_RCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      STOP           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_RFMR_DATLEN_Field is A0B.Types.SVD.UInt5;
   subtype SSC_RFMR_DATNB_Field is A0B.Types.SVD.UInt4;
   subtype SSC_RFMR_FSLEN_Field is A0B.Types.SVD.UInt4;

   --  Receive Frame Sync Output Selection
   type RFMR_FSOS_Field is
     (--  None, RF pin is an input
      NONE,
      --  Negative Pulse, RF pin is an output
      NEGATIVE,
      --  Positive Pulse, RF pin is an output
      POSITIVE,
      --  Driven Low during data transfer, RF pin is an output
      LOW,
      --  Driven High during data transfer, RF pin is an output
      HIGH,
      --  Toggling at each start of data transfer, RF pin is an output
      TOGGLING)
     with Size => 3;
   for RFMR_FSOS_Field use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   --  Frame Sync Edge Detection
   type RFMR_FSEDGE_Field is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for RFMR_FSEDGE_Field use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_RFMR_FSLEN_EXT_Field is A0B.Types.SVD.UInt4;

   --  Receive Frame Mode Register
   type SSC_RFMR_Register is record
      --  Data Length
      DATLEN         : SSC_RFMR_DATLEN_Field := 16#0#;
      --  Loop Mode
      LOOP_k         : Boolean := False;
      --  unspecified
      Reserved_6_6   : A0B.Types.SVD.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : Boolean := False;
      --  Data Number per Frame
      DATNB          : SSC_RFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Receive Frame Sync Length
      FSLEN          : SSC_RFMR_FSLEN_Field := 16#0#;
      --  Receive Frame Sync Output Selection
      FSOS           : RFMR_FSOS_Field := A0B.ATSAM3X8E.SVD.SSC.NONE;
      --  unspecified
      Reserved_23_23 : A0B.Types.SVD.Bit := 16#0#;
      --  Frame Sync Edge Detection
      FSEDGE         : RFMR_FSEDGE_Field := A0B.ATSAM3X8E.SVD.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : A0B.Types.SVD.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_RFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_RFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      LOOP_k         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   --  Transmit Clock Selection
   type TCMR_CKS_Field is
     (--  Divided Clock
      MCK,
      --  RK Clock signal
      RK,
      --  TK pin
      TK)
     with Size => 2;
   for TCMR_CKS_Field use
     (MCK => 0,
      RK => 1,
      TK => 2);

   --  Transmit Clock Output Mode Selection
   type TCMR_CKO_Field is
     (--  None, TK pin is an input
      NONE,
      --  Continuous Transmit Clock, TK pin is an output
      CONTINUOUS,
      --  Transmit Clock only during data transfers, TK pin is an output
      TRANSFER)
     with Size => 3;
   for TCMR_CKO_Field use
     (NONE => 0,
      CONTINUOUS => 1,
      TRANSFER => 2);

   --  Transmit Clock Gating Selection
   type TCMR_CKG_Field is
     (--  None
      CONTINUOUS,
      --  Transmit Clock enabled only if TF Low
      EN_TF_LOW,
      --  Transmit Clock enabled only if TF High
      EN_TF_HIGH)
     with Size => 2;
   for TCMR_CKG_Field use
     (CONTINUOUS => 0,
      EN_TF_LOW => 1,
      EN_TF_HIGH => 2);

   --  Transmit Start Selection
   type TCMR_START_Field is
     (--  Continuous, as soon as a word is written in the SSC_THR Register (if
--  Transmit is enabled), and immediately after the end of transfer of the
--  previous data
      CONTINUOUS,
      --  Receive start
      RECEIVE,
      --  Detection of a low level on TF signal
      TF_LOW,
      --  Detection of a high level on TF signal
      TF_HIGH,
      --  Detection of a falling edge on TF signal
      TF_FALLING,
      --  Detection of a rising edge on TF signal
      TF_RISING,
      --  Detection of any level change on TF signal
      TF_LEVEL,
      --  Detection of any edge on TF signal
      TF_EDGE)
     with Size => 4;
   for TCMR_START_Field use
     (CONTINUOUS => 0,
      RECEIVE => 1,
      TF_LOW => 2,
      TF_HIGH => 3,
      TF_FALLING => 4,
      TF_RISING => 5,
      TF_LEVEL => 6,
      TF_EDGE => 7);

   subtype SSC_TCMR_STTDLY_Field is A0B.Types.SVD.Byte;
   subtype SSC_TCMR_PERIOD_Field is A0B.Types.SVD.Byte;

   --  Transmit Clock Mode Register
   type SSC_TCMR_Register is record
      --  Transmit Clock Selection
      CKS            : TCMR_CKS_Field := A0B.ATSAM3X8E.SVD.SSC.MCK;
      --  Transmit Clock Output Mode Selection
      CKO            : TCMR_CKO_Field := A0B.ATSAM3X8E.SVD.SSC.NONE;
      --  Transmit Clock Inversion
      CKI            : Boolean := False;
      --  Transmit Clock Gating Selection
      CKG            : TCMR_CKG_Field := A0B.ATSAM3X8E.SVD.SSC.CONTINUOUS;
      --  Transmit Start Selection
      START          : TCMR_START_Field := A0B.ATSAM3X8E.SVD.SSC.CONTINUOUS;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Transmit Start Delay
      STTDLY         : SSC_TCMR_STTDLY_Field := 16#0#;
      --  Transmit Period Divider Selection
      PERIOD         : SSC_TCMR_PERIOD_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_TCMR_Register use record
      CKS            at 0 range 0 .. 1;
      CKO            at 0 range 2 .. 4;
      CKI            at 0 range 5 .. 5;
      CKG            at 0 range 6 .. 7;
      START          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      STTDLY         at 0 range 16 .. 23;
      PERIOD         at 0 range 24 .. 31;
   end record;

   subtype SSC_TFMR_DATLEN_Field is A0B.Types.SVD.UInt5;
   subtype SSC_TFMR_DATNB_Field is A0B.Types.SVD.UInt4;
   subtype SSC_TFMR_FSLEN_Field is A0B.Types.SVD.UInt4;

   --  Transmit Frame Sync Output Selection
   type TFMR_FSOS_Field is
     (--  None, RF pin is an input
      NONE,
      --  Negative Pulse, RF pin is an output
      NEGATIVE,
      --  Positive Pulse, RF pin is an output
      POSITIVE,
      --  Driven Low during data transfer
      LOW,
      --  Driven High during data transfer
      HIGH,
      --  Toggling at each start of data transfer
      TOGGLING)
     with Size => 3;
   for TFMR_FSOS_Field use
     (NONE => 0,
      NEGATIVE => 1,
      POSITIVE => 2,
      LOW => 3,
      HIGH => 4,
      TOGGLING => 5);

   --  Frame Sync Edge Detection
   type TFMR_FSEDGE_Field is
     (--  Positive Edge Detection
      POSITIVE,
      --  Negative Edge Detection
      NEGATIVE)
     with Size => 1;
   for TFMR_FSEDGE_Field use
     (POSITIVE => 0,
      NEGATIVE => 1);

   subtype SSC_TFMR_FSLEN_EXT_Field is A0B.Types.SVD.UInt4;

   --  Transmit Frame Mode Register
   type SSC_TFMR_Register is record
      --  Data Length
      DATLEN         : SSC_TFMR_DATLEN_Field := 16#0#;
      --  Data Default Value
      DATDEF         : Boolean := False;
      --  unspecified
      Reserved_6_6   : A0B.Types.SVD.Bit := 16#0#;
      --  Most Significant Bit First
      MSBF           : Boolean := False;
      --  Data Number per frame
      DATNB          : SSC_TFMR_DATNB_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Transmit Frame Sync Length
      FSLEN          : SSC_TFMR_FSLEN_Field := 16#0#;
      --  Transmit Frame Sync Output Selection
      FSOS           : TFMR_FSOS_Field := A0B.ATSAM3X8E.SVD.SSC.NONE;
      --  Frame Sync Data Enable
      FSDEN          : Boolean := False;
      --  Frame Sync Edge Detection
      FSEDGE         : TFMR_FSEDGE_Field := A0B.ATSAM3X8E.SVD.SSC.POSITIVE;
      --  unspecified
      Reserved_25_27 : A0B.Types.SVD.UInt3 := 16#0#;
      --  FSLEN Field Extension
      FSLEN_EXT      : SSC_TFMR_FSLEN_EXT_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_TFMR_Register use record
      DATLEN         at 0 range 0 .. 4;
      DATDEF         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      MSBF           at 0 range 7 .. 7;
      DATNB          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FSLEN          at 0 range 16 .. 19;
      FSOS           at 0 range 20 .. 22;
      FSDEN          at 0 range 23 .. 23;
      FSEDGE         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FSLEN_EXT      at 0 range 28 .. 31;
   end record;

   subtype SSC_RSHR_RSDAT_Field is A0B.Types.SVD.UInt16;

   --  Receive Sync. Holding Register
   type SSC_RSHR_Register is record
      --  Read-only. Receive Synchronization Data
      RSDAT          : SSC_RSHR_RSDAT_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_RSHR_Register use record
      RSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_TSHR_TSDAT_Field is A0B.Types.SVD.UInt16;

   --  Transmit Sync. Holding Register
   type SSC_TSHR_Register is record
      --  Transmit Synchronization Data
      TSDAT          : SSC_TSHR_TSDAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_TSHR_Register use record
      TSDAT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_RC0R_CP0_Field is A0B.Types.SVD.UInt16;

   --  Receive Compare 0 Register
   type SSC_RC0R_Register is record
      --  Receive Compare Data 0
      CP0            : SSC_RC0R_CP0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_RC0R_Register use record
      CP0            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SSC_RC1R_CP1_Field is A0B.Types.SVD.UInt16;

   --  Receive Compare 1 Register
   type SSC_RC1R_Register is record
      --  Receive Compare Data 1
      CP1            : SSC_RC1R_CP1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_RC1R_Register use record
      CP1            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  SSC_SR_CP array
   type SSC_SR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_SR_CP
   type SSC_SR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_SR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_SR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Status Register
   type SSC_SR_Register is record
      --  Read-only. Transmit Ready
      TXRDY          : Boolean;
      --  Read-only. Transmit Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2;
      --  Read-only. Receive Ready
      RXRDY          : Boolean;
      --  Read-only. Receive Overrun
      OVRUN          : Boolean;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2;
      --  Read-only. Compare 0
      CP             : SSC_SR_CP_Field;
      --  Read-only. Transmit Sync
      TXSYN          : Boolean;
      --  Read-only. Receive Sync
      RXSYN          : Boolean;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4;
      --  Read-only. Transmit Enable
      TXEN           : Boolean;
      --  Read-only. Receive Enable
      RXEN           : Boolean;
      --  unspecified
      Reserved_18_31 : A0B.Types.SVD.UInt14;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_SR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TXEN           at 0 range 16 .. 16;
      RXEN           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  SSC_IER_CP array
   type SSC_IER_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IER_CP
   type SSC_IER_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IER_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IER_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Register
   type SSC_IER_Register is record
      --  Write-only. Transmit Ready Interrupt Enable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Empty Interrupt Enable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Receive Ready Interrupt Enable
      RXRDY          : Boolean := False;
      --  Write-only. Receive Overrun Interrupt Enable
      OVRUN          : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Compare 0 Interrupt Enable
      CP             : SSC_IER_CP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : Boolean := False;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : Boolean := False;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_IER_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SSC_IDR_CP array
   type SSC_IDR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IDR_CP
   type SSC_IDR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IDR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IDR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Disable Register
   type SSC_IDR_Register is record
      --  Write-only. Transmit Ready Interrupt Disable
      TXRDY          : Boolean := False;
      --  Write-only. Transmit Empty Interrupt Disable
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Receive Ready Interrupt Disable
      RXRDY          : Boolean := False;
      --  Write-only. Receive Overrun Interrupt Disable
      OVRUN          : Boolean := False;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Write-only. Compare 0 Interrupt Disable
      CP             : SSC_IDR_CP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Tx Sync Interrupt Enable
      TXSYN          : Boolean := False;
      --  Write-only. Rx Sync Interrupt Enable
      RXSYN          : Boolean := False;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_IDR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  SSC_IMR_CP array
   type SSC_IMR_CP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SSC_IMR_CP
   type SSC_IMR_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : A0B.Types.SVD.UInt2;
         when True =>
            --  CP as an array
            Arr : SSC_IMR_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SSC_IMR_CP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Mask Register
   type SSC_IMR_Register is record
      --  Read-only. Transmit Ready Interrupt Mask
      TXRDY          : Boolean;
      --  Read-only. Transmit Empty Interrupt Mask
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_2_3   : A0B.Types.SVD.UInt2;
      --  Read-only. Receive Ready Interrupt Mask
      RXRDY          : Boolean;
      --  Read-only. Receive Overrun Interrupt Mask
      OVRUN          : Boolean;
      --  unspecified
      Reserved_6_7   : A0B.Types.SVD.UInt2;
      --  Read-only. Compare 0 Interrupt Mask
      CP             : SSC_IMR_CP_Field;
      --  Read-only. Tx Sync Interrupt Mask
      TXSYN          : Boolean;
      --  Read-only. Rx Sync Interrupt Mask
      RXSYN          : Boolean;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_IMR_Register use record
      TXRDY          at 0 range 0 .. 0;
      TXEMPTY        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RXRDY          at 0 range 4 .. 4;
      OVRUN          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CP             at 0 range 8 .. 9;
      TXSYN          at 0 range 10 .. 10;
      RXSYN          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Write Protect KEY
   type WPMR_WPKEY_Field is
     (--  Reset value for the field
      WPMR_WPKEY_Field_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (WPMR_WPKEY_Field_Reset => 0,
      PASSWD => 5460803);

   --  Write Protect Mode Register
   type SSC_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : A0B.Types.SVD.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : WPMR_WPKEY_Field := WPMR_WPKEY_Field_Reset;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for SSC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Synchronous Serial Controller
   type SSC_Peripheral is record
      --  Control Register
      CR   : aliased SSC_CR_Register;
      pragma Volatile_Full_Access (CR);
      --  Clock Mode Register
      CMR  : aliased SSC_CMR_Register;
      pragma Volatile_Full_Access (CMR);
      --  Receive Clock Mode Register
      RCMR : aliased SSC_RCMR_Register;
      pragma Volatile_Full_Access (RCMR);
      --  Receive Frame Mode Register
      RFMR : aliased SSC_RFMR_Register;
      pragma Volatile_Full_Access (RFMR);
      --  Transmit Clock Mode Register
      TCMR : aliased SSC_TCMR_Register;
      pragma Volatile_Full_Access (TCMR);
      --  Transmit Frame Mode Register
      TFMR : aliased SSC_TFMR_Register;
      pragma Volatile_Full_Access (TFMR);
      --  Receive Holding Register
      RHR  : aliased A0B.Types.SVD.UInt32;
      --  Transmit Holding Register
      THR  : aliased A0B.Types.SVD.UInt32;
      --  Receive Sync. Holding Register
      RSHR : aliased SSC_RSHR_Register;
      pragma Volatile_Full_Access (RSHR);
      --  Transmit Sync. Holding Register
      TSHR : aliased SSC_TSHR_Register;
      pragma Volatile_Full_Access (TSHR);
      --  Receive Compare 0 Register
      RC0R : aliased SSC_RC0R_Register;
      pragma Volatile_Full_Access (RC0R);
      --  Receive Compare 1 Register
      RC1R : aliased SSC_RC1R_Register;
      pragma Volatile_Full_Access (RC1R);
      --  Status Register
      SR   : aliased SSC_SR_Register;
      pragma Volatile_Full_Access (SR);
      --  Interrupt Enable Register
      IER  : aliased SSC_IER_Register;
      pragma Volatile_Full_Access (IER);
      --  Interrupt Disable Register
      IDR  : aliased SSC_IDR_Register;
      pragma Volatile_Full_Access (IDR);
      --  Interrupt Mask Register
      IMR  : aliased SSC_IMR_Register;
      pragma Volatile_Full_Access (IMR);
      --  Write Protect Mode Register
      WPMR : aliased SSC_WPMR_Register;
      pragma Volatile_Full_Access (WPMR);
      --  Write Protect Status Register
      WPSR : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for SSC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      CMR  at 16#4# range 0 .. 31;
      RCMR at 16#10# range 0 .. 31;
      RFMR at 16#14# range 0 .. 31;
      TCMR at 16#18# range 0 .. 31;
      TFMR at 16#1C# range 0 .. 31;
      RHR  at 16#20# range 0 .. 31;
      THR  at 16#24# range 0 .. 31;
      RSHR at 16#30# range 0 .. 31;
      TSHR at 16#34# range 0 .. 31;
      RC0R at 16#38# range 0 .. 31;
      RC1R at 16#3C# range 0 .. 31;
      SR   at 16#40# range 0 .. 31;
      IER  at 16#44# range 0 .. 31;
      IDR  at 16#48# range 0 .. 31;
      IMR  at 16#4C# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Synchronous Serial Controller
   SSC_Periph : aliased SSC_Peripheral
     with Import, Address => SSC_Base;

end A0B.ATSAM3X8E.SVD.SSC;
