module tb_arithmetic;
reg [3:0]a,b;
wire [3:0]sum,sub,pro,div,mod;
arithmetic uut(a,b,sum,sub,pro,div,mod);
initial
begin
$monitor("a=%d b=%d sum=%d sub=%d pro=%d div=%d mod=%d",a,b,sum,sub,pro,div,mod);
#10;a=1;b=2;
#10;a=2;b=2;
#10;a=3;b=2;
#10;a=4;b=1;
$finish;
end
endmodule
