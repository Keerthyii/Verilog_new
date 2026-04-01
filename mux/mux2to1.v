module mux2to1(input i0,i1,s,output y);
assign y=((~s)&i0) | (i1&s);
endmodule

