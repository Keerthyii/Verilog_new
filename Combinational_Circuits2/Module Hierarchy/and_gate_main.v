module and_gate_main(input A,B,C,D,output Y);
wire w1,w2;
and_gate g1(A,B,w1);
and_gate g2(C,D,w2);
and_gate g3(w1,w2,Y);
endmodule
