//let R0 = a, R1 = b, R2 = out, R3 = counter, @temp = temp
// R3 = b //init registers
// while(R3>0) //main loop
//      {
//          temp = temp + a
//          R3 = R3 - 1
//      }
// R2 = temp //end



//init registers
@R1
D=M
@R3
M=D
@R2
M=0

//checks if counter = 0, Jump to end
@R3
D=M
@R6
M=D
@20
D;JEQ

//Adds R0 to temp
@R0
D=M
@temp
M=D+M

//counter -1
@R3
M=M-1

//loop back to the check
@R6
0;JMP

//output
@temp
D=M
@R2
M=D
@temp
M=0 //resets temp
@26 //infinite loop
0;JMP
