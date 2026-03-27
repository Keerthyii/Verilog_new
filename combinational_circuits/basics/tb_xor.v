`timescale 1ns/1ps

module tb_xor;

    // Inputs
    reg A;
    reg B;

    // Output
    wire Y;

    // Instantiate the XOR design
    xorr uut (A,B,Y
    );

    initial begin
        $display("A B | Y");
        $display("---------");

        $monitor("%b %b | %b", A, B, Y);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        
        $finish;
    end

endmodule
