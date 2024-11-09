; AAM: AH=AL div 10  AL=AL mod 10

.model small
.code
  Mov AL,68
  AAM
  Mov BL,AL
  Mov DL,AH
  Add DL,48
  Mov AH,2
  Int 33
  Mov DL,BL
  Add DL,48
  Int 33
  Mov AH,76
  Int 33
End