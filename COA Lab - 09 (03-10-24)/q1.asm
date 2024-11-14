; Lower byte of flag register is SZ_A_P_C

.model small
.code
  Mov BL,p
  Push BX
  Popf
  Mov DL,71
  Adc DL,0
  Mov AH,2
  Int 33
  Mov AH,76
  Int 33
End

; For any odd p the output is H.

; Reason: Last bit of flag register stores carry.
; Push BX stores BH,BL on stack. Popf transfers stack in flag register.