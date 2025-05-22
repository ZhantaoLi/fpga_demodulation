`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/17 23:43:55
// Design Name: 
// Module Name: testbench
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


module testbench #(
	parameter PW = 16,
	parameter DW = 16,
	// parameter BASE_FREQ = 50,		// base DDS freq
	// parameter REF_FREQ = 6553,		// ref DDS freq: 10MHz
	// parameter DFLT_FREQ = 8000,	// default DDS freq pll初始频率
	parameter FREQ_SWING = 2500,	// freq range = 2*swing 暂时没用到
	parameter BASE_FREQ = 10,		// FM调制频率 40k@250M
	parameter REF_FREQ = 15892,		// ref DDS freq: 48.5MHz@250M
	parameter DFLT_FREQ = 16100	// default DDS freq pll初始频率
)( 

  );

	logic sys_rst_n = 0;
	logic sys_clk = 0;
	logic clk_50M =0 ;
	logic clk_2 =0 ;
	initial begin 
		#300 sys_rst_n = 1;
	end
	initial begin 
		forever #5 sys_clk = ~sys_clk;
		// system clk: 250MHz
	end
	initial begin 
		forever #10 clk_50M = ~clk_50M;	
		// system clk: 250MHz
	end
	initial begin 
		forever #50 clk_2 = ~clk_2;	
		// system clk: 250MHz
	end
	

	logic signed [DW-1:0] base,fskbase ,psk,fm, dds_ref,dds_fsk,dds_psk;
	assign dds_ref_o = dds_ref;
	MY_DDS #(PW, DW) BASE_dds(
		sys_rst_n, sys_clk,1, 10, 0, base);
	MY_DDS #(PW, DW) REF_dds(
		sys_rst_n,  clk_50M,1, fm, 0, dds_ref);
	MY_DDS #(PW, DW) fsk_dds(
		sys_rst_n,  sys_clk,1, fsk, 0, dds_fsk);
	MY_DDS #(PW, DW) psk_dds(
		sys_rst_n,  sys_clk,1, 1310, psk, dds_psk);
		always @(posedge sys_clk ) begin
			if (base[15]) begin
				psk<=32768;
			end
			else psk<=0;
		end
	assign fm = 2621 + (base >>> 12);//FM信号
	assign fsk = 1310 + (fskbase);//FM信号 
	logic fmbit;
	logic dsclk;
	logic signed[15:0]DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6,outdata;
	
	logic signed [15:0]AVR;
    logic signed [15:0]AC_data;
    logic  signed [15:0]AC_MIX_data;
    logic  signed [15:0]mixdata4;
	//FM_DM test_dmfm(sys_clk,sys_rst_n,(dds_ref),AC_data,AVR,AC_MIX_data,mixdata4,dsclk,DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);
PSK_DM test_dmfm(sys_clk,sys_rst_n,(dds_psk),AC_data,AVR,AC_MIX_data,dsclk);

	//Down_sample_2 AMDM1(sys_clk,sys_rst_n,dds_ref,  outdata  ,DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);
	
	// always @(posedge sys_clk) begin
	// 	if (dds_ref>=0) begin
	// 		fmbit<=1;
	// 	end
	// 	else fmbit<=0;
	// end
	
	// logic databuf[0:11];
	// always @(posedge sys_clk) begin
	// 	for (int i=12-2;i>=0;i=i-1) begin
    //         databuf[i+1]<=databuf[i];
    //     end
    //         databuf[0]<=fmbit;
	// end
	// logic xortest;
	// // logic signed [31:0]mix;
	// // always @(posedge sys_clk) begin
	// // 	mix<=(dds_ref>>>2)*databuf[11];
	// // end
	// //assign xortest = dds_ref^databuf[11];
	// logic signed [15:0]mixdata,mixdata2,mixdata3 ,mixdata4,mixdata5,mixdata_buf;
	// // always @(posedge sys_clk) begin
	// // 	if (xortest) begin
	// // 		mixdata<=16'h7FFF;
	// // 	end
	// // 	else begin
	// // 		mixdata<=16'h0000;
	// // 	end
	// // end
	// logic clk1,clk2,clk3;
// 	FM_MIX_FIR test_fmfir(sys_clk,sys_rst_n,mixdata,mixdata_buf);
// //	

// 	Down_sample dm1(sys_clk,sys_rst_n,(mixdata_buf),mixdata3,clk1);


// 	Down_sample dm2(clk1,sys_rst_n,(mixdata3<<<1),mixdata4,clk2);
// 	FM_FIR test_fmfir2(clk2,sys_rst_n,(mixdata4),mixdata5);

	//FIR_test test(clk3,sys_rst_n,mixdata4,mixdata5);


	//
	//FM_DM test_dmfm(clk2,sys_rst_n,mixdata3,AC_data,AVR,clk1);
	    // logic signed [15:0]AVR;
    // logic signed [15:0]AC_data;
	//#(4096,12,34) test_AVR(clk2,sys_rst_n,mixdata4,AVR,AC_data);

// 	logic signed [15:0]AVR;
//     logic signed [15:0]AC_data;
//     logic  signed [15:0]AC_MIX_data;
//     logic  signed [15:0]mixdata4;

// logic signed [15:0]data_amp=0;
// always @(posedge sys_clk) begin
// 	data_amp<=(((dds_ref>>>1)*3)/2);
// end

//  //FM_DM_SV2 test_dmfm(sys_clk,sys_rst_n,dds_ref,AC_data,AVR,AC_MIX_data,mixdata4,clk1);

// MOV_AVR#(2048,11,33) test_AVR(clk_2,sys_rst_n,base,AVR,AC_data);

 	//FM_DM test_dmfm(sys_clk,sys_rst_n,(dds_psk),AC_data,AVR,AC_MIX_data,mixdata4,clk1);
	


endmodule
