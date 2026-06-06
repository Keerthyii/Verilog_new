module tb_and_gate_main;
reg A,B,C,D;
wire Y;
and_gate_main dut(A, B, C, D, Y);
initial begin
$dumpfile("wave.vcd");
$dumpvars(0, tb_and_gate_main);
$monitor("A=%b B=%b C=%b D=%b | Y=%b", A, B, C, D, Y);
#10;A=0; B=0; C=0; D=0; 
#10;A=0; B=0; C=0; D=1; 
#10;A=0; B=0; C=1; D=0;
#10;A=0; B=0; C=1; D=1; 
#10;A=0; B=1; C=0; D=0; 
#10;A=0; B=1; C=0; D=1;
#10;A=1; B=1; C=1; D=1;
end
endmodule
