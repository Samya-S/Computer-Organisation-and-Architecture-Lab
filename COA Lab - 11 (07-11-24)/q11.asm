; Following program outputs the value of p-q. p=5 q=2 output 3.

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
  STD
  Mov CL,q
  Repne Scasb
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "0123456789"
End