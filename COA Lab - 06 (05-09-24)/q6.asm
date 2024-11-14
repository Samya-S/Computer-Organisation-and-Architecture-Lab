; Following Does XOR BL,BH

.model small
.code
    Mov BL,01001101b
    Mov BH,00101011b
    Xor BH,BL
    Mov DL,BH
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: f