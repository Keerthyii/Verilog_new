`timescale 1ns/1ps

module tb_xnor;
    reg a;
    reg b;
    wire y;
    xnorr uut(a,b,y);

    initial begin
        
        $display("a b | y");
        $display("--------");
        $monitor("%b %b | %b", a, b, y);

        // Test cases
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end

endmodule
