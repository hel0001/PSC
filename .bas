10 REM Simple Password Strength Checker in BASIC
20 PRINT "Welcome to the Simple Password Strength Checker!"
30 INPUT "Enter your password: ", PASSWORD$
40 STRENGTH = 0
50 REM Check length
60 IF LEN(PASSWORD$) >= 8 THEN STRENGTH = STRENGTH + 1
70 REM Check for numbers
80 IF LEN(PASSWORD$) >= 1 AND LEN(PASSWORD$) <> LEN(PASSWORD$ - VAL(PASSWORD$)) THEN STRENGTH = STRENGTH + 1
90 REM Check for uppercase letters
100 IF LEN(PASSWORD$) >= 1 AND PASSWORD$ <> UCASE$(PASSWORD$) THEN STRENGTH = STRENGTH + 1
110 REM Check for special characters
120 FOR I = 1 TO LEN(PASSWORD$)
130     IF INSTR("!@#$%^&*()_+-=[]{}|;':,.<>/?", MID$(PASSWORD$, I, 1)) THEN STRENGTH = STRENGTH + 1
140 NEXT I
150 PRINT "Password Strength: "; STRENGTH; " out of 4"
160 PRINT "Thanks for using the Simple Password Strength Checker!"
170 END
