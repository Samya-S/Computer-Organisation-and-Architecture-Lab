.model small
.code
  Mov BL,01000011b
  Push BX
  Popf
  Mov DL,71
  JZ L
  Mov DL,80
L:Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; Output: G

; Mov BL,abcdefgh  b=1 output G else P
; Use JP f=1 output G else P