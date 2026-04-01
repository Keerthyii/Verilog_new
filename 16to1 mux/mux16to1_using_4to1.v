module mux4to1(input a,b,c,d,s0,s1,output y);
wire ns0,ns1, w1,w2,w3,w4;
not(ns0,s0);
not(ns1,s1);
and(w1,ns0,ns1,a);
and(w2,ns0,s1,b);
and(w3,s0,ns1,c);
and(w4,s0,s1,d);
or(y,w1,w2,w3,w4);
endmodule
module mux16to1(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3,output y);
wire w1,w2,w3,w4;
mux4to1 x(a,b,c,d,s0,s1,w1);
mux4to1 x1(e,f,g,h,s0,s1,w2);
mux4to1 x2(i,j,k,l,s0,s1,w3);
mux4to1 x3(m,n,o,p,s0,s1,w4);
mux4to1 x4(w1,w2,w3,w4,s2,s3,y);
endmodule
