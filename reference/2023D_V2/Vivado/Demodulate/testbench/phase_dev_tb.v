`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 14:04:57
// Design Name: 
// Module Name: phase_dev_tb
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


module phase_dev_tb();
reg clk_6MHz;
reg rst;
reg [11:0] addr;
wire [31:0] spo;

initial begin
    addr <= 0;
    rst <= 0;
    clk_6MHz <= 0;
    # 20
    rst <= 1;
    # 20
    rst <= 0;
end

always # 83.3 clk_6MHz = ~clk_6MHz;
always @(posedge clk_6MHz) begin
    addr <= addr +1;
end

dist_mem_ph mem_ph (
  .a(addr),      // input wire [11 : 0] a
  .spo(spo)  // output wire [31 : 0] spo
);

wire signed [31:0] phase_in;
assign phase_in = spo - 2147483647;
Phase_dev_cal#(
    .Phase_width(32)      // 相位量化位数
) dev_cal(
    .clk(clk_6MHz),
    .rst(rst),                                      // 高电平有效复位
    .PM_demod(phase_in),
    
    .Phase_dev()       // 调频信号瞬时相位的极差
    );

endmodule
