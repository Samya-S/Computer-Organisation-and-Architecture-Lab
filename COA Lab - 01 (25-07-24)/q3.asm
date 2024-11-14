.model small
.code
    Mov AH,2
    Mov DL,130
    Add DL,200
    Int 33
    Mov DL,80
    Adc DL,5
    Int 33
    Mov AH,76
    Int 33
End

; Output: JV

; add(130,200) = 330 = 330-256   = 74 with carry : (74 -> J)
; adc(80,5) = 80 + 5 + 1 (carry) = 86            : (86 -> V)