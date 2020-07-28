module tb();
reg p1,p2,clk;
wire [6:0] s1,s2;
code DUT (clk,p1,p2,s1,s2);

initial begin 
clk = 0;
forever #5 clk = ~clk;
end

initial begin
p1 = 1'b0;
p2 = 1'b0;
#10

p1 = 1'b1; 

#10
p1 = 1'b0;
p2 = 1'b1;
#10
p1 = 1'b1;
p2 = 1'b1;
end

endmodule