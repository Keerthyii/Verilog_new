module tb_equality;
reg [3:0] a,b;
wire y,z;
equality uut(a,b,y,z);
initial 
begin
$dumpfile("equality.vcd");
$dumpvars(0,tb_equality);
$monitor("a=%b b=%b y=%b z=%b",a,b,y,z);
#10;a=1010;b=1010;
#10;a=1000;b=1010;
end
endmodule
