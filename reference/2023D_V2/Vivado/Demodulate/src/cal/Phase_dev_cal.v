`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 20:44:33
// Design Name: 2023_D
// Module Name: Phase_dev_cal
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: calculate the phase deviation of FM signal in order to acquire modulation index
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Phase_dev_cal#(
    parameter Phase_width = 32,      // 相位量化位数
    parameter Phase_dev_width = 42
)(
    input clk,
    input rst,                                      // 高电平有效复位
    input trigger,                                  // 主模块给予该模块的激励
    input signed [Phase_width-1 :0] PM_demod,       // 输入解调相位
    
    output signed [Phase_dev_width - 1: 0] Phase_dev,       // 调频信号瞬时相位的极差
    output signed [Phase_dev_width - 1: 0] Phase_max_r,       // 调频信号瞬时相位的极差
    output signed [Phase_dev_width - 1: 0] Phase_min_r      // 调频信号瞬时相位的极差
    );

//Instantiate template
//Phase_dev_cal#(
//   .Phase_width()      // 相位量化位数
//) phase_dev_u(
//    .clk(),
//    .rst(),                                      // 高电平有效复位
//    .trigger(),                                  // 主模块给予该模块的激励
//    .PM_demod(),       // 输入解调相位
// 
//    .Phase_dev()       // 调频信号瞬时相位的极差
//    );
    
localparam pi = 2147483647;     // 32bit有符号量化，pi对应的量化值

reg signed [Phase_dev_width - 1: 0] phase_in;
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_in <= 0;
    end
    else if (trigger) begin
        phase_in <= 0;
    end
    else begin
        phase_in <= {{10{PM_demod[Phase_width-1]}},PM_demod};      // 将32位相位输入扩展为42位
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_in_delayed;       // 时延一个单位的相位
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_in_delayed <= 0;
    end
    else if (trigger) begin
        phase_in_delayed <= 0;
    end
    else begin
        phase_in_delayed <= phase_in;      
    end 
end

wire signed [Phase_dev_width - 1: 0] phase_diff;        // 相邻相位的差值
assign phase_diff = $signed(phase_in) - $signed(phase_in_delayed);

// 补偿相位跳变的相位偏置，取值为0，±2pi，±4pi，...
// 注：按照题目要求，生成的FM信号最大瞬时相位不超过5、2FSK信号的最大瞬时相位不超过5pi
//     因此该相位偏置最大可能值为5pi，预留32+4位存储（多加一位是为了与相位差值对齐）
// 为保证系统运行稳定，输出数据与最终数据格式一致，为42位
reg signed [Phase_dev_width - 1: 0] phase_offset;
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_offset <= 0;
    end
    else if (trigger) begin
        phase_offset <= 0;
    end
    else begin
        // 当输入相位由pi以下跳变至-pi以上时，意味着实际相位超过pi，此时偏置加2pi
        // 这里判断跳变的方式暂定为差值小于-pi
        if (phase_diff < $signed(-pi)) begin
            phase_offset <= phase_offset + 2 * pi;
        end
        // 当输入相位由-pi以上跳变至+pi以下时，意味着实际相位小于-pi，此时偏置减2pi
        // 这里判断跳变的方式暂定为差值大于+pi
        else if (phase_diff > $signed(pi)) begin
            phase_offset <= phase_offset - 2 * pi;
        end
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_compensated;      // 利用偏置补偿后的相位
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_compensated <= 0;
    end
    else if (trigger) begin
        phase_compensated <= 0;
    end
    else begin
        // 由于非阻塞赋值的特点，在偏置发生变化的同时，发生跳变的相位已经进入了phase_in_delayed，因此这里使用他而非新的输入
        phase_compensated <= phase_in_delayed + phase_offset;      
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_max;      // 补偿后相位最大值
reg signed [Phase_dev_width - 1: 0] phase_min;      // 补偿后相位最小值
wire signed [Phase_dev_width - 1: 0] phase_avg_max;      // 补偿后相位最大值
wire signed [Phase_dev_width - 1: 0] phase_avg_min;      // 补偿后相位最小值
wire dready;                                        // 最大最小值有效

always @(posedge clk or posedge rst) begin
    if(rst) begin
        phase_max <= 0;
        phase_min <= 0;
    end
    else if (trigger) begin
        phase_max <= 0;
        phase_min <= 0;
    end
    else if(dready) begin
        phase_max <= phase_avg_max;
        phase_min <= phase_avg_min;
    end
    else begin
        phase_max <= phase_max;
        phase_min <= phase_min;
    end
end

// 获取一段时间内相位的最大值和最小值
FSM_Max_Min #(
    .INPUT_WIDTH(Phase_dev_width),               //  输入位宽
    .CNT_WIDTH(32),           //  计数器位数
    .CNT_NUM(32'd3600),       //  每次循环需要统计的时间长度点数，以1.8MHz采样频率统计2ms，总共3600个点
    .LOOP_TIME(3'd5)          //  循环次数位宽3，总共统计32个2ms，共64ms
)u(
    .clk            (clk),         //  输入时钟
    .rst_n          (~rst),         //  复位信号，低有效
    .dat            (phase_compensated),         //  要寻找最大最小值的数据
    .start          (trigger),         //  判决开始信号，需要一个时钟周期的脉冲
    
    .max_avg        (phase_avg_max),         //  序列串在指定时间内最大值的平均值
    .min_avg        (phase_avg_min),         //  序列串在指定时间内最小值的平均值
    .dready         (dready)          //  数据有效脉冲，持续一个时钟周期
);

assign  Phase_dev = $signed(phase_max) - $signed(phase_min);
assign Phase_max_r = phase_max;
assign Phase_min_r = phase_min;
endmodule
