`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 08:59:01
// Design Name: 
// Module Name: AM_DC_Isolator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ȥ��AM�������е�ֱ������
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AM_DC_Isolator #(
    parameter IO_width = 14
)(
    input clk,
    input rst_n,
    
    input meas_trig,    // ������������
    input cal_trig,     // ����ֱ��������������
    
    input signed [IO_width-1 : 0] AM_demod,     // ����AM������
    output signed [IO_width-1 : 0] AM_AC        // ���AM��ֱ���
    );
    
reg signed [IO_width-1 : 0] AM_demod_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        AM_demod_r <= 0;      // Ĭ��0
    end
    else begin  
        AM_demod_r <= AM_demod;
    end
end   

wire signed [IO_width-1 : 0] AM_max;     
wire signed [IO_width-1 : 0] AM_min;
// ����״̬�£�����AM�����������ֵ����Сֵ
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
    .dat(AM_demod_r),
    
    .max(AM_max),
    .min(AM_min),
    .dready(),
    .isConst()     //  ֱ���жϽ����0������ֱ����1����ֱ��
    );

// �ж�״̬�£�����ֱ������
reg signed [IO_width-1 : 0] DC;     // ֱ������
reg signed [IO_width : 0]  add_temp;

always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        DC = 0;      // Ĭ��0
        add_temp = 0;
    end
    else if (cal_trig) begin  // ��ʼ����  
        // DC = (Amax + Amin) / 2
        add_temp = $signed({1'b0,AM_max}) + $signed({1'b0,AM_min});
        DC = add_temp[IO_width : 1];
    end
end

assign AM_AC = $signed(AM_demod) - $signed(DC);     // ��ȥֱ�����������

endmodule
