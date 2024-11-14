; Write a program which outputs Z when BL is less than 62. Y is outputted otherwise.
; Use only add, adc, mov, int

.model small
.code
   Mov AH,2
   Mov BL,62
   Add BL,255-61
   Add BL,62
   Mov DL,89
   Adc DL,0
   Int 33
   Mov AH,76
   Int 33
End