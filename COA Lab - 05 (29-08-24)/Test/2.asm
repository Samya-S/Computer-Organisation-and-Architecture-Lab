; Q2: Let CH=156 What are AH,AL so that idiv CH makes AL=194 and AH=88. Do not write program.

; Solution: AL=194 and AH=88 (-100)*(-62)+88=6288=256*24+144    AH:24  AL:144

.model small
.code
    Mov AH,24
    Mov AL,144
    Mov CH,156
    idiv CH
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End