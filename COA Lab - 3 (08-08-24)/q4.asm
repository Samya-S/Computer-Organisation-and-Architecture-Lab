; Question: Program to find CL*DL div-mod 50.

.model small
.code
    Mov DL,152
    Mov CL,23
    Mov AL,CL
    Mul DL
    Mov DL,50
    Div DL
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End

; Output: .E

; Let CL=152  DL=23  
; 152*23 = 3496 
; 3496 mod 50 is 46 -> .
; 3496 div 50 is 69 -> E  