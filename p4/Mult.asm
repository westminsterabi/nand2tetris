// Multiply R[0] and R[1]
    @i // i is some mem location
    M=1 // i is a counter
    @2 // sum is a memory location
    M=0 // set sum to 0
(LOOP)
    @i
    D=M // D=i
    @0
    D=D-M // D=i-R[0]
    @END
    D; JGT // If (i-R[0]>0 goto END)
    @1
    D=M // D=R[1]
    @2
    M=D+M // sum=sum+R[1]
    @i
    M=M+1 // increment counter
    @LOOP
    0;JMP // Goto LOOP
(END)
    @END
    0;JMP // infinite loop
