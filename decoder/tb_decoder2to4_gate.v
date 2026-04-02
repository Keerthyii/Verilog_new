module decoder;
reg a1,a0;
wire y0,y1,y2,y3;
decoder2to4 uut(a1,a0,y0,y1,y2,y3);
initial 
begin
a1=0;a0=0;#10;
a1=0;a0=1;#10;
a1=1;a0=0;#10;
a1=1;a0=1;#10;
end
initial begin
$monitor("a1%b a0%b y0%b y1%b y2%b y3%b",a1,a0,y0,y1,y2,y3);
$dumpfile("dump.vcd");
$dumpvars(0);
end
endmodule 

