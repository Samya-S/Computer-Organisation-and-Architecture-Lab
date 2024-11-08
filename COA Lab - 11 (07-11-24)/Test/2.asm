; Q2: Following program for p=0 outputs d for p=1 z   p=2 q   p=3 h   p=4 m   p>=5 r write missing smallest

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,p
  Mov DI,offset K
  Mov AL,'h'
  CLD
  Repe Scasb
  Mov DL,cs:[DI+5]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db missing
End

; Solution: "hhhhadzqhmr"