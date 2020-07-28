`timescale 1ns / 1ps
module OUT (input [7:0] A,input LO, clk, output reg [7:0] OUT );
always @(posedge clk)
OUT=LO?A:OUT;
endmodule