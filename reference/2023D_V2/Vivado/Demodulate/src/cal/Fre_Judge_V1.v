`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 17:37:03
// Design Name: 
// Module Name: Fre_Judge
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


module Fre_Judge #(
    parameter   INPUT_WIDTH = 18,               //  ����λ��
    parameter   OUT_WIDTH   = 18,               //  ���λ��
    parameter   CNT_WIDTH   = 32,               //  ������λ��
    parameter   MA_CNT_NUM  = 32'd60,           //  ��ֱ������ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    parameter   LOOP_TIME   = 3'd3,             //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME�����������ƽ��
    parameter   CNT_NUM     = 32'd6000,         //  �����о����ּ�ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������  
    parameter   MIN_DL_TIME = 32'd25            //  ��Сͬ�ֱ��ؼ����С����������ͬ�ֱ��ر���Ϊ��Ч����
)(
    input                           clk,
    input                           rst_n,
    input   [INPUT_WIDTH - 1 : 0]   dat,        //  Ҫ�ж�Ƶ�ʵ�ģ���ź�����
    input                           start,  
    
    output  [OUT_WIDTH   - 1 : 0]   fre,        //  ���������ؼ����С��������������ʱ�Ӽ���Ƶ��
    output                          dready
);
    
//Fre_Judge #(
//    .INPUT_WIDTH    (16),             //  ����λ��
//    .OUT_WIDTH      (14),             //  ���λ��
//    .CNT_WIDTH      (32),             //  ������λ��
//    .MA_CNT_NUM     (2000),           //  ��ֱ������ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
//    .LOOP_TIME      (1),              //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME�����������ƽ��
//    .CNT_NUM        (7200),           //  �����о����ּ�ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������  
//    .MIN_DL_TIME    (100)             //  ��Сͬ�ֱ��ؼ����С����������ͬ�ֱ��ر���Ϊ��Ч����
//)u(
//    .clk            (),
//    .rst_n          (),
//    .dat            (),        //  Ҫ�ж�Ƶ�ʵ�ģ���ź�����
//    .start          (),  
    
//    .fre            (),        //  ���������ؼ����С��������������ʱ�Ӽ���Ƶ��
//    .dready         ()
//);
    
localparam  st_idle     =   6'b000_001;     //  ����״̬���ȴ������ź�
localparam  st_mean     =   6'b000_010;     //  �ȴ���ֵ�������
localparam  st_judge    =   6'b000_100;     //  Ƶ���ж�״̬�����������о�ģ��
localparam  st_stop     =   6'b001_000;     //  ֹͣ״̬����������
    

reg     [5:0]   cur_state;      //  ��ǰ״̬
reg     [5:0]   next_state;     //  ��һ״̬

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end

//  ״̬ת���ж����õ��ź�
wire            mean_ready;         //  ��ֵ׼�����
wire            judge_ready;        //  Ƶ���ж����        

//  ״̬ת���жϲ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        next_state = st_idle;           //  Ĭ��״̬Ϊ����״̬
    end
    else begin
        case(next_state)
            st_idle: begin              //  ����״̬
                if(start) begin         //  �����յ������źţ����������ֵģ�飬�ȴ���ֵ�������
                    next_state = st_mean;
                end
                else begin
                    next_state = st_idle;
                end
            end
            st_mean: begin              //  ���ֵ״̬
                if(mean_ready) begin    //  ����ֵ������ϣ������Ƶ���о�״̬������Ƶ���о�ģ��
                    next_state = st_judge;
                end
                else begin
                    next_state = st_mean;
                end
            end
            st_judge: begin             //  Ƶ���о�״̬
                if(judge_ready) begin   //  ���о�������ϣ��������ͣ״̬����������
                    next_state = st_stop;
                end
                else begin
                    next_state = st_judge;
                end
            end
            st_stop: begin              //  ��ͣ״̬
                next_state = st_idle;   //  ��һ��ʱ�����ڷ������ݣ�Ȼ��������״̬
            end
            default: ;
        endcase
    end
end
    
    

wire    [INPUT_WIDTH - 1 : 0]   max;        //  ���ֵ
wire    [INPUT_WIDTH - 1 : 0]   min;        //  ��Сֵ
wire    [INPUT_WIDTH     : 0]   sum;        //  ���ֵ����Сֵ֮��
wire    [INPUT_WIDTH - 1 : 0]   mean;       //  ��ֵ

assign  sum = $signed(max) + $signed(min);
assign  mean = sum[INPUT_WIDTH : 1];
    
wire    [INPUT_WIDTH     : 0]   new_dat;    //  ��ȥ��ֵ�������
assign  new_dat = $signed(dat) - $signed(mean);

wire    [1:0]   judge_dat;  //  �о����ź�
assign  judge_dat = new_dat[INPUT_WIDTH] ? -2'd1 : 2'd1;


reg         mean_start;     //  ��ֵģ�������ź�
reg         judge_start;    //  �о�ģ�������ź�
reg         dready_r;       //  ����׼������ź�

//  ״̬��Ϊִ�в���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dready_r    <= 1'b0;
        mean_start  <= 1'b0;
        judge_start <= 1'b0;
    end
    else begin
        case(cur_state)
            st_idle: begin
                dready_r    <= 1'b0;
                judge_start <= 1'b0;
                if(start)
                    mean_start <= 1'b1;
                else
                    mean_start <= 1'b0;
            end
            st_mean: begin
                dready_r    <= 1'b0;
                mean_start  <= 1'b0;
                if(mean_ready)
                    judge_start <= 1'b1;
                else
                    judge_start <= 1'b0;
            end
            st_judge: begin
                dready_r    <= 1'b0;
                mean_start  <= 1'b0;
                judge_start <= 1'b0;
            end
            st_stop: begin
                dready_r    <= 1'b1;
                mean_start  <= 1'b0;
                judge_start <= 1'b0;
            end
            default: ;
        endcase
    end 
end


//  ��С�����½��ؼ����Ŀǰû�õ���
wire        [OUT_WIDTH - 1 : 0]    min_edge_width;     
reg         [OUT_WIDTH - 1 : 0]    min_edge_width_r; 

//  ��С������֮����
wire        [OUT_WIDTH - 1 : 0]    min_pp_width;        
reg         [OUT_WIDTH - 1 : 0]    min_pp_width_r;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        min_edge_width_r <= 0;
        min_pp_width_r   <= 0;   
    end
    else begin
        min_edge_width_r <= min_edge_width;
        min_pp_width_r   <= min_pp_width;
    end
end


reg         dready_delay;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        dready_delay <= 1'b0;
    else
        dready_delay <= dready_r;
end

assign  dready = dready_delay;
assign  fre = min_edge_width_r;


//  Ѱ�������Сֵģ��
Get_min_max #(
    .INPUT_WIDTH    (INPUT_WIDTH),      //  ����λ��
    .CNT_WIDTH      (CNT_WIDTH),        //  ������λ��
    .CNT_NUM        (MA_CNT_NUM),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    .LOOP_TIME      (LOOP_TIME)         //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME�����������ƽ��
)u_get_ma_1(
    .clk            (clk),
    .rst_n          (rst_n),
    .start          (mean_start),
    .dat            (dat),
    
    .max            (max),
    .min            (min),
    .dready         (mean_ready),
    .isConst        ()
);

SquareJudge #(
    .INPUT_WIDTH        (2),                    //  ����λ��
    .OUT_WIDTH          (OUT_WIDTH),            //  ����ı�����С�������С�ڵ��ڼ�����λ��
    .CNT_WIDTH          (CNT_WIDTH),            //  ����������ʱ�������ʱ��λ��
    .CNT_NUM            (CNT_NUM),              //  ��ʱ����ֹ��ʱ��    
    .MIN_DL_TIME        (MIN_DL_TIME),          //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
    .MIN_NP_DL          (32'd150),               //  ��С��ͬ���ؼ��
    .COMP_NUM           (1)                     //  �����о���ֵ
) u_judge_1(
    .clk                (clk),                  //  ����ʱ��      
    .rst_n              (rst_n),                //  ��λ�źţ�����Ч
    .dat                (judge_dat),            //  Ҫ�о��ǲ��Ƿ���������
    .start              (judge_start),          //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .min_edge_width     (min_edge_width),       //  ��С��Ч�����½��ؼ�����������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
    .min_pp_width       (min_pp_width),         //  ��С��Ч�����ؼ������
    .isSquare           (),                     //  �����о����
    .dready             (judge_ready)           //  ������Ч���壬����һ��ʱ������
);
    
endmodule
