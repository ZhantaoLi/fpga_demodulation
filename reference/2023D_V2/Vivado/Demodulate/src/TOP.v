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
    input [9:0] ad1_data , //AD1 ����
    input ad1_otr , //�����ѹ�������̱�־��ADC��������ƽΪ��5V�������÷�Χʱ��λΪ1
    output ad1_clk , //AD1 ����ʱ��
    output ad1_oe_n , //AD1 ���ʹ��
    //AD2
    input [9:0] ad2_data , //AD2 ����
    input ad2_otr , //�����ѹ�������̱�־
    output ad2_clk , //AD2 ����ʱ�� 
    output ad2_oe_n //AD2 ���ʹ��
    );

localparam ADC_width = 10;          // ADC����λ��
localparam CIC_out_width = 17;      // CIC�˲������λ��
localparam Phase_width = 32;        // ��λ����λ��
localparam Output_width = 18;       // ģ���׼���λ��

wire locked;
wire clk_ADC_6MHz;    // ADC����ʱ��
wire clk_ILA_6MHz;    // ILAʹ�õ�Debugʱ��

// ʱ�ӷ�ƵIP��
clk_wiz_0 clk_wiz_u(
    // Clock out ports
    .clk_ADC_6MHz(clk_ADC_6MHz),     // output clk_ila_20MHz
    .clk_ILA_6MHz(clk_ILA_6MHz),     // output clk_ADC_20MHz
    // Status and control signals
    .reset(~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_sys(sys_clk_50MHz));      // input clk_sys

// ��·ADC���룬ȡֵ��Χ-512��-5V��~ +511��+5V��
wire signed [ADC_width-1 : 0] ad1_data_std;
wire signed [ADC_width-1 : 0] ad2_data_std;
two_channel_ADC#(
    .ADC_width(ADC_width)      // ADC����λ��
) ADC_controller (
    .clk_sample(clk_ADC_6MHz),       // ����ʱ��
    .rst_n(sys_rst_n),            // �͵�ƽ��Ч��λ
    
    //AD1
    .ad1_data(ad1_data) , //AD1�������ݣ�ȡֵ��Χ0~1023
    .ad1_clk(ad1_clk) , //AD1 ����ʱ��
    .ad1_oe_n(ad1_oe_n) , //AD1 ���ʹ��
    .ad1_data_std(ad1_data_std) , //  ��AD1�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    //AD2
    .ad2_data(ad2_data) , //AD2 ����
    .ad2_clk(ad2_clk) , //AD2 ����ʱ�� 
    .ad2_oe_n(ad2_oe_n) , //AD2 ���ʹ��
    .ad2_data_std(ad2_data_std) //  ��AD2�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    );

wire clk_600kHz;    // ��Ƶ�õ���600kHzʱ��
// CIC�˲����������
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

// ����CIC�˲����������ݴ�6MHz�²�����600kHz
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

// AM��PM��FM������
wire signed [Output_width-1 : 0] AM_demod;
wire signed [Output_width-1 : 0] PM_demod;
wire signed [Output_width-1 : 0] FM_demod;
// ���ģ�飬����I��Q��·���ݽ���AM��PM��FM���
Demodulate#(
    // �����������λ��
    .Input_width(CIC_out_width),
    .Output_width(Output_width),
    // ��λ����λ��
    .Phase_width(Phase_width)
)Demodulate_u(
    .clk_in(clk_600kHz),
    .rst(~sys_rst_n),  // ����Ч��λ
    // ����I��Q��·����
    .I(CIC_I_out),
    .Q(CIC_Q_out),
    // ���AM��PM��FM������
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
