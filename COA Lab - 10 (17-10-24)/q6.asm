; Add R,no is 128,192+R,no when R is byte size
; Add BL,38 is 128,192+3,38

.model small
.code
    Mov BL,40
    db 128,195,38
    Mov AH,2
    Mov DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: N