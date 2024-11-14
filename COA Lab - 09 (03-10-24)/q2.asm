.model small
.code
  Mov BL,p
  Push BX
  Popf
  Mov DL,71
  JS L
  Mov DL,80
L:Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; For p bigger than 127 output is G.

; Reason: First bit of flag register stores S.
; When a number is bigger than or equal to 128 then first bit is 1.
; JS means jump to L if S is 1. Because of jump DL remains 71.