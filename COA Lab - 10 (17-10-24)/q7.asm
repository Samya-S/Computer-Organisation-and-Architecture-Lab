; Add R,no is 129,192+R,no mod 256,no div 256 when R is word
; Add CX,3*256+80 is 129,192+1,80,3

.model small
.code
    Mov CX,256*72+250
    db  129,193,80,3
    Mov AH,2
    Mov DL,CL
    Int 33
    Mov DL,CH
    Int 33
    Mov AH,76
    Int 33
End

; Output: JL
; Initial CX:256*72+250 when 3*256+80 is added then 256*(72+3)+(250+80)=256*76+74