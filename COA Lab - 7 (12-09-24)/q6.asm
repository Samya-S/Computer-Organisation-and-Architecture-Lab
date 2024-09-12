.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si]
    Int 33
    Mov AH,76
    Int 33
    K: Jmp short Y
    db 68 dup(65)
    Y:db 80,71
End 

; Output: (ascii 184)

; o/p   [Si]ascii 235 
;       [Si+1]D 

; When 68 is replaced by 128 then error 
; Reason: 127 is biggest positive number allowed
; A forward jump (short) of at most 127 can be done

; Replace 68 by 200 : shows error : Jump out of range by 73 bytes