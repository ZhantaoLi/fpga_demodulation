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
    input [9:0] ad1_data , //AD1 数据
    input ad1_otr , //输入电压超过量程标志，ADC最大输入电平为±5V，超出该范围时该位为1
    output ad1_clk , //AD1 采样时钟
    output ad1_oe_n, //AD1 输出使能
    
    // 启动检测的按键，注意按键未按下时为高电平，按下后为低电平
    input meas_start_key_n,
    
    // DA
    output da1_clk, //DA 采样时钟
    output [9:0] da1_data, //DA 采样数据
    output da2_clk, //DA 采样时钟
    output [9:0] da2_data, //DA 采样数据
    
    // message out
    output msg_out,  // 向STM32输出消息
    // LED
    output LED
    );

localparam ADC_width = 10;          // ADC输入位数
localparam Phase_width = 32;        // 相位量化位数
localparam IO_width = 13;       // 模块标准输出位数
localparam Demod_width = 14;    // 解调结果位数
localparam Phase_dev_width = 42;        // 相位偏差位数
localparam MESSAGE_sec_1_width = 56;     // 发送消息第一节位数
localparam MESSAGE_sec_2_width = 56;     // 发送消息第二节位数


// 定义主模块状态
localparam IDLE = 3'b000;        // 空闲状态，未按下检测按钮时的状态
localparam STANDBY = 3'b001;     // 等待状态，按下检测按钮后，等待检测结果，持续20ms
localparam JUDGE = 3'b010;       // 判断状态，根据检测结果判断信号类型，持续4ms
localparam OUTPUT = 3'b011;      // 根据检测结果，生成消息并设置DAC输出的状态，持续20ms
localparam TRANSMIT_1 = 3'b100;    // 发送生成第一节消息的状态，持续5ms
localparam TRANSMIT_2 = 3'b101;    // 发送生成第二节消息的状态，持续5ms

wire locked;
wire clk_ADC_36MHz;    // ADC采样时钟
wire clk_ILA_7_2MHz;    // ILA使用的Debug时钟

// 时钟分频IP核
clk_wiz_0 clk_wiz_u(
    // Clock out ports
    .clk_ADC_36MHz(clk_ADC_36MHz),     // output clk_ila_20MHz
    .clk_ILA_7_2MHz(clk_ILA_7_2MHz),     // output clk_ADC_20MHz
    // Status and control signals
    .reset(~sys_rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_sys(sys_clk_50MHz));      // input clk_sys

// 两路ADC输入，取值范围-512（-5V）~ +511（+5V）
wire signed [ADC_width-1 : 0] ad1_data_std;
two_channel_ADC#(
    .ADC_width(ADC_width)      // ADC输入位数
) ADC_controller (
    .clk_sample(clk_ADC_36MHz),       // 采样时钟
    .rst_n(sys_rst_n),            // 低电平有效复位
    
    //AD1
    .ad1_data(ad1_data) , //AD1输入数据，取值范围0~1023
    .ad1_clk(ad1_clk) , //AD1 采样时钟
    .ad1_oe_n(ad1_oe_n) , //AD1 输出使能
    .ad1_data_std(ad1_data_std) , //  由AD1输入数据得到的标准数据，取值范围-512~+511
    //AD2
    .ad2_data() , //AD2 数据
    .ad2_clk() , //AD2 采样时钟 
    .ad2_oe_n() , //AD2 输出使能
    .ad2_data_std() //  由AD2输入数据得到的标准数据，取值范围-512~+511
    );

wire clk_1_8MHz;    // 分频得到的1.8MHz时钟
wire signed [IO_width-1 :0] sin;
wire signed [IO_width-1 :0] cos;
wire signed [IO_width-1 :0] I;
wire signed [IO_width-1 :0] Q;
// 混频模块输入
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

// 下变频模块
IQ_generate
#(
    .Input_width(ADC_width),     // 输入位数
    .Output_width(IO_width),    // 输出位数
    .sine_width(IO_width),      // 正弦波位数，13位有符号，与滤波器保持一致
    .PH_width(Phase_width),      // 相位量化位数，默认32
    .inter_freq(2)      // 中频，单位MHz，表示输入FM波载波的频率，小于采样频率的四分之一，即25MHz
) IQ_DownConversion(
    .clk_36MHz(clk_ADC_36MHz),       // 输入时钟100MHz，表示带通信号的采样频率
    .rst(~sys_rst_n),          
    .band_sig_in(band_in),      // 输入带通信号，采样频率100MHz
    
    .sine_wav(sin),
    .cosine_wav(cos),
    .comp_env_I(I),   // 输出带通信号复包络实部
    .comp_env_Q(Q),    // 输出带通信号复包络虚部

    .clk_1_8MHz(clk_1_8MHz)                   // 输出分频时钟
);

wire [2:0] cur_state;     // 当前状态
wire meas_trigger;        // 触发各模块开始检测的信号
wire judge_trigger;       // 触发信号类型判断模块的信号
wire output_trigger;      // 触发各模块开始输出的信号
wire transmit_trigger;    // 触发发送消息模块的信号 

TOP_FSM FSM_u(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    .meas_start_key_n(meas_start_key_n),     // 启动检测按键，低有效
    
    .meas_trigger(meas_trigger),        // 触发各模块开始检测的信号
    .judge_trigger(judge_trigger),       // 触发信号类型判断模块的信号
    .output_trigger(output_trigger),       // 触发各模块开始输出的信号
    .transmit_trigger(transmit_trigger),     // 触发发送消息模块的信号 
    .state(cur_state)          // 当前状态，Debug用
    );
    
// AM、PM、FM解调输出
wire signed [Demod_width-1 : 0] AM_demod;
wire signed [Demod_width-1 : 0] PM_demod;
wire signed [Demod_width-1 : 0] FM_demod;
wire signed [Phase_dev_width-1 : 0] Phase_dev;
wire signed [Phase_dev_width-1 : 0] Phase_max;
wire signed [Phase_dev_width-1 : 0] Phase_min;


// 解调模块，根据I、Q两路数据进行AM、PM、FM解调
Demodulate#(
    // 输入输出量化位数
    .Input_width(IO_width),
    .Output_width(Demod_width),
    // 相位量化位数
    .Phase_width(Phase_width),
    .Phase_dev_width(Phase_dev_width)
)Demodulate_u(
    .clk_in(clk_1_8MHz),
    .rst(~sys_rst_n),  // 高有效复位
    .meas_trigger(meas_trigger),
    // 输入I、Q两路数据
    .I(I),
    .Q(Q),
    // 输出AM、PM、FM解调结果
    .AM_demod(AM_demod),
    .PM_demod(PM_demod),
    .FM_demod(FM_demod),
    // 最大相偏
    .Phase_dev_r(Phase_dev),
    .Phase_max(Phase_max),
    .Phase_min(Phase_min)
);

wire signed [Demod_width-1 : 0] FM_demod_filtered;      // 为了去除解调得到的FM信号中的噪声，将FM解调结果通过一通带20kHz的低通滤波器
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

wire Freq_const;     // 输出布尔值，鉴频是否为常数
wire Freq_square;
wire signed [Demod_width-1 :0] Freq_edge_interv;
wire signed [Demod_width-1 :0] F_freq;

// 集成的信号类型判断、参数计算模块
Judge_and_calculate#(
    .IO_width(Demod_width)     // 解调结果位数，生成数据位数
)jcu(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    .meas_trig(meas_trigger),    // 触发信号
    
    .AM_demod(AM_demod),
    .FM_demod(FM_demod_filtered_r),
    
    .A_const(A_const),     // 输出布尔值，包络是否为常数
    .A_max(A_max),       // 包络最大值
    .A_min(A_min),       // 包络最小值
    .A_freq(A_freq),
    
     .A_square(A_square),      // 输出布尔值，包络是否为方波
     .A_edge_interv(A_edge_interv),    // 包络的最小脉宽间隔
     .A_edge_interv_homo(A_edge_interv_homo),            // 包络的同种边沿间隔
    
     .Freq_const(Freq_const),     // 输出布尔值，鉴频是否为常数
     .Freq_square(Freq_square),   // 输出布尔值，鉴频是否为方波
     .Freq_edge_interv(Freq_edge_interv),    // 鉴频结果的最小脉宽间隔（异种边沿间隔）
     .F_freq(F_freq)
);


wire [2:0] signal_type;     // 判断得到的信号种类
// 信号种类判断模块
Signal_discrim #(
    .IO_width(Demod_width)
)discrim_u(
    .clk(clk_1_8MHz),      
    .rst_n(sys_rst_n),     // 低有效复位
    
    .meas_trigger(meas_trigger),         // 开始检测的触发信号，高有效
    .judge_trigger(judge_trigger),        // 开始判断的触发信号，高有效
    
    .A_const(A_const),  // 包络是否为直流
    .A_square(A_square),      // 包络是否为方波
    .A_edge_interv(A_edge_interv),    // 包络的最小脉宽间隔（异种边沿间隔）
    
    
    .F_const(Freq_const),  // 频率是否为直流
    .F_square(Freq_square),     // 频率是否为方波
    
    .signal_type(signal_type)        // 输出信号种类，格式见下
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

wire [MESSAGE_sec_1_width-1 : 0] Message_sec_1;     // 根据计算结果生成的第一节消息
wire [MESSAGE_sec_2_width-1 : 0] Message_sec_2;     // 根据计算结果生成的第二节消息
// 生成消息模块
Message_generator#
(
    .DATA_width(Demod_width),       // 单位数据长度
    .MESSAGE_sec_1_width(MESSAGE_sec_1_width),       // 发送消息第一节的长度
    .MESSAGE_sec_2_width(MESSAGE_sec_2_width)       // 发送消息第二节的长度

)msg_gen(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    
    .meas_trig(meas_trigger),              // 检测触发信号，用于清空寄存器
    .out_trig(output_trigger),             // 生成消息的触发信号
    
    .signal_type(signal_type),      // 信号类型
    .A_max(A_max),      // 包络最大值
    .A_min(A_min),      // 包络最小值
    
    // 解调AM信号，输出相邻零点之间的距离，以采样点数为单位
    .AM_zp_interv(A_freq),
    // 解调FM信号，输出相邻零点之间的距离，，以采样点数为单位
    .FM_zp_interv(F_freq),
    
    // 解调ASK信号，单极性NRZ码上升、下降沿之间的间隔，以采样点数为单位
    .ASK_edge_interv(A_edge_interv),
    // PSK信号包络上升（下降）沿之间的间隔，以采样点数为单位
    .PSK_edge_interv(A_edge_interv_homo),
    // 解调FSK信号，双极性NRZ码上升、下降沿之间的间隔，以采样点数为单位
    .FSK_edge_interv(Freq_edge_interv),
    // FM、2FSK信号瞬时相位的极差，42位
    .Phase_dev(Phase_dev),
    
    // 发送的消息
    .Message_sec_1(Message_sec_1),
    .Message_sec_2(Message_sec_2)
);

wire signed [Demod_width-1 : 0] dat_DAC;        // 选择输出给DAC的数据
// 根据信号类型判断结果，选择DAC输出的数据
DAC_selector#(
    .IO_width(Demod_width)     // 输入输出位数
) selector_u(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    
    .meas_trigger(meas_trigger),         // 开始测量触发脉冲，该脉冲到来时不让DAC输出
    .cal_trigger(judge_trigger),         // 开始判断触发脉冲，该脉冲到来时改变AGC增益
    .out_trigger(output_trigger),        // 开始输出触发脉冲，该脉冲到来时选择DAC输出
    
    .signal_type(signal_type),                    // 信号类型 
    .AM_demod(AM_demod),     // AM解调结果
    .FM_demod(FM_demod_filtered_r),     // FM解调结果
    .PM_demod(PM_demod),     // PM解调结果
    
    .dat_DAC(dat_DAC)      // 由DAC输出的数据
);

wire [MESSAGE_sec_1_width-1 : 0] Message;       // 当前发送的消息
assign Message = (cur_state == TRANSMIT_1) ? Message_sec_1 : ((cur_state == TRANSMIT_2) ? Message_sec_2 : {MESSAGE_sec_1_width{1'b0}});     // 选择发送的消息

// 消息发送模块
Communicate#(
    .CLK_DIV(24),                //  时钟分频系数，只支持偶数分频，分频后时钟决定发送数据的速率
                                 //  输入时钟频率1.8MHz，分频后通信速率75kbps
                                 //  发送100bit约需
    .BIT_WIDTH(MESSAGE_sec_1_width)        //  发送的比特数量

)commu_u(
    .clk(clk_1_8MHz),        //  输入时钟
    .rst_n(sys_rst_n),      //  复位，低电平有效
    .dready(transmit_trigger),    //  数据准备完毕信号，一个脉冲即可，需要和clk同步
    .dat(Message),         //  要发送的频率数据
    
    .led(LED),        //  观测用，每发一次新数据就翻转一次
    .sda(msg_out)         //  数据线，需要与stm32的检测IO口连接
    );
    
two_channel_dac#(
    .Input_width(Demod_width),   // 输入位数，默认13位
    .MODE("OUTPUT")
)DAC_u(
    .clk_DAC(clk_1_8MHz),    // 驱动DAC输出的时钟
    .rst(~sys_rst_n),        // 系统复位，高电平有效
    
    // 想要由DAC输出的原始数据，取值-4096~+4095
    .DAC1_data(dat_DAC),
    .DAC2_data(1'b0),
    
    .Debug_1(),
    .Debug_2(),
    
    //DA 接口，DAC有效的输入数据为无符号的0~1023
    .da1_clk(da1_clk), //DA1 采样时钟
    .da1_data(da1_data), //DA1采样数据
    .da2_clk(da2_clk), //DA2 采样时钟
    .da2_data(da2_data) //DA2 采样数据
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