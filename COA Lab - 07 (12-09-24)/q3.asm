.model small
.code
    Mov AH,2
    Mov DL,70
    db 235,88       ; 235 is Jmp short 88 bytes forward
    db 100 dup(66)
    Int 33
    Mov AH,76
    Int 33
End 

; Output: R
; 70+12=82 R