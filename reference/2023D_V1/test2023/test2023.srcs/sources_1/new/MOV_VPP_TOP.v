`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 08:45:24
// Design Name: 
// Module Name: MOV_VPP_TOP
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


module MOV_VPP_TOP(
    input sys_clk,
    input sys_rst_n,
    input signed[15:0]indata,
    output  signed [16:0]VPP_data,
    output  signed[15:0]data_max,data_min,
    output  clk1k
    );

    MOV_VPP#(8)test_vpp(sys_clk,sys_rst_n,indata,VPP_data,data_max,data_min,clk1k);
endmodule
