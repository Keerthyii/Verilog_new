module full_adder_data(input a,b,cin,output sum,carry);
assign sum=a^b^cin;
assign carry=((a&b)|cin&(a^b));
endmodule
