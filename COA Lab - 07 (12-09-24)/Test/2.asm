; Question 2: Write all possible numbers in following so that output is R.
; Answer format: 45,78,between 32 and 87  or   84,between 11 and 245,any

.model small
.code
    Mov AH,2
    db <3 missing numbers>
    db 25652 dup(144)
    Mov DL,82
    Int 33
    Mov AH,76
    Int 33
End

; Solution: 233,any,atmost 99  
;           233,atmost 52,100  
;           235, at most 127,144  
; 100*256+52=25652