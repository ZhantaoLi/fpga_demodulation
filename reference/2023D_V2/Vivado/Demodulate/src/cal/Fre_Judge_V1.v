`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 17:37:03
// Design Name: 
// Module Name: Fre_Judge
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


module Fre_Judge #(
    parameter   INPUT_WIDTH = 18,               //  输入位宽
    parameter   OUT_WIDTH   = 18,               //  输出位宽
    parameter   CNT_WIDTH   = 32,               //  计数器位数
    parameter   MA_CNT_NUM  = 32'd60,           //  求直流部分每次循环需要统计的时间长度点数
    parameter   LOOP_TIME   = 3'd3,             //  循环次数位宽，实际次数为2^LOOP_TIME，方便后面求平均
    parameter   CNT_NUM     = 32'd6000,         //  方波判决部分计时器终止的时间，根据时钟计算点数  
    parameter   MIN_DL_TIME = 32'd25            //  最小同种边沿间隔，小于这个间隔的同种边沿被判为无效边沿
)(
    input                           clk,
    input                           rst_n,
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  要判断频率的模拟信号数据
    input                           start,  
    
    output  [OUT_WIDTH   - 1 : 0]   fre,        //  两个上升沿间的最小点数间隔，需根据时钟计算频率
    output                          dready
);
    
//Fre_Judge #(
//    .INPUT_WIDTH    (16),             //  输入位宽
//    .OUT_WIDTH      (14),             //  输出位宽
//    .CNT_WIDTH      (32),             //  计数器位数
//    .MA_CNT_NUM     (2000),           //  求直流部分每次循环需要统计的时间长度点数
//    .LOOP_TIME      (1),              //  循环次数位宽，实际次数为2^LOOP_TIME，方便后面求平均
//    .CNT_NUM        (7200),           //  方波判决部分计时器终止的时间，根据时钟计算点数  
//    .MIN_DL_TIME    (100)             //  最小同种边沿间隔，小于这个间隔的同种边沿被判为无效边沿
//)u(
//    .clk            (),
//    .rst_n          (),
//    .dat            (),        //  要判断频率的模拟信号数据
//    .start          (),  
    
//    .fre            (),        //  两个上升沿间的最小点数间隔，需根据时钟计算频率
//    .dready         ()
//);
    
localparam  st_idle     =   6'b000_001;     //  空闲状态，等待启动信号
localparam  st_mean     =   6'b000_010;     //  等待均值计算完毕
localparam  st_judge    =   6'b000_100;     //  频率判断状态，启动方波判决模块
localparam  st_stop     =   6'b001_000;     //  停止状态，发送数据
    

reg     [5:0]   cur_state;      //  当前状态
reg     [5:0]   next_state;     //  下一状态

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end

//  状态转移判断需用的信号
wire            mean_ready;         //  均值准备完毕
wire            judge_ready;        //  频率判断完毕        

//  状态转移判断部分
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_state = st_idle;           //  默认状态为空闲状态
    end
    else begin
        case(next_state)
            st_idle: begin              //  空闲状态
                if(start) begin         //  若接收到启动信号，则启动求均值模块，等待均值计算完毕
                    next_state = st_mean;
                end
                else begin
                    next_state = st_idle;
                end
            end
            st_mean: begin              //  求均值状态
                if(mean_ready) begin    //  若均值计算完毕，则进入频率判决状态，启动频率判决模块
                    next_state = st_judge;
                end
                else begin
                    next_state = st_mean;
                end
            end
            st_judge: begin             //  频率判决状态
                if(judge_ready) begin   //  若判决计算完毕，则进入暂停状态，发送数据
                    next_state = st_stop;
                end
                else begin
                    next_state = st_judge;
                end
            end
            st_stop: begin              //  暂停状态
                next_state = st_idle;   //  用一个时钟周期发送数据，然后进入空闲状态
            end
            default: ;
        endcase
    end
end
    
    

wire    [INPUT_WIDTH - 1 : 0]   max;        //  最大值
wire    [INPUT_WIDTH - 1 : 0]   min;        //  最小值
wire    [INPUT_WIDTH     : 0]   sum;        //  最大值与最小值之和
wire    [INPUT_WIDTH - 1 : 0]   mean;       //  均值

assign  sum = $signed(max) + $signed(min);
assign  mean = sum[INPUT_WIDTH : 1];
    
wire    [INPUT_WIDTH     : 0]   new_dat;    //  除去均值后的数据
assign  new_dat = $signed(dat) - $signed(mean);

wire    [1:0]   judge_dat;  //  判决用信号
assign  judge_dat = new_dat[INPUT_WIDTH] ? -2'd1 : 2'd1;


reg         mean_start;     //  均值模块启动信号
reg         judge_start;    //  判决模块启动信号
reg         dready_r;       //  数据准备完成信号

//  状态行为执行部分
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dready_r    <= 1'b0;
        mean_start  <= 1'b0;
        judge_start <= 1'b0;
    end
    else begin
        case(cur_state)
            st_idle: begin
                dready_r    <= 1'b0;
                judge_start <= 1'b0;
                if(start)
                    mean_start <= 1'b1;
                else
                    mean_start <= 1'b0;
            end
            st_mean: begin
                dready_r    <= 1'b0;
                mean_start  <= 1'b0;
                if(mean_ready)
                    judge_start <= 1'b1;
                else
                    judge_start <= 1'b0;
            end
            st_judge: begin
                dready_r    <= 1'b0;
                mean_start  <= 1'b0;
                judge_start <= 1'b0;
            end
            st_stop: begin
                dready_r    <= 1'b1;
                mean_start  <= 1'b0;
                judge_start <= 1'b0;
            end
            default: ;
        endcase
    end 
end


//  最小上升下降沿间隔（目前没用到）
wire        [OUT_WIDTH - 1 : 0]    min_edge_width;     
reg         [OUT_WIDTH - 1 : 0]    min_edge_width_r; 

//  最小上升沿之间间隔
wire        [OUT_WIDTH - 1 : 0]    min_pp_width;        
reg         [OUT_WIDTH - 1 : 0]    min_pp_width_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        min_edge_width_r <= 0;
        min_pp_width_r   <= 0;   
    end
    else begin
        min_edge_width_r <= min_edge_width;
        min_pp_width_r   <= min_pp_width;
    end
end


reg         dready_delay;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready_delay <= 1'b0;
    else
        dready_delay <= dready_r;
end

assign  dready = dready_delay;
assign  fre = min_edge_width_r;


//  寻找最大最小值模块
Get_min_max #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  输入位宽
    .CNT_WIDTH      (CNT_WIDTH),        //  计数器位数
    .CNT_NUM        (MA_CNT_NUM),       //  每次循环需要统计的时间长度点数
    .LOOP_TIME      (LOOP_TIME)         //  循环次数位宽，实际次数为2^LOOP_TIME，方便后面求平均
)u_get_ma_1(
    .clk            (clk),
    .rst_n          (rst_n),
    .start          (mean_start),
    .dat            (dat),
    
    .max            (max),
    .min            (min),
    .dready         (mean_ready),
    .isConst        ()
);

SquareJudge #(
    .INPUT_WIDTH        (2),                    //  输入位宽
    .OUT_WIDTH          (OUT_WIDTH),            //  输出的边沿最小间隔，需小于等于计数器位数
    .CNT_WIDTH          (CNT_WIDTH),            //  计数器（计时，脉冲计时）位数
    .CNT_NUM            (CNT_NUM),              //  计时器终止的时间    
    .MIN_DL_TIME        (MIN_DL_TIME),          //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
    .MIN_NP_DL          (32'd150),               //  最小不同边沿间隔
    .COMP_NUM           (1)                     //  边沿判决阈值
) u_judge_1(
    .clk                (clk),                  //  输入时钟      
    .rst_n              (rst_n),                //  复位信号，低有效
    .dat                (judge_dat),            //  要判决是不是方波的数据
    .start              (judge_start),          //  判决开始信号，需要一个时钟周期的脉冲
    
    .min_edge_width     (min_edge_width),       //  最小有效上升下降沿间隔计数，由外部根据时钟频率计算出最小脉宽时间间隔
    .min_pp_width       (min_pp_width),         //  最小有效上升沿间隔计数
    .isSquare           (),                     //  方波判决结果
    .dready             (judge_ready)           //  数据有效脉冲，持续一个时钟周期
);
    
endmodule
