module evenodd_detector(input a,output even,odd);
assign even=~ a;
assign odd=a;
endmodule
