`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 11:46:27
// Design Name: 
// Module Name: FM_DM_SV
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


module FM_DM_SV(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]ADC_DATA,
    output logic signed [15:0]FM_base,
    output logic signed [15:0]FM_base_DC,
    output logic signed [15:0]AC_MIX_data,
    output logic signed [15:0]mixdata2,
    output wire down_clk,
    output signed[23:0]DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6
    );
    logic rst_2=0;
    initial begin
        #300000 rst_2 = 1;
    end
    logic signed [15:0] databuf[0:61];
 
	always @(posedge sys_clk) begin
		for (int i=62-2;i>=0;i=i-1) begin
            databuf[i+1]<=databuf[i];
        end
            databuf[0]<=ADC_DATA;
	end
    logic signed [15:0]mix;
	always @(posedge sys_clk) begin
		mix <= ((2*16)'(databuf[61])*(2*16)'(ADC_DATA)) >>> (16-1);
	end
  
    logic signed [15:0]mixdata,mixdata3;


    FM_FIR testFM(sys_clk,sys_rst_n,1,mix,mixdata);
    


	Down_sample_2 dm1(sys_clk,sys_rst_n,(mixdata<<<3),mixdata2,down_clk,DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);
    FIR_test test(sys_clk,sys_rst_n,down_clk,mixdata2,mixdata3);

	logic signed [15:0]AVR;
    logic signed [15:0]AC_data;
	MOV_AVR#(2048,11,33) test_AVR(sys_clk,sys_rst_n,down_clk,mixdata3,AVR,AC_data);


    always @(posedge sys_clk) begin
        if (!sys_rst_n) begin
            FM_base<=0;
            FM_base_DC<=0;
        end
        else begin
            FM_base<=(AC_data<<<3);
            AC_MIX_data<=(mixdata<<<2);
            FM_base_DC<=0;
        end
    end
endmodule


module FM_DM_SV2(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]ADC_DATA,
    output reg signed [15:0]FM_base,
    output reg signed [15:0]FM_base_DC,
    output reg signed [15:0]AC_MIX_data,

    output  down_clk
    );

    logic signed [15:0] databuf[0:685];
 
	always @(posedge sys_clk) begin
		for (int i=686-2;i>=0;i=i-1) begin
            databuf[i+1]<=databuf[i];
        end
            databuf[0]<=ADC_DATA;
	end
    logic signed [15:0]mix;
	always @(posedge sys_clk) begin
		mix <= ((2*16)'(databuf[685])*(2*16)'(ADC_DATA)) >>> (16-1);
	end
  
    logic signed [15:0]mixdata,mixdata2,mixdata3;


    FM_FIR testFM(sys_clk,sys_rst_n,1,mix,mixdata);
    
	Down_sample_2 dm1(sys_clk,sys_rst_n,(mixdata),mixdata2,down_clk);

	logic signed [15:0]AVR;
    logic signed [15:0]AC_data;
	MOV_AVR#(2048,11,33) test_AVR(sys_clk,sys_rst_n,down_clk,mixdata2,AVR,AC_data);


    always @(posedge sys_clk) begin
        if (!sys_rst_n) begin
            FM_base<=0;
            FM_base_DC<=0;
        
        end
        else begin
            FM_base<=(AC_data);
            AC_MIX_data<=(mixdata2);
            FM_base_DC<=0;
        end
    end
endmodule
