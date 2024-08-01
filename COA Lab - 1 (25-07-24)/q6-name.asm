.model small
.code
    Mov AH,2
    Mov DL,83
    Int 33
    Mov DL,65
    Int 33
    Mov DL,77
    Int 33
    Mov DL,89
    Int 33
    Mov DL,65
    Int 33
    Mov AH,76
    Int 33
End

; Output: SAMYA