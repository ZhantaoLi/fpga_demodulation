`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 11:30:35
// Design Name: 
// Module Name: Max_Min
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


module Max_Min#(
    parameter   INPUT_WIDTH = 18,               //  ����λ��
    parameter   OUT_WIDTH   = 18,               //  ���λ��
    parameter   CNT_WIDTH   = 32,               //  ������λ��
    parameter   CNT_NUM     = 32'd6000          //  ��ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������  
)(
    input                           clk,        //  ����ʱ��
    input                           rst_n,      //  ��λ�źţ�����Ч
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  ҪѰ�������Сֵ������
    input                           start,      //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    output  [OUT_WIDTH   - 1 : 0]   max,        //  �������д���ָ��ʱ���ڵ����ֵ
    output  [OUT_WIDTH   - 1 : 0]   min,        //  �������д���ָ��ʱ���ڵ����ֵ
    output  reg                     dready      //  ������Ч���壬����һ��ʱ������
    );

// Instantiate template
//Max_Min #(
//    .INPUT_WIDTH    (18),               //  ����λ��
//    .OUT_WIDTH      (18),               //  ���λ��
//    .CNT_WIDTH      (32),               //  ������λ��
//    .CNT_NUM        (32'd6000)          //  ��ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������
//)u(
//    .clk            (),         //  ����ʱ��
//    .rst_n          (),         //  ��λ�źţ�����Ч
//    .dat            (),         //  ҪѰ�������Сֵ������
//    .start          (),         //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
//    .max            (),         //  �������д���ָ��ʱ���ڵ����ֵ
//    .min            (),         //  �������д���ָ��ʱ���ڵ����ֵ
//    .dready         ()          //  ������Ч���壬����һ��ʱ������
//);

//  ���ݼĴ���
reg     [INPUT_WIDTH - 1 : 0]   dat_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        dat_r <= {INPUT_WIDTH{1'b0}};
    else
        dat_r <= dat;
end

//  ��ʱ�����ж���ֹʱ��
reg     [CNT_WIDTH - 1 : 0]     cnt;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= CNT_NUM;
    end
    else if(start)
        cnt <= {CNT_WIDTH{1'b0}};
    else if(cnt <= CNT_NUM - 1'b1)
        cnt <= cnt + 1'b1;
    else
        cnt <= cnt;
end
//  ��ֹ�źţ�����ʱ���ǵ�Ŀ��ʱ��ʱ��������ֹ���壬���ó������ݽ������
wire    end_pulse;
assign  end_pulse = (cnt == CNT_NUM - 1'b1);


//  �����Сֵ�Ĵ���
reg     [INPUT_WIDTH - 1 : 0]   max_r;
reg     [INPUT_WIDTH - 1 : 0]   min_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_r <= {1'b1, {(INPUT_WIDTH-1){1'b0}}};   //  ��ʼ����Ϊ����Сֵ
        min_r <= {1'b0, {(INPUT_WIDTH-1){1'b1}}};   //  ��ʼ����Ϊ�����ֵ
    end
    else if(start) begin
        max_r <= {1'b1, {(INPUT_WIDTH-1){1'b0}}};   //  ��ʼ����Ϊ����Сֵ
        min_r <= {1'b0, {(INPUT_WIDTH-1){1'b1}}};   //  ��ʼ����Ϊ�����ֵ
    end
    else begin
        //  ����������ͬʱ�������Сֵ�Ĵ������жԱȣ�ȷ�������Ĵ������ܱ�����
        if($signed(dat_r) >= $signed(max_r)) begin
            max_r <= dat_r;
        end
        
        if($signed(dat_r) < $signed(min_r)) begin
            min_r <= dat_r;
        end
    end
end
    
//  �ź����
assign  max = max_r[OUT_WIDTH - 1 : 0];
assign  min = min_r[OUT_WIDTH - 1 : 0];
    
//  ����ֹ�ź��Ӻ�һ��ʱ�����ڣ�ȷ�����ݼ�����Ϻ������������Ч�ź�
reg     dready_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dready_r <= 1'b0;
        dready <= 1'b0;
    end
    else if(end_pulse) begin
        dready_r <= 1'b1;
        dready <= dready_r;
    end
    else begin
        dready_r <= 1'b0;
        dready <= dready_r; 
    end
end
    
endmodule
