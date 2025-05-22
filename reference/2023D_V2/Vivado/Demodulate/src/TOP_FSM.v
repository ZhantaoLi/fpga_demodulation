`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 22:46:27
// Design Name: 
// Module Name: TOP_FSM
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

module TOP_FSM(
    input clk,
    input rst_n,
    input meas_start_key_n,     // 启动检测按键，低有效
    
    output reg meas_trigger,        // 触发各模块开始检测的信号
    output reg judge_trigger,       // 触发信号类型判断模块的信号
    output reg output_trigger,      // 触发各模块开始输出的信号
    output reg transmit_trigger,       // 触发发送消息模块的信号 
    
    output [2:0] state          // 当前状态，Debug用
    );

// 定义主模块状态
localparam IDLE = 3'b000;        // 空闲状态，未按下检测按钮时的状态
localparam STANDBY = 3'b001;     // 等待状态，按下检测按钮后，等待检测结果，持续20ms
localparam JUDGE = 3'b010;       // 判断状态，根据检测结果判断信号类型，持续4ms
localparam OUTPUT = 3'b011;      // 根据检测结果，生成消息并设置DAC输出的状态，持续20ms
localparam TRANSMIT_1 = 3'b100;    // 发送生成第一节消息的状态，持续5ms
localparam TRANSMIT_2 = 3'b101;    // 发送生成第二节消息的状态，持续5ms


reg [2:0] cur_state;        // 当前状态
reg [2:0] next_state;       // 下一状态
assign state = cur_state;


// 消抖
reg [13:0]cnt_5ms;  // 在1.8MHz时钟频率下，计时5ms，即计0~8999
localparam cnt_limit = 14'd8999;    // 计数限

//cnt_5ms毫秒计数器，只要检测到按键为高电平，就重置，否则累加，最大累加至9000
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        cnt_5ms <= 1'b0;
    end
    else begin
        if (~meas_start_key_n) begin
            if (cnt_5ms <= cnt_limit) begin
                cnt_5ms <= cnt_5ms + 1'b1;
            end
            else begin
                cnt_5ms <= cnt_5ms;
            end
        end
        else begin
            cnt_5ms <= 1'b0;
        end
    end
end
wire key_pressed;    // 当判断按键已被按下时，输出一个时钟周期的高电平，其余为低电平
assign key_pressed = (~meas_start_key_n) & (cnt_5ms == 14'd8999);


// 状态转移
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        cur_state <= IDLE;       // 默认空闲
    end
    else begin
        cur_state <= next_state;
    end
end

// 确定转移方向
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        next_state <= IDLE;       // 默认空闲
    end
    else begin
        case(cur_state)
            IDLE:   // 处于空闲状态下时，当开始检测按键按下时，进入等待状态
                if(key_pressed) begin
                    next_state <= STANDBY;
                end
            STANDBY:   // 处于待命状态下时，计数器计满时进入判断状态
                if(standby_cnt == standby_cycles) begin
                    next_state <= JUDGE;
                end
            JUDGE:   // 处于判断状态下时，计数器计满时进入输出状态
                if(judge_cnt == judge_cycles) begin
                    next_state <= OUTPUT;
                end
            OUTPUT:   // 处于输出状态下时，计数器计满时进入空闲状态
                if(output_cnt == output_cycles) begin
                    next_state <= TRANSMIT_1;
                end
            TRANSMIT_1:   // 处于发送第一节状态下时，计数器计满时进入发送第二节状态
                if(transmit1_cnt == transmit_cycles) begin
                    next_state <= TRANSMIT_2;
                end
            TRANSMIT_2:   // 处于发送第二节状态下时，计数器计满时进入空闲状态
                if(transmit2_cnt == transmit_cycles) begin
                    next_state <= IDLE;
                end
        endcase
    end
end

// 规定主模块会等待80ms，在这段时间内等待所有判断、计算子模块工作完毕
// 考虑到使用1.8MHz时钟进行同步，等待80ms相当于等待1.8M/12.5 = 144000个周期，这需要18位无符号数存储
localparam standby_cycles = 18'd144000;
reg [17:0] standby_cnt;

// 状态行为
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        standby_cnt <= 0;       // 计数器清零
    end
    else begin
        case(cur_state)
            STANDBY:   // 处于待命状态下时，计数器自加
                if(standby_cnt != standby_cycles) begin
                    standby_cnt <= standby_cnt + 1'b1;
                end
            JUDGE:    // 处于判断状态下时，计数器清零
                if(standby_cnt != 0) begin
                    standby_cnt <= 0;
                end
        endcase
    end
end

// 规定主模块会等待4ms，在这段时间内等待所有判断、计算子模块工作完毕
// 考虑到使用1.8MHz时钟进行同步，等待4ms相当于等待1.8M/250 = 7200个周期，这需要13位无符号数存储
localparam judge_cycles = 13'd7200;
reg [12:0] judge_cnt;  

// 状态行为
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        judge_cnt <= 0;       // 计数器清零
    end
    else begin
        case(cur_state)
            JUDGE:   // 处于判断状态下时，计数器自加
                if(judge_cnt != judge_cycles) begin
                    judge_cnt <= judge_cnt + 1'b1;
                end
            OUTPUT:    // 处于输出状态下时，计数器清零
                if(judge_cnt != 0) begin
                    judge_cnt <= 0;
                end
        endcase
    end
end


// 规定主模块会等待20ms，在这段时间内等待数据生成、DAC选择执行完毕
// 考虑到使用1.8MHz时钟进行同步，等待20ms相当于等待1.8M/50 = 36000个周期，这需要16位无符号数存储
localparam output_cycles = 16'd36000;
reg [15:0] output_cnt;
// 状态行为
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        output_cnt <= 0;       // 计数器清零
    end
    else begin
        case(cur_state)
            OUTPUT:   // 处于待命状态下时，计数器自加
                if(output_cnt != output_cycles) begin
                    output_cnt <= output_cnt + 1'b1;
                end
            TRANSMIT_1:    // 处于发送第一节状态下时，计数器清零
                if(output_cnt != 0) begin
                    output_cnt <= 0;
                end
        endcase
    end
end


// 规定主模块会分别等待10ms，在这段时间内等待第一、第二节数据发送完毕
// 考虑到使用1.8MHz时钟进行同步，等待10ms相当于等待1.8M/100 = 18000个周期，这需要15位无符号数存储
localparam transmit_cycles = 15'd18000;
reg [14:0] transmit1_cnt;
reg [14:0] transmit2_cnt;
// 状态行为
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        transmit1_cnt <= 0;       // 计数器清零
    end
    else begin
        case(cur_state)
            TRANSMIT_1:   // 处于发送第一节状态下时，计数器自加
                if(transmit1_cnt != transmit_cycles) begin
                    transmit1_cnt <= transmit1_cnt + 1'b1;
                end
            TRANSMIT_2:    // 处于发送第二节状态下时，计数器清零
                if(transmit1_cnt != 0) begin
                    transmit1_cnt <= 0;
                end
        endcase
    end
end

// 状态行为
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        transmit2_cnt <= 0;       // 计数器清零
    end
    else begin
        case(cur_state)
            TRANSMIT_2:   // 处于发送第一节状态下时，计数器自加
                if(transmit2_cnt != transmit_cycles) begin
                    transmit2_cnt <= transmit2_cnt + 1'b1;
                end
            IDLE:    // 处于空闲状态下时，计数器清零
                if(transmit2_cnt != 0) begin
                    transmit2_cnt <= 0;
                end
        endcase
    end
end

reg [1:0] cnt_pulse_meas;      // 检测脉冲计数器
reg [1:0] cnt_pulse_jud;       // 判断脉冲计数器
reg [1:0] cnt_pulse_out;       // 输出脉冲计数器
reg [1:0] cnt_pulse_trans1;       // 发送第一节脉冲计数器
reg [1:0] cnt_pulse_trans2;       // 发送第二节脉冲计数器


localparam pulse_len = 2'b10;       // 脉冲长度2
localparam trans_pulse_len = 2'b01;  // 发送消息脉冲长度1

// 产生开始测量脉冲
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        meas_trigger <= 0; 
        judge_trigger <= 0;  
        output_trigger <= 0;    
        transmit_trigger <= 0;
    end
    else begin
        case(cur_state)
            STANDBY:   // 处于待命状态下时，产生宽度2时钟周期的脉冲
                if(cnt_pulse_meas != pulse_len) begin
                    meas_trigger <= 1;
                end
                else begin
                    meas_trigger <= 0;
                end
            JUDGE:   // 处于判断状态下时，产生宽度2时钟周期的脉冲
                if(cnt_pulse_jud != pulse_len) begin
                    judge_trigger <= 1;
                end
                else begin
                    judge_trigger <= 0;
                end
            OUTPUT:    // 处于输出状态下时，产生宽度2时钟周期的脉冲
                if(cnt_pulse_out != pulse_len) begin
                    output_trigger <= 1;
                end
                else begin
                    output_trigger <= 0;
                end
            TRANSMIT_1:    // 处于发送第一节状态下时，产生宽度1时钟周期的脉冲
                if(cnt_pulse_trans1 != trans_pulse_len) begin
                    transmit_trigger <= 1;
                end
                else begin
                    transmit_trigger <= 0;
                end
            TRANSMIT_2:    // 处于发送第二节状态下时，产生宽度1时钟周期的脉冲
                if(cnt_pulse_trans2 != trans_pulse_len) begin
                    transmit_trigger <= 1;
                end
                else begin
                    transmit_trigger <= 0;
                end
        endcase
    end
end

always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        cnt_pulse_meas <= 0;    
        cnt_pulse_jud <= 0;  
        cnt_pulse_out <= 0; 
        cnt_pulse_trans1 <= 0;
        cnt_pulse_trans2 <= 0;
    end
    else begin
        case(cur_state)
            IDLE: begin     // 空闲状态下清零
                cnt_pulse_meas <= 0;  
                cnt_pulse_jud <= 0;    
                cnt_pulse_out <= 0;  
                cnt_pulse_trans1 <= 0;
                cnt_pulse_trans2 <= 0;
            end
            STANDBY:   // 处于待命状态下时，产生宽度2时钟周期的脉冲
                if(cnt_pulse_meas != pulse_len) begin
                    cnt_pulse_meas <= cnt_pulse_meas + 1'b1;
                end
            JUDGE:   // 处于判断状态下时，产生宽度2时钟周期的脉冲
                if(cnt_pulse_jud != pulse_len) begin
                    cnt_pulse_jud <= cnt_pulse_jud + 1'b1;
                end
            OUTPUT:    // 处于输出状态下时，也产生宽度2时钟周期的脉冲
                if(cnt_pulse_out != pulse_len) begin
                    cnt_pulse_out <= cnt_pulse_out + 1'b1;
                end
            TRANSMIT_1:  // 处于发送第一节状态下时，产生宽度1时钟周期的脉冲
                if(cnt_pulse_trans1 != trans_pulse_len) begin
                    cnt_pulse_trans1 <= cnt_pulse_trans1 + 1'b1;
                end
            TRANSMIT_2:  // 处于发送第二节状态下时，产生宽度1时钟周期的脉冲
                if(cnt_pulse_trans2 != trans_pulse_len) begin
                    cnt_pulse_trans2 <= cnt_pulse_trans2 + 1'b1;
                end
        endcase
    end
end

endmodule
