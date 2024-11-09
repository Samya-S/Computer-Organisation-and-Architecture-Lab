; AAD: AL=10*AH+AL

.model small
.code
  Mov AH,6
  Mov AL,8
  AAD
  Mov DL,AL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End 

; Output: D