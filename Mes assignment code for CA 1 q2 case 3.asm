MOV 50H, #12H     ; 10 (from PRN)
MOV 51H, #18H     ; 76 (from PRN)

MOV R0, 50H       ; Copy first number
MOV R1, 51H       ; Copy second number

LOOP: 
        MOV A, R0
        JZ A_ZERO         ; If R0 becomes zero
        MOV A, R1
        JZ B_ZERO         ; If R1 becomes zero
        DEC R0
        DEC R1
        SJMP LOOP

A_ZERO: 
        MOV A, R1
        JZ EQUAL          ; Both zero ? equal
        MOV 52H, #0FFH    ; A < B
        SJMP STOP

B_ZERO: 
        MOV 52H, #01H     ; A > B
        SJMP STOP

EQUAL:  
        MOV 52H, #00H     ; A = B
        SJMP STOP

STOP:   
        NOP
