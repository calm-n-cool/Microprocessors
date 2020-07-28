`timescale 1ns / 1ps

module code(input clk, p1,p2,p3,show,reset,output reg [6:0] s1,s2,s3,output reg led1 , led2 , led3,led4,ledc1 , ledc2,ledc3);
wire [6:0] d1,d2,d3;
reg c1,c2,c3;
reg [1:0] win;
reg [2:0] count1,count2,count3;
wire Q1,Q2,Q3,Qe,pp1,pp2,pp3;
wire [2:0] d_count1,d_count2,d_count3;
wire enb1,enb2,enb3;

initial begin
c2 =0;
c1 = 0;
c3 =0;
led1 =1'b0;
led2 = 1'b0;
led3 = 1'b0; 
ledc1 = 1'b0;
ledc2 = 1'b0;
ledc3 = 1'b0;
count1 = 3'b000;
count2 = 3'b000;
count3 = 3'b000;

end


assign pp1 = (p1 && ~c1);

always @(posedge clk)
begin
c1 <= p1;
end
assign Q1 = c1;

assign enb1 = (pp1 &&( ~show && ((~pp2 && ~pp3) && (~p2 && ~p3))));
assign d_count1 =enb1? count1 +1: count1;

always @ (posedge clk)
begin
if (reset && ~show)
count1 = 3'b0;
else
count1 <= d_count1;
if (p1 && (~p2 && (~p3 && ~show)) )
begin
ledc1 = 1'b1;
end
else if (~p1)
ledc1 = 1'b0;
end

segment o1 (count1,d1);


assign pp2 = (p2 && ~c2);

always @(posedge clk)
begin
c2 <= p2;
end
assign Q2 = c2;

assign enb2 = (pp2 &&((~show && (~pp1 && ~pp1) && (~p1 && ~p3))));
assign d_count2 =enb2? count2 +1: count2;

always @ (posedge clk)
begin
if (reset && ~show)
count2 = 3'b0;
else
count2 <= d_count2;
if (p2 && (~p1 && (~p3 && ~show )))
begin
ledc2 = 1'b1;
end
else if (~p2)
ledc2 = 1'b0;
end

segment o2 (count2,d2);




assign pp3 = (p3 && ~c3);

always @(posedge clk)
begin
c3 <= p3;
end
assign Q3 = c3;

assign enb3 = (pp3 &&( ~show && ( (~pp1 && ~pp2) && (~p1 && ~p2))));
assign d_count3 =enb3? count3 +1: count3;

always @ (posedge clk)
begin
if (reset && ~show)
count3 = 3'b0;
else
count3 <= d_count3;
if (p3 && (~p2 && (~p1 && ~show)) )
begin
ledc3 = 1'b1;
end
else if (~p3)
ledc3 = 1'b0;
end

segment o3 (count3,d3);


always @ (posedge clk)
begin 
if (show)
begin
s1 = d1;
s2 = d2;
s3 =d3;
win = (count1 >= count2)? ((count1 >= count3) ? 2'b00:2'b10): ((count2 >= count3)? 2'b01 : 2'b10); 
case (win)
2'b00 : led1 = 1'b1;
2'b01 : led2 = 1'b1;
2'b10 : led3 = 1'b1;
default : led4 = 1'b1;
endcase
end
else 
begin
s1 = 7'b0;
s2 = 7'b0;
s3 = 7'b0;
led1 = 1'b0;
led2= 1'b0;
led3 = 1'b0;
end

end

endmodule



