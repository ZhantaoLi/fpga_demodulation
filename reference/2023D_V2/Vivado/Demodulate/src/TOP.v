`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 13:42:30
// Design Name: 
// Module Name: TOP
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


module TOP(
    input sys_clk_50MHz,
    input sys_rst_n,
    
    //AD1
    input [9:0] ad1_data , //AD1 数据
    input ad1_otr , //输入电压超过量程标志，ADC最大输入电平为±5V，超出该范围时该位为1
    output ad1_clk , //AD1 采样时钟
    output ad1_oe_n , //AD1 输出使能
    //AD2
    input [9:0] ad2_data , //AD2 数据
    input ad2_otr , //输入电压超过量程标志
    output ad2_clk , //AD2 采样时钟 
    output ad2_oe_n //AD2 输出使能
    );

localparam ADC_width = 10;          // ADC输入位数
localparam CIC_out_width = 17;      // CIC滤波器输出位数
localparam Phase_width = 32;        // 相位量化位数
localparam Output_width = 18;       // 模块标准输出位数

wire locked;
wire clk_ADC_6MHz;    // ADC采样时钟
wire clk_ILA_6MHz;    // ILA使用的Debug时钟

// 时钟分频IP核
clk_wiz_0 clk_wiz_u(
    // Clock out ports
    .clk_ADC_6MHz(clk_ADC_6MHz),     // output clk_ila_20MHz
    .clk_ILA_6MHz(clk_ILA_6MHz),     // output clk_ADC_20MHz
    // Status and control signals
    .reset(~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_sys(sys_clk_50MHz));      // input clk_sys

// 两路ADC输入，取值范围-512（-5V）~ +511（+5V）
wire signed [ADC_width-1 : 0] ad1_data_std;
wire signed [ADC_width-1 : 0] ad2_data_std;
two_channel_ADC#(
    .ADC_width(ADC_width)      // ADC输入位数
) ADC_controller (
    .clk_sample(clk_ADC_6MHz),       // 采样时钟
    .rst_n(sys_rst_n),            // 低电平有效复位
    
    //AD1
    .ad1_data(ad1_data) , //AD1输入数据，取值范围0~1023
    .ad1_clk(ad1_clk) , //AD1 采样时钟
    .ad1_oe_n(ad1_oe_n) , //AD1 输出使能
    .ad1_data_std(ad1_data_std) , //  由AD1输入数据得到的标准数据，取值范围-512~+511
    //AD2
    .ad2_data(ad2_data) , //AD2 数据
    .ad2_clk(ad2_clk) , //AD2 采样时钟 
    .ad2_oe_n(ad2_oe_n) , //AD2 输出使能
    .ad2_data_std(ad2_data_std) //  由AD2输入数据得到的标准数据，取值范围-512~+511
    );

wire clk_600kHz;    // 分频得到的600kHz时钟
// CIC滤波器输入输出
reg signed [ADC_width-1 : 0] CIC_I_in;
reg signed [ADC_width-1 : 0] CIC_Q_in;
wire signed [CIC_out_width-1 : 0] CIC_I_out;
wire signed [CIC_out_width-1 : 0] CIC_Q_out;

always@ (posedge clk_ADC_6MHz or negedge sys_rst_n)
begin
    if (!sys_rst_n) begin
        CIC_I_in <= 0;
        CIC_Q_in <= 0;
    end
    else begin
        CIC_I_in <= ad1_data_std;
        CIC_Q_in <= ad2_data_std;
    end
end

// 二级CIC滤波器，将数据从6MHz下采样至600kHz
CIC_decimation_10_fs6MHz decimator_I
               (
                .clk(clk_ADC_6MHz),
                .clk_enable(1'b1),
                .reset(~sys_rst_n),
                .filter_in(CIC_I_in),
                .filter_out(CIC_I_out),
                .ce_out(clk_600kHz)
                );

CIC_decimation_10_fs6MHz decimator_Q
               (
                .clk(clk_ADC_6MHz),
                .clk_enable(1'b1),
                .reset(~sys_rst_n),
                .filter_in(CIC_Q_in),
                .filter_out(CIC_Q_out),
                .ce_out(clk_600kHz)
                );

// AM、PM、FM解调输出
wire signed [Output_width-1 : 0] AM_demod;
wire signed [Output_width-1 : 0] PM_demod;
wire signed [Output_width-1 : 0] FM_demod;
// 解调模块，根据I、Q两路数据进行AM、PM、FM解调
Demodulate#(
    // 输入输出量化位数
    .Input_width(CIC_out_width),
    .Output_width(Output_width),
    // 相位量化位数
    .Phase_width(Phase_width)
)Demodulate_u(
    .clk_in(clk_600kHz),
    .rst(~sys_rst_n),  // 高有效复位
    // 输入I、Q两路数据
    .I(CIC_I_out),
    .Q(CIC_Q_out),
    // 输出AM、PM、FM解调结果
    .AM_demod(AM_demod),
    .PM_demod(PM_demod),
    .FM_demod(FM_demod)
);

ila_0 ila_u (
	.clk(clk_ADC_6MHz), // input wire clk

	.probe0(CIC_I_in), // input wire [9:0]  probe0  
	.probe1(CIC_I_out), // input wire [16:0]  probe1 
	.probe2(CIC_Q_in), // input wire [9:0]  probe2 
	.probe3(CIC_Q_out) // input wire [16:0]  probe3
);


endmodule
