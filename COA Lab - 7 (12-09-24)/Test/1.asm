; Question 1: Write smallest program which shows error Jump out of range by 81 bytes
;             Numbers of lines in the program should be smallest.

; Solution:

.model small
.code
    Y: db 207 dup(65)
    Jmp short Y
End

; Following is not smallest

.model small
.code
    Jmp short Y
    db 208 dup(65)
    Y:
End