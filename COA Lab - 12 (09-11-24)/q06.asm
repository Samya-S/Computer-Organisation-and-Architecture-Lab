; Read a digit and add 28 to it.

.model small
.code
  Mov AH,1
  Int 33
  Mov AH,2
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

; Why Sub 48 is not needed.
; Input 1: AL:48+1=49 49+8=57 (49 mod 16)+(8 mod 16)=9 no aux  57 mod 16=9<=9 hence AL=57 mod 16 AH unchanged Output 27
; Input 3: AL:48+3=51 51+8=5  59 mod 16=11>9 hence AL=(59+6) mod 16=1 AH=2+1=3
; Input 9: AL:48+9=57 57+8=65 (57 mod 16)+(8 mod 16)=9+8>15 aux carry  AL=(65+6) mod 16=7  AH=2+1=3