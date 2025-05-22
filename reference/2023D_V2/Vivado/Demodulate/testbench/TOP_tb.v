`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 16:56:04
// Design Name: 
// Module Name: TOP_tb
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


module TOP_tb();

reg clk_50MHz;
reg rst_n;

reg [11:0] addr_rom;
wire clk_rom;
wire [9:0] ad1_data;
wire [9:0] ad2_data;

dist_mem_gen_I rom_I (
  .a(addr_rom),      // input wire [11 : 0] a
  .spo(ad1_data)  // output wire [9 : 0] spo
);

dist_mem_gen_Q rom_Q (
  .a(addr_rom),      // input wire [11 : 0] a
  .spo(ad2_data)  // output wire [9 : 0] spo
);


TOP TOP_u(
    .sys_clk_50MHz(clk_50MHz),
    .sys_rst_n(rst_n),
    
    //AD1
    .ad1_data(ad1_data) , //AD1 数据
    .ad1_otr() , //输入电压超过量程标志，ADC最大输入电平为±5V，超出该范围时该位为1
    .ad1_clk(clk_rom) , //AD1 采样时钟
    .ad1_oe_n() , //AD1 输出使能
    //AD2
    .ad2_data(ad2_data) , //AD2 数据
    .ad2_otr() , //输入电压超过量程标志
    .ad2_clk() , //AD2 采样时钟 
    .ad2_oe_n() //AD2 输出使能
);

initial begin
    clk_50MHz <= 0;
    addr_rom <= 0;
    rst_n <= 1;
    #10
    rst_n <= 0;
    #10
    rst_n <= 1;
end

always #10 clk_50MHz = ~clk_50MHz ;

always@ (posedge clk_rom or negedge rst_n) begin
    if(~rst_n) begin
        addr_rom <= 0;
    end
    else begin
       addr_rom <= addr_rom + 1; 
    end
end
endmodule
