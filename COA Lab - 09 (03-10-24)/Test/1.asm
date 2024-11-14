; Q1: Write smallest program which outputs B. When all DAS are removed then output N. Heavy deduction when non-smallest.

; Solution:

.model small
.code
  Mov BL,00000000b   ; delete first 3 lines
  Push BX
  Popf
  Mov AL,78
  DAS
  DAS
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End