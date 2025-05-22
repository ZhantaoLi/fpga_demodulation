`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 16:26:30
// Design Name: 
// Module Name: Demodulate
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


module Demodulate#(
    // 输入输出量化位数
    parameter Input_width = 13,
    parameter Output_width = 14,
    // 相位量化位数
    parameter Phase_width = 32,
    parameter Phase_dev_width = 42
)(
    input clk_in,
    input rst,  // 高有效复位
    
    input meas_trigger,     // 开始测量的激励脉冲
    // 输入I、Q两路数据
    input signed [Input_width-1 : 0] I,
    input signed [Input_width-1 : 0] Q,
    // 输出AM、PM、FM解调结果
    output reg signed [Output_width-1 : 0] AM_demod,
    output reg signed [Output_width-1 : 0] PM_demod,
    output reg signed [Output_width-1 : 0] FM_demod,
    
    // 输出最大相偏
    output reg signed [Phase_dev_width-1 : 0] Phase_dev_r,
    
    output signed [Phase_dev_width-1 : 0] Phase_max,
    output signed [Phase_dev_width-1 : 0] Phase_min
);

// CORDIC模块输入输出，分别为I、Q路信号及复数I+jQ的模和辐角
reg signed [Input_width-1 : 0] I_reg;
reg signed [Input_width-1 : 0] Q_reg;
wire signed [Phase_width-1 : 0] phase_out;
wire signed [Output_width-1 : 0] magnitude_out;

always@ (posedge clk_in or posedge rst)
begin
    if (rst) begin
        I_reg <= 0;
        Q_reg <= 0;
    end
    else begin
        I_reg <= I;
        Q_reg <= Q;
    end
end

Cordic #(
	.XY_BITS(Input_width),			// 算法中横纵坐标的位数，默认精度12位
	.PH_BITS(Phase_width),			// 算法中角度量化值的位数，默认精度32位
	.ITERATIONS(Input_width-3),		// 迭代次数32，迭代次数越多，最终"旋转"的角度就越小，得到的结果越精确
	.CORDIC_STYLE("VECTOR"),		// CORDIC算法的模式，这里分为"ROTATE"（计算cos和sin）和"VECTOR"(计算tan-1)两种
	.PHASE_ACC("OFF")
)Cordic_u(
	.clk_in(clk_in),							// 输入时钟，时钟频率决定了算法每一次迭代的执行速率
	.RST(rst),							// 复位
	.x_i(I_reg),		// 输入横坐标，表示旋转未开始时的位置
	.y_i(Q_reg),		// 输入纵坐标，表示旋转未开始时的位置
	.phase_in(32'b0),	// 输入相位（角度），在矢量模式下默认0

	.x_o(),		// 输出横坐标，在旋转模式下，由这个端口输出cos
	.y_o(),		// 输出纵坐标，在旋转模式下，由这个端口输出sin
	.phase_out(phase_out), // 输出相位（角度），在矢量模式下，由这个端口输出辐角的计算结果
	.magnitude(magnitude_out),   // 输出幅度，在矢量模式下，由这个端口输出输入横纵坐标对应的幅度，比输入横纵坐标多一位

	.valid_in(1'b1), 
	.valid_out()
);

always@ (posedge clk_in or posedge rst)
begin
    if (rst) begin
        AM_demod <= 0;
        PM_demod <= 0;
    end
    else begin
        AM_demod <= magnitude_out << 3;                                         // 放大解调结果，观察发现解调结果高三位没有用到
        PM_demod <= phase_out[Phase_width-1 : Phase_width-Output_width];        // 取高14位
    end
end

reg [Phase_width-1:0] Phase_delayed;      // 时延一个单位的PM解调结果
always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        Phase_delayed <= 0;
    end
    else begin
        Phase_delayed <= phase_out;
    end
end

// 对PM解调结果做差分，得到FM解调结果
// CORDIC算法计算得到的arctan值在-pi~pi之间，但实际信号调制载波频率时，瞬时相偏的绝对值可能会超过pi
// 在当前高采样速率下，就可能出现以下两种情况：
// 1、前一个相位在-pi以上，后一个相位在-pi以下，变为在+pi附近，理论相位变化量-theta(theta>0)，实际相位变化量2pi-theta
// 2、前一个相位在pi以下，后一个相位在pi以上，变为在-pi附近，理论相位变化量theta，实际相位变化量theta-2pi

// 而实际通过有符号数减法的溢出特性，就可以将实际相位变化量转化为理论相位变化量，考虑两种情况
// 1.前一个相位在-pi以上，后一个相位在+pi附近，减法理论结果2pi-theta，这个结果需要32位量化，共33位组成有符号数，且第32位一定为1
//	假设理论计算结果为2pi-theta =  {2'b01, A(31位)}，则实际舍去第一位的结果为{1'b1, A}，转化为正数则为{1'b0, ~A+1}
//	由于{2'b01, A(31位)} + {1'b0, ~A+1} = {2'b01,32'b0} = 2pi，故舍去第一位后得到的就是-theta
// 2.前一个相位在pi以下，后一个相位在-pi附近，减法理论结果theta-2pi，这个结果需要32位量化，共33位组成有符号数，且第32位一定为0
//	假设理论计算结果为theta-2pi =  {2'b10, A(31位)}，则实际舍去第一位的结果为{1'b0, A}，是一个正数，其转化为负数为{1'b1, ~A+1}
//	由于{3'b110, A(31位)}(扩展一位符号位) + {3'b111, ~A+1}（扩展两位符号位） =(舍去一个1) {3'b110,32'b0} = -2pi，故舍去第一位后得到的就是theta
reg signed [Phase_width-1 : 0] FM_demod_extend;
always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        FM_demod <= 0;
        FM_demod_extend <= 0;
    end
    else begin
        FM_demod <= {FM_demod_extend[Phase_width-1], FM_demod_extend[Phase_width-6 : Phase_width-Output_width-4]};
        FM_demod_extend <= $signed(phase_out) - $signed(Phase_delayed);
    end
end

wire signed [Phase_dev_width-1 : 0] Phase_dev;
// 计算最大相偏，以得到调制指数
Phase_dev_cal#(
   .Phase_width(Phase_width),      // 相位量化位数
   .Phase_dev_width(Phase_dev_width)
)phase_dev_u(
    .clk(clk_in),
    .rst(rst),                                      // 高电平有效复位
    .trigger(meas_trigger),                                  // 主模块给予该模块的激励
    .PM_demod(phase_out),       // 输入解调相位
 
    .Phase_dev(Phase_dev),       // 调频信号瞬时相位的极差
    .Phase_max_r(Phase_max),
    .Phase_min_r(Phase_min)
    );

always@ (posedge clk_in or posedge rst)
begin
    if (rst) begin
        Phase_dev_r <= 0;
    end
    else begin
        Phase_dev_r <= Phase_dev;
    end
end

endmodule
