`timescale 1ns/1ps

module tb_mux16to1;

reg a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
reg s0,s1,s2,s3;

wire y;

mux16to1 uut (
a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,
s0,s1,s2,s3,
y
);

initial
begin

$display("Testing 16:1 MUX");

a=0; b=1; c=0; d=1;
e=1; f=0; g=1; h=0;
i=0; j=1; k=0; l=1;
m=1; n=0; o=1; p=0;

s3=0; s2=0; s1=0; s0=0; #10; $display("sel=0000 y=%b",y);
s3=0; s2=0; s1=0; s0=1; #10; $display("sel=0001 y=%b",y);
s3=0; s2=0; s1=1; s0=0; #10; $display("sel=0010 y=%b",y);
s3=0; s2=0; s1=1; s0=1; #10; $display("sel=0011 y=%b",y);

s3=0; s2=1; s1=0; s0=0; #10; $display("sel=0100 y=%b",y);
s3=0; s2=1; s1=0; s0=1; #10; $display("sel=0101 y=%b",y);
s3=0; s2=1; s1=1; s0=0; #10; $display("sel=0110 y=%b",y);
s3=0; s2=1; s1=1; s0=1; #10; $display("sel=0111 y=%b",y);

s3=1; s2=0; s1=0; s0=0; #10; $display("sel=1000 y=%b",y);
s3=1; s2=0; s1=0; s0=1; #10; $display("sel=1001 y=%b",y);
s3=1; s2=0; s1=1; s0=0; #10; $display("sel=1010 y=%b",y);
s3=1; s2=0; s1=1; s0=1; #10; $display("sel=1011 y=%b",y);

s3=1; s2=1; s1=0; s0=0; #10; $display("sel=1100 y=%b",y);
s3=1; s2=1; s1=0; s0=1; #10; $display("sel=1101 y=%b",y);
s3=1; s2=1; s1=1; s0=0; #10; $display("sel=1110 y=%b",y);
s3=1; s2=1; s1=1; s0=1; #10; $display("sel=1111 y=%b",y);

$finish;

end

endmodule
