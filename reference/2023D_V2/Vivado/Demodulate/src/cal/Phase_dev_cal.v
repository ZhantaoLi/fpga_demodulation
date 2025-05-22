`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 20:44:33
// Design Name: 2023_D
// Module Name: Phase_dev_cal
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: calculate the phase deviation of FM signal in order to acquire modulation index
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Phase_dev_cal#(
    parameter Phase_width = 32,      // ��λ����λ��
    parameter Phase_dev_width = 42
)(
    input clk,
    input rst,                                      // �ߵ�ƽ��Ч��λ
    input trigger,                                  // ��ģ������ģ��ļ���
    input signed [Phase_width-1 :0] PM_demod,       // ��������λ
    
    output signed [Phase_dev_width - 1: 0] Phase_dev,       // ��Ƶ�ź�˲ʱ��λ�ļ���
    output signed [Phase_dev_width - 1: 0] Phase_max_r,       // ��Ƶ�ź�˲ʱ��λ�ļ���
    output signed [Phase_dev_width - 1: 0] Phase_min_r      // ��Ƶ�ź�˲ʱ��λ�ļ���
    );

//Instantiate template
//Phase_dev_cal#(
//   .Phase_width()      // ��λ����λ��
//) phase_dev_u(
//    .clk(),
//    .rst(),                                      // �ߵ�ƽ��Ч��λ
//    .trigger(),                                  // ��ģ������ģ��ļ���
//    .PM_demod(),       // ��������λ
// 
//    .Phase_dev()       // ��Ƶ�ź�˲ʱ��λ�ļ���
//    );
    
localparam pi = 2147483647;     // 32bit�з���������pi��Ӧ������ֵ

reg signed [Phase_dev_width - 1: 0] phase_in;
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_in <= 0;
    end
    else if (trigger) begin
        phase_in <= 0;
    end
    else begin
        phase_in <= {{10{PM_demod[Phase_width-1]}},PM_demod};      // ��32λ��λ������չΪ42λ
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_in_delayed;       // ʱ��һ����λ����λ
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_in_delayed <= 0;
    end
    else if (trigger) begin
        phase_in_delayed <= 0;
    end
    else begin
        phase_in_delayed <= phase_in;      
    end 
end

wire signed [Phase_dev_width - 1: 0] phase_diff;        // ������λ�Ĳ�ֵ
assign phase_diff = $signed(phase_in) - $signed(phase_in_delayed);

// ������λ�������λƫ�ã�ȡֵΪ0����2pi����4pi��...
// ע��������ĿҪ�����ɵ�FM�ź����˲ʱ��λ������5��2FSK�źŵ����˲ʱ��λ������5pi
//     ��˸���λƫ��������ֵΪ5pi��Ԥ��32+4λ�洢�����һλ��Ϊ������λ��ֵ���룩
// Ϊ��֤ϵͳ�����ȶ�������������������ݸ�ʽһ�£�Ϊ42λ
reg signed [Phase_dev_width - 1: 0] phase_offset;
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_offset <= 0;
    end
    else if (trigger) begin
        phase_offset <= 0;
    end
    else begin
        // ��������λ��pi����������-pi����ʱ����ζ��ʵ����λ����pi����ʱƫ�ü�2pi
        // �����ж�����ķ�ʽ�ݶ�Ϊ��ֵС��-pi
        if (phase_diff < $signed(-pi)) begin
            phase_offset <= phase_offset + 2 * pi;
        end
        // ��������λ��-pi����������+pi����ʱ����ζ��ʵ����λС��-pi����ʱƫ�ü�2pi
        // �����ж�����ķ�ʽ�ݶ�Ϊ��ֵ����+pi
        else if (phase_diff > $signed(pi)) begin
            phase_offset <= phase_offset - 2 * pi;
        end
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_compensated;      // ����ƫ�ò��������λ
always@(posedge clk or posedge rst)
begin
    if(rst) begin
        phase_compensated <= 0;
    end
    else if (trigger) begin
        phase_compensated <= 0;
    end
    else begin
        // ���ڷ�������ֵ���ص㣬��ƫ�÷����仯��ͬʱ�������������λ�Ѿ�������phase_in_delayed���������ʹ���������µ�����
        phase_compensated <= phase_in_delayed + phase_offset;      
    end 
end

reg signed [Phase_dev_width - 1: 0] phase_max;      // ��������λ���ֵ
reg signed [Phase_dev_width - 1: 0] phase_min;      // ��������λ��Сֵ
wire signed [Phase_dev_width - 1: 0] phase_avg_max;      // ��������λ���ֵ
wire signed [Phase_dev_width - 1: 0] phase_avg_min;      // ��������λ��Сֵ
wire dready;                                        // �����Сֵ��Ч

always @(posedge clk or posedge rst) begin
    if(rst) begin
        phase_max <= 0;
        phase_min <= 0;
    end
    else if (trigger) begin
        phase_max <= 0;
        phase_min <= 0;
    end
    else if(dready) begin
        phase_max <= phase_avg_max;
        phase_min <= phase_avg_min;
    end
    else begin
        phase_max <= phase_max;
        phase_min <= phase_min;
    end
end

// ��ȡһ��ʱ������λ�����ֵ����Сֵ
FSM_Max_Min #(
    .INPUT_WIDTH(Phase_dev_width),               //  ����λ��
    .CNT_WIDTH(32),           //  ������λ��
    .CNT_NUM(32'd3600),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�������1.8MHz����Ƶ��ͳ��2ms���ܹ�3600����
    .LOOP_TIME(3'd5)          //  ѭ������λ��3���ܹ�ͳ��32��2ms����64ms
)u(
    .clk            (clk),         //  ����ʱ��
    .rst_n          (~rst),         //  ��λ�źţ�����Ч
    .dat            (phase_compensated),         //  ҪѰ�������Сֵ������
    .start          (trigger),         //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .max_avg        (phase_avg_max),         //  ���д���ָ��ʱ�������ֵ��ƽ��ֵ
    .min_avg        (phase_avg_min),         //  ���д���ָ��ʱ������Сֵ��ƽ��ֵ
    .dready         (dready)          //  ������Ч���壬����һ��ʱ������
);

assign  Phase_dev = $signed(phase_max) - $signed(phase_min);
assign Phase_max_r = phase_max;
assign Phase_min_r = phase_min;
endmodule
