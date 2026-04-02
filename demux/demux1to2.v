module demux1to2(input a,sel,output y0,y1);
wire nsel;
not(nsel,sel);
assign y0=nsel&a;
assign y1= sel&a;
endmodule
 
