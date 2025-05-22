`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 09:08:38
// Design Name: 
// Module Name: Judge_and_calculate
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


module Judge_and_calculate#(
    parameter IO_width = 14     // ������λ������������λ��
)(
    input clk,
    input rst_n,
    input meas_trig,    // �����ź�
    
    input signed [IO_width-1 :0] AM_demod,
    input signed [IO_width-1 :0] FM_demod,
    
    output A_const,     // �������ֵ�������Ƿ�Ϊ����
    output signed [IO_width-1 :0] A_max,       // �������ֵ
    output signed [IO_width-1 :0] A_min,       // ������Сֵ
    
    output A_square,      // �������ֵ�������Ƿ�Ϊ����
    output signed [IO_width-1 :0] A_edge_interv,    // �������С�����������ֱ��ؼ����
    output signed [IO_width-1 :0] A_edge_interv_homo,       // �����ͬ�ֱ��ؼ��
    output signed [IO_width-1 :0] A_freq,                   // AM������Ƶ��
    
    output Freq_const,     // �������ֵ����Ƶ�Ƿ�Ϊ����
    output Freq_square,   // �������ֵ����Ƶ�Ƿ�Ϊ����
    output signed [IO_width-1 :0] Freq_edge_interv,    // ��Ƶ�������С�����������ֱ��ؼ����
    output signed [IO_width-1 :0] F_freq                   // FM������Ƶ��
);

reg signed [IO_width-1 :0] AM_demod_r;
reg signed [IO_width-1 :0] FM_demod_r;

always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        AM_demod_r <= 0;       
        FM_demod_r <= 0;
    end
    else begin
        AM_demod_r <= AM_demod;
        FM_demod_r <= FM_demod;
    end
end

// ȡ�����������Сֵ���жϰ����Ƿ�Ϊ����
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  ����λ��
    .CNT_WIDTH(32),           //  ������λ��
    .CNT_NUM(32'd3600),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�������1.8MHz����Ƶ��ͳ��2ms���ܹ�3600����
    .LOOP_TIME(3'd3),         //  ѭ������λ��3���ܹ�ͳ��8��2ms
    .THRESHOLD(1500)           //  �о���ֵ�����ź������С�Ĳ�ֵС�������ֵ�����ж�Ϊֱ��    
) A_const_discrim(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(AM_demod_r),
    
    .max(A_max),
    .min(A_min),
    .dready(),
    .isConst(A_const)     //  ֱ���жϽ����0������ֱ����1����ֱ��
    );

// ȡƵ�ʵ�������Сֵ���ж�Ƶ���Ƿ�Ϊ����
Get_min_max #(
    .INPUT_WIDTH(IO_width),         //  ����λ��
    .CNT_WIDTH(32),           //  ������λ��
    .CNT_NUM(32'd3600),       //  ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�������1.8MHz����Ƶ��ͳ��2ms���ܹ�3600����
    .LOOP_TIME(3'd3),         //  ѭ������λ��3���ܹ�ͳ��8��2ms
    .THRESHOLD(120)           //  �о���ֵ�����ź������С�Ĳ�ֵС�������ֵ�����ж�Ϊֱ��    
) Freq_const_discrim(
    .clk(clk),
    .rst_n(rst_n),
    .start(meas_trig),
    .dat(FM_demod_r),
    
    .max(),
    .min(),
    .dready(),
    .isConst(Freq_const)     //  ֱ���жϽ����0������ֱ����1����ֱ��
    );

// �ж�AM�������Ƿ�Ϊ������������������ڣ��Լ��ж��Ƿ�Ϊ2PSK�ź�
SquareJudge #(
    .INPUT_WIDTH        (IO_width),             //  ����λ��
    .OUT_WIDTH          (IO_width),             //  ����ı�����С�������С�ڵ��ڼ�����λ��
    .CNT_WIDTH          (32),             //  ����������ʱ�������ʱ��λ��
    .CNT_NUM            (32'd28800),      //  ��ʱ����ֹ��ʱ�䣬��1.8MHzͳ��16ms����28800����    
    .MIN_DL_TIME        (32'd10),          //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
    .MIN_NP_DL          (32'd0),           //  ��С��ͬ���ؼ��
    .COMP_NUM           (32'd1000),       //  �����о���ֵ���̶�Ϊ2500
    //  ���ظ�����ֵ������\�½����������������ֵ���о�Ϊ����
    //  ���ǵ���ͷ�������λ6kHz�����������ź���16ms�ڶ������96�����ţ�192���������½��أ��������������������ֻ����
    //  ������ֵȡ50
    .EDGE_NUM           (32'd50)          
) A_square_judge(
    .clk                (clk),         //  ����ʱ��      
    .rst_n              (rst_n),       //  ��λ�źţ�����Ч
    .dat                (AM_demod_r),  //  Ҫ�о��ǲ��Ƿ���������
    .start              (meas_trig),   //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .min_edge_width     (A_edge_interv),       //  ��С������������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
    .isSquare           (A_square),            //  �����о����
    .min_pp_width       (A_edge_interv_homo),  //  ��С��Ч�����ؼ������
    .dready             ()                     //  ������Ч���壬����һ��ʱ������
);

// �ж�FM�������Ƿ�Ϊ�������������������
SquareJudge #(
    .INPUT_WIDTH        (IO_width),             //  ����λ��
    .OUT_WIDTH          (IO_width),             //  ����ı�����С�������С�ڵ��ڼ�����λ��
    .CNT_WIDTH          (32),             //  ����������ʱ�������ʱ��λ��
    .CNT_NUM            (32'd28800),      //  ��ʱ����ֹ��ʱ�䣬��1.8MHzͳ��16ms����28800����    
    .MIN_DL_TIME        (32'd50),          //  ��Сͬ�ֱ��ؼ����С���������ı��ر���Ϊ��Ч����
    .MIN_NP_DL          (32'd50),           //  ��С��ͬ���ؼ��
    .COMP_NUM           (32'd80),          //  �����о���ֵ���̶�Ϊ80
    //  ���ظ�����ֵ������\�½����������������ֵ���о�Ϊ����
    //  ���ǵ���ͷ�������λ6kHz�����������ź���16ms�ڶ������96�����ţ�192���������½��أ��������������������ֻ����
    //  ������ֵȡ50
    .EDGE_NUM           (32'd50)          
) Freq_square_judge(
    .clk                (clk),         //  ����ʱ��      
    .rst_n              (rst_n),       //  ��λ�źţ�����Ч
    .dat                (FM_demod_r),  //  Ҫ�о��ǲ��Ƿ���������
    .start              (meas_trig),   //  �о���ʼ�źţ���Ҫһ��ʱ�����ڵ�����
    
    .min_edge_width     (Freq_edge_interv),       //  ��С������������ⲿ����ʱ��Ƶ�ʼ������С����ʱ����
    .min_pp_width       (),                    //  ��С��Ч�����ؼ������
    .isSquare           (Freq_square),            //  �����о����
    .dready             ()             //  ������Ч���壬����һ��ʱ������
);

// ����AM��������Ƶ��
Fre_Judge #(
    .INPUT_WIDTH    (IO_width),             //  ����λ��
    .OUT_WIDTH      (IO_width),             //  ���λ��
    .CNT_WIDTH      (32),             //  ������λ��
    .MA_CNT_NUM     (3600),           //  ��ֱ������ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ�����3600�����㣬2ms��ǡ��Ϊ���Ҳ�������
    .LOOP_TIME      (1),              //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME�����������ƽ��
    .CNT_NUM        (7200),           //  �����о����ּ�ʱ����ֹ��ʱ�䣬����ʱ�Ӽ��������7200�����㣬4ms��ҲΪ���Ҳ�������
    .FMAX_NUM       (18000),           //  �ҽϴ������ֵļ�ʱ����ֹʱ�䣬10ms
    .MIN_DL_TIME    (100)             //  ��Сͬ�ֱ��ؼ����С����������ͬ�ֱ��ر���Ϊ��Ч����
)A_Freq_judge(
    .clk            (clk),
    .rst_n          (rst_n),
    .dat            (AM_demod_r),        //  Ҫ�ж�Ƶ�ʵ�ģ���ź�����
    .start          (meas_trig),  
    
    .fre            (A_freq),        //  ���������ؼ����С��������������ʱ�Ӽ���Ƶ��
    .dready         ()
);


// ����FM��������Ƶ��
Fre_Judge #(
    .INPUT_WIDTH    (IO_width),             //  ����λ��
    .OUT_WIDTH      (IO_width),             //  ���λ��
    .CNT_WIDTH      (32),             //  ������λ��
    .MA_CNT_NUM     (3600),           //  ��ֱ������ÿ��ѭ����Ҫͳ�Ƶ�ʱ�䳤�ȵ���
    .LOOP_TIME      (1),              //  ѭ������λ��ʵ�ʴ���Ϊ2^LOOP_TIME�����������ƽ��
    .CNT_NUM        (7200),           //  �����о����ּ�ʱ����ֹ��ʱ�䣬����ʱ�Ӽ������  
    .FMAX_NUM       (18000),         //  �ҽϴ������ֵļ�ʱ����ֹʱ�䣬10ms
    .MIN_DL_TIME    (100)             //  ��Сͬ�ֱ��ؼ����С����������ͬ�ֱ��ر���Ϊ��Ч����
)F_Freq_judge(
    .clk            (clk),
    .rst_n          (rst_n),
    .dat            (FM_demod_r),        //  Ҫ�ж�Ƶ�ʵ�ģ���ź�����
    .start          (meas_trig),  
    
    .fre            (F_freq),        //  ���������ؼ����С��������������ʱ�Ӽ���Ƶ��
    .dready         ()
);  

endmodule
