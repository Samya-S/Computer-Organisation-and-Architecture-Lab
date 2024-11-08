; STD: Direction of movement is backward.

.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,75
  Mov DI,offset K
  Add DI,6
  Mov AL,'t'
  STD
  Repe Scasb 
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "qwertttasdfg$"
End 

; Output: e
; Because of Add DI,6 DI points at 6th letter (letter immediately before a).
; Because of STD DI=DI-1 is done.