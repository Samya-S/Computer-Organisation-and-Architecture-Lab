.model small
.code
    Mov AH,2
    Mov Si,offset K   ; SI has address of L
    Mov DL,cs:[Si+4]
    Int 33
    Mov AH,76
    Int 33
    K: db 65,80,90,70,72
End 

; Output: H (72)

; check [Si-2]  Output: = (205 -> ascii of Int) 
; check [Si-3]  Output: L (76)