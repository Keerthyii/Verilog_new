module xnorr(input a,b,output y);
assign y=(a&b) | (~a&~b);
endmodule 

