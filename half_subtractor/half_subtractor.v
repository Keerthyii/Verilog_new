module half_subtractor(input a,bin,output d,bout);
assign d= a^bin;
assign bout= ((~a)&bin);
endmodule
