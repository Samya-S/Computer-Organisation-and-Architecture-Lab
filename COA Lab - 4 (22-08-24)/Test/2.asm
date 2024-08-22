; Question 2: Smallest Program to output YYY.  Use int 33 once. Use db once.

; Solution:

.model small
.code
    Mov AH,2
    Mov BH,2
    Mov CL,2
    Mov DL,89
    Int 33
    Mov AH,BH
    Mov BH,CL
    Mov CL,76
    db 235,-10
End