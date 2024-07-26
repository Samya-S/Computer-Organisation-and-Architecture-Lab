.model small
.code
    Mov AH,2
    Mov BL,156
    Add BL,100
    Add BL,150
    Mov DL,72
    Adc DL,0
    Int 33
    Mov AH,76
    Int 33
End

; Output: H

; Output I (73) when initial BL between 6 and 155 -> need to reverify
; Else output H (72)                              -> need to reverify

; p+100+150 will generate carry when p is between 6 and 155.
; When p is 5   then 5+100=105           105+150=255<256  no carry
; When p is 10  then 10+100=110          110+150=260=4    carry
; When p is 156 then 156+100=256=0 carry 0+156=156        no carry.
; Though intermediate carry will come but finally no carry.