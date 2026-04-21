module tb_updown_counter;
reg clk,rst,mode;
wire [3:0] q;
updown_counter uut (clk,rst,mode,q);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("clk %b rst %b mode %b q %b",clk,rst,mode,q);
#5;
rst=1;
#5;
rst=0;
mode=1;
#25;

rst=0;
mode=0;
#25;
$finish;
end
endmodule

