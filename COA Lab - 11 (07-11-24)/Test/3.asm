; Q3: Write smallest program which outputs G. when db 185 deleted then W.
;     Hint: Mov CX,256*10+20 has m/c code 185,20,10

; Solution:

.model small
.code
  Mov AH,2
  Mov CH,'W'
  db 185
  Mov DH,'G'
  Mov DL,CH
  Int 33
  Mov AH,76
  Int 33
End