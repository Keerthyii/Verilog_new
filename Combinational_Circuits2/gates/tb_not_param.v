module tb_not_param;
reg [3:0] a;
wire [3:0]y;
not_param #(4) uut (a,y);
initial
begin
a=0;
$monitor("a=%b y=%b",a,y);
#10;a=4'b1010;
#10;a=4'b1000;
end
endmodule
