; Q1: Read 2 digits and print first-second. Assume first is bigger. Smallest Program. Do not use add.
;     input 62 output 4

; Solution:

.model small
.code
  Mov AH,1
  Int 33
  Mov DL,AL
  Int 33
  Sub AL,0
  AAA
  Sub DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End