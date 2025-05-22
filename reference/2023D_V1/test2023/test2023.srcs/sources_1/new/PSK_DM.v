`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 10:19:13
// Design Name: 
// Module Name: PSK_DM
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


module PSK_DM(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]ADC_DATA,
    output  signed [15:0]FM_base,
    output  signed [15:0]FM_base_DC,
    output  signed [15:0]AC_MIX_data,
    output  down_clk
    );
    FM_DM_SV2 test_dmfm(sys_clk,sys_rst_n,ADC_DATA,FM_base,FM_base_DC,AC_MIX_data,down_clk);
endmodule
