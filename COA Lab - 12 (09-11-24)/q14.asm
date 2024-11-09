; Mul BL does AL=AL*BL Value of AH is lost.

.model small
.code
  Mov BL,8
  Mov AL,9
  Mul BL
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End