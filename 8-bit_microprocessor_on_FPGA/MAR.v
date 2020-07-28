`timescale 1ns / 1ps
module MAR (input [7:0] Ain,input LM, clk, output reg [3:0] to_ram );

always @(posedge clk)

begin
if (LM == 1'b1)
begin
to_ram <= Ain[3:0];
end
else
to_ram <= to_ram;
end
endmodule