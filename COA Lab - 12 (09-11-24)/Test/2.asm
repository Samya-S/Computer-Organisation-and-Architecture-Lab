; Q2: Smallest Program. Read 2 digits and output product. Input 57 output 35. Do not use div or any jump.

; Solution:

.model small
.code
  Mov AH,1
  Int 33
  Sub AL,48
  Mov BL,AL
  Int 33
  Sub AL,48
  Mul BL
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