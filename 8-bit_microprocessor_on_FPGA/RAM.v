`timescale 1ns / 1ps

module RAM (input [3:0] Ain, output reg [7:0] RAM_OUT );

reg [7:0] A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P;

initial A=8'b00001000;
initial B=8'b00011001;
initial C=8'b11100000;
initial D=8'b00011010;
initial E=8'b11100000;
initial F=8'b00101011;
initial G=8'b11100000;
initial H=8'b11110000;

initial I=8'b00000000;
initial J=8'b00000010;
initial K=8'b00000100;
initial L=8'b00000000;
initial M=8'b00000100;
initial N=8'b00000101;
initial O=8'b00001000;
initial P=8'b00001101;

always@*
case(Ain)
4'b0000: RAM_OUT = A;
4'b0001: RAM_OUT = B;
4'b0010: RAM_OUT = C;
4'b0011: RAM_OUT = D;
4'b0100: RAM_OUT = E;
4'b0101: RAM_OUT = F;
4'b0110: RAM_OUT = G;
4'b0111: RAM_OUT = H;
4'b1000: RAM_OUT = I;
4'b1001: RAM_OUT = J;
4'b1010: RAM_OUT = K;
4'b1011: RAM_OUT = L;
4'b1100: RAM_OUT = M;
4'b1101: RAM_OUT = N;
4'b1110: RAM_OUT = O;
4'b1111: RAM_OUT = P;

endcase
endmodule
