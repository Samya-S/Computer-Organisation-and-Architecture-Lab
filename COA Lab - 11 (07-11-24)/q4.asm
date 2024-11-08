; Question: Output Letter immediately after first group of y's.

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,75
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repne Scasb
  Repe  Scasb
  Mov DL,cs:[DI-1]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qwertyyyyysdfhg"
End 

; Output: s
; Because of repne DI points at second y.