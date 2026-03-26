module tb_gates;

reg a,b;
wire and1,or1,nand1,nor1,xor1,xnor1,nota;

all_gates_df uut(a,b,and1,or1,nand1,nor1,xor1,xnor1,nota);

initial begin
$display("a b and or nand nor xor xnor nota");

a=0; b=0; #10;
$display("%b %b %b %b %b %b %b %b %b", a,b,and1,or1,nand1,nor1,xor1,xnor1,nota);

a=0; b=1; #10;
$display("%b %b %b %b %b %b %b %b %b", a,b,and1,or1,nand1,nor1,xor1,xnor1,nota);

a=1; b=0; #10;
$display("%b %b %b %b %b %b %b %b %b", a,b,and1,or1,nand1,nor1,xor1,xnor1,nota);

a=1; b=1; #10;
$display("%b %b %b %b %b %b %b %b %b", a,b,and1,or1,nand1,nor1,xor1,xnor1,nota);

$finish;
end

endmodule
