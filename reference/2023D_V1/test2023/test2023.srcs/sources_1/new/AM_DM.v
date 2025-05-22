`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 11:45:44
// Design Name: 
// Module Name: AM_DM
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


module AM_DM(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]ADC_DATA,
    output  reg signed [15:0]AM_base,
    output  reg signed [15:0]AM_base_DC,
    output   down_clk,
    output signed[23:0]DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6
    );
    reg sys_rst_n_2=0;
    initial begin
        #500000 sys_rst_n_2 = 1;
    end
    wire signed [15:0]AC_AM,am_AVR;
    reg signed [15:0]ABS_AM=0;
    MOV_AVR#(4096,12,34) AVR_am(sys_clk,sys_rst_n,1,ADC_DATA,am_AVR,AC_AM);
	always @(posedge sys_clk) begin
			if(AC_AM[15])begin
            ABS_AM<=~AC_AM+1;
        end
        else begin
            ABS_AM<=AC_AM;
        end
	end
	wire clk_AM_1,clk_AM_2;

	wire signed [15:0]AM_mix_1,AM_LP;

	Down_sample_2 AMDM1(sys_clk,sys_rst_n,ABS_AM,AM_mix_1,down_clk,DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);
	AM_FIR AM_FIR_LP(sys_clk,sys_rst_n,down_clk,AM_mix_1,AM_LP);

    wire signed [15:0]AM_LP_AVR,AC_AM_LP;

	MOV_AVR#(4096,12,34) AVR_AMBASE(sys_clk,sys_rst_n_2,down_clk,AM_LP,AM_LP_AVR,AC_AM_LP);




    always @(posedge sys_clk) begin
       if (!sys_rst_n) begin
        AM_base<=0;
     AM_base_DC<=0;


       end 
       else begin
        AM_base<=AC_AM_LP;
        AM_base_DC<=AM_LP_AVR;
  

       end
    end



endmodule
