`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:46:42 PM
// Design Name: 
// Module Name: counter_3b_tb
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


module counter_3b_tb;
reg clk;
wire [2:0]q;
    counter_3b uut(clk,q);
    initial begin
        clk=0;
        forever #10 clk=~clk;
    end
    
    initial begin
        #200;
        $stop;
    end


endmodule
