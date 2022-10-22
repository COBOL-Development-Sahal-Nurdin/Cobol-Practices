      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
        IDENTIFICATION DIVISION.
           PROGRAM-ID. Q15.
        ENVIRONMENT DIVISION.
         CONFIGURATION SECTION.
                SOURCE-COMPUTER. IBM PC.
                OBJECT-COMPUTER. IBM PC.
         INPUT-OUTPUT SECTION.
          SELECT CUSTOMER-REC-FILE ASSIGN TO "ELEC_REC.DAT" ORGANIZATION
            IS  SEQUENTIAL.
          SELECT OUT-FILE ASSIGN TO "ELECBILL.TXT".

        DATA DIVISION.
          FILE SECTION.
        FD    CUSTOMER-REC-FILE.
        01    IN-REC.
                02      IN-CUST-ID PIC 999999.
                02      IN-CUST-NAME  PIC A(20).
                02      IN-CUST-ADDRESS PIC X(30).
                02      IN-METERED-PULSES PIC 9(4).
                02      IN-MTRNO PIC 9(6).
        FD    OUT-FILE.
        01    OUT-REC PIC X(80).



          WORKING-STORAGE SECTION.
        77    EOF PIC X VALUE "N".
        77    HEADING1 PIC X(80) VALUE ALL  "-".
        77    COMPANY-TITLE PIC X(80) VALUE
        "  MADHYA PRADESH ELECTRICITY BOARD, INDORE         ".
        01    CUST-ID-LINE.
                02  F PIC X(18) VALUE "CUSTOMER ID NO.: ".
                02  CUST-ID PIC 9(6).
                02  F PIC X(37) VALUE "  ELECTRICITY CHARGES FOR THE MONTH ".
                02  BILL-MONTH PIC X(10).
        01    OUT-FORMAT.
                02  CUST-NAME PIC A(15).
                02  METER-NO PIC ZZ9999.
                02  F PIC X(10) VALUE SPACES.
                02  METRED-PULSES PIC ***9.
                02  F PIC X(10) VALUE SPACES.
                02  BILL-DUE PIC ****.**.
                02  F PIC X(10) VALUE SPACES.
                02  LATE-BILL PIC ****.**.

        01    TITLE-LINE.
                02 F PIC X(80) VALUE " CUSTOMER NAME | MTR NO | METRED PUL
      -          "SES | NET CHARGES | CHARGES AFTER 15 DAYS *".
        01      ISSUE-DATE-LINE.
               02 F PIC X(20) VALUE " DATE OF ISSUE : ".
               02 CURR-MONTH PIC X(40).
        01     FOOTER-LINE.
               02 F PIC X(80) VALUE " *: 15 DAYS FROM THE DATE OF ISSUE AS
      -         " STATED ABOVE".
        77      CHARGES PIC 9(4)V99.
        77      PULSES PIC 9(5).
        01      ADDRESS-LINE .
               02 F PIC X(10) VALUE "ADDRESS: ".
               02 ADDR PIC X(70).
        PROCEDURE DIVISION.
        MAIN-PARA.
        DISPLAY "PLS. ENTER CURRENT DATE".
        ACCEPT  CURR-MONTH .
        OPEN INPUT CUSTOMER-REC-FILE  OUTPUT OUT-FILE.
        DISPLAY "PLS. ENTER THE MONTH FOR WHICH BILL HAS TO BE GENERATED
      -        ".....(EX. JAN, 2001)".
        ACCEPT BILL-MONTH.
        READ CUSTOMER-REC-FILE AT END MOVE "Y" TO EOF.
        PERFORM CALC-PARA UNTIL EOF = "Y".
        DISPLAY "THE ELECTRICITY BILL IS GENERATED.".
        CLOSE CUSTOMER-REC-FILE , OUT-FILE.
        STOP RUN.

        HEADER-PARA.
        WRITE OUT-REC FROM HEADING1 .
        WRITE OUT-REC FROM COMPANY-TITLE.
        WRITE OUT-REC FROM HEADING1.
        MOVE IN-CUST-NAME TO CUST-NAME OF OUT-FORMAT.
        MOVE   IN-MTRNO TO METER-NO.

        FOOTER-PARA.
        WRITE OUT-REC FROM ISSUE-DATE-LINE.
        WRITE OUT-REC FROM FOOTER-LINE.

        CALC-PARA.
        PERFORM HEADER-PARA.
        MOVE IN-CUST-ADDRESS  TO ADDR.
        WRITE OUT-REC FROM ADDRESS-LINE.
        MOVE IN-CUST-ID TO CUST-ID OF CUST-ID-LINE.
        WRITE OUT-REC FROM CUST-ID-LINE.
        WRITE OUT-REC FROM HEADING1.
        WRITE OUT-REC FROM TITLE-LINE.
        WRITE OUT-REC FROM HEADING1.

        MOVE IN-CUST-NAME TO CUST-NAME.
        MOVE IN-METERED-PULSES TO METRED-PULSES .
        MOVE IN-MTRNO TO METER-NO .
        MOVE IN-METERED-PULSES TO PULSES.
        COMPUTE  CHARGES = 5.00  + ( PULSES ) * 1.5 .
        MOVE CHARGES TO BILL-DUE.
        COMPUTE CHARGES = CHARGES + CHARGES * 0.10.
        MOVE CHARGES TO LATE-BILL.
        WRITE OUT-REC FROM OUT-FORMAT .
        PERFORM FOOTER-PARA.
        DISPLAY IN-CUST-NAME.
        WRITE OUT-REC FROM HEADING1 AFTER ADVANCING PAGE.
        READ CUSTOMER-REC-FILE AT END MOVE "Y" TO EOF.
