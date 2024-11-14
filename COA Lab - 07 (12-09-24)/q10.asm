.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si]
    Int 33
    Mov AH,76
    Int 33
    K: Jmp Y
    db 80 dup(65)
    Y:
End 

; Output: (ascii 235)

; o/p   [si]   ascii 235  
;       [si+1] Q
;       [si+2] ascii 144 
;       [si+3] A 
; on backpatching assembler

; o/p   [si]   ascii 235
;       [si+1] P 
;       [si+2] A 
;       [si+3] A 
; on 2 pass assembler