`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 14:58:16
// Design Name: 
// Module Name: Signal_discrim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ���������һ�鲼��ֵ���ж��ź�����
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Signal_discrim
#(
    parameter IO_width = 14
)(
    input clk,      
    input rst_n,     // ����Ч��λ
    
    input meas_trigger,         // ��ʼ���Ĵ����źţ�����Ч
    input judge_trigger,        // ��ʼ�жϵĴ����źţ�����Ч
    
    input A_const,  // �����Ƿ�Ϊֱ��
    input A_square,      // �����Ƿ�Ϊ����
    input signed [IO_width-1 :0] A_edge_interv,    // �������С�����������ֱ��ؼ����
    
    input F_const,      // Ƶ���Ƿ�Ϊֱ��
    input F_square,     // Ƶ���Ƿ�Ϊ����

    output reg [2:0] signal_type        // ����ź����࣬��ʽ����
    );
    
// �ź����ͳ����������ź�������Ϣ���͵ľ����ʽ 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // ��ʼֵ����Ч

reg A_const_r;
reg A_square_r;
reg [IO_width-1 : 0] A_edge_interv_r;
reg F_const_r;
reg F_square_r;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        A_const_r <= 1'bz;
        A_square_r <= 1'bz;
        A_edge_interv_r <= {IO_width{1'bz}};
        F_const_r <= 1'bz;
        F_square_r <= 1'bz;
    end
    else begin
        if(meas_trigger) begin           // ����״̬�ܴ�������������
            A_const_r <= 1'bz;
            A_square_r <= 1'bz;
            A_edge_interv_r <= {IO_width{1'bz}};
            F_const_r <= 1'bz;
            F_square_r <= 1'bz;
        end
        else if(judge_trigger) begin     // �ж�״̬�ܴ�������������
            A_const_r <= A_const;
            A_square_r <= A_square;
            A_edge_interv_r <= A_edge_interv;
            F_const_r <= F_const;
            F_square_r <= F_square;
        end
    end
end

// �ж��ź�����
always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        signal_type <= NA;
    end
    else if (judge_trigger) begin   // �ܵ��������ж��ź����࣬����һ�����ڴ����������ᱻ�µ���ȷ�������
        if ((~A_edge_interv_r[IO_width - 1]) && (A_edge_interv_r <= 5)) begin     // �������������ͬ���ؼ�����С��ΪС�ڵ���5����0������������ʶ��Ϊ2PSK�ź�
            signal_type <= PSK;
        end
        else begin       
            if (~A_const) begin // �����Ȳ�Ϊ����
                if (A_square) begin    // ������Ϊ��������ʶ��Ϊ2ASK
                    signal_type <= ASK;
                end
                else begin              // �����Ȳ�Ϊ��������ʶ��ΪAM
                    signal_type <= AM;
                end
            end
            else begin      // ����Ϊ����
                if (~F_const) begin     // ���Ƶ�ʲ��ǳ���
                    if (F_square) begin   // ��Ƶ��Ϊ������ʶ��Ϊ2FSK
                        signal_type <= FSK;
                    end
                    else begin      // ��Ƶ�ʲ�Ϊ������ʶ��ΪFM
                        signal_type <= FM;
                    end
                end
                else begin      
                    if (F_const) begin    // ���Ƶ��Ҳ�ǳ�����ʶ��ΪCW
                        signal_type <= CW;
                    end
                end
            end
        end
    end
    else if (meas_trigger) begin        // ��ģ�鿪ʼ����ʱ�����жϽ����ΪNA
        signal_type <= NA;
    end
end

endmodule
