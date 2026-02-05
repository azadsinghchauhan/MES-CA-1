MOV 24H, #40H     ; Store pointer value 40H at RAM address 24H
MOV 40H, #20H     ; Store actual data 20H at RAM address 40H

MOV R0, 24H       ; Load contents of 24H into R0 (acts as pointer)
MOV A, @R0        ; Indirectly access RAM location pointed by R0
INC A             ; Increment A
MOV 30H, A        ; Store result in 30H
