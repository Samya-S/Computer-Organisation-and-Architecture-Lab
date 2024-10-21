.model small
.code
    Mov SI,offset L
    Mov DH,131
    Mov DL,81
    Mov cs:[SI],DH
    Mov CX,256*142+250
  L:Add CX,256*186+80
    Mov BH,90
    Mov AH,2
    Int 33
    Mov DL,DH
    Int 33
    Mov DL,CL
    Int 33
    Mov DL,CH
    Int 33
    Mov AH,76
    Int 33
End

; Add CX,256*186+80 is 129,193,80,186
; Mov BH,90 is 183,90
; Complete sequence is 129,193,80,186,183,90
; Mov cs:[SI],DH changes to 131,193,80 and 186,183,90
; It is add CX,80 and Mov DX,90*256+183

; Hence output 183,90,74,143
; When line of cs is deleted 81,131,74(250+80-256),73(142+186+1)