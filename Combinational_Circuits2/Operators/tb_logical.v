module tb_logical;
reg [3:0] a,b,c;
wire w,x,y,z;
logical uut(a,b,c,w,x,y,z);
initial
begin
$dumpfile("logical.vcd");
$dumpvars(0,tb_logical);
$monitor("a=%b b=%b c=%b w=%b x=%b y=%b z=%b",a,b,c,w,x,y,z);
#10;a=4'b1010;b=4'b0011;c=4'b0000;
$finish;
end
endmodule
