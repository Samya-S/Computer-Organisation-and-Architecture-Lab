; 3: In following program p=222 outputs a letter with ascii 68. 
;    It is replaced by some number (q>222). 
;    Now output is a letter with ascii less than 68
;    Write all possible values of q.
    .model small
    .code
        Mov AL,p
        DAA
        Mov DL,AL
        Mov AH,2
        Int 33
        Mov AH,76
        Int 33
    End

; Ans:  224,225,226,227