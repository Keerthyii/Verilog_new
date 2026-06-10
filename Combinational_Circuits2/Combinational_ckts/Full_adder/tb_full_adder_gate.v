module tb_full_adder_gate;
reg a,b,cin;
wire sum,cout;
full_adder_gate uut(a,b,cin,sum,cout);
initial begin
$dumpfile("full_adder_gate.vcd");
$dumpvars(0,tb_full_adder_gate);
$monitor("a=%b b=%b cin=%b sum=%b cout=%b ",a,b,cin,sum,cout);
#10;a=0;b=0;cin=0;
#10;a=0;b=0;cin=1;
#10;a=0;b=1;cin=0;
#10;a=1;b=1;cin=1;
$finish;
end
endmodule
