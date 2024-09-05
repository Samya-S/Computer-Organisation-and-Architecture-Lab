; Following program makes transformation abcdefgh->abcdehgh

.model small
.code
    Mov BL,01001101b ; BL:abcdefgh
    Mov DL,BL
    Mov AH,2
    Int 33
    And BL,1     ; BL:0000000h
    Add BL,3     ; BL:00000hvw if h=1 then hvw=100 else 011
    And BL,4     ; BL:00000h00
    And DL,251   ; DL:abcde0gh since 251 is 11111011
    Or DL,BL     ; DL:abcdehgh
    Int 33
    Mov AH,76
    Int 33
End

; Output: MM

; IM->M  JN->J