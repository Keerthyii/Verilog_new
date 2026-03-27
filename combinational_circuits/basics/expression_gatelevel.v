module expgl(input a,b,c,output y);
wire andd;
and g1(andd,a,b);
or g2(y,andd);
endmodule
