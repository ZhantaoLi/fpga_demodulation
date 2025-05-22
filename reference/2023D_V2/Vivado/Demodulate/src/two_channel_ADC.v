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
    parameter ADC_width = 10      // ADC����λ��
)(
    input clk_sample,       // ����ʱ��
    input rst_n,            // �͵�ƽ��Ч��λ
    
    //AD1
    input [ADC_width-1:0] ad1_data , //AD1�������ݣ�ȡֵ��Χ0~1023
    output ad1_clk , //AD1 ����ʱ��
    output ad1_oe_n , //AD1 ���ʹ��
    output signed [ADC_width-1:0] ad1_data_std , //  ��AD1�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    //AD2
    input [ADC_width-1:0] ad2_data , //AD2 ����
    output ad2_clk , //AD2 ����ʱ�� 
    output ad2_oe_n , //AD2 ���ʹ��
    output signed [ADC_width-1:0] ad2_data_std //  ��AD2�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    );

// ��~OE��Ϊ0��ADC���ʼ��ʹ�ܣ��������ʼ��Ϊ���ֵ��ͬʱOTRΪ1
assign  ad1_oe_n = 1'b0;
assign  ad2_oe_n = 1'b0;

// ���������ʱ�ӵ��½��أ�ADC���������ڲ���ʱ�ӵ������ر���ģ���ȡ���Ӷ���֤���ݵ��ȶ�
assign ad1_clk = ~clk_sample;
assign ad2_clk = ~clk_sample;

// ���ñ�ADC����λ����һλ���з������洢�޷�����
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

// ��������ADC�����ȥƫ��512���õ��з��ŵ�ʵ�������ƽ����ֵ-512~+511
wire signed [ADC_width : 0] ad1_data_signed;
wire signed [ADC_width : 0] ad2_data_signed;
assign ad1_data_signed = ad1_data_reg - $signed(512);
assign ad2_data_signed = ad2_data_reg - $signed(512);
// ȡ11λ�з������ĵ�ʮλ��Ϊ��׼����
assign ad1_data_std = ad1_data_signed[ADC_width-1 : 0];
assign ad2_data_std = ad2_data_signed[ADC_width-1 : 0];

endmodule
