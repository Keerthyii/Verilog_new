module demux1to2(input a,sel,output y0,y1);

assign y0 = (sel == 1'b0) ? a : 1'b0;
assign y1 = (sel == 1'b1) ? a : 1'b0;

endmodule
module demux1to8(input a,s2,s1,s0,output y0,y1,y2,y3,y4,y5,y6,y7);
wire w1,w2,w00,w01,w10,w11;
demux1to2 dm1(a,s2,w1,w2);
demux1to2 dm2(w1,s1,w00,w01);
demux1to2 dm3(w2,s1,w10,w11);
demux1to2 dm4(w00,s0,y0,y1);
demux1to2 dm5(w01,s0,y2,y3);
demux1to2 dm6(w10,s0,y4,y5);
demux1to2 dm7(w11,s0,y6,y7);
endmodule

