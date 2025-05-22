`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 19:20:50
// Design Name: 
// Module Name: Get_Ma
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: To discriminate if the input signal is a constant
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Get_min_max #(
    parameter   INPUT_WIDTH = 18,           //  输入位宽
    parameter   CNT_WIDTH   = 32,           //  计数器位数
    parameter   CNT_NUM     = 32'd60,       //  每次循环需要统计的时间长度点数
    parameter   LOOP_TIME   = 3'd3,         //  循环次数位宽，实际次数为2^LOOP_TIME
    parameter   THRESHOLD   = 100           //  判决阈值，若信号最大最小的差值小于这个阈值，则仍判断为直流    
)(
    input                           clk,
    input                           rst_n,
    input                           start,
    input   [INPUT_WIDTH - 1 : 0]   dat,
    
    output  [INPUT_WIDTH - 1 : 0]   max,
    output  [INPUT_WIDTH - 1 : 0]   min,
    output  reg                     dready,
    output                          isConst     //  直流判断结果，0：不是直流，1：是直流
    );

//Get_min_max #(
//    .INPUT_WIDTH(14),         //  输入位宽
//    .CNT_WIDTH(32),           //  计数器位数
//    .CNT_NUM(32'd3600),       //  每次循环需要统计的时间长度点数，以1.8MHz采样频率统计2ms，总共3600个点
//    .LOOP_TIME(3'd3),         //  循环次数位宽3，总共统计8个2ms
//    .THRESHOLD(100)           //  判决阈值，若信号最大最小的差值小于这个阈值，则仍判断为直流    
//)(
//    .clk(),
//    .rst_n(),
//    .start(),
//    .dat(),
    
//    .max(),
//    .min(),
//    .dready(),
//    .isConst()     //  直流判断结果，0：不是直流，1：是直流
//    );

//  寻找最大最小值模块输出的信号
wire                            dready_r;
wire    [INPUT_WIDTH - 1 : 0]   max_avg_r;
wire    [INPUT_WIDTH - 1 : 0]   min_avg_r; 
//  最大最小值输出寄存器
reg     [INPUT_WIDTH - 1 : 0]   max_out_r;
reg     [INPUT_WIDTH - 1 : 0]   min_out_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_out_r <= 0;
        min_out_r <= 0;
    end
    else if(dready_r) begin
        max_out_r <= max_avg_r;
        min_out_r <= min_avg_r;
    end
    else begin
        max_out_r <= max_out_r;
        min_out_r <= min_out_r;
    end
end
    
//  信号输出
assign  max = max_out_r;
assign  min = min_out_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready <= 1'b0;
    else
        dready <= dready_r;
end

//  最大最小值的和与差，用于判断是否是直流    
wire    [INPUT_WIDTH + 1 : 0]   sum;
wire    [INPUT_WIDTH + 1 : 0]   diff;
assign  sum  = $signed(max_out_r) + $signed(min_out_r);
assign  diff = $signed(max_out_r) - $signed(min_out_r);

//  若信号最大最小差值小于设定的阈值，则判断为直流
assign  isConst = ($signed(diff) < THRESHOLD);
    
FSM_Max_Min #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  输入位宽
    .CNT_WIDTH      (CNT_WIDTH),        //  计数器位数
    .CNT_NUM        (CNT_NUM),          //  每次循环需要统计的时间长度点数
    .LOOP_TIME      (LOOP_TIME)         //  循环次数位宽，实际次数为2^LOOP_TIME
)u_fsm_max_min_0(
    .clk            (clk),         //  输入时钟
    .rst_n          (rst_n),         //  复位信号，低有效
    .dat            (dat),         //  要寻找最大最小值的数据
    .start          (start),         //  判决开始信号，需要一个时钟周期的脉冲
    
    .max_avg        (max_avg_r),         //  序列串在指定时间内最大值的平均值
    .min_avg        (min_avg_r),         //  序列串在指定时间内最小值的平均值
    .dready         (dready_r)          //  数据有效脉冲，持续一个时钟周期
);
    
endmodule
