; Following is another method for abcdefgh->abcdehgh

.model small
.code
    Mov BL,01001101b  ; BL:abcdefgh
    Mov DL,BL
    Mov AH,2
    Int 33
    Add BL,BL    ; BL:bcdefgh0
    Add BL,BL    ; BL:cdefgh00
    And BL,4     ; BL:00000h00
    And DL,251   ; DL:abcde0gh since 251 is 11111011
    Or DL,BL     ; DL:abcdehgh
    Int 33
    Mov AH,76
    Int 33
End

; Output: MM

; IM->M  JN->J