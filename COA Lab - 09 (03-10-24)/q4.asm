; Upper byte of flag register is ----ODIT

.model small
.code
  Mov BH,10001000b
  Push BX
  Popf
  Mov DL,71
  JO L
  Mov DL,80
L:Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; Output: G

; Mov BH,abcdefgh  e=1 output G else P  others a..d,f..h may be any
; JO is read as jump if overflow