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
    // �����������λ��
    parameter Input_width = 13,
    parameter Output_width = 14,
    // ��λ����λ��
    parameter Phase_width = 32,
    parameter Phase_dev_width = 42
)(
    input clk_in,
    input rst,  // ����Ч��λ
    
    input meas_trigger,     // ��ʼ�����ļ�������
    // ����I��Q��·����
    input signed [Input_width-1 : 0] I,
    input signed [Input_width-1 : 0] Q,
    // ���AM��PM��FM������
    output reg signed [Output_width-1 : 0] AM_demod,
    output reg signed [Output_width-1 : 0] PM_demod,
    output reg signed [Output_width-1 : 0] FM_demod,
    
    // ��������ƫ
    output reg signed [Phase_dev_width-1 : 0] Phase_dev_r,
    
    output signed [Phase_dev_width-1 : 0] Phase_max,
    output signed [Phase_dev_width-1 : 0] Phase_min
);

// CORDICģ������������ֱ�ΪI��Q·�źż�����I+jQ��ģ�ͷ���
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
	.XY_BITS(Input_width),			// �㷨�к��������λ����Ĭ�Ͼ���12λ
	.PH_BITS(Phase_width),			// �㷨�нǶ�����ֵ��λ����Ĭ�Ͼ���32λ
	.ITERATIONS(Input_width-3),		// ��������32����������Խ�࣬����"��ת"�ĽǶȾ�ԽС���õ��Ľ��Խ��ȷ
	.CORDIC_STYLE("VECTOR"),		// CORDIC�㷨��ģʽ�������Ϊ"ROTATE"������cos��sin����"VECTOR"(����tan-1)����
	.PHASE_ACC("OFF")
)Cordic_u(
	.clk_in(clk_in),							// ����ʱ�ӣ�ʱ��Ƶ�ʾ������㷨ÿһ�ε�����ִ������
	.RST(rst),							// ��λ
	.x_i(I_reg),		// ��������꣬��ʾ��תδ��ʼʱ��λ��
	.y_i(Q_reg),		// ���������꣬��ʾ��תδ��ʼʱ��λ��
	.phase_in(32'b0),	// ������λ���Ƕȣ�����ʸ��ģʽ��Ĭ��0

	.x_o(),		// ��������꣬����תģʽ�£�������˿����cos
	.y_o(),		// ��������꣬����תģʽ�£�������˿����sin
	.phase_out(phase_out), // �����λ���Ƕȣ�����ʸ��ģʽ�£�������˿�������ǵļ�����
	.magnitude(magnitude_out),   // ������ȣ���ʸ��ģʽ�£�������˿����������������Ӧ�ķ��ȣ���������������һλ

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
        AM_demod <= magnitude_out << 3;                                         // �Ŵ���������۲췢�ֽ���������λû���õ�
        PM_demod <= phase_out[Phase_width-1 : Phase_width-Output_width];        // ȡ��14λ
    end
end

reg [Phase_width-1:0] Phase_delayed;      // ʱ��һ����λ��PM������
always @(posedge clk_in or posedge rst) begin
    if (rst) begin
        Phase_delayed <= 0;
    end
    else begin
        Phase_delayed <= phase_out;
    end
end

// ��PM����������֣��õ�FM������
// CORDIC�㷨����õ���arctanֵ��-pi~pi֮�䣬��ʵ���źŵ����ز�Ƶ��ʱ��˲ʱ��ƫ�ľ���ֵ���ܻᳬ��pi
// �ڵ�ǰ�߲��������£��Ϳ��ܳ����������������
// 1��ǰһ����λ��-pi���ϣ���һ����λ��-pi���£���Ϊ��+pi������������λ�仯��-theta(theta>0)��ʵ����λ�仯��2pi-theta
// 2��ǰһ����λ��pi���£���һ����λ��pi���ϣ���Ϊ��-pi������������λ�仯��theta��ʵ����λ�仯��theta-2pi

// ��ʵ��ͨ���з�����������������ԣ��Ϳ��Խ�ʵ����λ�仯��ת��Ϊ������λ�仯���������������
// 1.ǰһ����λ��-pi���ϣ���һ����λ��+pi�������������۽��2pi-theta����������Ҫ32λ��������33λ����з��������ҵ�32λһ��Ϊ1
//	�������ۼ�����Ϊ2pi-theta =  {2'b01, A(31λ)}����ʵ����ȥ��һλ�Ľ��Ϊ{1'b1, A}��ת��Ϊ������Ϊ{1'b0, ~A+1}
//	����{2'b01, A(31λ)} + {1'b0, ~A+1} = {2'b01,32'b0} = 2pi������ȥ��һλ��õ��ľ���-theta
// 2.ǰһ����λ��pi���£���һ����λ��-pi�������������۽��theta-2pi����������Ҫ32λ��������33λ����з��������ҵ�32λһ��Ϊ0
//	�������ۼ�����Ϊtheta-2pi =  {2'b10, A(31λ)}����ʵ����ȥ��һλ�Ľ��Ϊ{1'b0, A}����һ����������ת��Ϊ����Ϊ{1'b1, ~A+1}
//	����{3'b110, A(31λ)}(��չһλ����λ) + {3'b111, ~A+1}����չ��λ����λ�� =(��ȥһ��1) {3'b110,32'b0} = -2pi������ȥ��һλ��õ��ľ���theta
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
// ���������ƫ���Եõ�����ָ��
Phase_dev_cal#(
   .Phase_width(Phase_width),      // ��λ����λ��
   .Phase_dev_width(Phase_dev_width)
)phase_dev_u(
    .clk(clk_in),
    .rst(rst),                                      // �ߵ�ƽ��Ч��λ
    .trigger(meas_trigger),                                  // ��ģ������ģ��ļ���
    .PM_demod(phase_out),       // ��������λ
 
    .Phase_dev(Phase_dev),       // ��Ƶ�ź�˲ʱ��λ�ļ���
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
