   10  if argv$(1) = "?" or argv$(1) = "help" then print "%usage: onetime [n]"+chr$(9)+"Generate n one-time pads" : end
   20  print "/*"
   30  print " * $ID: ONETIME v1.0 x2342 Fri Jul 10 10:20:34 CST 2020 DRTAC7 $"
   40  print " */"
   50  print " "
   60  print "     ***************************************************"
   70  print "     *                                                 *"
   80  print "     *                     ONETIME                     *"
   90  print "     *         Automatic one-time pad generator        *"
  100  print "     *         *** (c) Copryright by DRTAC7 ***        *"
  110  print "     *                                                 *"
  120  print "     *             onetime ? for usage help            *"
  125  print "     *                                                 *"
  130  print "     ***************************************************"
  140  print " "
  150  if argv$(1) <> "" then goto 190
  160  print "Continue? (y/N)" ; 
  170  choice$ = INKEY$
  180  if choice$ <> "y" then end
  190  thismany = val(argv$(1))
  200  if thismany = 0 then thismany = 1
  210  n = 1
  220  FOR x = 1 to thismany
  225  print " " :  print " "
  230  print "["n"]"
  240  print " "
  250  for k = 1 to 11 : for y = 1 to 5 : for i = 1 to 5 : print str$(nint(rnd(9))) ; : next i : print " " ; : next y : print : print : next k
  260  n = n + 1
  270  sleep 0
  280  NEXT x
  290  END