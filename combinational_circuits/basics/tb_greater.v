module tb_greater;
reg [1:0]a,b;
wire g;
greater_2bit uut(a,b,g);
initial 
begin
a=2'b00;b=2'b01;#10;
a=2'b01;b= 2'b00; #10;
end 
initial begin
$monitor("%b %b %b",a,b,g);
end 
endmodule 
