`timescale 1ns / 1ps // Define time unit and precision
module encoder_tb;
    reg [2:0] a;         // Input for the encoder
    wire [7:0] y;       // Output from the encoder
    // Instantiate the encoder module
    encoder3_to_8 uut (.a(a), .y(y));
    initial begin
        $monitor("Input: %b | Output: %b", a, y);
       // Test all combinations of inputs
        a = 3'b000; #10; // Expected output: 00000001
        a = 3'b001; #10; // Expected output: 00000010
        a = 3'b010; #10; // Expected output: 00000100
        a = 3'b011; #10; // Expected output: 00001000
        a = 3'b100; #10; // Expected output: 00010000
        a = 3'b101; #10; // Expected output: 00100000
        a = 3'b110; #10; // Expected output: 01000000
        a = 3'b111; #10; // Expected output: 10000000
                $finish;
    end 
endmodule