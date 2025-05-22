`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 23:54:38
// Design Name: 
// Module Name: ASK_decision
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

// 对ASK信号进行判决
module ASK_decision
#(
    parameter IO_width = 14,
    parameter threshold = 14'd3500      // 判决门限
)( 
    input clk,
    input rst_n,
    
    input signed [IO_width-1 : 0] AM_demod,
    
    output signed [IO_width-1 : 0] ASK_out       // 判决后的ASK结果
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

reg signed [IO_width-1 : 0] AM_demod_dec;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        AM_demod_dec <= 0;      // 默认0
    end
    else begin     // 根据是否大于门限值设置输出为低(100)和高（5500）
        if (AM_demod_r <= threshold) begin
            AM_demod_dec <= 14'd5500;
        end
        else begin
            AM_demod_dec <= 14'd100;
        end
    end
end

assign ASK_out = AM_demod_dec;

endmodule
