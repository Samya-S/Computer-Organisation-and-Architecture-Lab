; Q1: Write smallest Program which outputs PAPA. 
;     When 65 is replaced by 66 then PBPH. 
;     When 65 is replaced by 67 then GHGH. 
;     When 65 is replaced by 68 then GDGH. 
;     Assume replacement is only at one place.

; Solution:

.model small
.code
    Mov BL,71
    Mov BH,72
    Mov CL,80
    Mov CH,65
    Mov DI,offset L
    Sub cs:[DI],CH
  L:db  139+65,217
    Mov AH,2
    Mov DL,CL
    Int 33
    Mov DL,CH
    Int 33
    Mov DL,BL
    Int 33
    Mov DL,BH
    Int 33
    Mov AH,76
    Int 33
End