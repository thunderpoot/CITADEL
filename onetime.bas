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
  130  print "     *                                                 *"
  140  print "     ***************************************************"
  150  print " "
  160  if argv$(1) <> "" then goto 230
  170  print "Continue? (y/N)" ;
  180  choice$ = INKEY$
  190  if choice$ <> "y" then end
  195  print choice$
  200  print
  210  print "Formatted? (y/N)" ; : choice$ = inkey$
  215  print choice$
  220  if choice$ = "y" then formatted = 1
  230  thismany = val(argv$(1))
  240  if thismany = 0 then thismany = 1
  250  n = 1
  260  FOR x = 1 to thismany
  270  print " " :  print " "
  280  if ARGV$(1) <> "" then print "["n"]"
  290  print " "
  300  if formatted = 1 then for k = 1 to 11 : for y = 1 to 5 : for i = 1 to 5 : print str$(nint(rnd(9))) ; : next i : print " " ; : next y : print : print : next k
  310  if formatted = 0 then for k = 1 to 11 : for y = 1 to 5 : for i = 1 to 5 : print str$(nint(rnd(9))) ; : next i : print " " ; : next y : next k
  320  n = n + 1
  330  sleep 0
  340  print
  350  NEXT x
  360  END