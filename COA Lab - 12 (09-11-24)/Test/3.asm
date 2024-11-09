; Q3: Smallest program. First letter after initial y's. Assume first letter is y. There is no z in the string.  Do not use Add Sub + -.
;     K db "yyyypeadrtfus" output p. K db "yyukadrtfus" output u.

; Solution:

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,20
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repe Scasb
  STD
  Mov AL,'z'
  Repe Scasb
  Mov AH,2
  Mov DL,cs:[DI]
  Int 33
  Mov AH,76
  Int 33
K db "yyyypeadrtfus"
End