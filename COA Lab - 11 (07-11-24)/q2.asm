; Question: Find 2nd non-AL

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,75
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repe Scasb 
  Repe Scasb
  Mov DL,cs:[DI-1]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "yyypyyydrtfus"
End 

; Output: d
; Because of first repe DI points at letter immediately after p