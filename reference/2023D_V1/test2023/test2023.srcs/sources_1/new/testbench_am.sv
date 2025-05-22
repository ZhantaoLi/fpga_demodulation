`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/02 10:19:18
// Design Name: 
// Module Name: testbench_am
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


module testbench_am#(
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
	 logic sys_rst_n_2 = 0;
	logic sys_clk = 0;
	logic clk_100M =0 ;
	initial begin 
		#300 sys_rst_n = 1;
	end
	initial begin 
		#50000 sys_rst_n_2 = 1;
	end
	initial begin 
		forever #5 sys_clk = ~sys_clk;		// system clk: 100MHz
	end


	logic signed [DW-1:0] base,askbase ,ask,fm, dds_ref,dds_ref_2,dds_fsk;
	assign dds_ref_o = dds_ref;
	MY_DDS #(24, DW) BASE_dds(
		sys_rst_n, sys_clk,1, 167, 0, base);
	MY_DDS #(PW, DW) REF_dds(
		sys_rst_n,  sys_clk,1, 1310, 0, dds_ref);
	always @(posedge sys_clk ) begin
			if (base[15]) begin
				askbase<=5000;
			end
			else askbase<=-5000;
		end
    logic signed [15:0] AM,AM2;
    logic signed [31:0] AM_buf;
    always_ff @( posedge sys_clk ) begin 
        AM_buf<=(32678+askbase)*dds_ref;
        AM2<=AM_buf[31:16];
        AM<= AM2/2+1000;
    end
logic signed [15:0]ask_AVR,AC_ask;
logic signed [15:0]ask_AVR2,AC_ask2;
logic clk_en;

MOV_RMS#(3125,12,35)AVR_ask(sys_clk,sys_rst_n,clk_en,base,ask_AVR);
// MOV_AVR#(4096,12,34) AVR_ask(sys_clk,sys_rst_n,clk_en,AM,ask_AVR,AC_ask);
// //MOV_AVR#(4096,12,34) AVR_ask2(clk_en,sys_rst_n,1,base,ask_AVR2,AC_ask2);
clk_diver#(64)test1(sys_rst_n, sys_clk, 1'b1, clk_en);

	/*
	logic signed [15:0]am_AVR,AC_AM,ABS_AM;
	MOV_AVR#(4096,12,34) AVR_am(sys_clk,sys_rst_n,AM,am_AVR,AC_AM);
	always @(posedge sys_clk) begin
			if(AC_AM[15])begin
            ABS_AM<=~AC_AM+1;
        end
        else begin
            ABS_AM<=AC_AM;
        end
	end
	logic clk_AM_1,clk_AM_2;
	logic signed [15:0]AM_mix_1,AM_mix_2,AM_LP;
	Down_sample AMDM1(sys_clk,sys_rst_n,ABS_AM,AM_mix_1,clk_AM_1);
	Down_sample AMDM2(clk_AM_1,sys_rst_n,AM_mix_1,AM_mix_2,clk_AM_2);
	//AM_FIR AM_FIR_LP(clk_AM_2,sys_rst_n,AM_mix_2,AM_LP);
	
	// logic signed[15:0]data_buf[0:1024-1];
	//  logic signed[32-1:0]add_buf1;
	MOV_AVR#(4096,12,34) AVR_ask(clk_AM_1,sys_rst_n_2,AM_mix_2,ask_AVR,AC_ask);
*/
//  logic signed[15:0]DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6;

// 	    logic   signed [15:0]AM_base;
//     logic   signed [15:0]AM_base_DC;
// logic down_clk;
// AM_DM test_dmam(sys_clk,sys_rst_n,(AM),AM_base,AM_base_DC,dsclk,DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6);

  
	// logic signed [DW-1:0] Q_DDS, I_DDS;
    // MY_DDS #(PW, DW) IDDS(
	// 	sys_rst_n, sys_clk,1'b1, 1311, 0, I_DDS);
	// MY_DDS #(PW, DW) QDDS(
	// 	sys_rst_n, sys_clk,1'b1, 1311, 16384, Q_DDS);
    // logic signed  [15:0]I_square,Q_square,I_LP,Q_LP;
    // logic signed  [31:0]I_mix,Q_mix;

    // always_ff @( posedge sys_clk ) begin 
    //     I_mix<=I_DDS*AM;
    //     Q_mix<=Q_DDS*AM;
    // end
	// logic clk_i_1,clk_i_2;
	// logic clk_q_1,clk_q_2;
	// logic signed [15:0]I_mix_1,I_mix_2;
	// logic signed [15:0]Q_mix_1,Q_mix_2;


	// Down_sample IDM1(sys_clk,sys_rst_n,I_mix[31:16],I_mix_1,clk_i_1);
	// Down_sample IDM2(clk_i_1,sys_rst_n,I_mix_1,I_mix_2,clk_i_2);


	// Down_sample QDM1(sys_clk,sys_rst_n,Q_mix[31:16],Q_mix_1,clk_q_1);
	// Down_sample QDM2(clk_q_1,sys_rst_n,Q_mix_1,Q_mix_2,clk_q_2);



    // IQ_FIR I_FIR_LP(clk_i_2,sys_rst_n,I_mix_2,I_LP);
    // IQ_FIR Q_FIR_LP(clk_q_2,sys_rst_n,Q_mix_2,Q_LP);

	// // logic signed [15:0]AC_I_LP,AC_Q_LP;
	// // logic signed [15:0]iAVR,qAVR;

	// // MOV_AVR#(4096,12,34) AVR_I(clk_i_2,sys_rst_n,I_LP,iAVR,AC_I_LP);
	// // MOV_AVR#(4096,12,34) AVR_Q(clk_q_2,sys_rst_n,Q_LP,qAVR,AC_Q_LP);

	// logic signed [31:0]IQ_square;


    // always_ff @( posedge sys_clk ) begin 
    //     IQ_square<=I_LP*I_LP+Q_LP*Q_LP;
    // end


    // logic tvalid;
    // logic signed [31:0]root_data;
    // cordic_0 root(sys_clk,1'b1,IQ_square,tvalid,root_data);




endmodule
