module full_subtractor(input a,bin,c,output d,bout);
wire na,nxnor,andd,andd2;
not g1(na,a);
xor g2(d,a,bin,c);
and g3(andd,na,bin);
xnor g4(nxnor,a,bin);
and(andd2,nxnor,c);
or(bout,andd,andd2);
endmodule


