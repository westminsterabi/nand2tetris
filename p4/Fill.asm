(LOOP) // infinite LOOP
    @SCREEN // value of screen
    @i
    M=D // load val of screen into counter
(BEGIN)
    @KBD
    D=M // check keyboard input
    @WHITE
    D; JEQ // jump to white if no input
(BLACK)
    @i
    D=M
    @SCREEN 
    D=D+A
    @KBD
    D=D-A
    @BEGIN
    D; JGE
    @i
    D=M
    @SCREEN
    A=A+D
    M=-1 // black out all pixels
    @i
    M=M+1 // increment counter
    D=M
    @KBD
    D=D-A // check if we're at the end of the screen
    @LOOP
    D; JGE // jump to very beginning if at end of screen
    @BEGIN
    0; JMP // otherwise jump to start of inner loop
(WHITE)
    @i
    D=M
    @LOOP
    D; JLT
    @SCREEN
    D=D+A
    A=D
    M=0
    @i
    M=M-1 // increment counter
    D=M
    @SCREEN
    D=A-D // check if at the end of screen
    @LOOP
    D; JLE // if so jump to very beginning
    @BEGIN
    0; JMP // otherwise jump to begin. loop
