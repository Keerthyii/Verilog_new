module priority_encoder(input d3,d2,d1,d0,output y1,y0);
wire v1,v2,v3,v4;
assign v4=d3;
assign v3=d2&~d3;
assign v2=d1&~d3 &~d2;
assign v1=d0&~d3 &~d2 &~d1;
assign y1 = v4 | v2;
assign y0 = v4 | v1;

endmodule
