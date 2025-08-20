10 INPUT "Digite em celcius a temperatura "; celcius$
11 celcius = VAL(celcius$)

20 kelvin = celcius + 273.15
25 fahren = (celcius * (9/5)) + 32

30 PRINT "Temperatura C°: " + celcius
33 PRINT "Temperatura K: " + kelvin
36 PRINT "Temperatura F°: " + fahren

40 END