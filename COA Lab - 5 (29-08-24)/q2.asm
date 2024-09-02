; idiv R finds AL=(256*AH+AL) div R  AH=(256*AH+AL) mod R
; k=256*4+56+12=1080+12=1092=(-30)(-36)+12 AL=-36=220 and AH=12

.model small
.code
    Mov AH,4
    Mov AL,56+12
    Mov CH,226
    idiv CH
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End

; AH=4   AL=56+12 CH=30 1092=(+30)*(+36)+12  AL=36 AH=12 same as div
; AH=251 AL=188 CH=226 k=(251-256)*256+188=-1280+188=-1092=(-30)*(+36)-12  AL=36 AH=-12 i.e. 244
; AH=251 AL=188 CH=30  k=-1092=(+30)*(-36)-12  AL=-36 i.e. 220 AH=-12 i.e. 244

; Sign of remainder (AH) is same as sign of numerator. Sign of numerator depends on sign of AH. Sign of AL has no role to play.