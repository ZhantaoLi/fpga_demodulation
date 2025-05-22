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


module TOP_new(
    input sys_clk_50MHz,
    input sys_rst_n,
    
    // AD1
    input [9:0] ad1_data , //AD1 ����
    input ad1_otr , //�����ѹ�������̱�־��ADC��������ƽΪ��5V�������÷�Χʱ��λΪ1
    output ad1_clk , //AD1 ����ʱ��
    output ad1_oe_n, //AD1 ���ʹ��
    
    // �������İ�����ע�ⰴ��δ����ʱΪ�ߵ�ƽ�����º�Ϊ�͵�ƽ
    input meas_start_key_n,
    
    // DA
    output da1_clk, //DA ����ʱ��
    output [9:0] da1_data, //DA ��������
    output da2_clk, //DA ����ʱ��
    output [9:0] da2_data, //DA ��������
    
    // message out
    output msg_out,  // ��STM32�����Ϣ
    // LED
    output LED
    );

localparam ADC_width = 10;          // ADC����λ��
localparam Phase_width = 32;        // ��λ����λ��
localparam IO_width = 13;       // ģ���׼���λ��
localparam Demod_width = 14;    // ������λ��
localparam Phase_dev_width = 42;        // ��λƫ��λ��
localparam MESSAGE_sec_1_width = 56;     // ������Ϣ��һ��λ��
localparam MESSAGE_sec_2_width = 56;     // ������Ϣ�ڶ���λ��


// ������ģ��״̬
localparam IDLE = 3'b000;        // ����״̬��δ���¼�ⰴťʱ��״̬
localparam STANDBY = 3'b001;     // �ȴ�״̬�����¼�ⰴť�󣬵ȴ������������20ms
localparam JUDGE = 3'b010;       // �ж�״̬�����ݼ�����ж��ź����ͣ�����4ms
localparam OUTPUT = 3'b011;      // ���ݼ������������Ϣ������DAC�����״̬������20ms
localparam TRANSMIT_1 = 3'b100;    // �������ɵ�һ����Ϣ��״̬������5ms
localparam TRANSMIT_2 = 3'b101;    // �������ɵڶ�����Ϣ��״̬������5ms

wire locked;
wire clk_ADC_36MHz;    // ADC����ʱ��
wire clk_ILA_7_2MHz;    // ILAʹ�õ�Debugʱ��

// ʱ�ӷ�ƵIP��
clk_wiz_0 clk_wiz_u(
    // Clock out ports
    .clk_ADC_36MHz(clk_ADC_36MHz),     // output clk_ila_20MHz
    .clk_ILA_7_2MHz(clk_ILA_7_2MHz),     // output clk_ADC_20MHz
    // Status and control signals
    .reset(~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_sys(sys_clk_50MHz));      // input clk_sys

// ��·ADC���룬ȡֵ��Χ-512��-5V��~ +511��+5V��
wire signed [ADC_width-1 : 0] ad1_data_std;
two_channel_ADC#(
    .ADC_width(ADC_width)      // ADC����λ��
) ADC_controller (
    .clk_sample(clk_ADC_36MHz),       // ����ʱ��
    .rst_n(sys_rst_n),            // �͵�ƽ��Ч��λ
    
    //AD1
    .ad1_data(ad1_data) , //AD1�������ݣ�ȡֵ��Χ0~1023
    .ad1_clk(ad1_clk) , //AD1 ����ʱ��
    .ad1_oe_n(ad1_oe_n) , //AD1 ���ʹ��
    .ad1_data_std(ad1_data_std) , //  ��AD1�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    //AD2
    .ad2_data() , //AD2 ����
    .ad2_clk() , //AD2 ����ʱ�� 
    .ad2_oe_n() , //AD2 ���ʹ��
    .ad2_data_std() //  ��AD2�������ݵõ��ı�׼���ݣ�ȡֵ��Χ-512~+511
    );

wire clk_1_8MHz;    // ��Ƶ�õ���1.8MHzʱ��
wire signed [IO_width-1 :0] sin;
wire signed [IO_width-1 :0] cos;
wire signed [IO_width-1 :0] I;
wire signed [IO_width-1 :0] Q;
// ��Ƶģ������
reg signed [ADC_width-1 : 0] band_in;

always@ (posedge clk_ADC_36MHz or negedge sys_rst_n)
begin
    if (!sys_rst_n) begin
        band_in <= 0;
    end
    else begin
        band_in <= ad1_data_std;
    end
end

// �±�Ƶģ��
IQ_generate
#(
    .Input_width(ADC_width),     // ����λ��
    .Output_width(IO_width),    // ���λ��
    .sine_width(IO_width),      // ���Ҳ�λ����13λ�з��ţ����˲�������һ��
    .PH_width(Phase_width),      // ��λ����λ����Ĭ��32
    .inter_freq(2)      // ��Ƶ����λMHz����ʾ����FM���ز���Ƶ�ʣ�С�ڲ���Ƶ�ʵ��ķ�֮һ����25MHz
) IQ_DownConversion(
    .clk_36MHz(clk_ADC_36MHz),       // ����ʱ��100MHz����ʾ��ͨ�źŵĲ���Ƶ��
    .rst(~sys_rst_n),          
    .band_sig_in(band_in),      // �����ͨ�źţ�����Ƶ��100MHz
    
    .sine_wav(sin),
    .cosine_wav(cos),
    .comp_env_I(I),   // �����ͨ�źŸ�����ʵ��
    .comp_env_Q(Q),    // �����ͨ�źŸ������鲿

    .clk_1_8MHz(clk_1_8MHz)                   // �����Ƶʱ��
);

wire [2:0] cur_state;     // ��ǰ״̬
wire meas_trigger;        // ������ģ�鿪ʼ�����ź�
wire judge_trigger;       // �����ź������ж�ģ����ź�
wire output_trigger;      // ������ģ�鿪ʼ������ź�
wire transmit_trigger;    // ����������Ϣģ����ź� 

TOP_FSM FSM_u(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    .meas_start_key_n(meas_start_key_n),     // ������ⰴ��������Ч
    
    .meas_trigger(meas_trigger),        // ������ģ�鿪ʼ�����ź�
    .judge_trigger(judge_trigger),       // �����ź������ж�ģ����ź�
    .output_trigger(output_trigger),       // ������ģ�鿪ʼ������ź�
    .transmit_trigger(transmit_trigger),     // ����������Ϣģ����ź� 
    .state(cur_state)          // ��ǰ״̬��Debug��
    );
    
// AM��PM��FM������
wire signed [Demod_width-1 : 0] AM_demod;
wire signed [Demod_width-1 : 0] PM_demod;
wire signed [Demod_width-1 : 0] FM_demod;
wire signed [Phase_dev_width-1 : 0] Phase_dev;
wire signed [Phase_dev_width-1 : 0] Phase_max;
wire signed [Phase_dev_width-1 : 0] Phase_min;


// ���ģ�飬����I��Q��·���ݽ���AM��PM��FM���
Demodulate#(
    // �����������λ��
    .Input_width(IO_width),
    .Output_width(Demod_width),
    // ��λ����λ��
    .Phase_width(Phase_width),
    .Phase_dev_width(Phase_dev_width)
)Demodulate_u(
    .clk_in(clk_1_8MHz),
    .rst(~sys_rst_n),  // ����Ч��λ
    .meas_trigger(meas_trigger),
    // ����I��Q��·����
    .I(I),
    .Q(Q),
    // ���AM��PM��FM������
    .AM_demod(AM_demod),
    .PM_demod(PM_demod),
    .FM_demod(FM_demod),
    // �����ƫ
    .Phase_dev_r(Phase_dev),
    .Phase_max(Phase_max),
    .Phase_min(Phase_min)
);

wire signed [Demod_width-1 : 0] FM_demod_filtered;      // Ϊ��ȥ������õ���FM�ź��е���������FM������ͨ��һͨ��20kHz�ĵ�ͨ�˲���
LPF_20kHz_fs1_8MHz LPF_1
               (
                .clk(clk_1_8MHz),
                .clk_enable(1'b1),
                .reset(~sys_rst_n),
                .filter_in(FM_demod),
                .filter_out(FM_demod_filtered)
                );
reg signed [Demod_width-1 : 0] FM_demod_filtered_r;     
always@ (posedge clk_1_8MHz or negedge sys_rst_n)
begin
    if (!sys_rst_n) begin
        FM_demod_filtered_r <= 0;
    end
    else begin
        FM_demod_filtered_r <= FM_demod_filtered;
    end
end

wire A_const;
wire signed [Demod_width-1 :0] A_max;
wire signed [Demod_width-1 :0] A_min;
wire A_square;
wire signed [Demod_width-1 :0] A_edge_interv;
wire signed [Demod_width-1 :0] A_edge_interv_homo;
wire signed [Demod_width-1 :0] A_freq;

wire Freq_const;     // �������ֵ����Ƶ�Ƿ�Ϊ����
wire Freq_square;
wire signed [Demod_width-1 :0] Freq_edge_interv;
wire signed [Demod_width-1 :0] F_freq;

// ���ɵ��ź������жϡ���������ģ��
Judge_and_calculate#(
    .IO_width(Demod_width)     // ������λ������������λ��
)jcu(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    .meas_trig(meas_trigger),    // �����ź�
    
    .AM_demod(AM_demod),
    .FM_demod(FM_demod_filtered_r),
    
    .A_const(A_const),     // �������ֵ�������Ƿ�Ϊ����
    .A_max(A_max),       // �������ֵ
    .A_min(A_min),       // ������Сֵ
    .A_freq(A_freq),
    
     .A_square(A_square),      // �������ֵ�������Ƿ�Ϊ����
     .A_edge_interv(A_edge_interv),    // �������С������
     .A_edge_interv_homo(A_edge_interv_homo),            // �����ͬ�ֱ��ؼ��
    
     .Freq_const(Freq_const),     // �������ֵ����Ƶ�Ƿ�Ϊ����
     .Freq_square(Freq_square),   // �������ֵ����Ƶ�Ƿ�Ϊ����
     .Freq_edge_interv(Freq_edge_interv),    // ��Ƶ�������С�����������ֱ��ؼ����
     .F_freq(F_freq)
);


wire [2:0] signal_type;     // �жϵõ����ź�����
// �ź������ж�ģ��
Signal_discrim #(
    .IO_width(Demod_width)
)discrim_u(
    .clk(clk_1_8MHz),      
    .rst_n(sys_rst_n),     // ����Ч��λ
    
    .meas_trigger(meas_trigger),         // ��ʼ���Ĵ����źţ�����Ч
    .judge_trigger(judge_trigger),        // ��ʼ�жϵĴ����źţ�����Ч
    
    .A_const(A_const),  // �����Ƿ�Ϊֱ��
    .A_square(A_square),      // �����Ƿ�Ϊ����
    .A_edge_interv(A_edge_interv),    // �������С�����������ֱ��ؼ����
    
    
    .F_const(Freq_const),  // Ƶ���Ƿ�Ϊֱ��
    .F_square(Freq_square),     // Ƶ���Ƿ�Ϊ����
    
    .signal_type(signal_type)        // ����ź����࣬��ʽ����
    );
            
reg signed [Demod_width-1 : 0] FM_demod_filtered_delay;
always@ (posedge clk_1_8MHz or negedge sys_rst_n)
begin
    if (!sys_rst_n) begin
        FM_demod_filtered_delay <= 0;
    end
    else begin
        FM_demod_filtered_delay <= FM_demod_filtered_r;
    end
end
wire signed [Demod_width-1 : 0] FM_demod_diff;
assign FM_demod_diff = FM_demod_filtered_r - FM_demod_filtered_delay;

//reg signed [Demod_width-1 : 0] AM_demod_delay;
//always@ (posedge clk_1_8MHz or negedge sys_rst_n)
//begin
//    if (!sys_rst_n) begin
//        AM_demod_delay <= 0;
//    end
//    else begin
//        AM_demod_delay <= AM_demod;
//    end
//end
//wire signed [Demod_width-1 : 0] AM_demod_diff;
//assign AM_demod_diff = AM_demod - AM_demod_delay;

wire [MESSAGE_sec_1_width-1 : 0] Message_sec_1;     // ���ݼ��������ɵĵ�һ����Ϣ
wire [MESSAGE_sec_2_width-1 : 0] Message_sec_2;     // ���ݼ��������ɵĵڶ�����Ϣ
// ������Ϣģ��
Message_generator#
(
    .DATA_width(Demod_width),       // ��λ���ݳ���
    .MESSAGE_sec_1_width(MESSAGE_sec_1_width),       // ������Ϣ��һ�ڵĳ���
    .MESSAGE_sec_2_width(MESSAGE_sec_2_width)       // ������Ϣ�ڶ��ڵĳ���

)msg_gen(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    
    .meas_trig(meas_trigger),              // ��ⴥ���źţ�������ռĴ���
    .out_trig(output_trigger),             // ������Ϣ�Ĵ����ź�
    
    .signal_type(signal_type),      // �ź�����
    .A_max(A_max),      // �������ֵ
    .A_min(A_min),      // ������Сֵ
    
    // ���AM�źţ�����������֮��ľ��룬�Բ�������Ϊ��λ
    .AM_zp_interv(A_freq),
    // ���FM�źţ�����������֮��ľ��룬���Բ�������Ϊ��λ
    .FM_zp_interv(F_freq),
    
    // ���ASK�źţ�������NRZ���������½���֮��ļ�����Բ�������Ϊ��λ
    .ASK_edge_interv(A_edge_interv),
    // PSK�źŰ����������½�����֮��ļ�����Բ�������Ϊ��λ
    .PSK_edge_interv(A_edge_interv_homo),
    // ���FSK�źţ�˫����NRZ���������½���֮��ļ�����Բ�������Ϊ��λ
    .FSK_edge_interv(Freq_edge_interv),
    // FM��2FSK�ź�˲ʱ��λ�ļ��42λ
    .Phase_dev(Phase_dev),
    
    // ���͵���Ϣ
    .Message_sec_1(Message_sec_1),
    .Message_sec_2(Message_sec_2)
);

wire signed [Demod_width-1 : 0] dat_DAC;        // ѡ�������DAC������
// �����ź������жϽ����ѡ��DAC���������
DAC_selector#(
    .IO_width(Demod_width)     // �������λ��
) selector_u(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    
    .meas_trigger(meas_trigger),         // ��ʼ�����������壬�����嵽��ʱ����DAC���
    .cal_trigger(judge_trigger),         // ��ʼ�жϴ������壬�����嵽��ʱ�ı�AGC����
    .out_trigger(output_trigger),        // ��ʼ����������壬�����嵽��ʱѡ��DAC���
    
    .signal_type(signal_type),                    // �ź����� 
    .AM_demod(AM_demod),     // AM������
    .FM_demod(FM_demod_filtered_r),     // FM������
    .PM_demod(PM_demod),     // PM������
    
    .dat_DAC(dat_DAC)      // ��DAC���������
);

wire [MESSAGE_sec_1_width-1 : 0] Message;       // ��ǰ���͵���Ϣ
assign Message = (cur_state == TRANSMIT_1) ? Message_sec_1 : ((cur_state == TRANSMIT_2) ? Message_sec_2 : {MESSAGE_sec_1_width{1'b0}});     // ѡ���͵���Ϣ

// ��Ϣ����ģ��
Communicate#(
    .CLK_DIV(24),                //  ʱ�ӷ�Ƶϵ����ֻ֧��ż����Ƶ����Ƶ��ʱ�Ӿ����������ݵ�����
                                 //  ����ʱ��Ƶ��1.8MHz����Ƶ��ͨ������75kbps
                                 //  ����100bitԼ��
    .BIT_WIDTH(MESSAGE_sec_1_width)        //  ���͵ı�������

)commu_u(
    .clk(clk_1_8MHz),        //  ����ʱ��
    .rst_n(sys_rst_n),      //  ��λ���͵�ƽ��Ч
    .dready(transmit_trigger),    //  ����׼������źţ�һ�����弴�ɣ���Ҫ��clkͬ��
    .dat(Message),         //  Ҫ���͵�Ƶ������
    
    .led(LED),        //  �۲��ã�ÿ��һ�������ݾͷ�תһ��
    .sda(msg_out)         //  �����ߣ���Ҫ��stm32�ļ��IO������
    );
    
two_channel_dac#(
    .Input_width(Demod_width),   // ����λ����Ĭ��13λ
    .MODE("OUTPUT")
)DAC_u(
    .clk_DAC(clk_1_8MHz),    // ����DAC�����ʱ��
    .rst(~sys_rst_n),        // ϵͳ��λ���ߵ�ƽ��Ч
    
    // ��Ҫ��DAC�����ԭʼ���ݣ�ȡֵ-4096~+4095
    .DAC1_data(dat_DAC),
    .DAC2_data(1'b0),
    
    .Debug_1(),
    .Debug_2(),
    
    //DA �ӿڣ�DAC��Ч����������Ϊ�޷��ŵ�0~1023
    .da1_clk(da1_clk), //DA1 ����ʱ��
    .da1_data(da1_data), //DA1��������
    .da2_clk(da2_clk), //DA2 ����ʱ��
    .da2_data(da2_data) //DA2 ��������
    );


ila_0 ila_u (
	.clk(clk_ILA_7_2MHz), // input wire clk

	.probe0(Phase_dev), // input wire [41:0]  probe0  
	.probe1(A_edge_interv), // input wire [13:0]  probe1 
	.probe2(Freq_edge_interv), // input wire [13:0]  probe2 
	.probe3(A_edge_interv_homo), // input wire [13:0]  probe3 
	.probe4(A_freq), // input wire [13:0]  probe4 
	.probe5(F_freq), // input wire [13:0]  probe5 
	.probe6(A_min), // input wire [13:0]  probe6 
	.probe7(A_max), // input wire [13:0]  probe7 
	.probe8(signal_type) // input wire [2:0]  probe8
);

endmodule