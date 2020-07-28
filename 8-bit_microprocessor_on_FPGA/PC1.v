`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2020 20:39:35
// Design Name: 
// Module Name: PC1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module PC1 (input  clk, EP,CP, clr, output reg [3:0] pc );
reg [3:0] count;
wire [3:0] d_count;

initial begin 
count = 4'b0;
end
assign d_count = CP ? count+1: count ;
always @(posedge clk)
begin 
if (clr == 1'b1)
count = 4'b0;
else
count <= d_count;
if (EP == 1)
begin
pc[3:0] <= count;
end
end

endmodule


