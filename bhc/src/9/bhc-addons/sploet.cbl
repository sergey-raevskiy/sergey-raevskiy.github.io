SERVANT $ edit sploet.cbl


--------------[CUT HERE]----------------
IDENTIFICATION DIVISION.
PROGRAM-ID. SPLOET.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 SploetServant.
   02 Address         PIC X(8).
   02 SploetType      PIC X(8).


PROCEDURE DIVISION.

MAIN-LOGIC SECTION.
BEGIN.
     DISPLAY "Sploet. ENTER ADDRESS AND Sploet TYPE" LINE 1.
     DISPLAY ">" LINE 2.
     ACCEPT SploetServant.
     DISPLAY "Servant address ", Address.
     DISPLAY "Sploet Type ", SploetType.
     STOP RUN.
MAIN-LOGIC-EXIT.
     EXIT.
--------------[CUT HERE]----------------


SERVANT $ cobol sploet.cbl
SERVANT $ link sploet.obj
SERVANT $ run sploet.exe

Sploet. ENTER ADDRESS AND Sploet TYPE
>MAIL.RU, 0DAY
Servant address MAIL.RU,
Sploet Type  0DAY
SERVANT $
