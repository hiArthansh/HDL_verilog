`timescale 1ns / 1ps // Define time unit and precision
module tb_full_adder;
    reg A, B, Cin;          // Inputs to the full adder
    wire Sum, Cout;        // Outputs from the full adder
    // Instantiate the full adder module
    full_adder uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial begin
        $monitor("At time %t: A=%b, B=%b, Cin=%b => Sum=%b, Cout=%b", $time, A, B, Cin, Sum, Cout);
         // Test all combinations of inputs
        {A, B, Cin} = 3'b000; #10;
        {A, B, Cin} = 3'b001; #10;
        {A, B, Cin} = 3'b010; #10;
        {A, B, Cin} = 3'b011; #10;
        {A, B, Cin} = 3'b100; #10;
        {A, B, Cin} = 3'b101; #10;
        {A, B, Cin} = 3'b110; #10;
        {A, B, Cin} = 3'b111; #10;
        $finish;
    end 
endmodule//`timescale 1ns / 1ps // Define time unit and precision

//module tb_half_adder;
//    reg A, B;              // Inputs to the half adder
//    wire Sum, Carry;      // Outputs from the half adder
//    // Instantiate the half adder module
//    half_adder uut (.A(A), .B(B), .Sum(Sum), .Carry(Carry));
//    initial begin
//        $monitor("At time %t: A=%b, B=%b => Sum=%b, Carry=%b", 
//        $time, A, B, Sum, Carry);
//        // Test all combinations of inputs
//        {A, B} = 2'b00; #10;
//        {A, B} = 2'b01; #10;
//        {A, B} = 2'b10; #10;
//        {A, B} = 2'b11; #10;
//        $finish;
//    end 
//endmodule