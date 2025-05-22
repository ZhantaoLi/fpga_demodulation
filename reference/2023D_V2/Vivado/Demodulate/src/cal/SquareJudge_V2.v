`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 17:14:45
// Design Name: 
// Module Name: SquareJudge
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

//  �����о�ģ��
module SquareJudge  #(
    parameter   INPUT_WIDTH = 18,               //  ����λ��
    parameter   OUT_WIDTH   = 18,               //  ����ı�����С���
    parameter   CNT_WIDTH   = 32,               //  ����������ʱ�������ʱ��λ��
    parameter   CNT_NUM     = 32'd6000,         //  ��ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������  
    parameter   MIN_DL_TIME = 32'd25,           //  ��С���ؼ����С����������ͬ�ֱ��ر���Ϊ��Ч����
    parameter   MIN_NP_DL   = 32'd100,           //  ��С��ͬ���ؼ��
    parameter   COMP_NUM    = 32'd100_000,      //  �����о���ֵ
    parameter   EDGE_NUM    = 32'd30            //  ���ظ�����ֵ������\�½����������������ֵ���о�Ϊ����
)(
    input                           clk,            //  ����ʱ��
    input                           rst_n,          //  ��λ�źţ�����Ч
    input   [INPUT_WIDTH - 1 : 0]   dat,            //  Ҫ�о��ǲ��Ƿ���������
    input                           start,          //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    output  [OUT_WIDTH - 1 : 0]     min_edge_width, //  ��С������������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
    output                          isSquare,       //  �����о����
    output  reg                     dready          //  ������Ч���壬����һ��ʱ������
);

//SquareJudge #(
//    .INPUT_WIDTH        (18),             //  ����λ��
//    .OUT_WIDTH          (18),             //  ����ı�����С�������С�ڵ��ڼ�����λ��
//    .CNT_WIDTH          (32),             //  ����������ʱ�������ʱ��λ��
//    .CNT_NUM            (32'd6000),       //  ��ʱ����ֹ��ʱ��    
//    .MIN_DL_TIME        (32'd25),         //  ��С���ؼ����С���������ı��ر���Ϊ��Ч����
//    .MIN_NP_DL          (32'd100),        //  ��С��ͬ���ؼ��
//    .COMP_NUM           (32'd100_000),    //  �����о���ֵ
//    .EDGE_NUM           (32'd30)          //  ���ظ�����ֵ������\�½����������������ֵ���о�Ϊ����
//) u(
//    .clk                (),       //  ����ʱ��      
//    .rst_n              (),       //  ��λ�źţ�����Ч
//    .dat                (),       //  Ҫ�о��ǲ��Ƿ���������
//    .start              (),       //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
//    .min_edge_width     (),       //  ��С������������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
//    .isSquare           (),       //  �����о����
//    .dready             ()        //  ������Ч���壬����һ��ʱ������
//);

//  �������ݼĴ�����������ʱ����ֲ�����
reg     [INPUT_WIDTH - 1 : 0]   dat_r;
reg     [INPUT_WIDTH - 1 : 0]   dat_r_delay;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dat_r <= {INPUT_WIDTH{1'b0}};
        dat_r_delay <= {INPUT_WIDTH{1'b0}};
    end
    else if(start) begin
        dat_r <= dat;
        dat_r_delay <= dat;
    end
    else begin
        dat_r <= dat;
        dat_r_delay <= dat_r;
    end
end

//  ��ʱ�����ж��о���ֹʱ��
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

//  �������ݲ�ֲ��֣����������
reg     [INPUT_WIDTH : 0]       dat_diff_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        dat_diff_r <= {(INPUT_WIDTH+1){1'b0}};
    else if(start)  //  ����ʱĬ�����ݲ��Ϊ0����ֹ��һ������Ĭ�ϱ��ж�Ϊ����
        dat_diff_r <= {(INPUT_WIDTH+1){1'b0}};
    else
        dat_diff_r <= $signed(dat_r) - $signed(dat_r_delay);
end

//  ����źŵľ���ֵ�����ڱ�����ֵ�ж�
wire    [INPUT_WIDTH - 1 : 0]   dat_diff_abs;
assign  dat_diff_abs = dat_diff_r[INPUT_WIDTH] ? (1'b1 + (~dat_diff_r)) : dat_diff_r;


//  ���źţ����������ݲ�־���ֵ�����ж���ֵ�����ж�Ϊ����һ�α���
//  �±߻��и�������Ч���жϣ������α��ؼ����С�����ж�Ϊ��Ч����


wire    nedge_sig;      //  �½���
assign  nedge_sig = (dat_diff_abs >= COMP_NUM) & dat_diff_r[INPUT_WIDTH]; 

wire    pedge_sig;      //  ������
assign  pedge_sig = (dat_diff_abs >= COMP_NUM) & !dat_diff_r[INPUT_WIDTH];


reg     [CNT_WIDTH - 1 : 0] nedge_time_r;   //  ǰһ�½���ʱ���¼�Ĵ���
reg     [CNT_WIDTH - 1 : 0] pedge_time_r;   //  ǰһ������ʱ���¼�Ĵ���     
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        nedge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};  //  ǰһ����ʱ���¼������Ϊ������һ��
        pedge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
    end
    else begin
        if(start) begin
            nedge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
            pedge_time_r <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
        end
        else if(nedge_sig) begin
            nedge_time_r <= $signed(cnt);
        end
        else if(pedge_sig) begin
            pedge_time_r <= $signed(cnt);
        end
        else begin
            nedge_time_r <= nedge_time_r;
            pedge_time_r <= pedge_time_r;
        end
    end
end


reg     [CNT_WIDTH     : 0] np_delta_edge_time;    //  ͬ�ֱ��ؼ���Ĵ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        np_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     //  ��ʼ���ؼ������Ϊ�����ֵ
    end
    else begin
        if(start) begin
            np_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};
        end
        else if(nedge_sig) begin
            np_delta_edge_time <= $signed(cnt) - $signed(nedge_time_r);
        end
        else if(pedge_sig) begin
            np_delta_edge_time <= $signed(cnt) - $signed(pedge_time_r);
        end
        else
            np_delta_edge_time <= np_delta_edge_time;
    end
end

//  �����źżĴ������������ź��Ӻ�һ��ʱ�����ڣ��������Ϻ�ı��ؼ��ͬ���жϱ�����Ч��
reg     nedge_sig_r;
reg     pedge_sig_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        nedge_sig_r <= 1'b0;
        pedge_sig_r <= 1'b0;
    end
    else begin
        nedge_sig_r <= nedge_sig;
        pedge_sig_r <= pedge_sig;
    end
end

//  ������Ч���ж�
wire    nedge_vaild = nedge_sig_r & ($signed(np_delta_edge_time) > MIN_DL_TIME);
wire    pedge_vaild = pedge_sig_r & ($signed(np_delta_edge_time) > MIN_DL_TIME);


reg     [CNT_WIDTH - 1 : 0] nedge_time_r_vaild;   //  ǰһ�½���ʱ���¼�Ĵ���
reg     [CNT_WIDTH - 1 : 0] pedge_time_r_vaild;   //  ǰһ������ʱ���¼�Ĵ���     
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        nedge_time_r_vaild <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};  //  ǰһ����ʱ���¼������Ϊ������һ��
        pedge_time_r_vaild <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
    end
    else begin
        if(start) begin
            nedge_time_r_vaild <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
            pedge_time_r_vaild <= {2'b11, {(CNT_WIDTH - 3){1'b0}}, 1'b1};
        end
        else if(nedge_vaild) begin
            nedge_time_r_vaild <= $signed(cnt);
        end
        else if(pedge_vaild) begin
            pedge_time_r_vaild <= $signed(cnt);
        end
        else begin
            nedge_time_r_vaild <= nedge_time_r_vaild;
            pedge_time_r_vaild <= pedge_time_r_vaild;
        end
    end
end


reg     [CNT_WIDTH     : 0] delta_edge_time;    //  ��ǰ�����½��ؼ���Ĵ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     //  ��ʼ���ؼ������Ϊ�����ֵ
    end
    else begin
        if(start) begin
            delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};
        end
        else if(nedge_vaild) begin
            delta_edge_time <= $signed(cnt) - $signed(pedge_time_r_vaild);
        end
        else if(pedge_vaild) begin
            delta_edge_time <= $signed(cnt) - $signed(nedge_time_r_vaild);
        end
        else
            delta_edge_time <= delta_edge_time;
    end
end

wire    np_edge_vaild = (pedge_sig_r |nedge_sig_r) & ($signed(delta_edge_time) > MIN_NP_DL);

//  ������������
reg     [CNT_WIDTH - 1 : 0] edge_num_cnt;       //  ��������Ĵ�������¼���������������ж��Ƿ��Ƿ���
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        edge_num_cnt <= {CNT_WIDTH{1'b0}};
    else if(start)
        edge_num_cnt <= {CNT_WIDTH{1'b0}};
    else if(nedge_vaild | pedge_vaild)
        edge_num_cnt <= edge_num_cnt + 1'b1;
    else
        edge_num_cnt <= edge_num_cnt;
end

//  ��С���ؼ���Ĵ���
reg     [CNT_WIDTH : 0] min_delta_edge_time;

wire    isUpdate;
assign  isUpdate = ($signed(delta_edge_time) < $signed(min_delta_edge_time)) & np_edge_vaild;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        min_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     //  ��ʼ��С���ؼ������Ϊ�����ֵ
    end
    else if(start)
        min_delta_edge_time <= {1'b0, {(CNT_WIDTH){1'b1}}};     
    else if(isUpdate)
        min_delta_edge_time <= delta_edge_time;                 //  ��������С��֮ǰ�Ĵ洢ֵʱ�����и��� 
    else
        min_delta_edge_time <= min_delta_edge_time;
end

//  ��С��������Ĵ���
reg     [OUT_WIDTH - 1 : 0] min_edge_width_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        min_edge_width_r <= {OUT_WIDTH{1'b1}};
    else if(start)
        min_edge_width_r <= {OUT_WIDTH{1'b1}};
    else if(end_pulse)
        min_edge_width_r <= min_delta_edge_time[OUT_WIDTH - 1 : 0];
    else
        min_edge_width_r <= min_edge_width_r;
end

//  �ź����
assign  min_edge_width = min_edge_width_r;
assign  isSquare = edge_num_cnt > EDGE_NUM;

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
