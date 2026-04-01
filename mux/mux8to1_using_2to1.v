module mux2to1(input a,b,sel,output y);
wire nsel,w1,w2;
not(nsel,sel);
and(w1,a,nsel);
and(w2,b,sel);
or(y,w1,w2);
endmodule
module mux8to1(input a,b,c,d,e,f,g,h,s0,s1,s2,output y);
mux2to1 x(a,b,s0,w1);
mux2to1 x1(c,d,s0,w2);
mux2to1 x2(e,f,s0,w3);
mux2to1 x3(g,h,s0,w4);
mux2to1 x4(w1,w2,s1,w5);
mux2to1 x5(w3,w4,s1,w6);
mux2to1 x6(w5,w6,s2,y);
endmodule
