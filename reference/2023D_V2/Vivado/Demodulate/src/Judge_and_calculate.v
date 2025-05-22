`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 09:08:38
// Design Name: 
// Module Name: Judge_and_calculate
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


module Judge_and_calculate#(
    parameter IO_width = 14     // 解调结果位数，生成数据位数
)(
    input clk,
    input rst_n,
    input meas_trig,    // 触发信号
    
    input signed [IO_width-1 :0] AM_demod,
    input signed [IO_width-1 :0] FM_demod,
    
    output A_const,     // 输出布尔值，包络是否为常数
    output signed [IO_width-1 :0] A_max,       // 包络最大值
    output signed [IO_width-1 :0] A_min,       // 包络最小值
    
    output A_square,      // 输出布尔值，包络是否为方波
    output signed [IO_width-1 :0] A_edge_interv,    // 包络的最小脉宽间隔（异种边沿间隔）
    output signed [IO_width-1 :0] A_edge_interv_homo,       // 包络的同种边沿间隔
    output signed [IO_width-1 :0] A_freq,                   // AM解调结果频率
    
    output Freq_const,     // 输出布尔值，鉴频是否为常数
    output Freq_square,   // 输出布尔值，鉴频是否为方波
    output signed [IO_width-1 :0] Freq_edge_interv,    // 鉴频结果的最小脉宽间隔（异种边沿间隔）
    output signed [IO_width-1 :0] F_freq                   // FM解调结果频率
);

reg signed [IO_width-1 :0] AM_demod_r;
reg signed [IO_width-1 :0] FM_demod_r;

always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        AM_demod_r <= 0;       
        FM_demod_r <= 0;
    end
    else begin
        AM_demod_r <= AM_demod;
        FM_demod_r <= FM_demod;
    end
end

// 取包络的最大和最小值，判断包络是否为常数
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  输入位宽
    .CNT_WIDTH(32),           //  计数器位数
    .CNT_NUM(32'd3600),       //  每次循环需要统计的时间长度点数，以1.8MHz采样频率统计2ms，总共3600个点
    .LOOP_TIME(3'd3),         //  循环次数位宽3，总共统计8个2ms
    .THRESHOLD(1500)           //  判决阈值，若信号最大最小的差值小于这个阈值，则判断为直流    
) A_const_discrim(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(AM_demod_r),
    
    .max(A_max),
    .min(A_min),
    .dready(),
    .isConst(A_const)     //  直流判断结果，0：不是直流，1：是直流
    );

// 取频率的最大和最小值，判断频率是否为常数
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  输入位宽
    .CNT_WIDTH(32),           //  计数器位数
    .CNT_NUM(32'd3600),       //  每次循环需要统计的时间长度点数，以1.8MHz采样频率统计2ms，总共3600个点
    .LOOP_TIME(3'd3),         //  循环次数位宽3，总共统计8个2ms
    .THRESHOLD(120)           //  判决阈值，若信号最大最小的差值小于这个阈值，则判断为直流    
) Freq_const_discrim(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(FM_demod_r),
    
    .max(),
    .min(),
    .dready(),
    .isConst(Freq_const)     //  直流判断结果，0：不是直流，1：是直流
    );

// 判断AM解调结果是否为方波，输出方波的周期，以及判端是否为2PSK信号
SquareJudge #(
    .INPUT_WIDTH        (IO_width),             //  输入位宽
    .OUT_WIDTH          (IO_width),             //  输出的边沿最小间隔，需小于等于计数器位数
    .CNT_WIDTH          (32),             //  计数器（计时，脉冲计时）位数
    .CNT_NUM            (32'd28800),      //  计时器终止的时间，以1.8MHz统计16ms，共28800个点    
    .MIN_DL_TIME        (32'd10),          //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
    .MIN_NP_DL          (32'd0),           //  最小不同边沿间隔
    .COMP_NUM           (32'd1000),       //  边沿判决阈值，固定为2500
    //  边沿个数阈值，上升\下降沿数量超过这个阈值则被判决为方波
    //  考虑到最低符号速率位6kHz，所有数字信号在16ms内都会出现96个符号，192个上升、下降沿，随符号速率增加这个数字会更大
    //  因此这个值取50
    .EDGE_NUM           (32'd50)          
) A_square_judge(
    .clk                (clk),         //  输入时钟      
    .rst_n              (rst_n),       //  复位信号，低有效
    .dat                (AM_demod_r),  //  要判决是不是方波的数据
    .start              (meas_trig),   //  判决开始信号，需要一个时钟周期的脉冲
    
    .min_edge_width     (A_edge_interv),       //  最小脉宽计数，由外部根据时钟频率计算出最小脉宽时间间隔
    .isSquare           (A_square),            //  方波判决结果
    .min_pp_width       (A_edge_interv_homo),  //  最小有效上升沿间隔计数
    .dready             ()                     //  数据有效脉冲，持续一个时钟周期
);

// 判断FM解调结果是否为方波，输出方波的周期
SquareJudge #(
    .INPUT_WIDTH        (IO_width),             //  输入位宽
    .OUT_WIDTH          (IO_width),             //  输出的边沿最小间隔，需小于等于计数器位数
    .CNT_WIDTH          (32),             //  计数器（计时，脉冲计时）位数
    .CNT_NUM            (32'd28800),      //  计时器终止的时间，以1.8MHz统计16ms，共28800个点    
    .MIN_DL_TIME        (32'd50),          //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
    .MIN_NP_DL          (32'd50),           //  最小不同边沿间隔
    .COMP_NUM           (32'd80),          //  边沿判决阈值，固定为80
    //  边沿个数阈值，上升\下降沿数量超过这个阈值则被判决为方波
    //  考虑到最低符号速率位6kHz，所有数字信号在16ms内都会出现96个符号，192个上升、下降沿，随符号速率增加这个数字会更大
    //  因此这个值取50
    .EDGE_NUM           (32'd50)          
) Freq_square_judge(
    .clk                (clk),         //  输入时钟      
    .rst_n              (rst_n),       //  复位信号，低有效
    .dat                (FM_demod_r),  //  要判决是不是方波的数据
    .start              (meas_trig),   //  判决开始信号，需要一个时钟周期的脉冲
    
    .min_edge_width     (Freq_edge_interv),       //  最小脉宽计数，由外部根据时钟频率计算出最小脉宽时间间隔
    .min_pp_width       (),                    //  最小有效上升沿间隔计数
    .isSquare           (Freq_square),            //  方波判决结果
    .dready             ()             //  数据有效脉冲，持续一个时钟周期
);

// 计算AM解调结果的频率
Fre_Judge #(
    .INPUT_WIDTH    (IO_width),             //  输入位宽
    .OUT_WIDTH      (IO_width),             //  输出位宽
    .CNT_WIDTH      (32),             //  计数器位数
    .MA_CNT_NUM     (3600),           //  求直流部分每次循环需要统计的时间长度点数，3600采样点，2ms，恰好为正弦波正周期
    .LOOP_TIME      (1),              //  循环次数位宽，实际次数为2^LOOP_TIME，方便后面求平均
    .CNT_NUM        (7200),           //  方波判决部分计时器终止的时间，根据时钟计算点数，7200采样点，4ms，也为正弦波正周期
    .FMAX_NUM       (18000),           //  找较大间隔部分的计时器终止时间，10ms
    .MIN_DL_TIME    (100)             //  最小同种边沿间隔，小于这个间隔的同种边沿被判为无效边沿
)A_Freq_judge(
    .clk            (clk),
    .rst_n          (rst_n),
    .dat            (AM_demod_r),        //  要判断频率的模拟信号数据
    .start          (meas_trig),  
    
    .fre            (A_freq),        //  两个上升沿间的最小点数间隔，需根据时钟计算频率
    .dready         ()
);


// 计算FM解调结果的频率
Fre_Judge #(
    .INPUT_WIDTH    (IO_width),             //  输入位宽
    .OUT_WIDTH      (IO_width),             //  输出位宽
    .CNT_WIDTH      (32),             //  计数器位数
    .MA_CNT_NUM     (3600),           //  求直流部分每次循环需要统计的时间长度点数
    .LOOP_TIME      (1),              //  循环次数位宽，实际次数为2^LOOP_TIME，方便后面求平均
    .CNT_NUM        (7200),           //  方波判决部分计时器终止的时间，根据时钟计算点数  
    .FMAX_NUM       (18000),         //  找较大间隔部分的计时器终止时间，10ms
    .MIN_DL_TIME    (100)             //  最小同种边沿间隔，小于这个间隔的同种边沿被判为无效边沿
)F_Freq_judge(
    .clk            (clk),
    .rst_n          (rst_n),
    .dat            (FM_demod_r),        //  要判断频率的模拟信号数据
    .start          (meas_trig),  
    
    .fre            (F_freq),        //  两个上升沿间的最小点数间隔，需根据时钟计算频率
    .dready         ()
);  

endmodule
