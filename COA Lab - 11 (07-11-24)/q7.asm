; Letter after first group

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,75
  Mov DI,offset K
  Mov AL,cs:[DI]
  CLD
  Repe Scasb
  Mov DL,cs:[DI-1]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qqqqtdweew"
End

; use K db "gggggmwqert" output m