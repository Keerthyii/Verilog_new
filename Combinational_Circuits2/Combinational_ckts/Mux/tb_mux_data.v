module tb_mux_data;
reg a,b,sel;
wire y;
mux_data uut(a,b,sel,y);
initial
begin
$monitor("a=%b b=%b sel=%b y=%b",a,b,sel,y);
#10;a=0;b=0;sel=0;
#10;a=0;b=0;sel=1;
#10;a=0;b=1;sel=0;
#10;a=0;b=1;sel=1;
#10;a=1;b=0;sel=0;
#10;a=1;b=0;sel=1;
#10;a=1;b=1;sel=0;
#10;a=1;b=1;sel=1;
$finish;
end
endmodule
