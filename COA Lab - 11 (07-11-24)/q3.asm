; repne: Stop when [DI] and AL are equal

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
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qweryhsdfgu"
End 

; Output: h (Letter after first AL)

; Initially DI is pointing at 'q'.
; When DI reaches y then [DI]=AL hence increment DI and Stop.