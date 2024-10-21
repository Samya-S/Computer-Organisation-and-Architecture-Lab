; Mov R,S is 139,192+8*R+S or 137,192+8*S+R when R,S are word size registers
; Word size registers 0:AX 1:CX 2:DX 3:BX
; AX is made of AH and AL. Similar holds for others. AX=256*AH+AL.
; Mov BX,CX is 139,192+8*3+1 Here BH takes the value of CH and BL takes the value of CL.

.model small
.code
    Mov BL,71
    Mov BH,72
    Mov CL,73
    Mov CH,74
    db 139,217
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

; Output: IJIJ
; When Line of db deleted Output IJGH
; When 139 is replaced by 137 GHGH because it is Mov CX,BX
; When 139 is replaced by 138 then Mov BL,CL o/p IJIH
; When 139 is replaced by 136 then Mov CL,BL o/p GJGH