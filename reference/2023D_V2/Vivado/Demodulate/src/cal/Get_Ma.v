`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 19:20:50
// Design Name: 
// Module Name: Get_Ma
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: To discriminate if the input signal is a constant
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Get_min_max #(
    parameter   INPUT_WIDTH = 18,           //  ����λ��
    parameter   CNT_WIDTH   = 32,           //  ������λ��
    parameter   CNT_NUM     = 32'd60,       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    parameter   LOOP_TIME   = 3'd3,         //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME
    parameter   THRESHOLD   = 100           //  �о���ֵ�����ź������С�Ĳ�ֵС�������ֵ�������ж�Ϊֱ��    
)(
    input                           clk,
    input                           rst_n,
    input                           start,
    input   [INPUT_WIDTH - 1 : 0]   dat,
    
    output  [INPUT_WIDTH - 1 : 0]   max,
    output  [INPUT_WIDTH - 1 : 0]   min,
    output  reg                     dready,
    output                          isConst     //  ֱ���жϽ����0������ֱ����1����ֱ��
    );

//Get_min_max #(
//    .INPUT_WIDTH(14),         //  ����λ��
//    .CNT_WIDTH(32),           //  ������λ��
//    .CNT_NUM(32'd3600),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�������1.8MHz����Ƶ��ͳ��2ms���ܹ�3600����
//    .LOOP_TIME(3'd3),         //  ѭ������λ��3���ܹ�ͳ��8��2ms
//    .THRESHOLD(100)           //  �о���ֵ�����ź������С�Ĳ�ֵС�������ֵ�������ж�Ϊֱ��    
//)(
//    .clk(),
//    .rst_n(),
//    .start(),
//    .dat(),
    
//    .max(),
//    .min(),
//    .dready(),
//    .isConst()     //  ֱ���жϽ����0������ֱ����1����ֱ��
//    );

//  Ѱ�������Сֵģ��������ź�
wire                            dready_r;
wire    [INPUT_WIDTH - 1 : 0]   max_avg_r;
wire    [INPUT_WIDTH - 1 : 0]   min_avg_r; 
//  �����Сֵ����Ĵ���
reg     [INPUT_WIDTH - 1 : 0]   max_out_r;
reg     [INPUT_WIDTH - 1 : 0]   min_out_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_out_r <= 0;
        min_out_r <= 0;
    end
    else if(dready_r) begin
        max_out_r <= max_avg_r;
        min_out_r <= min_avg_r;
    end
    else begin
        max_out_r <= max_out_r;
        min_out_r <= min_out_r;
    end
end
    
//  �ź����
assign  max = max_out_r;
assign  min = min_out_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready <= 1'b0;
    else
        dready <= dready_r;
end

//  �����Сֵ�ĺ��������ж��Ƿ���ֱ��    
wire    [INPUT_WIDTH + 1 : 0]   sum;
wire    [INPUT_WIDTH + 1 : 0]   diff;
assign  sum  = $signed(max_out_r) + $signed(min_out_r);
assign  diff = $signed(max_out_r) - $signed(min_out_r);

//  ���ź������С��ֵС���趨����ֵ�����ж�Ϊֱ��
assign  isConst = ($signed(diff) < THRESHOLD);
    
FSM_Max_Min #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  ����λ��
    .CNT_WIDTH      (CNT_WIDTH),        //  ������λ��
    .CNT_NUM        (CNT_NUM),          //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    .LOOP_TIME      (LOOP_TIME)         //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME
)u_fsm_max_min_0(
    .clk            (clk),         //  ����ʱ��
    .rst_n          (rst_n),         //  ��λ�źţ�����Ч
    .dat            (dat),         //  ҪѰ�������Сֵ������
    .start          (start),         //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .max_avg        (max_avg_r),         //  ���д���ָ��ʱ�������ֵ��ƽ��ֵ
    .min_avg        (min_avg_r),         //  ���д���ָ��ʱ������Сֵ��ƽ��ֵ
    .dready         (dready_r)          //  ������Ч���壬����һ��ʱ������
);
    
endmodule
