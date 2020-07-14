  980  IF C$ = CHR$(13) THEN goto 710
  990  if C$ = " " then : C$ = INKEY$
 1000  IF C$="0" THEN PRINT "8" + C$ ; : CD$ = CD$ + "p"
 1010  IF C$="1" THEN PRINT "8" + C$ ; : CD$ = CD$ + "q"
 1020  IF C$="2" THEN PRINT "8" + C$ ; : CD$ = CD$ + "r"
 1030  IF C$="3" THEN PRINT "8" + C$ ; : CD$ = CD$ + "s"
 1040  IF C$="4" THEN PRINT "8" + C$ ; : CD$ = CD$ + "u"
 1050  IF C$="5" THEN PRINT "8" + C$ ; : CD$ = CD$ + "v"
 1060  IF C$="6" THEN PRINT "8" + C$ ; : CD$ = CD$ + "w"
 1070  IF C$="7" THEN PRINT "8" + C$ ; : CD$ = CD$ + "x"
 1080  IF C$="8" THEN PRINT "8" + C$ ; : CD$ = CD$ + "y"
 1090  IF C$="9" THEN PRINT "8" + C$ ; : CD$ = CD$ + "z"
 1100  GOTO 690
 1110  REM 90 something
 1120  IF C$ = CHR$(13) THEN goto 710
 1130  rem IF C$="0" THEN C$ = INKEY$ : PRINT "90" + C$ ; : CD$ = CD$ + C$ : goto 690
 1140  if C$ = " " then C$ = INKEY$
 1150  IF C$="1" THEN PRINT "9" + C$ ; : CD$ = CD$ + "."
 1160  IF C$="2" THEN PRINT "9" + C$ ; : CD$ = CD$ + CHR$(58)
 1170  IF C$="3" THEN PRINT "9" + C$ ; : CD$ = CD$ + "'"
 1180  IF C$="4" THEN PRINT "9" + C$ ; : CD$ = CD$ + ","
 1190  IF C$="5" THEN PRINT "9" + C$ ; : CD$ = CD$ + "+"
 1200  IF C$="6" THEN PRINT "9" + C$ ; : CD$ = CD$ + "-"
 1210  IF C$="7" THEN PRINT "9" + C$ ; : CD$ = CD$ + "="
 1220  IF C$="9" THEN PRINT "9" + C$ ; : CD$ = CD$ + " "
 1230  GOTO 690
 1240  REM TABLE
 1250  PRINT "EXAMPLE TABLE: (Note: Numbers must be encoded in prose. Numerical symbols are not supported.)"
 1260  print "+----------------------------------------+"
 1270  print "|CODE | A  | E | I | N | O | T | CT No 1 |"
 1280  print "|  0  | 1  | 2 | 3 | 4 | 5 | 6 | ENGLISH |"
 1290  print "|--------------------------------------------------+"
 1300  print "|  B  | C  | D  | F  | G  | H  | J  | K  | L  | M  |"
 1310  print "|  70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 |"
 1320  print "|-----|----|----|----|----|----|----|----|----|----|"
 1330  print "|  P  | Q  | R  | S  | U  | V  | W  | X  | Y  | Z  |"
 1340  print "|  80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 |"
 1350  print "|-----------------------------------------------------------+"
 1360  print "| FIG | (.) | (:) | (') | (,) | (+) | (-) | (=) | REQ | SPC |"
 1370  print "| N/A |  91 |  92 |  93 |  94 |  95 |  96 |  97 | N/A | N/A |"
 1380  print "+-----------------------------------------------------------+"
 1390  print " "
 1400  goto 140
 1410  rem every 5 ... yadda yadda
 1420  print "Plaincode: " ;
 1430  for o = 1 to len(CD$)
 1440  print mid$(CD$,o,1) ;
 1450  if o mod 5 = 0 then print " " ;
 1460  next o
 1470  if 5-(len(CD$) mod 5) <> 5 then print string$(5-(len(CD$) mod 5),"9")
 1480  print
 1490  return