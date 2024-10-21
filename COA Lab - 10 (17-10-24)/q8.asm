; Add R,no is 131,192+R,no when no<128 and R is word
; Add CX,80 is 131,192+1,80
; Initial CX:256*72+250 when 80 is added then 256*72+(250+80)=256*73+74

.model small
.code
    Mov CX,256*72+250
    db  131,193,80
    Mov AH,2
    Mov DL,CL
    Int 33
    Mov DL,CH
    Int 33
    Mov AH,76
    Int 33
End

; Output: JI