module tb_param_ff;
reg clk;
reg [3:0]d;
wire [3:0]q;
param_ff #(4) uut(clk,d,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
d=4'b0000;
$monitor("time=%0t clk=%b d=%b q=%b", $time, clk, d, q);
#10;d=4'b0010;
#10;d=4'b1010;
$finish;
end
endmodule
