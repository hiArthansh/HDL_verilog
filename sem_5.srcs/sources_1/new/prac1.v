//module prac1(
//    input wire clk,
//    input wire a,
//    input wire b,
//    output reg y0,
//    output reg y1,
//    output reg y2,
//    output reg y3
//);
//    always @(posedge clk) begin 
//        y0 <=~(a & b);
//        y1 <=!(a | b);
//        y2 <= (a^b);
//        y3<=!(a^b);
//    end
//endmodule

`timescale 10ns/10ps
module prac1(
    input a,b,
    output y0,y1,y2
    );
    assign y0 = (a&b);
    assign y1 = (a|b);
    assign y2 = ~a;
endmodule
