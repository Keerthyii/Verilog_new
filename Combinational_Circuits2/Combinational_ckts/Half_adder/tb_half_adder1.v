module tb_half_adder1;
reg a,b;
wire sum,carry;
half_adder1 uut(a,b,sum,carry);
initial 
begin
$dumpfile("half_adder1.vcd");
$dumpvars(0,tb_half_adder1);
$monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
#10;a=0;b=0;
#10;a=0;b=1;
#10;a=1;b=0;
#10;a=1;b=1;
$finish;
end
endmodule
