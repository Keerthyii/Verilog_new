module halfsubtractor(input a ,bin ,output d ,bout);
wire na;
xor(d,a,bin);
not(na,a);
and(bout,na,bin);
endmodule
