; 0:AL 1:CL 2:DL 3:BL 4:AH 5:CH 6:DH 7:BH Byte registers
; Mov R,S is 138,192+8*R+S
; Mov BL,CL has machine code 138,192+8*3+1=138,217

.model small
.code
    Mov BL,80
    Mov CL,81
    db 138,217
    Mov AH,2
    Mov DL,CL
    Int 33
    Mov DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: QQ 
; When Line of db deleted Output QP

; Another machine code of Mov R,S is 136,192+8*S+R. Direction of mov is opposite.
; In above program replace 138 by 136 output PP. Because it is Mov CL,BL