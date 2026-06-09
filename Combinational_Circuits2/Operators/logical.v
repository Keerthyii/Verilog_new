module logical(input [3:0]a,b,c,output w,x,y,z);
assign w=(a&&b);
assign x=(a&&c);
assign y=(a||c);
assign z=!c;
endmodule

