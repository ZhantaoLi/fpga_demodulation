`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 11:45:31
// Design Name: 
// Module Name: FM_DM
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


module FM_DM(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]ADC_DATA,
    output  signed [15:0]FM_base,
    output  signed [15:0]FM_base_DC,
    output  signed [15:0]AC_MIX_data,
    output  signed [15:0]mixdata4,
    output  wire down_clk,
    output  signed [23:0] DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6
    );

    FM_DM_SV test_dmfm(sys_clk,sys_rst_n,ADC_DATA,FM_base,FM_base_DC,AC_MIX_data,mixdata4,down_clk, DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);


endmodule
