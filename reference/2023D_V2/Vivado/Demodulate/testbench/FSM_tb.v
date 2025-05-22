`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 08:53:02
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb();

reg clk_1_8MHz;
reg sys_rst_n;
reg meas_start_key_n;
wire [2:0] cur_state;
wire meas_trigger;
wire output_trigger;

initial begin
    clk_1_8MHz = 0;
    sys_rst_n = 1;
    meas_start_key_n = 1;
    # 10
    sys_rst_n = 0;
    # 2000
    sys_rst_n = 1;
    # 400
    meas_start_key_n = 0;
    # 200
    meas_start_key_n = 1;
end
TOP_FSM FSM_u(
    .clk(clk_1_8MHz),
    .rst_n(sys_rst_n),
    .meas_start_key_n(meas_start_key_n),     // 启动检测按键，低有效
    
    .meas_trigger(meas_trigger),        // 触发各模块开始检测的信号
    .output_trigger(output_trigger),       // 触发各模块开始输出的信号
    .state(cur_state)          // 当前状态，Debug用
    );

always #278 clk_1_8MHz = ~clk_1_8MHz;
endmodule
