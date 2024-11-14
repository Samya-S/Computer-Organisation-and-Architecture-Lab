.model small
.code
    Mov AH,2
    Mov DL,130
    Add DL,200
    Int 33
    Mov DL,40
    Adc DL,DL
    Int 33
    Mov DL,220
    Adc DL,120
    Int 33
    Mov DL,8
    Adc DL,80
    Int 33
    Mov AH,76
    Int 33
End

; Output: JQTY

; add(130,200) = 330 = 330-256      = 74 (with carry)           : (74 -> J)
; adc(40,40) = 40 + 40 + 1 (carry)  = 81 (no further carry)     : (81 -> Q)
; adc(220,120) = 340 + 0 (no carry) = 340-256 = 84 (with carry) : (84 -> T)
; adc(8,80) = 8 + 80 + 1 (carry)    = 89 (no further carry)     : (89 -> Y)