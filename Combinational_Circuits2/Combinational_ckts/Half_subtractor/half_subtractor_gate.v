module half_subtractor_gate(input a,bin,output d,bout);
wire na;
not(na,a);
xor(d,a,bin);
and(bout,na,bin);
endmodule
