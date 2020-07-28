`timescale 1ns / 1ps
module REG_B (input [7:0] A,input LB, clk, output reg [7:0] B );
always @(posedge clk)
begin
if (LB == 1)
B <= A;
else
B <= B;
end
endmodule