module halfadder(input a,b,output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule 

module fulladder(input a,b,cin,output sum,carry);
wire s1,c1,c2;
halfadder ha1(a,b,s1,c1);
halfadder ha2(s1,cin,sum,c2);
or(carry,c1,c2);
endmodule 
