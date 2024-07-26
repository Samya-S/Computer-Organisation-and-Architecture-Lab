.model small
.code
    Mov AH,2
    Mov DL,68
    Int 33
    Mov AH,76
    Int 33
End

; Output: D

; Because ascii code of D is 68.
; Ascii:  A65  B66 ... Z90