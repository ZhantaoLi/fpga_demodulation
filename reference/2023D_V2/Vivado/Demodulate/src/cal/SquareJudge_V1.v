`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 17:14:45
// Design Name: 
// Module Name: SquareJudge
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

//  方波判决模块
module SquareJudge  #(
    parameter   INPUT_WIDTH = 18,               //  输入位宽
    parameter   OUT_WIDTH   = 18,               //  输出的边沿最小间隔
    parameter   CNT_WIDTH   = 32,               //  计数器（计时，脉冲计时）位数
    parameter   CNT_NUM     = 32'd6000,         //  计时器终止的时间，根据时钟计算点数  
    parameter   MIN_DL_TIME = 32'd25,           //  最小边沿间隔，小于这个间隔的边沿被判为无效边沿 
    parameter   COMP_NUM    = 32'd100_000,      //  边沿判决阈值
    parameter   EDGE_NUM    = 32'd30            //  边沿个数阈值，上升\下降沿数量超过这个阈值则被判决为方波
)(
    input                           clk,            //  输入时钟
    input                           rst_n,          //  复位信号，低有效
    input   [INPUT_WIDTH - 1 : 0]   dat,            //  要判决是不是方波的数据
    input                           start,          //  判决开始信号，需要一个时钟周期的脉冲
    
    output  [OUT_WIDTH - 1 : 0]     min_edge_width, //  最小脉宽计数，由外部根据时钟频率计算出最小脉宽时间间隔
    output                          isSquare,       //  方波判决结果
    output  reg                     dready          //  数据有效脉冲，持续一个时钟周期
);

//SquareJudge #(
//    .INPUT_WIDTH        (18),             //  输入位宽
//    .OUT_WIDTH          (18),             //  输出的边沿最小间隔，需小于等于计数器位数
//    .CNT_WIDTH          (32),             //  计数器（计时，脉冲计时）位数
//    .CNT_NUM            (32'd6000),       //  计时器终止的时间    
//    .MIN_DL_TIME        (32'd25),         //  最小边沿间隔，小于这个间隔的边沿被判为无效边沿
//    .COMP_NUM           (32'd100_000),    //  边沿判决阈值
//    .EDGE_NUM           (32'd30)          //  边沿个数阈值，上升\下降沿数量超过这个阈值则被判决为方波
//) u(
//    .clk                (),       //  输入时钟      
//    .rst_n              (),       //  复位信号，低有效
//    .dat                (),       //  要判决是不是方波的数据
//    .start              (),       //  判决开始信号，需要一个时钟周期的脉冲
    
//    .min_edge_width     (),       //  最小脉宽计数，由外部根据时钟频率计算出最小脉宽时间间隔
//    .isSquare           (),       //  方波判决结果
//    .dready             ()        //  数据有效脉冲，持续一个时钟周期
//);

//  输入数据寄存器，进行延时给差分部分用
reg     [INPUT_WIDTH - 1 : 0]   dat_r;
reg     [INPUT_WIDTH - 1 : 0]   dat_r_delay;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dat_r <= {INPUT_WIDTH{1'b0}};
        dat_r_delay <= {INPUT_WIDTH{1'b0}};
    end
    else if(start) begin
        dat_r <= dat;
        dat_r_delay <= dat;
    end
    else begin
        dat_r <= dat;
        dat_r_delay <= dat_r;
    end
end

//  计时器，判断判决终止时间
reg     [CNT_WIDTH - 1 : 0]     cnt;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= {CNT_WIDTH{1'b0}};
    end
    else if(start)
        cnt <= {CNT_WIDTH{1'b0}};
    else if(cnt <= CNT_NUM - 1'b1)
        cnt <= cnt + 1'b1;
    else
        cnt <= cnt;
end
//  终止信号，当计时器记到目标时间时，发起终止脉冲，将得出的数据进行输出
wire    end_pulse;
assign  end_pulse = (cnt == CNT_NUM - 1'b1);

//  输入数据差分部分，检测上升沿
reg     [INPUT_WIDTH : 0]       dat_diff_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        dat_diff_r <= {(INPUT_WIDTH+1){1'b0}};
    else if(start)  //  启动时默认数据差分为0，防止第一个数据默认被判断为边沿
        dat_diff_r <= {(INPUT_WIDTH+1){1'b0}};
    else
        dat_diff_r <= $signed(dat_r) - $signed(dat_r_delay);
end

//  差分信号的绝对值，用于边沿阈值判断
wire    [INPUT_WIDTH - 1 : 0]   dat_diff_abs;
assign  dat_diff_abs = dat_diff_r[INPUT_WIDTH] ? (1'b1 + (~dat_diff_r)) : dat_diff_r;

//  边沿信号，若输入数据差分绝对值超过判断阈值，则判断为产生一次边沿
//  下边还有个边沿有效性判断，若两次边沿间隔过小，则判定为无效脉冲
wire    edge_sig;
assign  edge_sig = (dat_diff_abs >= COMP_NUM); 


reg     [CNT_WIDTH - 1 : 0] edge_time_r;        //  前一边沿时间记录寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        edge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};  //  前一边沿时间记录器设置为负最大的一半
    end
    else begin
        if(start) begin
            edge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
        end
        else if(edge_sig) begin
            edge_time_r <= $signed(cnt);
        end
        else
            edge_time_r <= edge_time_r;
    end
end

reg     [CNT_WIDTH     : 0] delta_edge_time;    //  当前边沿间隔寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     //  初始边沿间隔设置为正最大值
    end
    else begin
        if(start) begin
            delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};
        end
        else if(edge_sig) begin
            delta_edge_time <= $signed(cnt) - $signed(edge_time_r);
        end
        else
            delta_edge_time <= delta_edge_time;
    end
end

//  边沿信号寄存器，将边沿信号延后一个时钟周期，与计算完毕后和边沿间隔同步判断边沿有效性
reg     edge_sig_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        edge_sig_r <= 1'b0;
    else
        edge_sig_r <= edge_sig;
end

//  边沿有效性判断
wire    edge_vaild = edge_sig_r & ($signed(delta_edge_time) > MIN_DL_TIME);

//  边沿数量计数
reg     [CNT_WIDTH - 1 : 0] edge_num_cnt;       //  边沿脉冲寄存器，记录边沿数量，用于判断是否是方波
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        edge_num_cnt <= {CNT_WIDTH{1'b0}};
    else if(start)
        edge_num_cnt <= {CNT_WIDTH{1'b0}};
    else if(edge_vaild)
        edge_num_cnt <= edge_num_cnt + 1'b1;
    else
        edge_num_cnt <= edge_num_cnt;
end

//  最小边沿间隔寄存器
reg     [CNT_WIDTH : 0] min_delta_edge_time;

wire    isUpdate;
assign  isUpdate = (($signed(delta_edge_time) < $signed(min_delta_edge_time))) & edge_vaild;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        min_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     //  初始最小边沿间隔设置为正最大值
    end
    else if(start)
        min_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     
    else if(isUpdate)
        min_delta_edge_time <= delta_edge_time;                 //  新脉冲间隔小于之前的存储值时，进行更新 
    else
        min_delta_edge_time <= min_delta_edge_time;
end

//  最小脉宽输出寄存器
reg     [OUT_WIDTH - 1 : 0] min_edge_width_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        min_edge_width_r <= {OUT_WIDTH{1'b1}};
    else if(start)
        min_edge_width_r <= {OUT_WIDTH{1'b1}};
    else if(end_pulse)
        min_edge_width_r <= min_delta_edge_time[OUT_WIDTH - 1 : 0];
    else
        min_edge_width_r <= min_edge_width_r;
end

//  信号输出
assign  min_edge_width = min_edge_width_r;
assign  isSquare = edge_num_cnt > EDGE_NUM;

//  将终止信号延后一个时钟周期，确保数据计算完毕后再输出数据有效信号
reg     dready_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dready_r <= 1'b0;
        dready <= 1'b0;
    end
    else if(end_pulse) begin
        dready_r <= 1'b1;
        dready <= dready_r;
    end
    else begin
        dready_r <= 1'b0;
        dready <= dready_r; 
    end
end


endmodule
