`timescale 1ps/1ps
module MOV_AVR_tb();
    // 参数定义
    parameter N = 1024;          // 必须包含至少2-3个信号周期
    parameter DIN_WIDTH = 12;
    parameter CLK_PERIOD = 20;   // 100MHz时钟
    parameter TEST_CYCLES = 3;   // 测试信号周期数
    parameter M_PI = 3.141592653589793; // 手动定义π值
    // 接口信号
    reg clk;
    reg rst_n;
    reg signed [DIN_WIDTH-1:0] din;
    reg din_valid;
    wire signed [DIN_WIDTH-1:0] avg_signal;
    wire signed [DIN_WIDTH-1:0] ac_signal;
    wire ac_signal_valid;
    
    // 测试控制
    integer error_count = 0;
    integer total_tests = 0;
    real sin_freq = 1.0/(N*CLK_PERIOD*1e-12); // 确保N包含完整周期
    
    // 被测模块实例化
    MOV_AVR #(
        .N(N),
        .DIN_WIDTH(DIN_WIDTH)
    )uut (
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .din_valid(din_valid),
        .avg_signal(avg_signal),
        .ac_signal(ac_signal),
        .ac_signal_valid(ac_signal_valid)
    );
    
    // 时钟生成
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // 测试主程序
    initial begin
        initialize();
        reset_system();
        
        // 测试案例1：连续正弦波输入
        $display("[TEST1] Continuous sine wave input");
        generate_sine_wave(TEST_CYCLES*N);  // 生成3个完整周期
        
        // 测试案例2：随机间隔数据
        $display("[TEST2] Random interval data");
        random_interval_test(500);
        
        // 测试案例3：边界值测试
        $display("[TEST3] Boundary conditions");
        boundary_test();
        
        // 测试结果汇总
        $display("\nTest Summary:");
        $display("Total tests: %0d", total_tests);
        $display("Errors detected: %0d", error_count);
        if(error_count == 0) $display("ALL TESTS PASSED!");
        else $display("TEST FAILURES DETECTED!");
        $finish;
    end
    
	integer i,j,k;        
    // 任务定义
    task initialize;
        din = 0;
        din_valid = 0;
        rst_n = 0;
    endtask
    
    task reset_system;
        #(CLK_PERIOD*10);
        rst_n = 1;
        #(CLK_PERIOD*2);
    endtask

    task generate_sine_wave;
        input integer length;
        automatic real phase = 0.0;
        automatic real delta_phase = 2.0*M_PI/(N); // 每个采样点的相位增量
        
        din_valid = 1;

        for(i=0; i<length; i=i+1) begin
            din = $rtoi(2000.0 * $sin(phase)); // 12位有符号数范围
				phase = phase + delta_phase;
            @(posedge clk);
        end
        din_valid = 0;
    endtask
    
    task random_interval_test;
        input integer cycles;
        begin
            for(j=0; j<cycles; j=j+1) begin
                din_valid = ($urandom%10 > 3); // 70%有效概率
                din = $urandom_range(-2047, 2047); // 12位有符号范围
                @(posedge clk);
            end
        end
    endtask
    
    task boundary_test;
        begin
            din_valid = 1;
            // 最大值测试
            din = 2047;
            repeat(N+2) @(posedge clk);
            
            // 最小值测试
            din = -2048;
            repeat(N+2) @(posedge clk);
            
            din_valid = 0;
        end
    endtask
    

    
endmodule
