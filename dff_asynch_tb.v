`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:06:54 PM
// Design Name: 
// Module Name: dff_asynch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff_asynch_tb;
    reg d, rst, clk; //inputs
    wire q; //output
    
    dff_asynch uut1(d,rst,clk,q);
    initial begin
        clk=0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        d=0; rst=0; #100;
        d=1; rst=0; #100;
        d=1; rst=1; #100;
        d=0; rst=1; #100;
        $stop;
    end
    
endmodule
