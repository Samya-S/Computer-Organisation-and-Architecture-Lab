; Question 1: Implement Xor BL,BH using Mov,Sub,And,or,int

; Solution:

.model small
.code
    Mov BL,01001101b
    Mov BH,00101011b
    Mov CL,BH
    Xor CL,BL
    Mov DL,CL
    Mov AH,2
    Int 33
    Mov CL,255
    Sub CL,BL   ; BL'
    And CL,BH   ; CL=BL'.BH
    Mov DL,255
    Sub DL,BH
    And DL,BL   ; DL=BL.BH'
    Or DL,CL
    Int 33
    Mov AH,76
    Int 33
End