.model small
.code
    Mov AH,2     ; 0,1
    db 235,8     ; 2,3
    Mov DL,65    ; 4,5
    Int 33       ; 6,7
    Mov AH,76    ; 8,9
    Int 33       ; 10,11
    Mov DL,80    ; 12,13
    Int 33       ; 14,15
    db 235,-14   ; 16,17
End

; Output: 

; db 235,-14 PA
; db 235,-12 PP
; db 235,-10 P only
; When db 235 8 deleted A only