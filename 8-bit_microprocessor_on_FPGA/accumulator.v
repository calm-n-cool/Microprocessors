`timescale 1ns / 1ps

module accumulator(input [7:0] A,input LA, EA, clk, output [7:0] accumulated );
reg [7:0] acc;
always @(posedge clk)
begin
acc=LA?A:acc;
end
assign accumulated = acc;
endmodule
