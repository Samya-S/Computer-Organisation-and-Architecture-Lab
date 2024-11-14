; Q3: Write output for various values of p.
;     byte registers AL(0),CL(1),DL(2),BL(3),AH(4),CH(5),DH(6),BH(7)
;     Add R,S has machine code 2,192+8*R+S

.model small
.code
    Mov BL,p         ; 0,1
    Mov AH,8         ; 2,3
    Mov CH,5         ; 4,5
    Mov DH,9         ; 6,7
    Mov BH,12        ; 8,9
    Mov DL,71        ; 10,11
    Add cs:[18],BL   ; 12-16
    Add DL,AL
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Solution:     p:2 71+71  p:3 71+3   p:4 71+8   p:5 71+5  p:6 71+9   p:7  71+12