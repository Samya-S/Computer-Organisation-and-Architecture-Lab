; Mov R,no is 176+R,no when R is byte register
; Mov BL,80 is 176+3,80

.model small
.code
    db 179,80
    Mov AH,2
    Mov DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: P