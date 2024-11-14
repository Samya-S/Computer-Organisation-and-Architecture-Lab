.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si+3]
    Int 33
    Mov AH,76
    Int 33
    K: Jmp Y
    db 1100 dup(65)
    Y:
End 

; Output: A (ascii 65)

; o/p   [si]   ascii 233
;       [si+1] L 
;       [si+2] ascii 4 
;       [si+3] A