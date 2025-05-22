`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/16 17:33:54
// Design Name: 
// Module Name: send
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


module Communicate#(
//  ��stm32���ͱ�������
//  stm32��Ĭ�Ͻ���������200k����Ƶ���ʱ����ƥ�䣬����Ҳ���Ը���stm32����
    parameter   CLK_DIV = 500,      //  ʱ�ӷ�Ƶϵ����ֻ֧��ż����Ƶ����Ƶ��ʱ�Ӿ����������ݵ�����
    parameter   BIT_WIDTH = 32      //  ���͵ı�������

)(
    input                       clk,        //  ����ʱ��
    input                       rst_n,      //  ��λ���͵�ƽ��Ч
    input                       dready,     //  ����׼������źţ�һ�����弴�ɣ���Ҫ��clkͬ��
    input   [BIT_WIDTH-1:0]     dat,        //  Ҫ���͵�Ƶ������
    
    output  reg                 led,        //  �۲��ã�ÿ��һ�������ݾͷ�תһ��
    output  reg                 sda         //  �����ߣ���Ҫ��stm32�ļ��IO������
    );

localparam   N = CLK_DIV >> 1;  //  ʵ�ʷ�Ƶϵ��
//  ģ��״̬
localparam  st_wait = 2'b01;    //  �ȴ�����״̬
localparam  st_send = 2'b10;    //  ���ݷ���״̬

reg     [1:0]   current_state;  //  ��ǰ״̬
reg     [9:0]   bit_pos;        //  ��ǰ���͵�bitλ��
reg             busy;           //  1��ģ�����ڷ������ݣ�0������״̬
wire            send_exec;      //  ����ִ������

//  ������׼�������ģ�鴦�ڿ���״̬��������ִ������
assign  send_exec = dready & !busy; 

//  busy�ߵĲ����Ĵ��������ڼ��busy�ߵ��½��أ���״̬ת������ʹ��
reg     busy_r0;
reg     busy_r1;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        busy_r0 <= 1'b0;
        busy_r1 <= 1'b1;
    end
    else begin
        busy_r0 <= busy;
        busy_r1 <= busy_r0;
    end
end

//  ���busy���½���
wire    busy_down;
assign  busy_down = ~busy_r0 & busy_r1;


//  ״̬ת��ģ��
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin    
        current_state = st_wait;                //  Ĭ��Ϊ�ȴ�����״̬
        led <= 1'b0;
    end
    else begin
        case(current_state)                     //  ״̬ת������
            st_wait: begin                      
                if(send_exec) begin             //  ����ǰΪ�ȴ�״̬������ִ�����嵽��ʱ���뷢������״̬
                    current_state = st_send;
                    led <= ~led;
                end
                else
                    current_state = st_wait;
            end
            st_send: begin                      
                if(busy_down)                   //  ��Ϊ����״̬����busy�½��أ�������������ϣ�����ȴ�״̬
                    current_state = st_wait;
                else
                    current_state = st_send;
            end
            default: current_state = st_wait;
        endcase
    end
end
    
//  ��������װ��ģ��
reg     [BIT_WIDTH-1:0]  dat_r;          //  Ƶ�����ݼĴ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dat_r <= {BIT_WIDTH{1'b0}};
    end
    else if(send_exec) begin    //  ÿ��һ��ִ������ʱ��������װ���뷢�ͼĴ���
        dat_r <= dat;
    end
    else begin
        dat_r <= dat_r;
    end
end
    
//  ʱ�ӷ�Ƶģ�飬�����������ݵ�����
reg     [31:0]  clk_cnt;
reg             clk_send;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        clk_cnt <= 32'd0;
        clk_send <= 1'b0;
    end
    else if(clk_cnt == N - 1'b1) begin
        clk_cnt <= 32'd0;
        clk_send <= ~clk_send;
    end
    else
        clk_cnt <= clk_cnt + 1'b1;
end
    
//  ״̬��Ϊִ��ģ��
always @(posedge clk_send or negedge rst_n) begin
    if(!rst_n) begin  
        busy <= 1'b0;   //  Ĭ�Ͽ���״̬
        bit_pos <= 0;   //  ���޷��ͱ���
        sda <= 1'b0;    //  ���������ͣ�stm32���������ؼ�⣩
    end
    else begin
        case(current_state)             //  ִ��״̬��Ϊ   
            st_wait: begin              //  �ȴ�״̬ʱ����Ĭ�϶���
                busy <= 1'b0;
                bit_pos <= 0;
                sda <= 1'b0;
            end
            st_send: begin
                if(bit_pos == 0) begin  //  ��һ������Ĭ�ϸߵ�ƽ������������
                    busy <= 1'b1;
                    sda <= 1'b1;
                    bit_pos <= bit_pos + 1'b1;
                end
                else if(bit_pos == (BIT_WIDTH + 1'b1)) begin    //  ���һ���ط�����Ϻ�����busy�ߣ��ȴ�״̬ת��
                    busy <= 1'b0;
                    sda <= 1'b0;
                    bit_pos <= 0;
                end
                else begin              //  �����λ��ʼ�����λ����
                    sda <= dat_r[BIT_WIDTH - bit_pos];
                    bit_pos <= bit_pos + 1'b1;
                end
            end
            default: ;
        endcase
    end
end
    
endmodule
