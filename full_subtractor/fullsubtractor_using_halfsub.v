module halfsubtractor(input a,bin,output d,bout);
assign d=a^bin;
assign bout=((~a)&bin);
endmodule
module fullsubtractor(input a,bin,c, output d,bout);
wire d1,b1,b2;
halfsubtractor ha1(a,bin,d1,b1);
halfsubtractor ha2(d1,c,d,b2);
assign bout=b1| b2;
endmodule
