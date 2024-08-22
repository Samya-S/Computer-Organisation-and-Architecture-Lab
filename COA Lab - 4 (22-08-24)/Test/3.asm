; Question 3: Write output of following
.model small
.code
  Mov AL,80
  Mov BH,90
  MUL BH
  Add AH,1
  Div BH
  Mov DL,AL
  Mov DH,AH
  Mov AH,2
  Int 33
  Mov DL,DH
  Int 33
  Mov AH,76
  Int 33
End

; Output: RL

; Solution: 80*90+256 div mod 90=82,76  RL