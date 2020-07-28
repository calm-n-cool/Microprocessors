`timescale 1ns / 1ps
module IR (input [7:0] A,input LI, clk, output reg [3:0] I1,output reg [3:0] I2 );

always @(posedge clk)
begin
if (LI == 1)
begin
I2 [3:0] <= A[3:0];
I1 [3:0] <= A[7:4];
end
else
begin
I1 <= I1;
I2 <= I2;
end
end
endmodule