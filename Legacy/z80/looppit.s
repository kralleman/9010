INCLUDE "Z80.POD"PROGRAM MAIN0:   DPY-#RAM QT IN PROGRESS   WRITE @ 20E000 = 0   WRITE @ 20FFFF = 111:   READ @ REGF   IF REGE = 00 GOTO 5   IF REGE = B0 GOTO 1   IF REGE = B1 GOTO 1   IF REGE = B2 GOTO 1   IF REGE = C0 GOTO 2   IF REGE = F0 GOTO 6   IF REGE = F1 GOTO 6   IF REGE = F2 GOTO 62:   DPY-#RAM PATTERN CHECK   WRITE @ 20E000 = 0   WRITE @ 20FFFF = 123:   READ @ REGF   IF REGE = 00 GOTO 5   IF REGE = B0 GOTO 3   IF REGE = B1 GOTO 3   IF REGE = B2 GOTO 3   IF REGE = C0 GOTO 4   IF REGE = F0 GOTO 6   IF REGE = F1 GOTO 6   IF REGE = F2 GOTO 64:   DPY-#RAM OK LOOPING   GOTO 05:   DPY-NO ACTION SPECIFIED   STOP   GOTO 06:   DPY-#   DPY-#   DPY-#   DPY-ZRAM ERROR   STOP   GOTO 0