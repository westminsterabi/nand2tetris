# Past Issues
Previous issue with Fill.asm, where pointer was being improperly incremented to block out screen, and instead of adding the beginning screen pointer to the counter, was simply setting different increasing memory registers to -1. Also issue with whiting out, same problem where decreasing registers were being set to 0, also did not check to make sure that counter was 0 or greater, leading to illegal memory access at negative registers (which clearly don't exist).

#Current issues
None known

# How to run
Open the CPU emulator, (`sh tools/CPUEmulator.sh`). For each program, load the program `hunterAbiProject4/program_name.hdl`, and then load test script `nand2tetris/projects/04/program_name/program_name.tst`, press run. Presto!
