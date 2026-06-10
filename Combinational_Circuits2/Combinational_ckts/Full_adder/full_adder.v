module full_adder(input a,b,cin,output s,cout);
wire w1,w2,c3;
half_adder ha1(a,b,w1,w2);
half_adder ha2(w1,cin,s,c3);
assign cout=w2|c3;
endmodule
