; Q1: Write program which outputs ascii of 1 and 94. When imul is replaced by mul then ascii of 218 and 94.

; Solution:
;       Let (256-a)*(256-b) is done. 256*256-(a+b)256+ab=256*256-(a+b)256+1*256+94=256*(256-a-b+1)+94
;       a*b=350 256-a-b+1=218 a+b=39  a=14,b=25  1,94  and 218 94    AL:256-14 AH:256-25

.model small
.code
    Mov AL,256-14
    Mov BH,256-25
    imul BH
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End