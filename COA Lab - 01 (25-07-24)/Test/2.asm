; Write a program which outputs K when BL is between 72 and 78. J is outputted otherwise.

.model small
.code
   Mov AH,2
   Mov BL,79
   Add BL,255-78
   Add BL,7
   Mov DL,74
   Adc DL,0
   Int 33
   Mov AH,76
   Int 33
End