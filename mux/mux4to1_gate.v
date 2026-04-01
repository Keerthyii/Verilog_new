module mux4to1_gl(input a, b, c, d, input s1, s0, output y);

wire s1n, s0n;
wire w1, w2, w3, w4;
not n1(s1n, s1);
not n2(s0n, s0);
and a1(w1, a, s1n, s0n);  
and a2(w2, b, s1n, s0);   
and a3(w3, c, s1, s0n);   
and a4(w4, d, s1, s0);   
or o1(y, w1, w2, w3, w4);

endmodule
