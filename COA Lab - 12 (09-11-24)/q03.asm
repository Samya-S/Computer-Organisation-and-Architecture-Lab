; When two numbers are subtracted and (first mod 16) < (second mod 16) then auxiliary carry results.

.model small
.code
  Mov BL,40
  Sub BL,10
  Mov AH,68
  Mov AL,33
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

; 40-10 7E
; 46-10 and 40-6 are 1D