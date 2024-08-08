; 2: Print ascii DH*DL*2 div 256 assume  DH*DL*2<256*256

.model small
.code
    Mov DH,203
    Mov DL,64
    Mov AL,DL
    Mul DH
    Add AL,AL
    Adc AH,AH
    Mov DL,AH
    Mov AH,2
    Int 33
    Mov AH,76
    Int 33
End