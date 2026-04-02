module decoder2to4(input a1,a0,output y0,y1,y2,y3);
wire na1,na0;
not(na1,a1);
not(na0,a0);
and(y0,na1,na0);
and(y1,na1,a0);
and(y2,a1,na0);
and(y3,a1,a0);
endmodule
