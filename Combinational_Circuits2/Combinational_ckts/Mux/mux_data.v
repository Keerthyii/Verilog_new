module mux_data(input a,b,sel,output y);
assign y=sel?b:a;
endmodule
