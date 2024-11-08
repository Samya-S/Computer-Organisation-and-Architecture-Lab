; Q1: Smallest program to output 9-p. Do not use add/sub/mul Assume p<10

; Solution:

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,p
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repne Scasb
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "9876543210"
End