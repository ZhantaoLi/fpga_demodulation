`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/17 17:32:15
// Design Name: 
// Module Name: IQ_generate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 将生成的两路正交载波与FM信号相乘，从而得到FM信号的复包络（I、Q两路）
//              输入采样频率100MHz，输出采样频率200kHz
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IQ_generate
#(
    parameter Input_width = 10,     // 输入位数
    parameter Output_width = 13,    // 输出位数
    parameter sine_width = 13,      // 正弦波位数，13位有符号，与滤波器保持一致
    parameter PH_width = 32,      // 相位量化位数，默认32
    parameter inter_freq = 2      // 中频，单位MHz，表示输入FM波载波的频率，小于采样频率的四分之一，即25MHz
)(
    input clk_36MHz,       // 输入时钟100MHz，表示带通信号的采样频率
    input rst,          
    input signed [Input_width-1:0] band_sig_in,      // 输入带通信号，采样频率36MHz
    
    output signed [Output_width-1:0] sine_wav,   // 输出带通信号复包络实部
    output signed [Output_width-1:0] cosine_wav,    // 输出带通信号复包络虚部
    output signed [Output_width-1:0] comp_env_I,   // 输出带通信号复包络实部
    output signed [Output_width-1:0] comp_env_Q,    // 输出带通信号复包络虚部
    output clk_1_8MHz   // Matlab导出的CIC自带时钟分频作用，通过20倍下采样可以对36MHz时钟分频得到1.8MHz时钟
    
);

// 频率控制字，表示在当前采样频率的相邻两个样值下，生成载波的相位量化值的差值
// 量化规则为对-pi~pi的范围进行32bit量化，包含一个符号位
// 36MHz采样频率下，对一个频率f_i MHz的正弦波进行采样，每个周期有 36/f_i 个样值，每个周期相位变化2pi
// 相邻两个样值间变化相位 2pi/(36/f_i) = pi * f_i/18
// pi量化为32bit后约为2^31 - 1 = 2147483647
// 而 f_i/18 也考虑放大2^32倍后再与pi的量化值相乘，结果右移32位
// 这里考虑1/18放大2^32倍后为238609294，其他值都以此为基准得到
// 由于右移前乘法结果最大为 (2^31 - 1) * 2^32，需要64位表示 
localparam [PH_width*2 - 1:0] freq_word = (32'd2147483647 * 32'd238609294 * inter_freq) >> 32;

// 生成的两路正交载波
// 在XY量化位数为13位情况下，输出的cos和sin值均位于[-4095 , +4095]范围内，是实际正、余弦值乘以4095的结果
wire signed [sine_width - 1:0] cos;
wire signed [sine_width - 1:0] sin;

// CORDIC算法生成两路正交载波   
Cordic #(
	.XY_BITS(sine_width),			// 算法中横纵坐标的位数，最大精度12位
	.PH_BITS(PH_width),			// 算法中角度量化值的位数，最大精度32位
	.ITERATIONS(sine_width),			// 迭代次数32，迭代次数越多，最终"旋转"的角度就越小，得到的结果越精确
	.CORDIC_STYLE("ROTATE"),		// CORDIC算法的模式，这里分为"ROTATE"（计算cos和sin）和"VECTOR"(计算tan-1)两种
    .PHASE_ACC("ON")
)cordic_u(
	.clk_in(clk_36MHz),							// 输入时钟，时钟频率决定了算法每一次迭代的执行速率
	.RST(rst),							// 复位
	.x_i(),		// 输入横坐标，表示旋转未开始时的位置
	.y_i(),		// 输入纵坐标，表示旋转未开始时的位置
	.phase_in(freq_word[PH_width-1:0]),	// 输入相位（角度），在旋转模式下，这个相位就是迭代旋转的最终目标

	.x_o(cos),		// 输出横坐标，在旋转模式下，由这个端口输出cos
	.y_o(sin),		// 输出纵坐标，在旋转模式下，由这个端口输出sin
	.phase_out(), // 输出相位（角度），在矢量模式下，由这个端口输出tan-1（辐角）的计算结果
	.magnitude(),

	.valid_in(1'b1), 
	.valid_out()
);

// 定义输入带通信号与正交载波相乘的结果，乘法结果位数为 2*(13-1)+1 = 25位
wire signed [sine_width + Input_width - 1:0] mul_cos;
wire signed [sine_width + Input_width - 1:0] mul_sin;

mult_gen_0 mult_I(
  .A(cos),  // input wire [12 : 0] A
  .B(band_sig_in),  // input wire [9 : 0] B
  .P(mul_cos)  // output wire [22 : 0] P
);

mult_gen_0 mult_Q (
  .A(~sin + 1'b1),  // input wire [12 : 0] A
  .B(band_sig_in),  // input wire [9 : 0] B
  .P(mul_sin)  // output wire [22 : 0] P
);

// CIC滤波器输入输出位数，由CIC本身确定
localparam CIC_in_width = sine_width;
localparam CIC_out_width = 26;
// CIC滤波器输入输出
wire signed [CIC_in_width-1:0] CIC_in_I;
wire signed [CIC_in_width-1:0] CIC_in_Q;
wire signed [CIC_out_width-1:0] CIC_out_I;
wire signed [CIC_out_width-1:0] CIC_out_Q;

// 26位乘法结果转化为13位，取25~13位
assign CIC_in_I = mul_cos[sine_width + Input_width - 1: Input_width];
assign CIC_in_Q = mul_sin[sine_width + Input_width - 1: Input_width];
 
// I路CIC滤波器，下采样50倍，输出采样频率2MHz
CIC_decimation_20_fs36MHz CIC_I(
                .clk(clk_36MHz),
                .clk_enable(1'b1),
                .reset(rst),
                .filter_in(CIC_in_I),
                .filter_out(CIC_out_I),
                .ce_out(clk_1_8MHz)
                );
                
// Q路CIC滤波器，下采样50倍，输出采样频率2MHz
CIC_decimation_20_fs36MHz CIC_Q(
                .clk(clk_36MHz),
                .clk_enable(1'b1),
                .reset(rst),
                .filter_in(CIC_in_Q),
                .filter_out(CIC_out_Q),
                .ce_out()
                );

//  30位CIC输出转化为13位标准输出
assign comp_env_I = {CIC_out_I[CIC_out_width - 1], CIC_out_I[CIC_out_width - 5 : CIC_out_width - Output_width - 3]};
assign comp_env_Q = {CIC_out_Q[CIC_out_width - 1], CIC_out_Q[CIC_out_width - 5 : CIC_out_width - Output_width - 3]};
assign sine_wav = sin;
assign cosine_wav = cos;
endmodule
