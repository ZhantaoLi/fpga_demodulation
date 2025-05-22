`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 19:39:03
// Design Name: 
// Module Name: AMP_test
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


module AMP_test(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]indata,
    output reg signed [15:0]outdata
    );
    always @(posedge sys_clk) begin
        outdata<=indata<<<3;
    end
endmodule
