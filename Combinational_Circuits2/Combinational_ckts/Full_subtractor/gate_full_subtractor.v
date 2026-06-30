module gate_full_subtractor(input a,bin,cin,output d,bout);
wire w,x,y,na;
not(na,a);
xor(d,a,bin,cin);
and(w,na,bin);
xnor(x,a,bin);
and(y,cin,x);
or(bout,w,y);
endmodule


