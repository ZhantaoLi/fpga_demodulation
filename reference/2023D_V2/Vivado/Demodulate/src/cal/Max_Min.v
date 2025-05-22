`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 11:30:35
// Design Name: 
// Module Name: Max_Min
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


module Max_Min#(
    parameter   INPUT_WIDTH = 18,               //  输入位宽
    parameter   OUT_WIDTH   = 18,               //  输出位宽
    parameter   CNT_WIDTH   = 32,               //  计数器位数
    parameter   CNT_NUM     = 32'd6000          //  计时器终止的时间，根据时钟计算点数  
)(
    input                           clk,        //  输入时钟
    input                           rst_n,      //  复位信号，低有效
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  要寻找最大最小值的数据
    input                           start,      //  判决开始信号，需要一个时钟周期的脉冲
    
    output  [OUT_WIDTH   - 1 : 0]   max,        //  输入序列串在指定时间内的最大值
    output  [OUT_WIDTH   - 1 : 0]   min,        //  输入序列串在指定时间内的最大值
    output  reg                     dready      //  数据有效脉冲，持续一个时钟周期
    );

// Instantiate template
//Max_Min #(
//    .INPUT_WIDTH    (18),               //  输入位宽
//    .OUT_WIDTH      (18),               //  输出位宽
//    .CNT_WIDTH      (32),               //  计数器位数
//    .CNT_NUM        (32'd6000)          //  计时器终止的时间，根据时钟计算点数
//)u(
//    .clk            (),         //  输入时钟
//    .rst_n          (),         //  复位信号，低有效
//    .dat            (),         //  要寻找最大最小值的数据
//    .start          (),         //  判决开始信号，需要一个时钟周期的脉冲
    
//    .max            (),         //  输入序列串在指定时间内的最大值
//    .min            (),         //  输入序列串在指定时间内的最大值
//    .dready         ()          //  数据有效脉冲，持续一个时钟周期
//);

//  数据寄存器
reg     [INPUT_WIDTH - 1 : 0]   dat_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        dat_r <= {INPUT_WIDTH{1'b0}};
    else
        dat_r <= dat;
end

//  计时器，判断终止时间
reg     [CNT_WIDTH - 1 : 0]     cnt;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= CNT_NUM;
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


//  最大最小值寄存器
reg     [INPUT_WIDTH - 1 : 0]   max_r;
reg     [INPUT_WIDTH - 1 : 0]   min_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_r <= {1'b1, {(INPUT_WIDTH-1){1'b0}}};   //  初始设置为负最小值
        min_r <= {1'b0, {(INPUT_WIDTH-1){1'b1}}};   //  初始设置为正最大值
    end
    else if(start) begin
        max_r <= {1'b1, {(INPUT_WIDTH-1){1'b0}}};   //  初始设置为负最小值
        min_r <= {1'b0, {(INPUT_WIDTH-1){1'b1}}};   //  初始设置为正最大值
    end
    else begin
        //  将输入数据同时与最大最小值寄存器进行对比，确保两个寄存器都能被更新
        if($signed(dat_r) >= $signed(max_r)) begin
            max_r <= dat_r;
        end
        
        if($signed(dat_r) < $signed(min_r)) begin
            min_r <= dat_r;
        end
    end
end
    
//  信号输出
assign  max = max_r[OUT_WIDTH - 1 : 0];
assign  min = min_r[OUT_WIDTH - 1 : 0];
    
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
