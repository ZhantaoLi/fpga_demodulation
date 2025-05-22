`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 08:58:59
// Design Name: 
// Module Name: PSK_Judge
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


module PSK_Judge #(
    parameter   INPUT_WIDTH =   14,         //  输入位宽
    parameter   OUT_WIDTH   =   14,         //  输出位宽
    parameter   HIGH_VOL    =   14'd500,    //  高电平数值
    parameter   LOW_VOL     =   14'd0,      //  低电平数值
    parameter   COMP_NUM    =   1000,       //  边沿判决阈值，小于这个阈值的跳变不被判断为边沿
    parameter   MIN_DL_TIME =   32'd100     //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
)(
    input                           clk,
    input                           rst_n,
    input                           enable, //  使能信号，高电平有效，若置低，则也会将当前循环进行完毕再停止
    input   [INPUT_WIDTH - 1 : 0]   dat,
    
    output  [OUT_WIDTH   - 1 : 0]   out   
    );
    
//PSK_Judge #(
//    .INPUT_WIDTH        (14),         //  输入位宽
//    .OUT_WIDTH          (14),         //  输出位宽
//    .HIGH_VOL           (14'd500),    //  高电平数值
//    .LOW_VOL            (14'd0),      //  低电平数值
//    .COMP_NUM           (1000),       //  边沿判决阈值，小于这个阈值的跳变不被判断为边沿
//    .MIN_DL_TIME        (32'd100)     //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
//)u_psk_judge_01(
//    .clk        (),
//    .rst_n      (),
//    .enable     (),
//    .dat        (),
    
//    .out        ()
//);

reg         flag;           //  用于产生初始的启动信号，后面的启动信号由dready构成    
reg         first_start;    //  初始启动信号
wire        start;          //  输给判决模块的启动信号
wire        dready;

assign  start = enable & (first_start | dready);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin    
        flag <= 1'b0;       //  复位时将flag置0，之后会产生一次开始信号
        first_start <= 1'b0;
    end
    else if(flag == 1'b0) begin
        flag <= 1'b1;
        first_start <= 1'b1;
    end
    else begin
        flag <= 1'b1;
        first_start <= 1'b0;
    end
end
    
    
wire    pedge;      //  有效上升沿脉冲
reg     vol;        //  高\低电平
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vol <= 1'b0;
    end
    else if(pedge) begin    //  若psk的包络有一上升沿，则将电平值翻转
        vol <= ~vol;
    end
    else begin
        vol <= vol;
    end
end
    
//  根据电平值设置输出
assign  out = vol ? HIGH_VOL : LOW_VOL;
    
SquareJudge #(
    .INPUT_WIDTH        (INPUT_WIDTH),    //  输入位宽
    .OUT_WIDTH          (18),             //  输出的边沿最小间隔，需小于等于计数器位数
    .CNT_WIDTH          (32),             //  计数器（计时，脉冲计时）位数
    .CNT_NUM            (32'd18000),      //  计时器终止的时间    
    .MIN_DL_TIME        (MIN_DL_TIME),    //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
    .COMP_NUM           (COMP_NUM),       //  边沿判决阈值
    .MIN_NP_DL          (32'd0 ),         //  最小不同边沿间隔
    //  下面这个随意
    .EDGE_NUM           (32'd30)          //  边沿个数阈值，上升\下降沿数量超过这个阈值则被判决为方波
) u_psk_judge(
    .clk                (clk),          //  输入时钟      
    .rst_n              (rst_n),        //  复位信号，低有效
    .dat                (dat),          //  要判决是不是方波的数据
    .start              (start),        //  判决开始信号，需要一个时钟周期的脉冲
    
    .min_edge_width     (),             //  最小有效上升下降沿间隔计数，由外部根据时钟频率计算出最小脉宽时间间隔
    .min_pp_width       (),             //  最小有效上升沿间隔计数
    .delta_edge_time    (),             //  所有上下边沿的时间间隔
    .pedge              (pedge),        //  上升沿脉冲
    .isSquare           (),             //  方波判决结果
    .dready             (dready)        //  数据有效脉冲，持续一个时钟周期
);

    
    
endmodule
