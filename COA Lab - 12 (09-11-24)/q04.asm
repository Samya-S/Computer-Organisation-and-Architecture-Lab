; Find 46+28

.model small
.code
  Mov AH,4
  Mov AL,6
  Add AH,2
  Add AL,8
  AAA
  Mov DL,AH
  Mov CL,AL
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,CL
  Add DL,48
  Int 33
  Mov AH,76
  Int 33
End

; AH becomes 4+2=6 and AL 6+8=14 14 mod 16>9 hence 14+6 mod 16 and 6+1 is done. i.e. 74
; Add 18 and 29. 1+2=3 and 8+9=17 (8 mod 16)+(9 mod 16)>15 hence 17+6=23 mod 16=7 and 3+1 i.e. 47