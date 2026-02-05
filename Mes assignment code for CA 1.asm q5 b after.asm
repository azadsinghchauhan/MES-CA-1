MOV R0, #40H      ; Read pointer
MOV R1, #40H      ; Write pointer
MOV R2, #20H      ; 32 bytes to scan

SCAN:
        MOV A, @R0
        CJNE A, #0FFH, STORE
        SJMP NEXT_READ

STORE:
        MOV @R1, A
        INC R1

NEXT_READ:
        INC R0
        DJNZ R2, SCAN

; Fill remaining memory with 00H
MOV A, #00H

FILL:
        CJNE R1, #60H, WRITE_ZERO
        SJMP DONE

WRITE_ZERO:
        MOV @R1, A
        INC R1
        SJMP FILL

DONE:
        SJMP $
