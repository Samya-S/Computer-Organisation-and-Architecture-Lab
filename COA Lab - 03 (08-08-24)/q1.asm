.model small
.code
    Mov AH,2
    Mov BL,65
    Mov AL,70
    Mov DL,90
    Int 33
    Mov BL,AL   ; BL becomes 90 not 70
    Mov DL,89
    Int 33
    Mov DL,BL
    Int 33
    Mov AH,76
    Int 33
End

; Output: ZYZ

; During printing, value of AL is modified as DL
; If AL is replaced with CL in lines 5 and 8 -> Output: ZYF
