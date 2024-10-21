; Q3: Write smallest program which outputs M when JZ is replaced by JP or JS output is D.
;     Hint: Lower byte of flag register is SZ_A_P_C

; Solution:

.model small
.code
    Mov BL,01000000b
    Push BX
    Popf
    Mov DL,77
    JZ L
    Mov DL,68
  L:Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End