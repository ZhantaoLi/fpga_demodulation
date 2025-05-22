`timescale 1ns/1ps
module fm_dm_tb();

    // 系统参数
    parameter CLK_FREQ  = 50_000_000;  // 50MHz时钟
    parameter CLK_PERIOD = 20;         // 20ns周期
    parameter CARRIER_FREQ = 2_000_000;   // 2MHz载波频率
    parameter MOD_FREQ = 5_000;        // 5kHz调制频率
    parameter DEVIATION = 5_000;       // 5kHz频偏
    
    // 接口信号
    reg clk;
    reg rst_n;
    reg [11:0] data_in;
    wire signed [11:0] mix;
    wire signed [11:0] fir1_out;  // 修改mix_ip为fir1_out
    
    // 相位控制
    real phase = 0.0;
    real mod_phase = 0.0;
    real carrier_phase_step;
    real mod_phase_step;
    
    // 实例化被测模块fm_dm
    fm_dm uut (
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_in),
        .mix(mix),
        .fir1_out(fir1_out)  // 连接新输出端口
    );
    
    // 时钟生成
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // FM信号生成
    initial begin
        // 初始化计算
        carrier_phase_step = 2.0 * $acos(-1) * CARRIER_FREQ / CLK_FREQ;
        mod_phase_step = 2.0 * $acos(-1) * MOD_FREQ / CLK_FREQ;
        
        // 复位序列
        data_in = 12'd0;
        rst_n = 0;
        #200;
        rst_n = 1;
        #100;
        
        // 持续生成FM信号
        forever begin
            // 计算调制信号（正弦波）
            automatic real modulation = $sin(mod_phase);
            
            // 计算瞬时频率
            automatic real inst_freq = CARRIER_FREQ + DEVIATION * modulation;
            
            // 更新载波相位
            phase = phase + 2.0 * $acos(-1) * inst_freq / CLK_FREQ;
            
            // 生成载波并转换为12位无符号
            data_in = $rtoi(2047.5 * (1.0 + $sin(phase)));
            
            // 相位回绕
            if(phase > 2.0 * $acos(-1)) phase = phase - 2.0 * $acos(-1);
            mod_phase = mod_phase + mod_phase_step;
            if(mod_phase > 2.0 * $acos(-1)) mod_phase = mod_phase - 2.0 * $acos(-1);
            
            @(posedge clk);
        end
    end
    
    // 波形记录
    initial begin
        $dumpfile("fm_test.vcd");
        $dumpvars(0, fm_test_tb);
        #100_000;  // 记录100us波形
        $finish;
    end
    
endmodule
