module tb_posedge_upcounter;
reg clk,rst;
wire [3:0] q;
posedge_jk_counter uut(clk,rst,q);
initial 
begin
clk=0;
forever#5 clk=~clk;
end
initial
begin
$monitor("clk %b rst %b q %b",clk,rst,q);
rst=1;
#12;
rst=0;

#200;

rst=1;
#12
rst=0;

#50
$finish;
end
endmodule
