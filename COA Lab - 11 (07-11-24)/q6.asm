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
  Sub DI,2
  Mov AL,'z'
  STD
  Repe  Scasb
  Mov DL,cs:[DI+1]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qwzzhtrzzzyasdfg"
End 

; Output: r

; Because of  repne DI points at a.
; Sub DI,2 : DI points at letter immediately before y.
; Now z's are scanned in backward direction.