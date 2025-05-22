`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 18:33:38
// Design Name: 
// Module Name: DAC_selector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: �����ź������жϽ����ѡ���Ӧ�Ľ�������DAC���
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DAC_selector#(
    parameter IO_width = 14     // �������λ��
)(
    input clk,
    input rst_n,
    
    input meas_trigger,         // ��ʼ�����������壬�����嵽��ʱ����DAC���
    input cal_trigger,          // ��ʼ�жϴ������壬�����嵽��ʱ�ı�AGC����
    input out_trigger,          // ��ʼ����������壬�����嵽��ʱѡ��DAC���
    
    input [2:0] signal_type,                    // �ź����� 
    input signed [IO_width-1 : 0] AM_demod,     // AM������
    input signed [IO_width-1 : 0] FM_demod,     // FM������
    input signed [IO_width-1 : 0] PM_demod,     // PM������
    
    output signed [IO_width-1 : 0] dat_DAC      // ��DAC���������
);

// �ź����ͳ����������ź�������Ϣ���͵ľ����ʽ 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // ��ʼֵ����Ч

wire signed [IO_width-1 : 0] ASK_out;       // �о����ASK���
ASK_decision
#(
    .IO_width(IO_width),
    .threshold(14'd3500)      // �о�����
)dec_u( 
    .clk(clk),
    .rst_n(rst_n),
    .AM_demod(AM_demod),
    
    .ASK_out(ASK_out)       // �о����ASK���
);

wire signed [IO_width-1 : 0] AGC_out;       // ������ƺ��FM��2FSK���
AGC#(
    .IO_width(IO_width)
)AGC_u(
    .clk(clk),
    .rst_n(rst_n),
    
    .meas_trig(meas_trigger),    // ������������
    .cal_trig(cal_trigger),     // �������津������
    
    .FM_demod(FM_demod),
    .FM_AGC_out(AGC_out)
    );

localparam TTL_high = 14'd5500;     // �о���ߵ�ƽ
wire signed [IO_width-1 : 0] FSK_out;
assign FSK_out = (AGC_out[IO_width-1] == 1'b1) ? $signed(-TTL_high) : $signed(TTL_high);     // �����о�

wire signed [IO_width-1 : 0] AM_AC;       // ��ֱ���AM���
AM_DC_Isolator #(
    .IO_width(IO_width)
)DC_Isolator_u(
    .clk(clk),
    .rst_n(rst_n),
    
    .meas_trig(meas_trigger),    // ������������
    .cal_trig(cal_trigger),     // ����ֱ��������������
    
    .AM_demod(AM_demod),     // ����AM������
    .AM_AC(AM_AC)        // ���AM��ֱ���
    );

wire signed [IO_width-1 : 0] PSK_out;       // ��ԭ��PSK�ź�
// ����PSK�źŰ�������仹ԭPSK�źţ������������λģ��
PSK_Judge #(
    .INPUT_WIDTH        (IO_width),         //  ����λ��
    .OUT_WIDTH          (IO_width),         //  ���λ��
    .HIGH_VOL           (TTL_high),    //  �ߵ�ƽ��ֵ
    .LOW_VOL            (-TTL_high),      //  �͵�ƽ��ֵ
    .COMP_NUM           (800),       //  �����о���ֵ��С�������ֵ�����䲻���ж�Ϊ����
    .MIN_DL_TIME        (32'd100)     //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
)u_psk_judge_01(
    .clk        (clk),
    .rst_n      (rst_n),
    .enable     (1'b1),
    .dat        (AM_demod),
    
    .out        (PSK_out)
);

reg [2:0] signal_type_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        signal_type_r <= NA;      // Ĭ��NA
    end
    else if (meas_trigger) begin
        signal_type_r <= NA;      // ��������ʱ����ΪNA
    end
    else if (out_trigger) begin     // �������ʱ����ȡ�ź�����
        signal_type_r <= signal_type;
    end
end

reg signed [IO_width-1 : 0] dat_DAC_r;
assign dat_DAC = dat_DAC_r;

always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        dat_DAC_r <= {IO_width{1'b0}};      // Ĭ�������
    end
//    else if (meas_trigger) begin            // ����������ʱ����ζ�Ÿı��˵��Ʒ�ʽ����ʱ��DAC�����Ϊ��
//        dat_DAC_r <= {IO_width{1'b0}};
//    end
    else begin             // ���������ʱ�������ź�����ѡ��DAC�������
        case (signal_type_r) 
            CW:     // �ź�Ϊ�����ز��������
                dat_DAC_r <= {IO_width{1'b0}};
            AM:     // AM�ź���� ��ֱ��� AM���·
                dat_DAC_r <= AM_AC;
            FM:     // FM�ź����  ����AGC��  FM���·
                dat_DAC_r <= AGC_out;
            ASK:    // ASK�ź����   AM����о�·
                dat_DAC_r <= ASK_out;
            FSK:     // FSK�ź����  ����AGC��  FM���·  
                dat_DAC_r <= FSK_out;  
            PSK:     // PSK�ź����   ����������  PM���·
                dat_DAC_r <= PSK_out;  
            NA:      // �ź�ΪNAʱ�����
                dat_DAC_r <= {IO_width{1'b0}}; 
        endcase
    end
end



endmodule
