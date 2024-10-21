; Mov R,no is 184+R,no mod 256,no div 256 when R is word size
; Mov BX,25681 is 187,81,100
; BX=256*BH+BL hence BH=100 BL=81

.model small
.code
    db 187,81,100
    Mov AH,2
    Mov DL,BL
    Int 33
    Mov DL,BH
    Int 33
    Mov AH,76
    Int 33
End

; Output: Qd