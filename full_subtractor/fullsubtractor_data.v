module fullsubtractor(input a,bin,c,output d,bout);
assign d=a^bin^c;
assign bout= ((~a) & bin) | ((~(a ^ bin)) & c);
endmodule
