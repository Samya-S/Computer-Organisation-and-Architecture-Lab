; When CL becomes zero Stop

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,4
  Mov DI,offset K
  Mov AL,'y'
  CLD
  Repne Scasb
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qwertuider"
End 

; Output: t

; After every DI increment/decrement CL is decremented.
; DI may decrease because of STD. It may increase because of CLD. But CL decreases only.
; Stop when CL is zero or [DI]=AL