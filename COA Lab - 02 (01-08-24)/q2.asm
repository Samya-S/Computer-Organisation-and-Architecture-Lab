.model small
.code
  Mov AH,2
  Mov AL,78
  DAA
  Mov DL,AL
  Int 33
  Mov AH,76
  Int 33
End

; Output: T 
; (78+6=84 -> T) [(78 mod 16)=12>9]
; without DAA => N (i.e. 78)

; DAA: When (AL mod 16)>9 then 6 is added

; Replace 78 by 73, 74, 79, 81 and observe output with and without DAA 
; 73: with DAA - I (73), witout DAA - I (73)
; 74: with DAA - J (74), witout DAA - P (80)


; When AL > 153 => then 96 is added 

; Replace 78 by 230. 230+96=326.
; When a number becomes more than 255 then 256 is subtracted. 326-256=70 -> F.
; Replace 78 by 235. 235 mod 16=11>9 hence 6 is also added. 235+96+6=337 => 337-256=81 -> Q