; 2: Write smallest program which output H, when DAA is deleted from it then output is B. Heavy deduction when non smallest.

.model small
.code
    Mov AH,2
    Mov AL,60
    Add AL,6
    DAA
    Mov DL,AL
    Int 33
    Mov AH,76
    Int 33
End