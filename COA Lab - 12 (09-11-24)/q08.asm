; AAS: Sub 6 from AL and 1 from AH when aux carry or (AL mod 16)>9 AL=AL mod 16 always done.

.model small
.code
  Mov AH,68
  Mov AL,33
  AAS
  Mov DH,AH
  Mov DL,AL
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,DH
  Int 33
  Mov AH,76
  Int 33
End

; AL31: output 9C  31 mod 16=15>9 hence 31-6=25 mod 16 and 68-1
; AL33: output 1D