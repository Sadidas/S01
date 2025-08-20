10 aleatorio = INT(RND(101))
12 PRINT aleatorio

20 INPUT "Digite seu palpite "; palpite$
21 palpite = VAL(palpite$)

30 IF palpite = aleatorio THEN GOTO 200 ELSE GOTO 300

200 PRINT "Você acertou!"
GOTO 600

300 PRINT "Você errou"
310 IF palpite > aleatorio THEN GOTO 320 ELSE 330
320 PRINT "Seu palpite foi alto"
GOTO 20
330 PRINT "Seu palpite foi baixo"
GOTO 20

600 END