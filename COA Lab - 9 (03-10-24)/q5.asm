.model small
.code
  Mov BH,00001000b
  Mov BL,10000000b
  Push BX
  Popf
  Mov DL,71
  JL K
  Mov DL,80
K:Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; Output: P

; L is xor(S,O) 
; output is P since xor(1,1) is 0
; change 1->0 in BH or BL but not in both output G
; When both are changed output is again P
; When exactly one of sign and overflow are 1 then L is 1