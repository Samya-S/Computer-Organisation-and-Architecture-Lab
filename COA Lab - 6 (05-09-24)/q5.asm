; Following is implementation of BL'.

.model small
.code
    Mov BL,10110110b
    Mov DL,255   ; DL=11111111b
    Mov AH,2
    Sub DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: I

; 10110110 -> 01001001