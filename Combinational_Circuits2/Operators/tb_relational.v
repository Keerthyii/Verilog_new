module tb_relational;
reg [3:0]a,b;
wire y,z;
relational uut(a,b,y,z);
initial
begin
$monitor("a=%d b=%d y=%b z=%b",a,b,y,z);
#10;a=5;b=2;
#10;a=6;b=3;
end
endmodule
