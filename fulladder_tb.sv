`timescale 1ns / 1ps
module adder_tb();
logic a;
logic b;
logic c_in;
logic sum;
logic c_out;

full_adder_wrapper UUT(.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));

initial begin
    a=1'b0; b=1'b0; c_in=1'b0;
    #100 a=1'b1; b=1'b0; c_in=1'b0;
    #100 a=1'b0; b=1'b1; c_in=1'b0;
    #100 a=1'b0; b=1'b0; c_in=1'b1;
    #100 a=1'b1; b=1'b1; c_in=1'b0;
    #100 a=1'b1; b=1'b0; c_in=1'b1;
    #100 a=1'b0; b=1'b1; c_in=1'b1;
    #100 a=1'b1; b=1'b1; c_in=1'b1;
    end
    
endmodule
