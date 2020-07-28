`timescale 1ns / 1ps
module main(input clk , input clr,output [2:0]OUTPUT);
wire [7:0] w,A,OUT;
wire [3:0] ins;
wire [7:0] B;
wire [3:0] to_ram;
wire CP,EP,LM,CE,LI,EI,LA,EA,SU,EU,LB,LO; 
wire [3:0]pc1;
wire [7:0]ram1,IR1;
wire [7:0]ac,C;
CU c1 (.clk(clk),.clr(clr),.instruction(ins),.CP(CP),.EP(EP),.LM(LM),.CE(CE),.LI(LI),.EI(EI),.LA(LA),.EA(EA),.SU(SU),.EU(EU),.LB(LB),.LO(LO));

IR I1 (.A(w),.LI(LI),.clk(clk),.I1(ins),.I2(IR1));

ADD_SUB AS (.SU(SU),.B(B),.clk(clk),.A(ac),.C(C));

PC P1 (.clk(clk),.EP(EP),.CP(CP),.clr(clr),.pc(pc1));

MAR M1(.Ain(w),.LM(LM),.clk(clk),.to_ram(to_ram));

RAM R1 (.Ain(to_ram),.RAM_OUT(ram1));

REG_B B1 (.A(w),.LB(LB),.clk(clk),.B(B));

accumulator a1 (.A(A),.LA(LA),.EA(EA),.clk(clk),.accumulated(ac));

OUT O1 (.A(w),.LO(LO),.clk(clk),.OUT(OUT));
assign OUTPUT = OUT;
assign w=EP?pc1:(CE?ram1:(EI?IR1:(EU?C:(EA?ac:8'bz))));
assign A=LA?w:8'bz;
endmodule
