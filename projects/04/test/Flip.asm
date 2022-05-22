// swap
// tmp = r0
// r0 = r1
// r1 = tmp

@16
D=M
@tmp
M=D

@17
D=M
@16
M=D

@tmp
D=M
@17
M=D

(end) // declare & use at the same time
@end
0;JMP
