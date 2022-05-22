// r0 = 10
// r1 = 55

// n = r0
// i = 1
// sum = 0
// 
// loop:
// if i > n: goto stop
//   sum = sum + i
//   i = i + 1
//   go to loop
// 
// stop:
// r1=sum
// end

// very complicated
// write branch in uppercase
// write variable in lowercase

@R0
D=M
@N
M=D
@I
M=1

@SUM
M=0

(LOOP)
@I // STOP CONDITION
D=M
@N
D=D-M
@STOP
D;JGT

@SUM
D=M
@I
D=D+M
@SUM
M=D
@I
M=M+1
@LOOP
0;JMP

(STOP)
@SUM
D=M
@R1
M=D

(END)
@END
0;JMP
