module tb_mux_4to1_case;
reg a,b,c,d;
reg [1:0]sel;
wire y;
mux_4to1_case uut(a,b,c,d,sel,y);
initial
begin
$monitor("a=%b b=%b c=%b d=%b sel=%b y=%b",a,b,c,d,sel,y);
$dumpfile("dump.vcd");
$dumpvars(0,tb_mux_4to1_case);
 a = 0;
 b = 1;
 c = 0;
 d = 1;
 sel = 2'b00; #10;
 sel = 2'b01; #10;
 sel = 2'b10; #10;
 sel = 2'b11; #10;

$finish;
end
endmodule
