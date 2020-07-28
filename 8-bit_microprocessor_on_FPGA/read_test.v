`timescale 1ns / 1ps



module read_test(input clk,output[7:0] O);
wire [3:0] w;
wire z ;
assign z =1'b1;
wire [3:0] x;
assign x = 4'b0001;

RAM R1 (.CE(z),.address(w),.O(O));
MAR M1 (.A(x),.LM(z),.MAR(w),.clk(clk));
endmodule
