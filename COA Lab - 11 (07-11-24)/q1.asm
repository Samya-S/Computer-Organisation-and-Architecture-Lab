.model small
.code
  Mov AX,CS
  Mov ES,AX
  Mov CH,0
  Mov CL,75
  Mov DI,offset K  ; DI points at K i.e. first y
  Mov AL,'y'
  CLD
  Repe Scasb 
  Mov DL,cs:[DI]
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
K db "yyypgadrtfus"
End 

; Output: g

; Mov DI,offset K ; DI points at K i.e. first y
; repe Scasb: [DI] is compared with AL. 
;             DI=DI+1 If equal then repeat the comparison.
; When DI points at 'p' then DI is increased and Stop.
; p != y hence stop however increment takes place.

; The above program prints letter immediately after first non-AL
; To print first non-AL  Mov DL,cs:[DI-1] output p