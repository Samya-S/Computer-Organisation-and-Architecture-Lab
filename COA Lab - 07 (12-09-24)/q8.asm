.model small
.code
    Mov AH,2
    Mov Si,offset K
    Mov DL,cs:[Si+2]
    Int 33
    Mov AH,76
    Int 33
    Y: db 70 dup(65)
    K: Jmp Y
    db 80,71
End 

; Output: P (ascii 80)

; o/p   [si]   ascii 235  
;       [si+1] ascii 256-(70+2) 
;       [si+2] P 
;       [si+3] G

; Replace 70 by 1200  
; o/p   [si]   ascii 233  
;       [si+1] ascii 77 
;       [si+2] ascii 251 
;       [si+3] P  -1203=256*(-5)+77

; Replace 70 by 125,126,127   <=126 [si] ascii 235  else 233  
; Reason -128 is biggest magnitude negative number

; Jmp is short when -128 ... +127 else Jmp long. In case of backward jump 2 bytes are used hence -126.
; 235 is jmp short
; 233 is jum long