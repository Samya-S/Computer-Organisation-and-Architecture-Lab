.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si]
    Int 33
    Mov AH,76
    Int 33
    K: Jmp short Y
    db 127 dup(65)
    Y:
End 

; Output: (ascii 235)

; o/p ascii 235 (short)

; when word short is removed then o/p ascii 233. because 1 byte is lost.

; Replace 127 by 126 both cases 235
; Replace 127 by 128 jump short shows error