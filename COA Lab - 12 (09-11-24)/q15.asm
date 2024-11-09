; Div BL does AH=AL mod BL and AL=AL div BL. Initial AH must be zero.

.model small
.code
  Mov AH,0
  Mov AL,52
  Mov BL,7
  Div BL
  Mov DH,AH
  Mov DL,AL
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,DH
  Add DL,48
  Int 33
  Mov AH,76
  Int 33
End

; 52 div 7  output 73
; Reason 52 mod 7 is 3 and 52 div 7 is 7
; 52 div 8 output 64