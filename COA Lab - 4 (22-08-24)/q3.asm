; Let R and S be registers
; Mov R,S has machine code 138,192+8*R+S

.model small
.code
    Mov AH,2
    Mov DH,65
    Mov CH,68
    Mov BL,72
    db 138,192+2*8+6    ; Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End

; Output: A (65)

; db 138,192+2*8+6 Mov DL,DH
; db 138,192+2*8+3 Mov DL,BL
; db 138,192+2*8+5 Mov DL,CH