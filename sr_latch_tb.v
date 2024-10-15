`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:49:44 PM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
reg s,r; //inputs
wire q,qn; //outputs

sr_latch uut(s,r,q,qn);
integer i,j;
initial
begin
    for(i=0; i<2; i=i+1)
    begin
        s=i;
        for(j=0; j<2; j=j+1)
        begin
            r=j; #10; r=0; s=0; #10; s=i;
        end
    end
    $stop;
end

endmodule
