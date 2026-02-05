; --------- Construct HIGH part = 96 ---------

CLR A
MOV A, #0FFH
ANL A, #60H        ; A = 60H (96 decimal)
MOV R0, A          ; Store high part in R0

; --------- Construct LOW part = 03 ---------

CLR A
MOV A, #0FH
ANL A, #03H        ; A = 03
MOV R1, A          ; Store low part in R1

; --------- Final result ---------

MOV A, R0          ; A = 96
MOV B, A           ; B = 96 (HIGH)
MOV A, R1          ; A = 03 (LOW)
