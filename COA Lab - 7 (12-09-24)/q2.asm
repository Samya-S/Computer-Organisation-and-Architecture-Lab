.model small
.code
    Mov AH,2
    Mov DL,70
    db 10 dup(66)   ; 10 times 66 is written
    Int 33
    Mov AH,76
    Int 33
End 

; Output: P (80)