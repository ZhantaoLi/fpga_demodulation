`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 16:29:00
// Design Name: 
// Module Name: FSM_Max_Min
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

//  循环统计一段时间内数据的最大最小值，并输出这些最大最小值的平均值
module FSM_Max_Min #(
    parameter   INPUT_WIDTH = 13,              //  输入位宽
    parameter   CNT_WIDTH   = 32,              //  计数器位数
    parameter   CNT_NUM     = 32'd60,          //  每次循环需要统计的时间长度点数
    parameter   LOOP_TIME   = 3'd3             //  循环次数位宽，实际次数为2^LOOP_TIME               
)(
    input                           clk,        //  输入时钟
    input                           rst_n,      //  复位信号，低有效
    input                           start,      //  判决开始信号，需要一个时钟周期的脉冲
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  要寻找最大最小值的数据
    
    output  [INPUT_WIDTH - 1 : 0]   max_avg,    //  序列串在指定时间内最大值的平均值
    output  [INPUT_WIDTH - 1 : 0]   min_avg,    //  序列串在指定时间内最小值的平均值
    output  reg                     dready      //  数据有效脉冲，持续一个时钟周期
    );
    
//FSM_Max_Min #(
//    .INPUT_WIDTH    (18),               //  输入位宽
//    .CNT_WIDTH      (32),               //  计数器位数
//    .CNT_NUM        (32'd600),          //  每次循环需要统计的时间长度点数
//    .LOOP_TIME      (3'd3)              //  循环次数位宽，实际次数为2^LOOP_TIME
//)u(
//    .clk            (),         //  输入时钟
//    .rst_n          (),         //  复位信号，低有效
//    .dat            (),         //  要寻找最大最小值的数据
//    .start          (),         //  判决开始信号，需要一个时钟周期的脉冲
    
//    .max_avg        (),         //  序列串在指定时间内最大值的平均值
//    .min_avg        (),         //  序列串在指定时间内最小值的平均值
//    .dready         ()          //  数据有效脉冲，持续一个时钟周期
//);
    
//  实际的循环次数
localparam  R_LOOP_TIME = (1 << LOOP_TIME) - 1;

//  状态类型
localparam  st_idle = 4'b0001;      //  空闲状态，等待启动信号
localparam  st_loop = 4'b0010;      //  循环状态，即正在寻找指定循环时间内的数据最大最小值
localparam  st_stop = 4'b0100;      //  暂停状态，判断循环是否结束
    
//  状态转移需要的一些数据
wire                    loop_end;   //  单次循环结束信号
reg     [LOOP_TIME : 0] loop_turn;  //  当前循环轮次
wire                    isNext;     //  是否进入下次循环
assign  isNext = loop_turn <= R_LOOP_TIME;
    
//  状态转移判断部分
reg     [3:0]   cur_state;
reg     [3:0]   next_state;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end
 
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_state = st_idle;
    end
    else begin
        case(next_state)
            st_idle: begin                  //  空闲状态
                if(start)                   //  接收到开始信号时，先判断是否完成循环
                    next_state = st_stop;
                else
                    next_state = st_idle;
            end
            st_loop: begin                  //  循环状态
                if(loop_end)                //  接收到循环结束信号时，进入暂停状态
                    next_state = st_stop;
                else
                    next_state = st_loop;
            end
            st_stop: begin                  //  暂停状态
                if(isNext)                  //  若未循环完毕，则进入下一次循环
                    next_state = st_loop;
                else
                    next_state = st_idle;
            end
            default: ;
        endcase
    end
end
    

//  进入循环信号
reg         loop_enter;
//  单次循环模块的最大最小值输出
wire    [INPUT_WIDTH - 1 : 0]   max_out;
wire    [INPUT_WIDTH - 1 : 0]   min_out;
//  单次循环的最大最小值寄存器
reg     [INPUT_WIDTH - 1 : 0]   max_single_r;
reg     [INPUT_WIDTH - 1 : 0]   min_single_r;
//  所有循环最大最小值的总和寄存器
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   max_sum;
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   min_sum;
//  循环完成信号寄存器
reg         dready_r;

//  状态行为执行模块
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_single_r <= 0;
        min_single_r <= 0;
        max_sum <= 0;
        min_sum <= 0;
        loop_enter <= 1'b0;
        dready_r <= 1'b0;
        loop_turn <= 0;
    end
    else begin
        case(cur_state)
            st_idle: begin
                max_single_r <= 0;
                min_single_r <= 0;
                max_sum <= 0;
                min_sum <= 0;
                loop_enter <= 1'b0;
                dready_r <= 1'b0;
                loop_turn <= 0;
            end
            st_loop: begin
                if(loop_end) begin
                    max_single_r <= max_out;
                    min_single_r <= min_out;
                    loop_turn <= loop_turn + 1'b1;
                end
                
                dready_r <= 1'b0;
                loop_enter <= 1'b0;
            end
            st_stop: begin
                max_sum <= $signed(max_sum) + $signed(max_single_r);
                min_sum <= $signed(min_sum) + $signed(min_single_r);
                if(isNext) begin       //  若未循环完毕，则发起启动信号进入下一次循环
                    loop_enter <= 1'b1;
                end
                else begin                              //  若完成循环，则发起循环完成信号
                    dready_r <= 1'b1;
                    loop_turn <= 0;
                end
            end
            default: ;
        endcase
    end
end

//  最大最小值总和寄存器，将循环完毕后的最大最小之和保存下来，不至于因进入空闲状态而被清空
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   max_sum_r;
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   min_sum_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_sum_r <= 0;
        min_sum_r <= 0;
    end
    else if(dready_r) begin
        max_sum_r <= max_sum;
        min_sum_r <= min_sum;
    end
    else begin
        max_sum_r <= max_sum_r;
        min_sum_r <= min_sum_r;
    end
end

//  直接取各最大最小值之和的高位，实现简单的求平均效果
assign  max_avg = max_sum_r[INPUT_WIDTH + LOOP_TIME - 1 : LOOP_TIME];
assign  min_avg = min_sum_r[INPUT_WIDTH + LOOP_TIME - 1 : LOOP_TIME];

//  将数据完成信号延后一个时钟周期，确保数据准备完毕
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready <= 1'b0;
    else
        dready <= dready_r;
end

Max_Min #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  输入位宽
    .OUT_WIDTH      (INPUT_WIDTH),      //  输出位宽
    .CNT_WIDTH      (CNT_WIDTH  ),      //  计数器（计时，脉冲计时）位数
    .CNT_NUM        (CNT_NUM    )       //  计时器终止的时间，根据时钟计算点数
)u_max_0(
    .clk            (clk),          //  输入时钟
    .rst_n          (rst_n),        //  复位信号，低有效
    .dat            (dat),          //  要寻找最大最小值的数据
    .start          (loop_enter),   //  判决开始信号，需要一个时钟周期的脉冲
    
    .max            (max_out),      //  输入序列串在指定时间内的最大值
    .min            (min_out),      //  输入序列串在指定时间内的最大值
    .dready         (loop_end)      //  数据有效脉冲，持续一个时钟周期
);
    
endmodule
