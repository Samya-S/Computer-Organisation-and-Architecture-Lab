; Value of CL is decremented the number of times DI is incremented/decremented.

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
  Mov DL,CL
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "yypgadrtfus"
End 

; Output: H
; Initial CL:75 Final DI points at g. DI is incremented 3 times. Hence CL-3.