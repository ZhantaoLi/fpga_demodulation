`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 00:23:24
// Design Name: 
// Module Name: AGC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ���������Ƶ��������ֵ�����Ƹý��Ӧ���Ե����棬������Ƚϴ���ź�
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AGC#(
    parameter IO_width = 14
)(
    input clk,
    input rst_n,
    
    input meas_trig,    // ������������
    input cal_trig,     // �������津������
    
    input signed [IO_width-1 : 0] FM_demod,
    output signed [IO_width-1 : 0] FM_AGC_out
    );

localparam threshold = 14'd2500;     // ���ź����ֵ���ڸ�����ʱ��ֱ�����

reg signed [IO_width-1 : 0] FM_demod_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        FM_demod_r <= 0;      // Ĭ��0
    end
    else begin  
        FM_demod_r <= FM_demod;
    end
end


wire signed [IO_width-1 : 0] FM_max;     
// ����״̬�£�����FM�����������ֵ
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  ����λ��
    .CNT_WIDTH(32),           //  ������λ��
    .CNT_NUM(32'd3600),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�������1.8MHz����Ƶ��ͳ��2ms���ܹ�3600����
    .LOOP_TIME(3'd3),         //  ѭ������λ��3���ܹ�ͳ��8��2ms
    .THRESHOLD(100)           //  �о���ֵ�����ź������С�Ĳ�ֵС�������ֵ�������ж�Ϊֱ��    
)(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(FM_demod_r),
    
    .max(FM_max),
    .min(),
    .dready(),
    .isConst()     //  ֱ���жϽ����0������ֱ����1����ֱ��
    );

// �ж�״̬�£�����ɱ�����
reg [3:0] gain_log_2;     // ��2Ϊ������Ķ���������̫��
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        gain_log_2 = 0;      // Ĭ��0
    end
    else if (cal_trig) begin  // ��ʼ����  
        // ��ʼ���㣬ֻҪ���ֵ��������󲻴���2500������ͳ�2
        gain_log_2 = 0;
        repeat(8) begin
            if ((FM_max << gain_log_2) < threshold) begin
                gain_log_2 = gain_log_2 + 1'b1;
            end
        end
    end
end

assign FM_AGC_out = FM_demod_r << gain_log_2;     // �����������

endmodule
