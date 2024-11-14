.model small
.code
    Mov BL,p            ; 0,1
    Cmp BL,80           ; 2,3,4
    Mov DL,81           ; 5,6
    Mov BH,0            ; 7,8
    Adc BH,BH           ; 9,10  BH has 0 or 1
    Add BH,BH           ; 11,12 BH has 0 or 2
    Mov cs:[19],BH      ; 13...17
    db 235,0
    Mov DL,71     
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: 

; if p<80 then Q else G Bypass using db 235 0