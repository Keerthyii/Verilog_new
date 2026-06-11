module half_adder_full(input a,b,output sum,cout);
assign sum=a^b;
assign cout=a&b;
endmodule

module full_adder(input a,b,cin,output sum,cout);
wire w1,w2,w3;
half_adder_full uut1(a,b,w1,w2);
half_adder_full uut2(w1,cin,sum,w3);
assign cout=w3|w2;
endmodule
