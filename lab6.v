`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:41:11 PM
// Design Name: 
// Module Name: lab6
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


module lab6(

    );
endmodule

module sr_latch(
    input s, r,
    output q, qn
    );
    
    
    assign q=~(r|qn);
    assign qn=~(s|q);
    
endmodule




module sr_ff(
    input s, r, clk,
    output reg q, 
    output reg qn
    );
    
    always @ (posedge clk) 
    begin
        q<=~(r|qn);
        qn<=~(s|q);
    end
endmodule

module dff_synch(
    input d, rst, clk,
    output reg q
    );
    always @(posedge clk) begin
        if(rst)
            q<=0;
        else
            q<=d;
    end
endmodule

module dff_asynch(
    input d, rst, clk,
    output reg q
    );    
    always @(posedge clk or posedge rst) begin
        if(rst)
            q<=0;
        else
            q<=d;
    end
endmodule

module tff(
    input t, clk,
    output reg q=0
    );
    
    always @(posedge clk)begin
        if(t)
            q<=~q;
        else
            q<=q;         
    end
endmodule


module counter_3b(
    input clk,
    output [2:0]q
    );
    wire [2:0]t;

    
    assign t[0]=1;

    
    tff t0(t[0],clk,q[0]);
    assign t[1]=q[0];
    tff t1(t[1],clk,q[1]);
    assign t[2]=q[0]&q[1];
    tff t2(t[2],clk,q[2]);
endmodule