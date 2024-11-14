.model small
.code
    Mov BL,p                ; 0,1
    Cmp BL,80               ; 2,3,4
    Mov CL,89               ; 5,6
    Mov AL,77               ; 7,8
    Adc cs:[16],byte ptr 0  ; 9...14
    Mov DL,AL               ; 15,16
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: 

; Cmp a,b if a<b then carry is 1 else carry is 0
; Adc a,b a=a+b+carry
; if p<80 then Y else M 
; If p<80 then Mov DL,AL[138,192+8*2+0] is modified as Mov DL,CL [138,192+8*2+1]  change m/c code of mov DL,AL
