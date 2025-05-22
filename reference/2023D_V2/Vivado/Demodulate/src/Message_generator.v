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
// Description: 根据对信号类型的判断结果、计算结果，生成向STM32发送的信息
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
    parameter DATA_width = 14,       // 单位数据长度
    parameter MESSAGE_sec_1_width = 45,   // 发送消息1的长度
    parameter MESSAGE_sec_2_width = 56   // 发送消息2的长度
)(
    input clk,
    input rst_n,
    
    input meas_trig,              // 检测触发信号，用于清空寄存器
    input out_trig,               // 生成消息的触发信号
    
    input [2:0] signal_type,      // 信号类型
    input signed [DATA_width-1 : 0] A_max,      // 包络最大值
    input signed [DATA_width-1 : 0] A_min,      // 包络最小值
    
    // 解调AM信号，输出相邻零点之间的距离，以采样点数为单位
    input signed [DATA_width-1 : 0] AM_zp_interv,
    // 解调FM信号，输出相邻零点之间的距离，，以采样点数为单位
    input signed [DATA_width-1 : 0] FM_zp_interv,
    
    // 解调ASK信号，单极性NRZ码上升、下降沿之间的间隔，以采样点数为单位
    input signed [DATA_width-1 : 0] ASK_edge_interv,
    // PSK信号包络上升（下降）沿之间的间隔，以采样点数为单位
    input signed [DATA_width-1 : 0] PSK_edge_interv,
    // 解调FSK信号，双极性NRZ码上升、下降沿之间的间隔，以采样点数为单位
    input signed [DATA_width-1 : 0] FSK_edge_interv,
    // FM、2FSK信号瞬时相位的极差，42位
    input signed [3*DATA_width-1 : 0] Phase_dev,
    
    // 发送的消息
    output [MESSAGE_sec_1_width - 1 : 0] Message_sec_1,
    output [MESSAGE_sec_2_width - 1 : 0] Message_sec_2
);

// 信号类型常量，代表信号类型信息传送的具体格式 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // 初始值，无效


// 将消息分为各节
reg [2:0] signal_type_sec;          // 信号类型
reg [DATA_width-1 : 0] A_max_sec;   // 包络最大值
reg [DATA_width-1 : 0] A_min_sec;   // 包络最小值
reg [DATA_width-1 : 0] freq_sec;    // 模拟调制信号频率
reg [DATA_width-1 : 0] bit_rate_sec;    // NRZ码速率
reg [DATA_width*3-1 : 0] phase_dev_sec;    // 瞬时相位极差


// 各节分别赋值，信号类型节
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        signal_type_sec <= NA;       
    end
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        signal_type_sec <= NA;
    end
    else if (out_trig) begin    // 锁存判别结果
        signal_type_sec <= signal_type;
    end
end

// 包络最大值节
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        A_max_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        A_max_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // 锁存计算结果
        if (signal_type_sec == AM) begin     // 当信号为AM时，锁存包络最大值
            A_max_sec <= A_max;
        end
        else begin                           // 其余情况下清空
            A_max_sec <= {DATA_width{1'b0}};
        end
    end
end

// 包络最小值节
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        A_min_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        A_min_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // 锁存计算结果
        if (signal_type_sec == AM) begin     // 当信号为AM时，锁存包络最小值
            A_min_sec <= A_min;
        end
        else begin                           // 其余情况下清空
            A_min_sec <= {DATA_width{1'b0}};
        end
    end
end

// 模拟信号频率节
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        freq_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        freq_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // 锁存计算结果
        case (signal_type_sec)  // 只对AM、FM信号锁存有效结果
            AM:      
             freq_sec <= AM_zp_interv;
            FM:
             freq_sec <= FM_zp_interv;
            default:
                freq_sec <= {DATA_width{1'b0}};
        endcase
    end
end

// 数字信号符号速率节
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        bit_rate_sec <= {DATA_width{1'b0}};       
    end
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        bit_rate_sec <= {DATA_width{1'b0}}; 
    end
    else if (out_trig) begin    // 锁存计算结果
        case (signal_type_sec)  // 只对2ASK、2FSK、2PSK信号锁存有效结果
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
    else if (meas_trig) begin    // 检测信号时，清空当前内容
        phase_dev_sec <= {DATA_width*3{1'b0}}; 
    end
    else if (out_trig) begin    // 锁存计算结果
        case (signal_type_sec)  // 只对FM、2FSK信号锁存有效结果
            FM:     
                phase_dev_sec <= Phase_dev;
            FSK:
                phase_dev_sec <= Phase_dev;                    
            default:
                phase_dev_sec <= {DATA_width*3{1'b0}};
        endcase
    end
end

// 消息拼接
assign Message_sec_1 = {signal_type_sec, phase_dev_sec} << 11;
assign Message_sec_2 = {bit_rate_sec, freq_sec, A_min_sec, A_max_sec};


endmodule
