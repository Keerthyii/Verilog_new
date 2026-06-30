module data_full_subtractor(input a,bin,cin,output d,bout);
wire na;
not(na,a);
assign d=(a^bin^cin);
assign bout=((na&bin)|(cin&(~(a^bin))));
endmodule
