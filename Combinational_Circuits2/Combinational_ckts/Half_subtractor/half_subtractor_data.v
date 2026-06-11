module half_subtractor_data(input a,bin,output d,bout);
assign d=a^bin;
assign bout=((~a)&bin);
endmodule
