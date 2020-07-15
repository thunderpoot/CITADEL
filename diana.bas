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
  190  if choice$ = "e" then goto 210
  195  if choice$ = "d" then goto 1200
  200  if choice$ = "q" then END
  210  input "Plaincode: ", pc$
  220  input "OTP Key: ", ec$
  230  FOR I% = 1 TO LEN(pc$)
  240  C$ = MID$(pc$, I%, 1)
  250  D$ = MID$(ec$, I%, 1)
  251  if C$ = " " and D$ <> " " then print "%formats do not match" : goto 130
  252  if C$ = " " then goto 290
  255  if D$ = "" then print "%key too short" : goto 130
  260  num% = VAL(C$)-VAL(D$)
  270  if num% < 0 then num% = num% + 10
  280  nums$ = nums$ + str$(num%)
  290  NEXT I%
  300  CD$ = nums$ : gosub 330
  320  end
  330  rem Formats output
  340  print "Output: " ;
  350  for o = 1 to len(CD$)
  360  print mid$(CD$,o,1) ;
  370  if o mod 5 = 0 then print " " ;
  380  next o
  390  if 5-(len(CD$) mod 5) <> 5 then print string$(5-(len(CD$) mod 5),"9")
  400  print
  410  return
 1200  input "Encrypted Code: ", pc$
 1210  input "OTP Key: ", ec$
 1220  FOR I% = 1 TO LEN(pc$)
 1230  C$ = MID$(pc$, I%, 1)
 1240  D$ = MID$(ec$, I%, 1)
 1245  if C$ = " " and D$ <> " " then print "%formats do not match" : goto 130
 1246  if C$ = " " then goto 1280
 1247  if C$ = "" then print "%key too short" : goto 130
 1250  num% = VAL(C$)+VAL(D$)
 1260  if num% > 10 then num% = num% - 10
 1265  nums$ = nums$ + str$(num%)
 1270  rem  print num%;
 1280  NEXT I%
 1285  CD$ = nums$ : gosub 330