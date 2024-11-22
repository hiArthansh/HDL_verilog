module testbench;
    reg [1:0] a;         // Input for the decoder
    wire [3:0] y;       // Output from the decoder

    // Instantiate the decoder module
    decoder_2to4 uut (.a(a), .y(y));

    initial begin
        // Test all combinations of inputs
        a = 2'b00; #10; // Expected output: 0001
        a = 2'b01; #10; // Expected output: 0010
        a = 2'b10; #10; // Expected output: 0100
        a = 2'b11; #10; // Expected output: 1000
        
        $finish;
    end 
endmodule