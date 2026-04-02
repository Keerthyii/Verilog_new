module demux1to2(input a,sel,output y0,y1);
wire nsel;
not(nsel,sel);
and(y0,nsel,a);
and(y1,sel,a);
endmodule

