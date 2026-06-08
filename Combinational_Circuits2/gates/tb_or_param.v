module tb_or_param;
reg [3:0]a,b;
wire [3:0] y;
or_param #(4) uut(a,b,y);
initial
begin
a=4'b0000;
b=4'b0000;
$monitor("a=%b b=%b y=%b",a,b,y);
#10; a=4'b0000;b=1111;
#10; a=4'b1101;b=1111;
#10; a=4'b1010;b=1111;
#10; a=4'b1111;b=1111;
$finish;
end
endmodule

