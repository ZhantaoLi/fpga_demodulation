`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 14:58:16
// Design Name: 
// Module Name: Signal_discrim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 根据输入的一组布尔值，判断信号类型
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Signal_discrim
#(
    parameter IO_width = 14
)(
    input clk,      
    input rst_n,     // 低有效复位
    
    input meas_trigger,         // 开始检测的触发信号，高有效
    input judge_trigger,        // 开始判断的触发信号，高有效
    
    input A_const,  // 包络是否为直流
    input A_square,      // 包络是否为方波
    input signed [IO_width-1 :0] A_edge_interv,    // 包络的最小脉宽间隔（异种边沿间隔）
    
    input F_const,      // 频率是否为直流
    input F_square,     // 频率是否为方波

    output reg [2:0] signal_type        // 输出信号种类，格式见下
    );
    
// 信号类型常量，代表信号类型信息传送的具体格式 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // 初始值，无效

reg A_const_r;
reg A_square_r;
reg [IO_width-1 : 0] A_edge_interv_r;
reg F_const_r;
reg F_square_r;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        A_const_r <= 1'bz;
        A_square_r <= 1'bz;
        A_edge_interv_r <= {IO_width{1'bz}};
        F_const_r <= 1'bz;
        F_square_r <= 1'bz;
    end
    else begin
        if(meas_trigger) begin           // 待命状态受触发，清零数据
            A_const_r <= 1'bz;
            A_square_r <= 1'bz;
            A_edge_interv_r <= {IO_width{1'bz}};
            F_const_r <= 1'bz;
            F_square_r <= 1'bz;
        end
        else if(judge_trigger) begin     // 判断状态受触发，锁存数据
            A_const_r <= A_const;
            A_square_r <= A_square;
            A_edge_interv_r <= A_edge_interv;
            F_const_r <= F_const;
            F_square_r <= F_square;
        end
    end
end

// 判断信号种类
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        signal_type <= NA;
    end
    else if (judge_trigger) begin   // 受到触发后，判断信号种类，会有一个周期错误结果，但会被新的正确结果覆盖
        if ((~A_edge_interv_r[IO_width - 1]) && (A_edge_interv_r <= 5)) begin     // 如果相邻两个不同边沿间距离很小，为小于等于5大于0的正整数，则识别为2PSK信号
            signal_type <= PSK;
        end
        else begin       
            if (~A_const) begin // 若幅度不为常数
                if (A_square) begin    // 若幅度为方波，则识别为2ASK
                    signal_type <= ASK;
                end
                else begin              // 若幅度不为方波，则识别为AM
                    signal_type <= AM;
                end
            end
            else begin      // 幅度为常数
                if (~F_const) begin     // 如果频率不是常数
                    if (F_square) begin   // 若频率为方波，识别为2FSK
                        signal_type <= FSK;
                    end
                    else begin      // 若频率不为方波，识别为FM
                        signal_type <= FM;
                    end
                end
                else begin      
                    if (F_const) begin    // 如果频率也是常数，识别为CW
                        signal_type <= CW;
                    end
                end
            end
        end
    end
    else if (meas_trigger) begin        // 各模块开始测量时，将判断结果置为NA
        signal_type <= NA;
    end
end

endmodule
