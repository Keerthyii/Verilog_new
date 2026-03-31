module tb_greater_2bit_gl;
reg [1:0] A, B;
wire G;
greater_2bit_gl uut (
    .A(A),
    .B(B),
    .G(G)
);
initial begin
    $display(" A   B   G");
    $display("-----------");

    A = 2'b00; B = 2'b00; #10;
    A = 2'b00; B = 2'b01; #10;
    A = 2'b00; B = 2'b10; #10;
    A = 2'b00; B = 2'b11; #10;

    A = 2'b01; B = 2'b00; #10;
    A = 2'b01; B = 2'b01; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b01; B = 2'b11; #10;

    A = 2'b10; B = 2'b00; #10;
    A = 2'b10; B = 2'b01; #10;
    A = 2'b10; B = 2'b10; #10;
    A = 2'b10; B = 2'b11; #10;

    A = 2'b11; B = 2'b00; #10;
    A = 2'b11; B = 2'b01; #10;
    A = 2'b11; B = 2'b10; #10;
    A = 2'b11; B = 2'b11; #10;

    $finish;
end

initial begin
    $monitor(" %b  %b   %b", A, B, G);
end

endmodule
