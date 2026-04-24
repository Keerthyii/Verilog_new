module tb_MOD10_counter;
reg clk,rst;
wire [3:0] q;
MOD10_counter uut(clk,rst,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
$monitor("clk %b rst %b q%b",clk,rst,q);
#10;
rst=1;
#10;

#15;
rst=0;
#100;
$finish;
end
endmodule
