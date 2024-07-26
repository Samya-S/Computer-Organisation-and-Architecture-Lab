.model small
.code
    Mov AH,2
    Mov DL,130
    Add DL,200
    Int 33
    Mov AH,76
    Int 33
End

; Output: J

; Because ascii code of J is 74.
; Add(130,200) is 74 because 330-256 = 74.