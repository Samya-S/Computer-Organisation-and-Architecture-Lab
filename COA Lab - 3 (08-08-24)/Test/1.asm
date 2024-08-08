; 1: Write a program to print P. Do not use DL.

.model small
.code
    Mov AH,1
    Mov BH,80
    Mov AL,0
    Mov BL,0
    Mul BX
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: P

; Mul BX computes (256AH+AL)*(256BH+BL) and stores in 256^3DH+256^2DL+256AH+AL

; [1*256+0]*[80*256+2] = 80*256^2+2*256 
; now Mov AH,2 can be removed use Mov BL,2