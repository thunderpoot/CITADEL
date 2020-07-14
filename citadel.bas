   10  PRINT "/*"
   20  PRINT " * $ID: CITADEL v1.0 x48 Mon Jul 13 11:57:40 CST 2020 DRTAC7 $"
   30  PRINT " */"
   40  print " "
   50  print "     **********************************"
   60  print "     *                                *"
   70  print "     *             CITADEL            *"
   80  print "     *  Plaincode Encryption Utility  *"
   90  print "     *                                *"
  100  print "     *    (c) Copyright by DRTAC7     *"
  110  print "     *                                *"
  120  print "     **********************************"
  130  print 
  140  print "              (E)ncrypt (Q)uit"
  145  print : print "E/Q ? " ;
  146  print : print
  150  choice$ = inkey$
  160  if choice$ = "e" then goto 200
  170  if choice$ = "q" then END
  180  if choice$ <> "e" and choice$ <> "q" then goto 130
  200  input "Plaincode: ", pc$
  210  input "OTP Key: ", ec$
  220  FOR I% = 1 TO LEN(pc$)
  230  C$ = MID$(pc$, I%, 1) 
  240  D$ = MID$(ec$, I%, 1) 
  250  num% = ASC(C$)-ASC(D$) 
  260  if num% < 0 then num% = num% + 10 
  270  print num%;
  280  NEXT I%