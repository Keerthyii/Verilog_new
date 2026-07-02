module demux_1to2_data(input a,sel,output y0,y1);
assign y0=(sel==1'b0)?a:0;
assign y1=(sel==1'b1)?a:0;
endmodule
