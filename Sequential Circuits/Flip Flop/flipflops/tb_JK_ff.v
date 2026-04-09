module tb_jk_ff;
reg J,K,clk;
wire q;
initial clk=0;
always #5 clk=~clk;
JK_FF uut(J,K,clk,q);
initial 
begin
J=0;K=0;#10;
J=0;K=1;#10;
J=1;K=0;#10;
J=1;K=1;#10;
$finish;
end
initial
begin
$monitor("%bJ %bK %bclk %bq",J,K,clk,q);
end 
endmodule
