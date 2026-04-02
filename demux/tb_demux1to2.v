module demux2to1;
reg a,sel;
wire y0,y1;
demux1to2 uut(a,sel,y0,y1);
initial
begin
a=0;sel=0;
a=0;sel=1;
a=1;sel=0;
a=1;sel=1;
end
initial
begin
$monitor("A:%b Sel:%b Y0:%b Y1%b",a,sel,y0,y1);
end
endmodule
