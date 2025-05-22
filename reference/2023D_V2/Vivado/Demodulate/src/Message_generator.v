`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 20:30:11
// Design Name: 
// Module Name: Message_generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ���ݶ��ź����͵��жϽ������������������STM32���͵���Ϣ
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Message_generator#
(
    parameter DATA_width = 14,       // ��λ���ݳ���
    parameter MESSAGE_sec_1_width = 45,   // ������Ϣ1�ĳ���
    parameter MESSAGE_sec_2_width = 56   // ������Ϣ2�ĳ���
)(
    input clk,
    input rst_n,
    
    input meas_trig,              // ��ⴥ���źţ�������ռĴ���
    input out_trig,               // ������Ϣ�Ĵ����ź�
    
    input [2:0] signal_type,      // �ź�����
    input signed [DATA_width-1 : 0] A_max,      // �������ֵ
    input signed [DATA_width-1 : 0] A_min,      // ������Сֵ
    
    // ���AM�źţ�����������֮��ľ��룬�Բ�������Ϊ��λ
    input signed [DATA_width-1 : 0] AM_zp_interv,
    // ���FM�źţ�����������֮��ľ��룬���Բ�������Ϊ��λ
    input signed [DATA_width-1 : 0] FM_zp_interv,
    
    // ���ASK�źţ�������NRZ���������½���֮��ļ�����Բ�������Ϊ��λ
    input signed [DATA_width-1 : 0] ASK_edge_interv,
    // PSK�źŰ����������½�����֮��ļ�����Բ�������Ϊ��λ
    input signed [DATA_width-1 : 0] PSK_edge_interv,
    // ���FSK�źţ�˫����NRZ���������½���֮��ļ�����Բ�������Ϊ��λ
    input signed [DATA_width-1 : 0] FSK_edge_interv,
    // FM��2FSK�ź�˲ʱ��λ�ļ��42λ
    input signed [3*DATA_width-1 : 0] Phase_dev,
    
    // ���͵���Ϣ
    output [MESSAGE_sec_1_width - 1 : 0] Message_sec_1,
    output [MESSAGE_sec_2_width - 1 : 0] Message_sec_2
);

// �ź����ͳ����������ź�������Ϣ���͵ľ����ʽ 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // ��ʼֵ����Ч


// ����Ϣ��Ϊ����
reg [2:0] signal_type_sec;          // �ź�����
reg [DATA_width-1 : 0] A_max_sec;   // �������ֵ
reg [DATA_width-1 : 0] A_min_sec;   // ������Сֵ
reg [DATA_width-1 : 0] freq_sec;    // ģ������ź�Ƶ��
reg [DATA_width-1 : 0] bit_rate_sec;    // NRZ������
reg [DATA_width*3-1 : 0] phase_dev_sec;    // ˲ʱ��λ����


// ���ڷֱ�ֵ���ź����ͽ�
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        signal_type_sec <= NA;       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        signal_type_sec <= NA;
    end
    else if (out_trig) begin    // �����б���
        signal_type_sec <= signal_type;
    end
end

// �������ֵ��
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        A_max_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        A_max_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // ���������
        if (signal_type_sec == AM) begin     // ���ź�ΪAMʱ������������ֵ
            A_max_sec <= A_max;
        end
        else begin                           // ������������
            A_max_sec <= {DATA_width{1'b0}};
        end
    end
end

// ������Сֵ��
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        A_min_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        A_min_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // ���������
        if (signal_type_sec == AM) begin     // ���ź�ΪAMʱ�����������Сֵ
            A_min_sec <= A_min;
        end
        else begin                           // ������������
            A_min_sec <= {DATA_width{1'b0}};
        end
    end
end

// ģ���ź�Ƶ�ʽ�
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        freq_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        freq_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // ���������
        case (signal_type_sec)  // ֻ��AM��FM�ź�������Ч���
            AM:      
             freq_sec <= AM_zp_interv;
            FM:
             freq_sec <= FM_zp_interv;
            default:
                freq_sec <= {DATA_width{1'b0}};
        endcase
    end
end

// �����źŷ������ʽ�
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        bit_rate_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        bit_rate_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // ���������
        case (signal_type_sec)  // ֻ��2ASK��2FSK��2PSK�ź�������Ч���
            ASK:     
                bit_rate_sec <= ASK_edge_interv;
            FSK:
                bit_rate_sec <= FSK_edge_interv;              
            PSK:
                bit_rate_sec <= PSK_edge_interv;            
            default:
                bit_rate_sec <= {DATA_width{1'b0}};
        endcase
    end
end

always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        phase_dev_sec <= {DATA_width*3{1'b0}};       
    end
    else if (meas_trig) begin    // ����ź�ʱ����յ�ǰ����
        phase_dev_sec <= {DATA_width*3{1'b0}}; 
    end
    else if (out_trig) begin    // ���������
        case (signal_type_sec)  // ֻ��FM��2FSK�ź�������Ч���
            FM:     
                phase_dev_sec <= Phase_dev;
            FSK:
                phase_dev_sec <= Phase_dev;                    
            default:
                phase_dev_sec <= {DATA_width*3{1'b0}};
        endcase
    end
end

// ��Ϣƴ��
assign Message_sec_1 = {signal_type_sec, phase_dev_sec} << 11;
assign Message_sec_2 = {bit_rate_sec, freq_sec, A_min_sec, A_max_sec};


endmodule
