; Question 1: Assume p is 73,74 or 75. Write program p:73 o/p U  p:74 o/p K  p:75 o/p D
; Method: store ascii in BL,CH,BH. Add 2*(p-73) in ascii of Mov DL,BL

; Solution:

.model small
.code
    Mov CL,p        ; 0,1
    Sub CL,73       ; 2,3,4
    Add CL,CL       ; 5,6
    Mov BL,'U'      ; 7,8
    Mov CH,'K'      ; 9,10
    Mov BH,'D'      ; 11,12
    Add cs:[19],CL  ; 13-17
    Mov DL,BL
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End