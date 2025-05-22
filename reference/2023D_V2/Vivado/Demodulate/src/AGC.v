`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 00:23:24
// Design Name: 
// Module Name: AGC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 根据输入鉴频结果的最大值，控制该结果应乘以的增益，输出幅度较大的信号
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AGC#(
    parameter IO_width = 14
)(
    input clk,
    input rst_n,
    
    input meas_trig,    // 测量触发脉冲
    input cal_trig,     // 计算增益触发脉冲
    
    input signed [IO_width-1 : 0] FM_demod,
    output signed [IO_width-1 : 0] FM_AGC_out
    );

localparam threshold = 14'd2500;     // 当信号最大值大于该门限时，直接输出

reg signed [IO_width-1 : 0] FM_demod_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        FM_demod_r <= 0;      // 默认0
    end
    else begin  
        FM_demod_r <= FM_demod;
    end
end


wire signed [IO_width-1 : 0] FM_max;     
// 测量状态下，测量FM解调结果的最大值
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  输入位宽
    .CNT_WIDTH(32),           //  计数器位数
    .CNT_NUM(32'd3600),       //  每次循环需要统计的时间长度点数，以1.8MHz采样频率统计2ms，总共3600个点
    .LOOP_TIME(3'd3),         //  循环次数位宽3，总共统计8个2ms
    .THRESHOLD(100)           //  判决阈值，若信号最大最小的差值小于这个阈值，则仍判断为直流    
)(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(FM_demod_r),
    
    .max(FM_max),
    .min(),
    .dready(),
    .isConst()     //  直流判断结果，0：不是直流，1：是直流
    );

// 判断状态下，计算可变增益
reg [3:0] gain_log_2;     // 以2为底增益的对数，不会太大
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        gain_log_2 = 0;      // 默认0
    end
    else if (cal_trig) begin  // 开始计算  
        // 初始置零，只要最大值乘以增益后不大于2500，增益就乘2
        gain_log_2 = 0;
        repeat(8) begin
            if ((FM_max << gain_log_2) < threshold) begin
                gain_log_2 = gain_log_2 + 1'b1;
            end
        end
    end
end

assign FM_AGC_out = FM_demod_r << gain_log_2;     // 乘以增益输出

endmodule
