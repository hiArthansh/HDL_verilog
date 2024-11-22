`timescale 1ns / 1ps // Define time unit and precision
module tb_mux4to1; // Testbench module
    reg [3:0] I;     // Input lines: I[3], I[2], I[1], I[0]
    reg S1, S0;      // Select lines
    wire Y;          // Output line

    // Instantiate the 4-to-1 multiplexer
    mux4to1 uut (
        .I(I),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );
    initial begin
        // Monitor the output
        $monitor("At time %t: I=%b, S1=%b, S0=%b => Y=%b", $time, I, S1, S0, Y);
                // Initialize inputs
        I = 4'b0000; S1 = 0; S0 = 0; #10; // Select I[0] (Output should be 0)
        I = 4'b0001; S1 = 0; S0 = 1; #10; // Select I[1] (Output should be 1)
        I = 4'b0010; S1 = 1; S0 = 0; #10; // Select I[2] (Output should be 2)
        I = 4'b0011; S1 = 1; S0 = 1; #10; // Select I[3] (Output should be 3)
        // Test with different input values
        I = 4'b1010; S1 = 0; S0 = 0; #10; // Select I[0] (Output should be 0)
        I = 4'b1010; S1 = 0; S0 = 1; #10; // Select I[1] (Output should be 1)
        I = 4'b1010; S1 = 1; S0 = 0; #10; // Select I[2] (Output should be 2)
        I = 4'b1010; S1 = 1; S0 = 1; #10; // Select I[3] (Output should be 3)
        $finish; // End simulation
    end 
endmodule