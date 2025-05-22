`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 16:29:00
// Design Name: 
// Module Name: FSM_Max_Min
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

//  ѭ��ͳ��һ��ʱ�������ݵ������Сֵ���������Щ�����Сֵ��ƽ��ֵ
module FSM_Max_Min #(
    parameter   INPUT_WIDTH = 13,              //  ����λ��
    parameter   CNT_WIDTH   = 32,              //  ������λ��
    parameter   CNT_NUM     = 32'd60,          //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    parameter   LOOP_TIME   = 3'd3             //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME               
)(
    input                           clk,        //  ����ʱ��
    input                           rst_n,      //  ��λ�źţ�����Ч
    input                           start,      //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  ҪѰ�������Сֵ������
    
    output  [INPUT_WIDTH - 1 : 0]   max_avg,    //  ���д���ָ��ʱ�������ֵ��ƽ��ֵ
    output  [INPUT_WIDTH - 1 : 0]   min_avg,    //  ���д���ָ��ʱ������Сֵ��ƽ��ֵ
    output  reg                     dready      //  ������Ч���壬����һ��ʱ������
    );
    
//FSM_Max_Min #(
//    .INPUT_WIDTH    (18),               //  ����λ��
//    .CNT_WIDTH      (32),               //  ������λ��
//    .CNT_NUM        (32'd600),          //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
//    .LOOP_TIME      (3'd3)              //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME
//)u(
//    .clk            (),         //  ����ʱ��
//    .rst_n          (),         //  ��λ�źţ�����Ч
//    .dat            (),         //  ҪѰ�������Сֵ������
//    .start          (),         //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
//    .max_avg        (),         //  ���д���ָ��ʱ�������ֵ��ƽ��ֵ
//    .min_avg        (),         //  ���д���ָ��ʱ������Сֵ��ƽ��ֵ
//    .dready         ()          //  ������Ч���壬����һ��ʱ������
//);
    
//  ʵ�ʵ�ѭ������
localparam  R_LOOP_TIME = (1 << LOOP_TIME) - 1;

//  ״̬����
localparam  st_idle = 4'b0001;      //  ����״̬���ȴ������ź�
localparam  st_loop = 4'b0010;      //  ѭ��״̬��������Ѱ��ָ��ѭ��ʱ���ڵ����������Сֵ
localparam  st_stop = 4'b0100;      //  ��ͣ״̬���ж�ѭ���Ƿ����
    
//  ״̬ת����Ҫ��һЩ����
wire                    loop_end;   //  ����ѭ�������ź�
reg     [LOOP_TIME : 0] loop_turn;  //  ��ǰѭ���ִ�
wire                    isNext;     //  �Ƿ�����´�ѭ��
assign  isNext = loop_turn <= R_LOOP_TIME;
    
//  ״̬ת���жϲ���
reg     [3:0]   cur_state;
reg     [3:0]   next_state;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end
 
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_state = st_idle;
    end
    else begin
        case(next_state)
            st_idle: begin                  //  ����״̬
                if(start)                   //  ���յ���ʼ�ź�ʱ�����ж��Ƿ����ѭ��
                    next_state = st_stop;
                else
                    next_state = st_idle;
            end
            st_loop: begin                  //  ѭ��״̬
                if(loop_end)                //  ���յ�ѭ�������ź�ʱ��������ͣ״̬
                    next_state = st_stop;
                else
                    next_state = st_loop;
            end
            st_stop: begin                  //  ��ͣ״̬
                if(isNext)                  //  ��δѭ����ϣ��������һ��ѭ��
                    next_state = st_loop;
                else
                    next_state = st_idle;
            end
            default: ;
        endcase
    end
end
    

//  ����ѭ���ź�
reg         loop_enter;
//  ����ѭ��ģ��������Сֵ���
wire    [INPUT_WIDTH - 1 : 0]   max_out;
wire    [INPUT_WIDTH - 1 : 0]   min_out;
//  ����ѭ���������Сֵ�Ĵ���
reg     [INPUT_WIDTH - 1 : 0]   max_single_r;
reg     [INPUT_WIDTH - 1 : 0]   min_single_r;
//  ����ѭ�������Сֵ���ܺͼĴ���
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   max_sum;
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   min_sum;
//  ѭ������źżĴ���
reg         dready_r;

//  ״̬��Ϊִ��ģ��
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_single_r <= 0;
        min_single_r <= 0;
        max_sum <= 0;
        min_sum <= 0;
        loop_enter <= 1'b0;
        dready_r <= 1'b0;
        loop_turn <= 0;
    end
    else begin
        case(cur_state)
            st_idle: begin
                max_single_r <= 0;
                min_single_r <= 0;
                max_sum <= 0;
                min_sum <= 0;
                loop_enter <= 1'b0;
                dready_r <= 1'b0;
                loop_turn <= 0;
            end
            st_loop: begin
                if(loop_end) begin
                    max_single_r <= max_out;
                    min_single_r <= min_out;
                    loop_turn <= loop_turn + 1'b1;
                end
                
                dready_r <= 1'b0;
                loop_enter <= 1'b0;
            end
            st_stop: begin
                max_sum <= $signed(max_sum) + $signed(max_single_r);
                min_sum <= $signed(min_sum) + $signed(min_single_r);
                if(isNext) begin       //  ��δѭ����ϣ����������źŽ�����һ��ѭ��
                    loop_enter <= 1'b1;
                end
                else begin                              //  �����ѭ��������ѭ������ź�
                    dready_r <= 1'b1;
                    loop_turn <= 0;
                end
            end
            default: ;
        endcase
    end
end

//  �����Сֵ�ܺͼĴ�������ѭ����Ϻ�������С֮�ͱ�����������������������״̬�������
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   max_sum_r;
reg     [INPUT_WIDTH + LOOP_TIME - 1 : 0]   min_sum_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        max_sum_r <= 0;
        min_sum_r <= 0;
    end
    else if(dready_r) begin
        max_sum_r <= max_sum;
        min_sum_r <= min_sum;
    end
    else begin
        max_sum_r <= max_sum_r;
        min_sum_r <= min_sum_r;
    end
end

//  ֱ��ȡ�������Сֵ֮�͵ĸ�λ��ʵ�ּ򵥵���ƽ��Ч��
assign  max_avg = max_sum_r[INPUT_WIDTH + LOOP_TIME - 1 : LOOP_TIME];
assign  min_avg = min_sum_r[INPUT_WIDTH + LOOP_TIME - 1 : LOOP_TIME];

//  ����������ź��Ӻ�һ��ʱ�����ڣ�ȷ������׼�����
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready <= 1'b0;
    else
        dready <= dready_r;
end

Max_Min #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  ����λ��
    .OUT_WIDTH      (INPUT_WIDTH),      //  ���λ��
    .CNT_WIDTH      (CNT_WIDTH  ),      //  ����������ʱ�������ʱ��λ��
    .CNT_NUM        (CNT_NUM    )       //  ��ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������
)u_max_0(
    .clk            (clk),          //  ����ʱ��
    .rst_n          (rst_n),        //  ��λ�źţ�����Ч
    .dat            (dat),          //  ҪѰ�������Сֵ������
    .start          (loop_enter),   //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .max            (max_out),      //  �������д���ָ��ʱ���ڵ����ֵ
    .min            (min_out),      //  �������д���ָ��ʱ���ڵ����ֵ
    .dready         (loop_end)      //  ������Ч���壬����һ��ʱ������
);
    
endmodule
