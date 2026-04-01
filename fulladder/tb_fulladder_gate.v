module tb_full_adder_gate;
reg a, b, cin;
wire sum, carry;
full_adder_gate uut (a, b, cin, sum, carry);

initial begin
    $monitor("a=%b b=%b cin=%b | sum=%b carry=%b", a, b, cin, sum, carry);

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end
endmodule
