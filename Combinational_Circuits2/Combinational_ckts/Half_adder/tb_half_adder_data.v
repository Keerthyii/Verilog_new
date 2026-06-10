module tb_half_adder_data;
reg a,b;
wire sum,carry;
half_adder_data uut(a,b,sum,carry);
initial 
begin
$dumpfile("half_adder_data.vcd");
$dumpvars(0,tb_half_adder_data);
$monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
#10;a=0;b=0;
#10;a=0;b=1;
#10;a=1;b=0;
#10;a=1;b=1;
$finish;
end
endmodule
