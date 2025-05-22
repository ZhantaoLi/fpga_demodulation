`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/05 08:58:59
// Design Name: 
// Module Name: PSK_Judge
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


module PSK_Judge #(
    parameter   INPUT_WIDTH =   14,         //  ����λ��
    parameter   OUT_WIDTH   =   14,         //  ���λ��
    parameter   HIGH_VOL    =   14'd500,    //  �ߵ�ƽ��ֵ
    parameter   LOW_VOL     =   14'd0,      //  �͵�ƽ��ֵ
    parameter   COMP_NUM    =   1000,       //  �����о���ֵ��С�������ֵ�����䲻���ж�Ϊ����
    parameter   MIN_DL_TIME =   32'd100     //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
)(
    input                           clk,
    input                           rst_n,
    input                           enable, //  ʹ���źţ��ߵ�ƽ��Ч�����õͣ���Ҳ�Ὣ��ǰѭ�����������ֹͣ
    input   [INPUT_WIDTH - 1 : 0]   dat,
    
    output  [OUT_WIDTH   - 1 : 0]   out   
    );
    
//PSK_Judge #(
//    .INPUT_WIDTH        (14),         //  ����λ��
//    .OUT_WIDTH          (14),         //  ���λ��
//    .HIGH_VOL           (14'd500),    //  �ߵ�ƽ��ֵ
//    .LOW_VOL            (14'd0),      //  �͵�ƽ��ֵ
//    .COMP_NUM           (1000),       //  �����о���ֵ��С�������ֵ�����䲻���ж�Ϊ����
//    .MIN_DL_TIME        (32'd100)     //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
//)u_psk_judge_01(
//    .clk        (),
//    .rst_n      (),
//    .enable     (),
//    .dat        (),
    
//    .out        ()
//);

reg         flag;           //  ���ڲ�����ʼ�������źţ�����������ź���dready����    
reg         first_start;    //  ��ʼ�����ź�
wire        start;          //  ����о�ģ��������ź�
wire        dready;

assign  start = enable & (first_start | dready);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin    
        flag <= 1'b0;       //  ��λʱ��flag��0��֮������һ�ο�ʼ�ź�
        first_start <= 1'b0;
    end
    else if(flag == 1'b0) begin
        flag <= 1'b1;
        first_start <= 1'b1;
    end
    else begin
        flag <= 1'b1;
        first_start <= 1'b0;
    end
end
    
    
wire    pedge;      //  ��Ч����������
reg     vol;        //  ��\�͵�ƽ
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vol <= 1'b0;
    end
    else if(pedge) begin    //  ��psk�İ�����һ�����أ��򽫵�ƽֵ��ת
        vol <= ~vol;
    end
    else begin
        vol <= vol;
    end
end
    
//  ���ݵ�ƽֵ�������
assign  out = vol ? HIGH_VOL : LOW_VOL;
    
SquareJudge #(
    .INPUT_WIDTH        (INPUT_WIDTH),    //  ����λ��
    .OUT_WIDTH          (18),             //  ����ı�����С�������С�ڵ��ڼ�����λ��
    .CNT_WIDTH          (32),             //  ����������ʱ�������ʱ��λ��
    .CNT_NUM            (32'd18000),      //  ��ʱ����ֹ��ʱ��    
    .MIN_DL_TIME        (MIN_DL_TIME),    //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
    .COMP_NUM           (COMP_NUM),       //  �����о���ֵ
    .MIN_NP_DL          (32'd0 ),         //  ��С��ͬ���ؼ��
    //  �����������
    .EDGE_NUM           (32'd30)          //  ���ظ�����ֵ������\�½����������������ֵ���о�Ϊ����
) u_psk_judge(
    .clk                (clk),          //  ����ʱ��      
    .rst_n              (rst_n),        //  ��λ�źţ�����Ч
    .dat                (dat),          //  Ҫ�о��ǲ��Ƿ���������
    .start              (start),        //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .min_edge_width     (),             //  ��С��Ч�����½��ؼ�����������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
    .min_pp_width       (),             //  ��С��Ч�����ؼ������
    .delta_edge_time    (),             //  �������±��ص�ʱ����
    .pedge              (pedge),        //  ����������
    .isSquare           (),             //  �����о����
    .dready             (dready)        //  ������Ч���壬����һ��ʱ������
);

    
    
endmodule
