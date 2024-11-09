; Read a letter output next letter. input p output q.
; When AH is 1 then int 33 takes input and stores ascii in AL.

.model small
.code
  Mov AH,1
  Int 33
  Mov DL,AL
  Add DL,1
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End