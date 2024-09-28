; Q3: Write smallest program which shows error. When short is removed then output ABCDEFGH. Numbers of lines in the program should be smallest.
;     Use only Mov Int Add Cmp JG Jmp db.
;     Hint: Following program outputs HGFEDCBA
;     Cmp p,q JG jump is done when p>q. Forward jump of at most 127 and backward of at most 128 can be done by JG.
.model small
.code
  Mov AH,2
  Mov DL,72
Y:Int 33
  Sub DL,1
  Cmp DL,64
  JG Y
  Mov AH,76
  Int 33
End

; Solution:
.model small
.code
  Mov AH,2
  Mov DL,65
Y:Int 33
  db 128 dup(144)
  Add DL,1
  Cmp DL,72
  JG K
  Jmp short Y
K:Mov AH,76
  Int 33
End
