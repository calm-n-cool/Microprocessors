`timescale 1ns / 1ps

//module PC (input  clk, EP,CP, clr, output [3:0] pc );
//reg [3:0] count;
//reg [3:0] d_count;
//wire [3:0]t;
//assign t=count+1;
//initial begin 
//count = 4'b0;
//d_count=4'b0;
//end
////always@(*)
////if(CP==1'bx)
////d_count=count;
////else
////d_count = CP ? count+2 : count ;
//always @(posedge clk)
//begin

//if(CP==1'bx)
//d_count=4'b0;
//else
//d_count = CP ? t : count ;
//if (clr == 1'b1)
//count = 4'b0;
//else
//count = d_count;
//end
//assign pc[3:0] =EP? d_count:pc;



//endmodule

module PC(input clk,CP,clr,input EP,output [3:0]pc);

reg [3:0] count,d_count;

initial count=4'b0;
initial d_count=4'b0;

always @(posedge clk)
begin
    if(CP==1'bx)
        d_count=4'b0;
    else
        d_count=CP?count+1:count;
    if (clr==1'b1)
        count=4'b0;
    else
        count=d_count;
    
end

assign pc=d_count;

endmodule