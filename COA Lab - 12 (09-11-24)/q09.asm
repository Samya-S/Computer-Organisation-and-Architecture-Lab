.model small
.code
  Mov BL,40
  Add BL,10
  Mov AH,68
  Mov AL,33
  AAS
  Mov DH,AH
  Mov DL,AL
  Add DL,65
  Mov AH,2
  Int 33
  Mov DL,DH
  Int 33
  Mov AH,76
  Int 33
End

; 40+10 is aux hence 33-6=27 mod 16=11+65=76L and 68-1
; Replace 10 by 1. 40+1 is no aux. 33 mod 16=1+65=66B