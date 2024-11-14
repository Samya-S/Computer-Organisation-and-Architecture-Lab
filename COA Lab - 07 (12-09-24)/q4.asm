.model small
.code
    Mov AH,2
    Mov DL,70
    db 233,230,3    ; 233 is Jmp long 3*256+230=998 bytes forward
    db 1000 dup(66)
    Int 33
    Mov AH,76
    Int 33
End 

; Output: H