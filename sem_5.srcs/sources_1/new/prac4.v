`timescale 1ns / 1ps // Define time unit and precision
module encoder3_to_8 (
    input wire [2:0] a,  // 3-bit input
    output reg [7:0] y   // 8-bit output
);
    always @(*) begin
        // Default output
        y = 8'b00000000; // Set all outputs low
        case (a)
            3'b000: y = 8'b00000001; // Output for input 0
            3'b001: y = 8'b00000010; // Output for input 1
            3'b010: y = 8'b00000100; // Output for input 2
            3'b011: y = 8'b00001000; // Output for input 3
            3'b100: y = 8'b00010000; // Output for input 4
            3'b101: y = 8'b00100000; // Output for input 5
            3'b110: y = 8'b01000000; // Output for input 6
            3'b111: y = 8'b10000000; // Output for input 7
            default: y = 8'b00000000; // Default case (should not occur)
        endcase
    end
endmodule