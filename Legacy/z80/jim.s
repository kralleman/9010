! Z80 MEMORY MAPPING PROGRAM! CHECKS PROBE TIP EVERY 100 HEXINCLUDE "Z80.POD"SETUP   TRAP ACTIVE FORCE LINE NO   TRAP ACTIVE INTERRUPT NOPROGRAM MAIN! Choose sync data or address here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!   SYNC ADDRESS!  SYNC DATA!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!      REGF = 80001: LABEL 1  READ @ REGF  READ PROBE  IF REG0 AND 4000000 > 1 GOTO 2  GOTO 3      WRITE @REGF=0   READ PROBE   IF REG0 AND 4000000 > 1 GOTO 2   GOTO 32: LABEL 2   DPY-#$F   STOP   GOTO 3! ADDRESS INCREMENTING 8 SHR AND 8 SHL == 100 HEX3: LABEL 3   SHR REGF   SHR REGF   SHR REGF   SHR REGF      INC REGF      SHL REGF   SHL REGF   SHL REGF   SHL REGF   DPY-$F   IF REGF > 1FFFF GOTO 4   GOTO 14: LABEL 4   DPY-#   DPY-OUT OF ADDRESS RANGE   STOP