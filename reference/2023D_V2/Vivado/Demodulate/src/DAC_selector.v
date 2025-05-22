`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 18:33:38
// Design Name: 
// Module Name: DAC_selector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 根据信号类型判断结果，选择对应的解调结果由DAC输出
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DAC_selector#(
    parameter IO_width = 14     // 输入输出位数
)(
    input clk,
    input rst_n,
    
    input meas_trigger,         // 开始测量触发脉冲，该脉冲到来时不让DAC输出
    input cal_trigger,          // 开始判断触发脉冲，该脉冲到来时改变AGC增益
    input out_trigger,          // 开始输出触发脉冲，该脉冲到来时选择DAC输出
    
    input [2:0] signal_type,                    // 信号类型 
    input signed [IO_width-1 : 0] AM_demod,     // AM解调结果
    input signed [IO_width-1 : 0] FM_demod,     // FM解调结果
    input signed [IO_width-1 : 0] PM_demod,     // PM解调结果
    
    output signed [IO_width-1 : 0] dat_DAC      // 由DAC输出的数据
);

// 信号类型常量，代表信号类型信息传送的具体格式 
localparam CW =	3'b000;
localparam AM = 3'b001;
localparam FM = 3'b010;
localparam ASK = 3'b101;
localparam FSK = 3'b110;
localparam PSK = 3'b111;
localparam NA = 3'b100;     // 初始值，无效

wire signed [IO_width-1 : 0] ASK_out;       // 判决后的ASK输出
ASK_decision
#(
    .IO_width(IO_width),
    .threshold(14'd3500)      // 判决门限
)dec_u( 
    .clk(clk),
    .rst_n(rst_n),
    .AM_demod(AM_demod),
    
    .ASK_out(ASK_out)       // 判决后的ASK结果
);

wire signed [IO_width-1 : 0] AGC_out;       // 增益控制后的FM、2FSK输出
AGC#(
    .IO_width(IO_width)
)AGC_u(
    .clk(clk),
    .rst_n(rst_n),
    
    .meas_trig(meas_trigger),    // 测量触发脉冲
    .cal_trig(cal_trigger),     // 计算增益触发脉冲
    
    .FM_demod(FM_demod),
    .FM_AGC_out(AGC_out)
    );

localparam TTL_high = 14'd5500;     // 判决后高电平
wire signed [IO_width-1 : 0] FSK_out;
assign FSK_out = (AGC_out[IO_width-1] == 1'b1) ? $signed(-TTL_high) : $signed(TTL_high);     // 过零判决

wire signed [IO_width-1 : 0] AM_AC;       // 隔直后的AM输出
AM_DC_Isolator #(
    .IO_width(IO_width)
)DC_Isolator_u(
    .clk(clk),
    .rst_n(rst_n),
    
    .meas_trig(meas_trigger),    // 测量触发脉冲
    .cal_trig(cal_trigger),     // 计算直流分量触发脉冲
    
    .AM_demod(AM_demod),     // 输入AM解调结果
    .AM_AC(AM_AC)        // 输出AM隔直结果
    );

wire signed [IO_width-1 : 0] PSK_out;       // 还原的PSK信号
// 根据PSK信号包络的跳变还原PSK信号，这样会存在相位模糊
PSK_Judge #(
    .INPUT_WIDTH        (IO_width),         //  输入位宽
    .OUT_WIDTH          (IO_width),         //  输出位宽
    .HIGH_VOL           (TTL_high),    //  高电平数值
    .LOW_VOL            (-TTL_high),      //  低电平数值
    .COMP_NUM           (800),       //  边沿判决阈值，小于这个阈值的跳变不被判断为边沿
    .MIN_DL_TIME        (32'd100)     //  最小同种边沿间隔，小于这个间隔的边沿被判为无效边沿
)u_psk_judge_01(
    .clk        (clk),
    .rst_n      (rst_n),
    .enable     (1'b1),
    .dat        (AM_demod),
    
    .out        (PSK_out)
);

reg [2:0] signal_type_r;
always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        signal_type_r <= NA;      // 默认NA
    end
    else if (meas_trigger) begin
        signal_type_r <= NA;      // 触发测量时种类为NA
    end
    else if (out_trigger) begin     // 触发输出时，获取信号种类
        signal_type_r <= signal_type;
    end
end

reg signed [IO_width-1 : 0] dat_DAC_r;
assign dat_DAC = dat_DAC_r;

always@ (posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        dat_DAC_r <= {IO_width{1'b0}};      // 默认输出零
    end
//    else if (meas_trigger) begin            // 当触发测量时，意味着改变了调制方式，此时将DAC输出设为零
//        dat_DAC_r <= {IO_width{1'b0}};
//    end
    else begin             // 当触发输出时，根据信号种类选择DAC输出数据
        case (signal_type_r) 
            CW:     // 信号为连续载波，输出零
                dat_DAC_r <= {IO_width{1'b0}};
            AM:     // AM信号输出 隔直后的 AM解调路
                dat_DAC_r <= AM_AC;
            FM:     // FM信号输出  经过AGC的  FM解调路
                dat_DAC_r <= AGC_out;
            ASK:    // ASK信号输出   AM解调判决路
                dat_DAC_r <= ASK_out;
            FSK:     // FSK信号输出  经过AGC的  FM解调路  
                dat_DAC_r <= FSK_out;  
            PSK:     // PSK信号输出   经过调整的  PM解调路
                dat_DAC_r <= PSK_out;  
            NA:      // 信号为NA时输出零
                dat_DAC_r <= {IO_width{1'b0}}; 
        endcase
    end
end



endmodule
