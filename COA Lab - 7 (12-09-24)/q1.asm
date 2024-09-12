.model small
.code
    Mov AH,2
    Mov DL,70
    db 66       ; M/C code 66 add 1 in DL. Carry and DH are arbitrary.
    Int 33
    Mov AH,76
    Int 33
End 

; Output: G (71)

; Replace 66 by 144 output F. 
; 144 is m/c code of Nop (No operation). It is used in efficient assembling.