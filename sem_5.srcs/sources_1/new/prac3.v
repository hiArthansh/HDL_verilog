module decoder_2to4 (
    input wire [1:0] a,  // 2-bit input
    output reg [3:0] y   // 4-bit output
);
    always @(*) begin
        case (a)
            2'b00: y = 4'b0001; // Output 0
            2'b01: y = 4'b0010; // Output 1
            2'b10: y = 4'b0100; // Output 2
            2'b11: y = 4'b1000; // Output 3
            default: y = 4'b0000; // Default case 
        endcase
    end
endmodule