; When two numbers are added and result in bigger than 255 then there is carry.
; 94+200, 180+76 will creates carry
; 180+75 will not create carry

.model small
.code
    Mov BL,162
    Add BL,130
    Mov AL,4
    DAA
    Mov DL,AL
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End

; Output: d


; 162+135>255 Hence carry => 4+96=100 -> d
; 162+35<256 no carry 4 (brick),   250+5 is no carry,   250+6 is carry
; 162+126>255 (162 mod 16)+(124 mod 16)=2+14>15 carry and Auc => both 96+6 added 4+6+96=106 -> j
; 162+30<256 no carry (162 mod 16)+(30 mod 16)=2+14>15 only Auc so only 6 is added 4+6=10 -> (new line)
