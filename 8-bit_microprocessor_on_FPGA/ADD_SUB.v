`timescale 1ns / 1ps

module ADD_SUB(input SU,clk,[7:0] B,[7:0] A,output [7:0] C);
reg [7:0]ALU;
always@(negedge clk)
ALU=SU?A-B:A+B;


assign C=ALU;

endmodule
