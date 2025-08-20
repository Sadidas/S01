11 INPUT "Digite a primeira nota "; nota1$
20 nota1 = VAL(nota1$)
30 INPUT "Digite a segunda nota "; nota2$
40 nota2 = VAL(nota2$)
50 IF ((nota1+nota2)/2) > 60 THEN GOTO 200 ELSE GOTO 210

200 PRINT "Aprovado direto"
GOTO 600
210 IF ((nota1+nota2)/2) < 30 THEN GOTO 300 ELSE GOTO 310

300 PRINT "Reprovado direto"
GOTO 600
310 INPUT "Digite a nota da NP3 "; nota3$
315 nota3 = VAL(nota3$)
320 IF ((nota1+nota2+nota3)/3) > 50 THEN GOTO 400 ELSE GOTO 410

400 PRINT "Aprovado na NP3"
GOTO 600
410 PRINT "Reprovado na NP3"
GOTO 600

600 END