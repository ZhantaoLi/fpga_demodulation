`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 08:59:01
// Design Name: 
// Module Name: AM_DC_Isolator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 去除AM解调结果中的直流分量
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AM_DC_Isolator #(
    parameter IO_width = 14
)(
    input clk,
    input rst_n,
    
    input meas_trig,    // 测量触发脉冲
    input cal_trig,     // 计算直流分量触发脉冲
    
    input signed [IO_width-1 : 0] AM_demod,     // 输入AM解调结果
    output signed [IO_width-1 : 0] AM_AC        // 输出AM隔直结果
    );
    
reg signed [IO_width-1 : 0] AM_demod_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        AM_demod_r <= 0;      // 默认0
    end
    else begin  
        AM_demod_r <= AM_demod;
    end
end   

wire signed [IO_width-1 : 0] AM_max;     
wire signed [IO_width-1 : 0] AM_min;
// 测量状态下，测量AM解调结果的最大值和最小值
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
    .dat(AM_demod_r),
    
    .max(AM_max),
    .min(AM_min),
    .dready(),
    .isConst()     //  直流判断结果，0：不是直流，1：是直流
    );

// 判断状态下，计算直流分量
reg signed [IO_width-1 : 0] DC;     // 直流分量
reg signed [IO_width : 0]  add_temp;

always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        DC = 0;      // 默认0
        add_temp = 0;
    end
    else if (cal_trig) begin  // 开始计算  
        // DC = (Amax + Amin) / 2
        add_temp = $signed({1'b0,AM_max}) + $signed({1'b0,AM_min});
        DC = add_temp[IO_width : 1];
    end
end

assign AM_AC = $signed(AM_demod) - $signed(DC);     // 减去直流分量后输出

endmodule
