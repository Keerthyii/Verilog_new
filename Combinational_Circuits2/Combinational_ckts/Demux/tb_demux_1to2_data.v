module tb_demux_1to2_data;
reg a,sel;
wire y0,y1;
demux_1to2_data uut(a,sel,y0,y1);
initial
begin
$monitor("a=%b sel=%b y0=%b y1=%b",a,sel,y0,y1);
$dumpfile("dump.vcd");
$dumpvars(0,tb_demux_1to2_data);
#10;a=0;sel=0;
#10;a=0;sel=1;
#10;a=1;sel=0;
#10;a=1;sel=1;
end
endmodule
