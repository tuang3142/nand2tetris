// for i in range(0, n):
//   draw 16 black pixel on the screen

// addrr = SCREEN
// i = 0
// n = RAM[0]
//
// LOOP:
//   if i - n >= 0:
//     go to end
//   RAM[addrr] = -1
//   addrr += 32
//   i += 1

@SCREEN
D = A
@adr
M = D // ADD = SCREEN

@r0
D = M
@n
M = D

@i
M = 0

@32
D = A
@step
M = D // STEP = 32

(LOOP)
@i
D = M
@n
D = D - M
@END
D;JGT

@adr // ad = adr
A = M
M = -1 // R[r16ADR] = -1

@i
M = M + 1 // i += 1
@32
D = A
@adr
M = D + M // adr += 32
@LOOP
0;JMP

(END)
@END
0;JMP
