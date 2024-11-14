; 3: Following program is supposed to output T when BL is less than 74. S is outputed otherwise. For which numbers wrong output is produced.

.model small
.code
   Mov AH,2
   Mov BL,250
   Add BL,255-73
   Add BL,88
   Mov DL,83
   Adc DL,0
   Int 33
   Mov AH,76
   Int 33
End

; Ans: 242-255 should be S but is T