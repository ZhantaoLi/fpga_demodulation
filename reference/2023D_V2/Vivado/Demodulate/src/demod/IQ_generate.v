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
// Description: �����ɵ���·�����ز���FM�ź���ˣ��Ӷ��õ�FM�źŵĸ����磨I��Q��·��
//              �������Ƶ��100MHz���������Ƶ��200kHz
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
    parameter Input_width = 10,     // ����λ��
    parameter Output_width = 13,    // ���λ��
    parameter sine_width = 13,      // ���Ҳ�λ����13λ�з��ţ����˲�������һ��
    parameter PH_width = 32,      // ��λ����λ����Ĭ��32
    parameter inter_freq = 2      // ��Ƶ����λMHz����ʾ����FM���ز���Ƶ�ʣ�С�ڲ���Ƶ�ʵ��ķ�֮һ����25MHz
)(
    input clk_36MHz,       // ����ʱ��100MHz����ʾ��ͨ�źŵĲ���Ƶ��
    input rst,          
    input signed [Input_width-1:0] band_sig_in,      // �����ͨ�źţ�����Ƶ��36MHz
    
    output signed [Output_width-1:0] sine_wav,   // �����ͨ�źŸ�����ʵ��
    output signed [Output_width-1:0] cosine_wav,    // �����ͨ�źŸ������鲿
    output signed [Output_width-1:0] comp_env_I,   // �����ͨ�źŸ�����ʵ��
    output signed [Output_width-1:0] comp_env_Q,    // �����ͨ�źŸ������鲿
    output clk_1_8MHz   // Matlab������CIC�Դ�ʱ�ӷ�Ƶ���ã�ͨ��20���²������Զ�36MHzʱ�ӷ�Ƶ�õ�1.8MHzʱ��
    
);

// Ƶ�ʿ����֣���ʾ�ڵ�ǰ����Ƶ�ʵ�����������ֵ�£������ز�����λ����ֵ�Ĳ�ֵ
// ��������Ϊ��-pi~pi�ķ�Χ����32bit����������һ������λ
// 36MHz����Ƶ���£���һ��Ƶ��f_i MHz�����Ҳ����в�����ÿ�������� 36/f_i ����ֵ��ÿ��������λ�仯2pi
// ����������ֵ��仯��λ 2pi/(36/f_i) = pi * f_i/18
// pi����Ϊ32bit��ԼΪ2^31 - 1 = 2147483647
// �� f_i/18 Ҳ���ǷŴ�2^32��������pi������ֵ��ˣ��������32λ
// ���￼��1/18�Ŵ�2^32����Ϊ238609294������ֵ���Դ�Ϊ��׼�õ�
// ��������ǰ�˷�������Ϊ (2^31 - 1) * 2^32����Ҫ64λ��ʾ 
localparam [PH_width*2 - 1:0] freq_word = (32'd2147483647 * 32'd238609294 * inter_freq) >> 32;

// ���ɵ���·�����ز�
// ��XY����λ��Ϊ13λ����£������cos��sinֵ��λ��[-4095 , +4095]��Χ�ڣ���ʵ����������ֵ����4095�Ľ��
wire signed [sine_width - 1:0] cos;
wire signed [sine_width - 1:0] sin;

// CORDIC�㷨������·�����ز�   
Cordic #(
	.XY_BITS(sine_width),			// �㷨�к��������λ������󾫶�12λ
	.PH_BITS(PH_width),			// �㷨�нǶ�����ֵ��λ������󾫶�32λ
	.ITERATIONS(sine_width),			// ��������32����������Խ�࣬����"��ת"�ĽǶȾ�ԽС���õ��Ľ��Խ��ȷ
	.CORDIC_STYLE("ROTATE"),		// CORDIC�㷨��ģʽ�������Ϊ"ROTATE"������cos��sin����"VECTOR"(����tan-1)����
    .PHASE_ACC("ON")
)cordic_u(
	.clk_in(clk_36MHz),							// ����ʱ�ӣ�ʱ��Ƶ�ʾ������㷨ÿһ�ε�����ִ������
	.RST(rst),							// ��λ
	.x_i(),		// ��������꣬��ʾ��תδ��ʼʱ��λ��
	.y_i(),		// ���������꣬��ʾ��תδ��ʼʱ��λ��
	.phase_in(freq_word[PH_width-1:0]),	// ������λ���Ƕȣ�������תģʽ�£������λ���ǵ�����ת������Ŀ��

	.x_o(cos),		// ��������꣬����תģʽ�£�������˿����cos
	.y_o(sin),		// ��������꣬����תģʽ�£�������˿����sin
	.phase_out(), // �����λ���Ƕȣ�����ʸ��ģʽ�£�������˿����tan-1�����ǣ��ļ�����
	.magnitude(),

	.valid_in(1'b1), 
	.valid_out()
);

// ���������ͨ�ź��������ز���˵Ľ�����˷����λ��Ϊ 2*(13-1)+1 = 25λ
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

// CIC�˲����������λ������CIC����ȷ��
localparam CIC_in_width = sine_width;
localparam CIC_out_width = 26;
// CIC�˲����������
wire signed [CIC_in_width-1:0] CIC_in_I;
wire signed [CIC_in_width-1:0] CIC_in_Q;
wire signed [CIC_out_width-1:0] CIC_out_I;
wire signed [CIC_out_width-1:0] CIC_out_Q;

// 26λ�˷����ת��Ϊ13λ��ȡ25~13λ
assign CIC_in_I = mul_cos[sine_width + Input_width - 1: Input_width];
assign CIC_in_Q = mul_sin[sine_width + Input_width - 1: Input_width];
 
// I·CIC�˲������²���50�����������Ƶ��2MHz
CIC_decimation_20_fs36MHz CIC_I(
                .clk(clk_36MHz),
                .clk_enable(1'b1),
                .reset(rst),
                .filter_in(CIC_in_I),
                .filter_out(CIC_out_I),
                .ce_out(clk_1_8MHz)
                );
                
// Q·CIC�˲������²���50�����������Ƶ��2MHz
CIC_decimation_20_fs36MHz CIC_Q(
                .clk(clk_36MHz),
                .clk_enable(1'b1),
                .reset(rst),
                .filter_in(CIC_in_Q),
                .filter_out(CIC_out_Q),
                .ce_out()
                );

//  30λCIC���ת��Ϊ13λ��׼���
assign comp_env_I = {CIC_out_I[CIC_out_width - 1], CIC_out_I[CIC_out_width - 5 : CIC_out_width - Output_width - 3]};
assign comp_env_Q = {CIC_out_Q[CIC_out_width - 1], CIC_out_Q[CIC_out_width - 5 : CIC_out_width - Output_width - 3]};
assign sine_wav = sin;
assign cosine_wav = cos;
endmodule
