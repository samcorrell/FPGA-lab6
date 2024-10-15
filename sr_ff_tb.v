`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:03:02 PM
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb;
reg s,r,clk; //inputs
wire q,qn; //outputs

sr_ff uut1(s,r,clk,q,qn);
initial begin
    clk=0; s=0; r=1;
    forever #10 clk = ~clk;
end



initial
begin
    #100;
    s=0; r=0; #100;
    s=1; r=0; #100;
    s=0; r=0; #100;
    s=1; r=1; #100;
    s=0; r=0; #100;
    $stop;
end
    
endmodule
