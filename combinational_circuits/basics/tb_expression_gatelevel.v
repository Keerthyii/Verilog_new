`timescale 1ns/1ps

module tb_expression;
    reg A;
    reg B;
    reg C;
    wire Y;
    expgl uut (A,B,C,Y);

    initial begin
        $display("A B C | Y");
        $display("------------");
        $monitor("%b %b %b | %b", A, B, C, Y);

        // Apply test cases
        A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
        A=0; B=1; C=0; #10;
        A=0; B=1; C=1; #10;
        A=1; B=0; C=0; #10;
        A=1; B=0; C=1; #10;
        A=1; B=1; C=0; #10;
        A=1; B=1; C=1; #10;

        
        $finish;
    end

endmodule
