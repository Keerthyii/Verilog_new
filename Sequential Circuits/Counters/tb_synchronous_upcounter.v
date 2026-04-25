module tb_synchronous_upcounter;
reg clk,rst;
wire [2:0] q;
synchronous_upcounter uut(clk,rst,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$monitor("clk %b rst %b q %b",clk,rst,q);
#10;
rst=1;
#10;

#15;
rst=0;
#100;
$finish;
end
endmodule
