; Q3: For which values of p between 60 and 82 the following program outputs D.

.model small
.code
  Mov AL,p
  Add AL,3
  Mov AH,68
  AAA
  Mov DL,AH
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; Solution: 64-70,80-82