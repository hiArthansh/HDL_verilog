`timescale 1ns / 1ps
 // Define time unit and precision
module mux4to1 (
    input wire [3:0] I, 
    // Input lines: I[3], I[2], I[1], I[0]
    input wire S1,      // Select line S1
    input wire S0,      // Select line S0
    output wire Y       // Output line
);
    assign Y = (~S1 & ~S0 & I[0]) | 
               (~S1 & S0 & I[1]) | 
               (S1 & ~S0 & I[2]) | 
               (S1 & S0 & I[3]); // MUX logic
endmodule