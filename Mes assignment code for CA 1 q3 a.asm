MOV 24H, #40H     ; Store data 40H at RAM address 24H
MOV 40H, #22H 

MOV A, 24H        ; Directly load contents of 24H into A
INC A             ; Increment A
MOV 30H, A        ; Store result in 30H
