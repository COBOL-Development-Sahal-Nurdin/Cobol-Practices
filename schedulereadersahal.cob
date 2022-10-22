      ******************************************************************
      * Author: Muhammad Sahal Nurdin
      * Date: 22/10/2022
      * Purpose: To fulfill algorithm and programming 3 tasks
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 2IA07schedulereader.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 matkul pic 9(1).
       PROCEDURE DIVISION.
       PILIHAN-MATA-KULIAH.
            DISPLAY "----DAFTAR MATA KULIAH----"
            DISPLAY "1. Peng. Tek. Internet dan New Media"
            DISPLAY "2. Matematika Lanjut 1"
            DISPLAY "3. Statistika 1"
            DISPLAY "4. Bahasa Indonesia"
            DISPLAY "5. Algoritma dan Pemrograman 3"
            DISPLAY "6. Organisasi Sistem Komputer"
            DISPLAY "7. Sistem Informasi Akutansi Keuangan"
            DISPLAY "8. Informatika Kesehatan"
            DISPLAY "9. Riset Operasional"
            DISPLAY "10. Matematika Informatika 3"
            DISPLAY "11. Struktur Data"
            DISPLAY "Masukkan pilihan mata kuliah (1-11) : ".
            ACCEPT matkul.


       MEMILIH-MENU.
           IF matkul = 1 GO TO Matkul-1.
           IF matkul = 2 GO TO Matkul-2.
           IF matkul = 3 GO TO Matkul-3.
           IF matkul = 4 GO TO Matkul-4.
           IF matkul = 5 GO TO Matkul-5.
           IF matkul = 6 GO TO Matkul-6.
           IF matkul = 7 GO TO Matkul-7.
           IF matkul = 8 GO TO Matkul-8.
           IF matkul = 9 GO TO Matkul-9.
           IF matkul = 10 GO TO Matkul-10.
           IF matkul = 11 GO TO Matkul-11.
       Matkul-1.
           DISPLAY "Peng. Tek. Internet dan New Media"
           DISPLAY "Jam ke 2/3 atau pukul 08.30 sampai 10.30"
           STOP RUN.
       Matkul-2.
           DISPLAY "Matematika Lanjut 1"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-3.
           DISPLAY "Statistika 1"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-4.
           DISPLAY "Bahasa Indonesia"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-5.
           DISPLAY "Algoritma dan Pemrograman 3"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-6.
           DISPLAY "Organisasi Sistem Komputer"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-7.
           DISPLAY "Sistem Informasi Akutansi Keuangan"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-8.
           DISPLAY "Informatika Kesehatan"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-9.
           DISPLAY "Riset Operasional"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-10.
           DISPLAY "Matematika Informatika 3"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Matkul-11.
           DISPLAY "Struktur Data"
           DISPLAY "Jam ke 4/5/6 atau pukul 10.30 smapai 13.30"
           STOP RUN.
       Selesai.
           STOP RUN.
