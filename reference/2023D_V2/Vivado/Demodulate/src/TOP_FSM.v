`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/03 22:46:27
// Design Name: 
// Module Name: TOP_FSM
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

module TOP_FSM(
    input clk,
    input rst_n,
    input meas_start_key_n,     // ������ⰴ��������Ч
    
    output reg meas_trigger,        // ������ģ�鿪ʼ�����ź�
    output reg judge_trigger,       // �����ź������ж�ģ����ź�
    output reg output_trigger,      // ������ģ�鿪ʼ������ź�
    output reg transmit_trigger,       // ����������Ϣģ����ź� 
    
    output [2:0] state          // ��ǰ״̬��Debug��
    );

// ������ģ��״̬
localparam IDLE = 3'b000;        // ����״̬��δ���¼�ⰴťʱ��״̬
localparam STANDBY = 3'b001;     // �ȴ�״̬�����¼�ⰴť�󣬵ȴ������������20ms
localparam JUDGE = 3'b010;       // �ж�״̬�����ݼ�����ж��ź����ͣ�����4ms
localparam OUTPUT = 3'b011;      // ���ݼ������������Ϣ������DAC�����״̬������20ms
localparam TRANSMIT_1 = 3'b100;    // �������ɵ�һ����Ϣ��״̬������5ms
localparam TRANSMIT_2 = 3'b101;    // �������ɵڶ�����Ϣ��״̬������5ms


reg [2:0] cur_state;        // ��ǰ״̬
reg [2:0] next_state;       // ��һ״̬
assign state = cur_state;


// ����
reg [13:0]cnt_5ms;  // ��1.8MHzʱ��Ƶ���£���ʱ5ms������0~8999
localparam cnt_limit = 14'd8999;    // ������

//cnt_5ms�����������ֻҪ��⵽����Ϊ�ߵ�ƽ�������ã������ۼӣ�����ۼ���9000
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        cnt_5ms <= 1'b0;
    end
    else begin
        if (~meas_start_key_n) begin
            if (cnt_5ms <= cnt_limit) begin
                cnt_5ms <= cnt_5ms + 1'b1;
            end
            else begin
                cnt_5ms <= cnt_5ms;
            end
        end
        else begin
            cnt_5ms <= 1'b0;
        end
    end
end
wire key_pressed;    // ���жϰ����ѱ�����ʱ�����һ��ʱ�����ڵĸߵ�ƽ������Ϊ�͵�ƽ
assign key_pressed = (~meas_start_key_n) & (cnt_5ms == 14'd8999);


// ״̬ת��
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        cur_state <= IDLE;       // Ĭ�Ͽ���
    end
    else begin
        cur_state <= next_state;
    end
end

// ȷ��ת�Ʒ���
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        next_state <= IDLE;       // Ĭ�Ͽ���
    end
    else begin
        case(cur_state)
            IDLE:   // ���ڿ���״̬��ʱ������ʼ��ⰴ������ʱ������ȴ�״̬
                if(key_pressed) begin
                    next_state <= STANDBY;
                end
            STANDBY:   // ���ڴ���״̬��ʱ������������ʱ�����ж�״̬
                if(standby_cnt == standby_cycles) begin
                    next_state <= JUDGE;
                end
            JUDGE:   // �����ж�״̬��ʱ������������ʱ�������״̬
                if(judge_cnt == judge_cycles) begin
                    next_state <= OUTPUT;
                end
            OUTPUT:   // �������״̬��ʱ������������ʱ�������״̬
                if(output_cnt == output_cycles) begin
                    next_state <= TRANSMIT_1;
                end
            TRANSMIT_1:   // ���ڷ��͵�һ��״̬��ʱ������������ʱ���뷢�͵ڶ���״̬
                if(transmit1_cnt == transmit_cycles) begin
                    next_state <= TRANSMIT_2;
                end
            TRANSMIT_2:   // ���ڷ��͵ڶ���״̬��ʱ������������ʱ�������״̬
                if(transmit2_cnt == transmit_cycles) begin
                    next_state <= IDLE;
                end
        endcase
    end
end

// �涨��ģ���ȴ�80ms�������ʱ���ڵȴ������жϡ�������ģ�鹤�����
// ���ǵ�ʹ��1.8MHzʱ�ӽ���ͬ�����ȴ�80ms�൱�ڵȴ�1.8M/12.5 = 144000�����ڣ�����Ҫ18λ�޷������洢
localparam standby_cycles = 18'd144000;
reg [17:0] standby_cnt;

// ״̬��Ϊ
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        standby_cnt <= 0;       // ����������
    end
    else begin
        case(cur_state)
            STANDBY:   // ���ڴ���״̬��ʱ���������Լ�
                if(standby_cnt != standby_cycles) begin
                    standby_cnt <= standby_cnt + 1'b1;
                end
            JUDGE:    // �����ж�״̬��ʱ������������
                if(standby_cnt != 0) begin
                    standby_cnt <= 0;
                end
        endcase
    end
end

// �涨��ģ���ȴ�4ms�������ʱ���ڵȴ������жϡ�������ģ�鹤�����
// ���ǵ�ʹ��1.8MHzʱ�ӽ���ͬ�����ȴ�4ms�൱�ڵȴ�1.8M/250 = 7200�����ڣ�����Ҫ13λ�޷������洢
localparam judge_cycles = 13'd7200;
reg [12:0] judge_cnt;  

// ״̬��Ϊ
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        judge_cnt <= 0;       // ����������
    end
    else begin
        case(cur_state)
            JUDGE:   // �����ж�״̬��ʱ���������Լ�
                if(judge_cnt != judge_cycles) begin
                    judge_cnt <= judge_cnt + 1'b1;
                end
            OUTPUT:    // �������״̬��ʱ������������
                if(judge_cnt != 0) begin
                    judge_cnt <= 0;
                end
        endcase
    end
end


// �涨��ģ���ȴ�20ms�������ʱ���ڵȴ��������ɡ�DACѡ��ִ�����
// ���ǵ�ʹ��1.8MHzʱ�ӽ���ͬ�����ȴ�20ms�൱�ڵȴ�1.8M/50 = 36000�����ڣ�����Ҫ16λ�޷������洢
localparam output_cycles = 16'd36000;
reg [15:0] output_cnt;
// ״̬��Ϊ
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        output_cnt <= 0;       // ����������
    end
    else begin
        case(cur_state)
            OUTPUT:   // ���ڴ���״̬��ʱ���������Լ�
                if(output_cnt != output_cycles) begin
                    output_cnt <= output_cnt + 1'b1;
                end
            TRANSMIT_1:    // ���ڷ��͵�һ��״̬��ʱ������������
                if(output_cnt != 0) begin
                    output_cnt <= 0;
                end
        endcase
    end
end


// �涨��ģ���ֱ�ȴ�10ms�������ʱ���ڵȴ���һ���ڶ������ݷ������
// ���ǵ�ʹ��1.8MHzʱ�ӽ���ͬ�����ȴ�10ms�൱�ڵȴ�1.8M/100 = 18000�����ڣ�����Ҫ15λ�޷������洢
localparam transmit_cycles = 15'd18000;
reg [14:0] transmit1_cnt;
reg [14:0] transmit2_cnt;
// ״̬��Ϊ
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        transmit1_cnt <= 0;       // ����������
    end
    else begin
        case(cur_state)
            TRANSMIT_1:   // ���ڷ��͵�һ��״̬��ʱ���������Լ�
                if(transmit1_cnt != transmit_cycles) begin
                    transmit1_cnt <= transmit1_cnt + 1'b1;
                end
            TRANSMIT_2:    // ���ڷ��͵ڶ���״̬��ʱ������������
                if(transmit1_cnt != 0) begin
                    transmit1_cnt <= 0;
                end
        endcase
    end
end

// ״̬��Ϊ
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        transmit2_cnt <= 0;       // ����������
    end
    else begin
        case(cur_state)
            TRANSMIT_2:   // ���ڷ��͵�һ��״̬��ʱ���������Լ�
                if(transmit2_cnt != transmit_cycles) begin
                    transmit2_cnt <= transmit2_cnt + 1'b1;
                end
            IDLE:    // ���ڿ���״̬��ʱ������������
                if(transmit2_cnt != 0) begin
                    transmit2_cnt <= 0;
                end
        endcase
    end
end

reg [1:0] cnt_pulse_meas;      // ������������
reg [1:0] cnt_pulse_jud;       // �ж����������
reg [1:0] cnt_pulse_out;       // ������������
reg [1:0] cnt_pulse_trans1;       // ���͵�һ�����������
reg [1:0] cnt_pulse_trans2;       // ���͵ڶ������������


localparam pulse_len = 2'b10;       // ���峤��2
localparam trans_pulse_len = 2'b01;  // ������Ϣ���峤��1

// ������ʼ��������
always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        meas_trigger <= 0; 
        judge_trigger <= 0;  
        output_trigger <= 0;    
        transmit_trigger <= 0;
    end
    else begin
        case(cur_state)
            STANDBY:   // ���ڴ���״̬��ʱ���������2ʱ�����ڵ�����
                if(cnt_pulse_meas != pulse_len) begin
                    meas_trigger <= 1;
                end
                else begin
                    meas_trigger <= 0;
                end
            JUDGE:   // �����ж�״̬��ʱ���������2ʱ�����ڵ�����
                if(cnt_pulse_jud != pulse_len) begin
                    judge_trigger <= 1;
                end
                else begin
                    judge_trigger <= 0;
                end
            OUTPUT:    // �������״̬��ʱ���������2ʱ�����ڵ�����
                if(cnt_pulse_out != pulse_len) begin
                    output_trigger <= 1;
                end
                else begin
                    output_trigger <= 0;
                end
            TRANSMIT_1:    // ���ڷ��͵�һ��״̬��ʱ���������1ʱ�����ڵ�����
                if(cnt_pulse_trans1 != trans_pulse_len) begin
                    transmit_trigger <= 1;
                end
                else begin
                    transmit_trigger <= 0;
                end
            TRANSMIT_2:    // ���ڷ��͵ڶ���״̬��ʱ���������1ʱ�����ڵ�����
                if(cnt_pulse_trans2 != trans_pulse_len) begin
                    transmit_trigger <= 1;
                end
                else begin
                    transmit_trigger <= 0;
                end
        endcase
    end
end

always @(posedge clk or negedge rst_n)
begin
    if (~rst_n) begin
        cnt_pulse_meas <= 0;    
        cnt_pulse_jud <= 0;  
        cnt_pulse_out <= 0; 
        cnt_pulse_trans1 <= 0;
        cnt_pulse_trans2 <= 0;
    end
    else begin
        case(cur_state)
            IDLE: begin     // ����״̬������
                cnt_pulse_meas <= 0;  
                cnt_pulse_jud <= 0;    
                cnt_pulse_out <= 0;  
                cnt_pulse_trans1 <= 0;
                cnt_pulse_trans2 <= 0;
            end
            STANDBY:   // ���ڴ���״̬��ʱ���������2ʱ�����ڵ�����
                if(cnt_pulse_meas != pulse_len) begin
                    cnt_pulse_meas <= cnt_pulse_meas + 1'b1;
                end
            JUDGE:   // �����ж�״̬��ʱ���������2ʱ�����ڵ�����
                if(cnt_pulse_jud != pulse_len) begin
                    cnt_pulse_jud <= cnt_pulse_jud + 1'b1;
                end
            OUTPUT:    // �������״̬��ʱ��Ҳ�������2ʱ�����ڵ�����
                if(cnt_pulse_out != pulse_len) begin
                    cnt_pulse_out <= cnt_pulse_out + 1'b1;
                end
            TRANSMIT_1:  // ���ڷ��͵�һ��״̬��ʱ���������1ʱ�����ڵ�����
                if(cnt_pulse_trans1 != trans_pulse_len) begin
                    cnt_pulse_trans1 <= cnt_pulse_trans1 + 1'b1;
                end
            TRANSMIT_2:  // ���ڷ��͵ڶ���״̬��ʱ���������1ʱ�����ڵ�����
                if(cnt_pulse_trans2 != trans_pulse_len) begin
                    cnt_pulse_trans2 <= cnt_pulse_trans2 + 1'b1;
                end
        endcase
    end
end

endmodule
