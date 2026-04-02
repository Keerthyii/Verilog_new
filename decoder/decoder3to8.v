module decoder3to8(input a2,a1,a0,output y0,y1,y2,y3,y4,y5,y6,y7);
wire na2,na1,na0;
not(na2,a2);
not(na1,a1);
not(na0,a0);
assign y0= na2&na1&na0;
assign y1= na2&na1&a0;
assign y2= na2&a1&na0;
assign y3= na2&a1&a0;
assign y4= a2&na1&na0;
assign y5= a2&na1&a0;
assign y6= a2&a1&na0;
assign y7= a2&a1&a0;
endmodule

