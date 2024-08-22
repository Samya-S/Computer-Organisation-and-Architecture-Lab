; byte registers AL(0),CL(1),DL(2),BL(3),AH(4),CH(5),DH(6),BH(7)
; Mov Reg,no  176+Reg,no
; Int 33      205,33
; k lines ahead  235,k

.model small
.code
    db 180,2    ; Mov AH,2
    db 178,72   ; Mov DL,72
    db 205,33   ; Int 33
    db 180,76   ; Mov AH,76
    db 205,33   ; Int 33
End