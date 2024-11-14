.model small
.code
    Mov AH,2
    Mov BH,2
    Mov DL,81
    Int 33
    Mov AH,BH
    Mov BH,76
    db 235,-8
End 

; Output: QQ