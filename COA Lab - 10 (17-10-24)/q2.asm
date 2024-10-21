.model small
.code
    Mov BL,71
    Mov CL,72
    Mov DI,offset L
    Mov DH,2
    Sub cs:[DI],DH
  L:db 138,217
    Mov AH,2
    Mov DL,CL
    Int 33
    Mov DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: GG 
; When Line of cs deleted Output HH
; Reason 138,217 is mov BL,CL. Because of subtract 138 becomes 136 hence mov CL,BL