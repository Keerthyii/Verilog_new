module tb_D_ff;
reg clk,rst,d;
wire q;
D_ff uut(clk,rst,d,q);
always #5 clk=~clk;
initial begin
clk = 0;
rst = 1;
d = 0;
$monitor("clk:%b rst:%b d:%b q:%b", clk, rst, d, q);
#10 rst = 0;
#10 d = 1;
#10 d = 0;
#10 d = 1;

#20 $finish;
end
endmodule

