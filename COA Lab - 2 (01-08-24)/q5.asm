; Hexadecimal: abh means a*16+b
; How to convert a decimal number(n) into hexadecimal: (n div 16)(n mod 16)

.model small
.code
  Mov AH,2
  Mov DL,54h
  Int 33
  Mov AH,76
  Int 33
End

; Output: T (reason 5*16+4=84 -> T)


; Write a program to print G using hexadecimal: G is 71, Now 71 div 16=4 and 71 mod 16=7, hence mov dl,47h is used
; When more than 10 then A:10 B:11 C:12 D:13 E:14 F:15
; Write a program to print L using hexadecimal: L is 76, Now 76 div 16=4 and 76 mod 16=12:C, hence mov dl,4Ch is used