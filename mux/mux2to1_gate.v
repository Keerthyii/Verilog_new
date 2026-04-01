module mux2to1_gate(input a,b,sel,output y);
wire s1,s2,nsel;
not(nsel,sel);
and(s1,a,nsel);
and(s2,b,sel);
or(y,s1,s2);
endmodule

