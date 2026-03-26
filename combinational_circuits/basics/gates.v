module all_gates_df(input a,b,output andd,orr,nandd,norr,xorr,xnorr,notta);
assign andd=a&b;
assign orr= a|b;
assign nandd=~(a&b);
assign norr =~(a|b);
assign xorr =a^b;
assign xnorr=~(a|b);
assign notta=~a;
endmodule 
