`timescale 1ns / 1ps
module CU(input clk,clr,[3:0] instruction,output reg CP, EP,LM,CE,LI,EI,LA,EA,SU,EU,LB,LO );
reg [5:0] rc;
initial begin 
rc = 6'b000001;
end
always @(negedge clk)
begin 
if (clr ==1)
rc = 6'b000001;
else 
begin
rc <= rc <<1;
rc[0] <= rc[5];
end
end

wire [3:0] ins;
always @(*)
if (rc == 6'b000001)
begin 
 CP <= 0;
 EP <= 1;
 LM <= 1;
 CE <= 0;

 LI <= 0;
 EI <= 0;
 LA <= 0;
 EA <= 0;

 SU <= 0;
 EU <= 0;
 LB <= 0;
 LO <= 0;
end

else if (rc == 6'b000010)
begin 
 CP <= 1;
 EP <= 0;
 LM <= 0;
 CE <= 0;

 LI <= 0;
 EI <= 0;
 LA <= 0;
 EA <= 0;

 SU <= 0;
 EU <= 0;
 LB <= 0;
 LO <= 0;
end

else if (rc == 6'b000100)
begin 
 CP <= 0;
 EP <= 0;
 LM <= 0;
 CE <= 1;

 LI <= 1;
 EI <= 0;
 LA <= 0;
 EA <= 0;

 SU <= 0;
 EU <= 0;
 LB <= 0;
 LO <= 0;
end

else if (rc == 6'b001000)
begin
if (instruction == 4'b0000)
begin 
 CP = 0;
 EP = 0;
 LM = 1;
 CE = 0;

 LI = 0;
 EI = 1;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0;
end

else if (instruction == 4'b0001)
begin

 CP = 0;
 EP = 0;
 LM = 1;
 CE = 0;

 LI = 0;
 EI = 1;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0;
 
end

else if (instruction == 4'b0010)
begin
 CP = 0;
 EP = 0;
 LM = 1;
 CE = 1;

 LI = 0;
 EI = 1;
 LA = 0;
 EA = 0;

 SU = 0;
 EU = 0;
 LB = 0;
 LO = 0;
end

else if ( instruction == 4'b1110)
begin
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 1;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 1;
 end
 else if (instruction == 4'b1111)
 begin
  CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0; 
 end
 end
 
 
 
else if (rc == 6'b010000)
begin
if (instruction == 4'b0000)
begin 
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 1;

 LI = 0;
 EI = 0;
 LA = 1;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0;
end

else if (instruction == 4'b0001)
begin

 CP = 0;
 EP = 0;
 LM = 0;
 CE = 1;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 1;
 LO = 0;
 
end

else if (instruction == 4'b0010)
begin
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 1;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 1;
 EU =0;
 LB = 1;
 LO = 0;
end

else if ( instruction == 4'b1110)
begin
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 1;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 1;
 end
 else if (instruction == 4'b1111)
 begin
  CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0; 
 end
 end
 
 
 
 
 
 
else if (rc == 6'b100000)
begin
if (instruction == 4'b0000)
begin 
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 0;
 EU = 0;
 LB = 0;
 LO = 0;
end

else if (instruction == 4'b0001)
begin

 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 1;
 EA = 0;

 SU = 0;
 EU = 1;
 LB = 0;
 LO = 0;
 
end

else if (instruction == 4'b0010)
begin
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 1;
 EA = 0;

 SU = 1;
 EU =1;
 LB = 0;
 LO = 0;
end

else if ( instruction == 4'b1110)
begin
 CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 1;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 1;
 end
 else if (instruction == 4'b1111)
 begin
  CP = 0;
 EP = 0;
 LM = 0;
 CE = 0;

 LI = 0;
 EI = 0;
 LA = 0;
 EA = 0;

 SU = 0;
 EU =0;
 LB = 0;
 LO = 0; 
 end
 end
 

endmodule
