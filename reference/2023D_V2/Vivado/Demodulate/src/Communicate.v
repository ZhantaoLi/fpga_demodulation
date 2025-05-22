`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/16 17:33:54
// Design Name: 
// Module Name: send
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


module Communicate#(
//  向stm32发送比特数据
//  stm32端默认接收速率是200k，分频后的时钟需匹配，或者也可以更改stm32代码
    parameter   CLK_DIV = 500,      //  时钟分频系数，只支持偶数分频，分频后时钟决定发送数据的速率
    parameter   BIT_WIDTH = 32      //  发送的比特数量

)(
    input                       clk,        //  输入时钟
    input                       rst_n,      //  复位，低电平有效
    input                       dready,     //  数据准备完毕信号，一个脉冲即可，需要和clk同步
    input   [BIT_WIDTH-1:0]     dat,        //  要发送的频率数据
    
    output  reg                 led,        //  观测用，每发一次新数据就翻转一次
    output  reg                 sda         //  数据线，需要与stm32的检测IO口连接
    );

localparam   N = CLK_DIV >> 1;  //  实际分频系数
//  模块状态
localparam  st_wait = 2'b01;    //  等待数据状态
localparam  st_send = 2'b10;    //  数据发送状态

reg     [1:0]   current_state;  //  当前状态
reg     [9:0]   bit_pos;        //  当前发送的bit位置
reg             busy;           //  1：模块正在发送数据，0：空闲状态
wire            send_exec;      //  发送执行脉冲

//  若数据准备完毕且模块处于空闲状态，则发起发送执行脉冲
assign  send_exec = dready & !busy; 

//  busy线的采样寄存器，用于检测busy线的下降沿，做状态转移条件使用
reg     busy_r0;
reg     busy_r1;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        busy_r0 <= 1'b0;
        busy_r1 <= 1'b1;
    end
    else begin
        busy_r0 <= busy;
        busy_r1 <= busy_r0;
    end
end

//  检测busy线下降沿
wire    busy_down;
assign  busy_down = ~busy_r0 & busy_r1;


//  状态转移模块
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin    
        current_state = st_wait;                //  默认为等待数据状态
        led <= 1'b0;
    end
    else begin
        case(current_state)                     //  状态转移条件
            st_wait: begin                      
                if(send_exec) begin             //  若当前为等待状态，则发送执行脉冲到来时进入发送数据状态
                    current_state = st_send;
                    led <= ~led;
                end
                else
                    current_state = st_wait;
            end
            st_send: begin                      
                if(busy_down)                   //  若为发送状态且有busy下降沿，则器件工作完毕，进入等待状态
                    current_state = st_wait;
                else
                    current_state = st_send;
            end
            default: current_state = st_wait;
        endcase
    end
end
    
//  发送数据装载模块
reg     [BIT_WIDTH-1:0]  dat_r;          //  频率数据寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dat_r <= {BIT_WIDTH{1'b0}};
    end
    else if(send_exec) begin    //  每有一次执行脉冲时，则将数据装载入发送寄存器
        dat_r <= dat;
    end
    else begin
        dat_r <= dat_r;
    end
end
    
//  时钟分频模块，决定发送数据的速率
reg     [31:0]  clk_cnt;
reg             clk_send;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        clk_cnt <= 32'd0;
        clk_send <= 1'b0;
    end
    else if(clk_cnt == N - 1'b1) begin
        clk_cnt <= 32'd0;
        clk_send <= ~clk_send;
    end
    else
        clk_cnt <= clk_cnt + 1'b1;
end
    
//  状态行为执行模块
always @(posedge clk_send or negedge rst_n) begin
    if(!rst_n) begin  
        busy <= 1'b0;   //  默认空闲状态
        bit_pos <= 0;   //  暂无发送比特
        sda <= 1'b0;    //  数据线拉低（stm32端是上升沿检测）
    end
    else begin
        case(current_state)             //  执行状态行为   
            st_wait: begin              //  等待状态时保持默认动作
                busy <= 1'b0;
                bit_pos <= 0;
                sda <= 1'b0;
            end
            st_send: begin
                if(bit_pos == 0) begin  //  第一个比特默认高电平，制造上升沿
                    busy <= 1'b1;
                    sda <= 1'b1;
                    bit_pos <= bit_pos + 1'b1;
                end
                else if(bit_pos == (BIT_WIDTH + 1'b1)) begin    //  最后一比特发送完毕后拉低busy线，等待状态转移
                    busy <= 1'b0;
                    sda <= 1'b0;
                    bit_pos <= 0;
                end
                else begin              //  从最高位开始往最低位发送
                    sda <= dat_r[BIT_WIDTH - bit_pos];
                    bit_pos <= bit_pos + 1'b1;
                end
            end
            default: ;
        endcase
    end
end
    
endmodule
