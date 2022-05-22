// if r0 > 0:
//   r1 = 1
// else:
//   r1 = 0


@R0
D=M

@is_positive
D;JGT

@R1
M=0
@end
0;JMP

(is_positive)
@R1
M=1

(end)
@end // test this
0;JMP
