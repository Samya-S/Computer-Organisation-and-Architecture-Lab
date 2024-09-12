.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si+1]
    Int 33
    Mov AH,76
    Int 33
    Y: db 70 dup(65)
    K: Jmp short Y
End 

; Output: (ascii 184)

; o/p   [si+1] ascii 256-(70+2)=184 
;       [si+2] P (ascii 80)

; When 70 is replaced by 127 then error. 
; Reason -128 is biggest magnitude negative number
; A backward jump (short) of at most 128 can be done. Since 2 bytes are used in m/c code of jump short hence 126.