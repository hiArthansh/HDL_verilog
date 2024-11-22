module armtech_tb();
    reg clk;
    reg a, b;
    wire y0, y1, y2;
    // Instantiate the prac1 module
    prac1 uut (.clk(clk), .a(a), .b(b),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3));
    // Clock generation
    initial begin
        clk = 0; // Initialize clock
        forever #5 clk = ~clk;
         // Toggle clock every 5 time units (100 MHz)
    end
    initial begin
        // Initialize inputs
        a = 0; b = 0; 
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 a = 0; b = 0;
        #10; // Wait for some time before finishing
        $finish;    
    end 
endmodule
//`timescale 10ns / 10ps
//module armtech_tb(

//    );
//    reg a,b;
//    wire y0,y1,y2;
//    prac1 uut (a,b,y0,y1,y2);
//    initial 
//        begin
//            a=0 ; b=0; 
//           #10 a=0 ; b=1;
//           #10 a=1 ; b=0;
//           #10 a=1 ; b=1;
//           #10 a=0 ; b=0;
//           //$finish;    
//       end 
//endmodule
