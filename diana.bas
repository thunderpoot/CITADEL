   10  PRINT "/*"
   20  PRINT " * $ID: DIANA v1.1.1 x48 Mon Jul 13 11:57:40 CST 2020 DRTAC7 $"
   30  PRINT " */"
   40  print " "
   50  print "     **********************************"
   60  print "     *                                *"
   70  print "     *            D I A N A           *"
   80  print "     *  Plaincode Encryption Utility  *"
   90  print "     *                                *"
  100  print "     *    (c) Copyright by DRTAC7     *"
  110  print "     *                                *"
  120  print "     **********************************"
  130  print
  140  print "         (E)ncrypt (D)ecrypt (Q)uit"
  150  print : print "E/D/Q ? " ;
  160  choice$ = inkey$
  170  if choice$ <> "e" and choice$ <> "q" and choice$ <> "d" then goto 130
  180  print UPS$(CHOICE$) : print
  190  if choice$ = "e" then goto 220
  200  if choice$ = "d" then goto 450
  210  if choice$ = "q" then END
  220  input "Plaincode: ", pc$
  230  input "OTP Key: ", ec$
  240  FOR I% = 1 TO LEN(pc$)
  250  C$ = MID$(pc$, I%, 1)
  260  D$ = MID$(ec$, I%, 1)
  270  if C$ = " " and D$ <> " " then print "%formats do not match" : goto 130
  280  if C$ = " " then goto 330
  290  if D$ = "" then print "%key too short" : goto 130
  300  num% = VAL(C$)-VAL(D$)
  310  if num% < 0 then num% = num% + 10
  320  nums$ = nums$ + str$(num%)
  330  NEXT I%
  340  CD$ = nums$ : gosub 360
  350  end
  360  rem Formats output
  370  print "Output: " ;
  380  for o = 1 to len(CD$)
  390  print mid$(CD$,o,1) ;
  400  if o mod 5 = 0 then print " " ;
  410  next o
  420  if 5-(len(CD$) mod 5) <> 5 then print string$(5-(len(CD$) mod 5),"9")
  430  print
  440  return
  450  input "Encrypted Code: ", pc$
  460  input "OTP Key: ", ec$
  470  FOR I% = 1 TO LEN(pc$)
  480  C$ = MID$(pc$, I%, 1)
  490  D$ = MID$(ec$, I%, 1)
  500  if C$ = " " and D$ <> " " then print "%formats do not match" : goto 130
  510  if C$ = " " then goto 570
  520  if C$ = "" then print "%key too short" : goto 130
  530  num% = VAL(C$)+VAL(D$)
  540  if num% >= 10 then num% = num% - 10
  550  nums$ = nums$ + str$(num%)
  560  rem  print num%;
  570  NEXT I%
  580  CD$ = nums$ : gosub 360
