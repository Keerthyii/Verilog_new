module demux1to4(input a ,s0,s1,output y0,y1,y2,y3);
wire ns0,ns1;
not(ns0,s0);
not(ns1,s1);
assign y0=ns0&ns1&a;
assign y1=ns0&s1&a;
assign y2=s0&ns1&a;
assign y3=s0&s1&a;
endmodule 


