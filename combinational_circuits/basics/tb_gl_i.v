module gl_g_tb;

reg A;
reg B;

wire AND1;
wire OR1;
wire NAND1;
wire NOR1;
wire XOR1;
wire XNOR1;
wire NOTA;
wire NOTB;

gl_g uut(
A,
B,
AND1,
OR1,
NAND1,
NOR1,
XOR1,
XNOR1,
NOTA,
NOTB
);

initial
begin

A = 0; B = 0; #10;
A = 0; B = 1; #10;
A = 1; B = 0; #10;
A = 1; B = 1; #10;

end

initial
begin
$monitor("A=%b B=%b AND=%b OR=%b NAND=%b NOR=%b XOR=%b XNOR=%b NOTA=%b NOTB=%b",
A,B,AND1,OR1,NAND1,NOR1,XOR1,XNOR1,NOTA,NOTB);
end

endmodule
