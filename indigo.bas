   10  PRINT "/*"
   20  PRINT " * $ID: INDIGO v1.0.2 x1516 Sun Jul 12 3:03:24 CST 2020 DRTAC7 $"
   30  PRINT " */"
   40  print " "
   50  print "     ***********************************"
   60  print "     *                                 *"
   70  print "     *              INDIGO             *"
   80  print "     *          Encoder/Decoder        *"
   90  print "     *                                 *"
  100  print "     *     (c) Copyright by DRTAC7     *"
  110  print "     *                                 *"
  120  print "     ***********************************"
  130  print " "
  140  print "      (E)ncode (D)ecode (T)able (Q)uit"
  150  print : print "E/D/T/Q ? " ;
  160  enc = 0
  170  CHOICE$ = INKEY$
  180  if choice$ <> "E" and choice$ <> "D" and choice$ <> "T" and choice$ <> "Q" then goto 170
  190  print UPS$(CHOICE$) : print
  200  if choice$="e" then goto 250
  210  if choice$="d" then goto 670
  220  if choice$="t" then goto 1240
  230  if choice$="q" then END
  240  goto 130
  250  print "Plaintext: " ;
  260  in$ = inkey$
  270  enc = enc + 1
  280  REM ENCODE
  290  C$ = in$
  300  if C$="a" then print C$ ; : CD$ = CD$ + "1"
  310  if C$="e" then print C$ ; : CD$ = CD$ + "2"
  320  if C$="i" then print C$ ; : CD$ = CD$ + "3"
  330  if C$="n" then print C$ ; : CD$ = CD$ + "4"
  340  if C$="o" then print C$ ; : CD$ = CD$ + "5"
  350  if C$="t" then print C$ ; : CD$ = CD$ + "6"
  360  if C$="b" then print C$ ; : CD$ = CD$ + "70"
  370  if C$="c" then print C$ ; : CD$ = CD$ + "71"
  380  if C$="d" then print C$ ; : CD$ = CD$ + "72"
  390  if C$="f" then print C$ ; : CD$ = CD$ + "73"
  400  if C$="g" then print C$ ; : CD$ = CD$ + "74"
  410  if C$="h" then print C$ ; : CD$ = CD$ + "75"
  420  if C$="j" then print C$ ; : CD$ = CD$ + "76"
  430  if C$="k" then print C$ ; : CD$ = CD$ + "77"
  440  if C$="l" then print C$ ; : CD$ = CD$ + "78"
  450  if C$="m" then print C$ ; : CD$ = CD$ + "79"
  460  if C$="p" then print C$ ; : CD$ = CD$ + "80"
  470  if C$="q" then print C$ ; : CD$ = CD$ + "81"
  480  if C$="r" then print C$ ; : CD$ = CD$ + "82"
  490  if C$="s" then print C$ ; : CD$ = CD$ + "83"
  500  if C$="u" then print C$ ; : CD$ = CD$ + "84"
  510  if C$="v" then print C$ ; : CD$ = CD$ + "85"
  520  if C$="w" then print C$ ; : CD$ = CD$ + "86"
  530  if C$="x" then print C$ ; : CD$ = CD$ + "87"
  540  if C$="y" then print C$ ; : CD$ = CD$ + "88"
  550  if C$="z" then print C$ ; : CD$ = CD$ + "89"
  560  if asc(C$) > 47 and asc(C$) < 58 then beep
  570  if C$="." then print C$ ; : CD$ = CD$ + "91"
  580  if C$=":" then print C$ ; : CD$ = CD$ + "92"
  590  if C$="'" then print C$ ; : CD$ = CD$ + "93"
  600  if C$="," then print C$ ; : CD$ = CD$ + "94"
  610  if C$="+" then print C$ ; : CD$ = CD$ + "95"
  620  if C$="-" then print C$ ; : CD$ = CD$ + "96"
  630  if C$="=" then print C$ ; : CD$ = CD$ + "97"
  640  if C$=" " then print C$ ; : CD$ = CD$ + "99"
  650  if C$=CHR$(13) then print : print : gosub 1410 : print : CD$ = "" : GOTO 140
  660  goto 260
  670  REM DECODE
  680  print "Plaincode: " ;
  690  C$ = INKEY$
  700  IF C$ = " " then goto 690
  710  IF C$ = CHR$(13) THEN PRINT : PRINT : PRINT "Plaintext: " + CD$ : PRINT : CD$ = "" : GOTO 140
  720  rem whyyy
  730  IF C$="1" THEN PRINT C$ ; : CD$ = CD$ + "a"
  740  IF C$="2" THEN PRINT C$ ; : CD$ = CD$ + "e"
  750  IF C$="3" THEN PRINT C$ ; : CD$ = CD$ + "i"
  760  IF C$="4" THEN PRINT C$ ; : CD$ = CD$ + "n"
  770  IF C$="5" THEN PRINT C$ ; : CD$ = CD$ + "o"
  780  IF C$="6" THEN PRINT C$ ; : CD$ = CD$ + "t"
  790  IF C$="7" THEN C$ = INKEY$ : GOTO 830
  800  IF C$="8" THEN C$ = INKEY$ : GOTO 970
  810  IF C$="9" THEN C$ = INKEY$ : GOTO 1110
  820  GOTO 690
  830  REM 70 something
  840  IF C$ = CHR$(13) THEN goto 710
  850  if C$ = " " then C$ = INKEY$
  860  IF C$="0" THEN PRINT "7" + C$ ; : CD$ = CD$ + "b"
  870  IF C$="1" THEN PRINT "7" + C$ ; : CD$ = CD$ + "c"
  880  IF C$="2" THEN PRINT "7" + C$ ; : CD$ = CD$ + "d"
  890  IF C$="3" THEN PRINT "7" + C$ ; : CD$ = CD$ + "f"
  900  IF C$="4" THEN PRINT "7" + C$ ; : CD$ = CD$ + "g"
  910  IF C$="5" THEN PRINT "7" + C$ ; : CD$ = CD$ + "h"
  920  IF C$="6" THEN PRINT "7" + C$ ; : CD$ = CD$ + "j"
  930  IF C$="7" THEN PRINT "7" + C$ ; : CD$ = CD$ + "k"
  940  IF C$="8" THEN PRINT "7" + C$ ; : CD$ = CD$ + "l"
  950  IF C$="9" THEN PRINT "7" + C$ ; : CD$ = CD$ + "m"
  960  GOTO 690
  970  REM 80 something
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
 1410  rem Format output
 1420  print "Plaincode: " ;
 1430  for o = 1 to len(CD$)
 1440  print mid$(CD$,o,1) ;
 1450  if o mod 5 = 0 then print " " ;
 1460  next o
 1470  if 5-(len(CD$) mod 5) <> 5 then print string$(5-(len(CD$) mod 5),"9")
 1480  print
 1490  return