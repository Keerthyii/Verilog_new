module tb_MOD5_counter;
reg clk,rst;
wire [2:0] q;
MOD5_counter uut(clk,rst,q);
initial begin
clk=0;
forever #5clk=~clk;
end 
initial begin
$monitor("clk %b rst %b q %b",clk,rst,q);
#10;
rst=1;
#5;

#10;
rst=0;
#10;
rst=1;
#10;rst=0;
#100;
$finish; 
end
endmodule
