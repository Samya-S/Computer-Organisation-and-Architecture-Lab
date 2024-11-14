; Q2: For which p between 100 and 125 following program outputs Z. Write all possible values of p. Hint: there are at least 9 such p's.

.model small
.code
  Mov BH,p
  Mov BL,213
  Push BX
  Popf
  Mov DL,71
  JL K
  Mov DL,90
K:Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; ----ODIT  SZ_A_P_C  L:xor(O,S)

; Solution: 104-111  120-125 
;           Reason 213>127 hence S is 1. For Z not L hence Overflow:1