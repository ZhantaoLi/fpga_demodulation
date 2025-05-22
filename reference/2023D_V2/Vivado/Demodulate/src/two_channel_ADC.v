`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/01 13:02:04
// Design Name: 
// Module Name: two_channel_ADC
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


module two_channel_ADC
#(
    parameter ADC_width = 10      // ADC输入位数
)(
    input clk_sample,       // 采样时钟
    input rst_n,            // 低电平有效复位
    
    //AD1
    input [ADC_width-1:0] ad1_data , //AD1输入数据，取值范围0~1023
    output ad1_clk , //AD1 采样时钟
    output ad1_oe_n , //AD1 输出使能
    output signed [ADC_width-1:0] ad1_data_std , //  由AD1输入数据得到的标准数据，取值范围-512~+511
    //AD2
    input [ADC_width-1:0] ad2_data , //AD2 数据
    output ad2_clk , //AD2 采样时钟 
    output ad2_oe_n , //AD2 输出使能
    output signed [ADC_width-1:0] ad2_data_std //  由AD2输入数据得到的标准数据，取值范围-512~+511
    );

// 将~OE置为0，ADC输出始终使能，否则输出始终为最大值，同时OTR为1
assign  ad1_oe_n = 1'b0;
assign  ad2_oe_n = 1'b0;

// 在输入采样时钟的下降沿，ADC采样；而在采样时钟的上升沿被该模块读取，从而保证数据的稳定
assign ad1_clk = ~clk_sample;
assign ad2_clk = ~clk_sample;

// 利用比ADC输入位数多一位的有符号数存储无符号数
reg signed [ADC_width : 0] ad1_data_reg;
reg signed [ADC_width : 0] ad2_data_reg;

always @(posedge clk_sample or negedge rst_n)
begin
    if(!rst_n) begin
        ad1_data_reg <= 0;
        ad2_data_reg <= 0;
    end
    else begin
        ad1_data_reg <= ad1_data;
        ad2_data_reg <= ad2_data;
    end
end

// 将恒正的ADC输入减去偏置512，得到有符号的实际输入电平量化值-512~+511
wire signed [ADC_width : 0] ad1_data_signed;
wire signed [ADC_width : 0] ad2_data_signed;
assign ad1_data_signed = ad1_data_reg - $signed(512);
assign ad2_data_signed = ad2_data_reg - $signed(512);
// 取11位有符号数的第十位作为标准输入
assign ad1_data_std = ad1_data_signed[ADC_width-1 : 0];
assign ad2_data_std = ad2_data_signed[ADC_width-1 : 0];

endmodule
