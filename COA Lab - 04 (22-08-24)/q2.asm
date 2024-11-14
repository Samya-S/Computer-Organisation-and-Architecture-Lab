.model small
.code
    Mov AH,2
    Mov DL,65
    db 235,4
    Mov DL,72
    Int 33
    Mov DL,74
    Int 33
    Mov AH,76
    Int 33
End

; Output: J

; k lines ahead  235,k
 
; 235,2 AJ (Mov DL,72 omitted)
; 235,4 only J (Mov DL,72 Int 33 omitted)
; 235,8 nothing is printed
; 235,0 HJ nothing is omitted