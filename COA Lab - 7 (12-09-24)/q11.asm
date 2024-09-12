.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si+2]
    Int 33
    Mov AH,76
    Int 33
    K: Jmp short Y
    db 80 dup(65)
    Y:
End  

; Output: (ascii 65)

; o/p   [si]   ascii 235  
;       [si+1] P 
;       [si+2] A 
;       [si+3] A 
; on every assembler

; Reason: Backpatching assembler reserves 3 bytes for forward jump because distance of Y is not known.

; If distance of Y is less than 235 (short) is used otherwise 233 (long).
; If 235 is used then 3rd byte store 144 (no operation m/c code)