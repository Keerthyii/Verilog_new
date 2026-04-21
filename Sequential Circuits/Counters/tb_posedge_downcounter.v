module tb_posedge_downcounter;
reg clk,rst;
wire [3:0] q;
posedge_downcounter uut(clk,rst,q);
initial
begin
clk=0;
forever #5clk=~clk;
end
initial begin
$monitor("clk %b rst %b q %b",clk,rst,q);	
#10;
rst=1;
#5;
rst=0;
#200;

rst=1;
$finish;
end
endmodule

