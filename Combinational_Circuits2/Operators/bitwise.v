module bitwise(input [3:0] a,b,output[3:0] andd,orr,nott);
assign andd=a&b;
assign orr=a|b;
assign nott=~a;
endmodule
