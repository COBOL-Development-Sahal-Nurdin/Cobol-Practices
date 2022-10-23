      ******************************************************************
      * Author:Muhammad Sahal Nurdin
      * Date:23/10/2022
      * Purpose: To fulfill algorithm and programming 3 tasks
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEWA-YUNANI-SAHAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 dewa pic 9(2).
       PROCEDURE DIVISION.
       PILIHAN-MATA-KULIAH.
            DISPLAY "----DAFTAR DEWA DEWI YUNANI----"
            DISPLAY "1. Zeus"
            DISPLAY "2. Poseidon"
            DISPLAY "3. Ares"
            DISPLAY "4. Hera"
            DISPLAY "5. Hermes"
            DISPLAY "6. Aphrodite"
            DISPLAY "7. Athena"
            DISPLAY "8. Apollo"
            DISPLAY "9. Hephaestus"
            DISPLAY "10. Artemis"
            DISPLAY "Masukkan pilihan untuk melihat kekuatannya : ".
            ACCEPT dewa.
       MEMILIH-MENU.
           IF dewa = 1 GO TO DEWA-1.
           IF dewa = 2 GO TO DEWA-2.
           IF dewa = 3 GO TO DEWA-3.
           IF dewa = 4 GO TO DEWA-4.
           IF dewa = 5 GO TO DEWA-5.
           IF dewa = 6 GO TO DEWA-6.
           IF dewa = 7 GO TO DEWA-7.
           IF dewa = 8 GO TO DEWA-8.
           IF dewa = 9 GO TO DEWA-9.
           IF dewa = 10 GO TO DEWA-10.
       DEWA-1.
           DISPLAY "Zeus"
           DISPLAY "Kekuatan: Langit,iklim, cuaca, dan takdir."
           STOP RUN.
       DEWA-2.
           DISPLAY "Poseidon"
           DISPLAY "Kekuatan: Gempa bumi, badai dan bawah laut."
           STOP RUN.
       DEWA-3.
           DISPLAY "Ares"
           DISPLAY "Kekuatan: Berkuasa atas alat-alat perang."
           STOP RUN.
       DEWA-4.
           DISPLAY "Hera"
           DISPLAY "Kekuatan: Perlindungan bagi kelahiran."
           STOP RUN.
       DEWA-5.
           DISPLAY "Hermes"
           DISPLAY "Kekuatan: Pengantar pesan dua dunia."
           STOP RUN.
       DEWA-6.
           DISPLAY "Aphrodite"
           DISPLAY "Kekuatan: Kecantikan, bujuk rayu, kebahagiaan."
           STOP RUN.
       DEWA-7.
           DISPLAY "Athena"
           DISPLAY "Kekuatan: Seni, keindahan jiwa dan dewi kepandaian."
           STOP RUN.
       DEWA-8.
           DISPLAY "Apollo"
           DISPLAY "Kekuatan: mengatur pergerakan matahari di langit."
           STOP RUN.
       DEWA-9.
           DISPLAY "Hephaestus"
           DISPLAY "Kekuatan: Mengolah besi, membuat benda luar biasa"
           STOP RUN.
       DEWA-10.
           DISPLAY "Artemis"
           DISPLAY "Kekuatan: Memanah kesucian dan kesuburan."
           STOP RUN.
