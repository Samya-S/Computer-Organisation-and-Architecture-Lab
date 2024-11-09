.model small
.code
  Mov AH,68
  Mov AL,31
  AAA
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

; AL31: output 5E
; AL33: output 1D
; AAA: If AL mod 16>9 add 6 to AL and 1 to AH. Otherwise AH,AL are unchanged.
; Finally AL=AL mod 16
; 31 mod 16=15>9 hence (31+6)mod 16=5 and 68+1 is done.
; 33 mod 16=1<10 hence 33 mod 16 and AH unchanged.