`timescale 1ns / 1ps // Define time unit and precision
module full_adder (
    input wire A,
    input wire B,
    input wire Cin,
    output wire Sum,
    output wire Cout¥
);
    assign Sum = A ^ B ^ Cin;                            // XOR for sum
    assign Cout = (A & B) | (B & Cin) | (Cin & A);      // OR of ANDs for carry-out
endmodule//`timescale 1ns / 1ps // Define time unit and precision
//module half_adder (
//    input wire A,
//    input wire B,
//    output wire Sum,
//    output wire Carry
//);
//    assign Sum = A ^ B;      // XOR for sum
//    assign Carry = A & B;    // AND for carry
//endmodule