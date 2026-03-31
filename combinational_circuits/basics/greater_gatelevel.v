module greater_2bit_gl(
    input [1:0] A,
    input [1:0] B,
    output G
);

wire w1, w2, w3, w4, w5;
not n1(w1, B[1]);   
not n2(w2, B[0]);  
and a1(w3, A[1], w1);
xnor x1(w4, A[1], B[1]);
and a2(w5, A[0], w2);
wire w6;
and a3(w6, w4, w5);
or o1(G, w3, w6);

endmodule
