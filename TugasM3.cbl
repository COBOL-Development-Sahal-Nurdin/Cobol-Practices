      ******************************************************************
      * Author: Muhammad Sahal Nurdin
      * Date: 21/10/2022
      * Purpose: To
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2IA07-NPM-VALIDATOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC X(10).
       01 num2 PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "***************************************************"
           DISPLAY "Muhammad Sahal Nurdin"
           DISPLAY "2IA07"
           DISPLAY "51421075"
           DISPLAY "***************************************************"

           Display "*********** NPM Validator Program *****************"
           DISPLAY "Masukkan NPM: " WITH NO ADVANCING
           ACCEPT num1


           IF FUNCTION TRIM (num1) IS NUMERIC
               MOVE FUNCTION TRIM(num1) TO num2
               DISPLAY "NPM " num2 " adalah bagian dari NPM 2IA07"
               ELSE
                   DISPLAY "Anda memasukkan NPM yang bukan dari 2IA07."
            STOP RUN.
       END PROGRAM 2IA07-NPM-VALIDATOR.
