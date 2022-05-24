// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// (game_loop):
//   color = 0
//   ram[kbd] == 0: jump draw
//   color = -1
//   (draw_loop)
//   if i == kbd: jump stop
//   ram[i] = color
//   i += 1

(GAME_LOOP)
@SCREEN
D=A
@i
M=D // i = SCREEN
@color
M=0 // WHITE
@KBD
D=M
@draw_loop
D;JEQ
@color
M=-1 // BLACK
  (DRAW_LOOP)
  @i
  D=M
  @KBD
  D=D-A
  @STOP
  D;JEQ
  @color
  D=M
  @i
  A=M
  M=D // RAM[i] = COLOR
  @i
  M=M+1
  @DRAW_LOOP
  0;JMP

(STOP)
@GAME_LOOP
0;JMP
