.model small
.code
    Mov AH,26
    Mov AL,226
    Mov BL,100
    Div BL          ; AH:AL = 26*256+226 = 6882
    Mov DL,AH
    Mov DH,AL
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov AH,76
    Int 33
End

; Output: RD
;         AH:AL = 26*256 + 226 = 6882
;         AH = 6882 % 100 = 82 -> R
;         AL = 6882 / 100 = 68 -> D  

; Div BL
; AH = (AH:AL) % BL
; AL = (AH:AL) / BL

; System hangs if quotient > 255