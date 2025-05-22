// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Aug  2 21:44:55 2023
// Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dist_mem_gen_Q -prefix
//               dist_mem_gen_Q_ dist_mem_gen_Q_sim_netlist.v
// Design      : dist_mem_gen_Q
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_Q,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_Q
   (a,
    spo);
  input [11:0]a;
  output [9:0]spo;

  wire [11:0]a;
  wire [9:0]spo;
  wire [9:0]NLW_U0_dpo_UNCONNECTED;
  wire [9:0]NLW_U0_qdpo_UNCONNECTED;
  wire [9:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_Q.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "10" *) 
  dist_mem_gen_Q_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[9:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[9:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[9:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "12" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "4096" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_Q.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "10" *) 
module dist_mem_gen_Q_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [11:0]a;
  input [9:0]d;
  input [11:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [9:0]spo;
  output [9:0]dpo;
  output [9:0]qspo;
  output [9:0]qdpo;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]a;
  wire [8:1]\^spo ;

  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[9] = \^spo [1];
  assign spo[8] = \^spo [8];
  assign spo[7] = \^spo [1];
  assign spo[6] = \^spo [1];
  assign spo[5] = \^spo [1];
  assign spo[4] = \^spo [1];
  assign spo[3] = \^spo [1];
  assign spo[2] = \^spo [1];
  assign spo[1] = \^spo [1];
  assign spo[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  dist_mem_gen_Q_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [1],\^spo [8]}));
endmodule

module dist_mem_gen_Q_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [1:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [1:0]spo;

  dist_mem_gen_Q_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module dist_mem_gen_Q_rom
   (spo,
    a);
  output [1:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [1:0]spo;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0FF4444)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(\spo[1]_INST_0_i_3_n_0 ),
        .I3(\spo[1]_INST_0_i_4_n_0 ),
        .I4(a[10]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h00000000FFFF007F)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(\spo[1]_INST_0_i_5_n_0 ),
        .I5(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0001000F)) 
    \spo[1]_INST_0_i_10 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[7]),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \spo[1]_INST_0_i_11 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[11]),
        .I3(a[7]),
        .O(\spo[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33F70000)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(\spo[1]_INST_0_i_7_n_0 ),
        .I3(a[7]),
        .I4(a[11]),
        .I5(a[9]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF60664044)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(\spo[1]_INST_0_i_8_n_0 ),
        .I3(\spo[1]_INST_0_i_9_n_0 ),
        .I4(a[8]),
        .I5(\spo[1]_INST_0_i_10_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_8_n_0 ),
        .I1(a[3]),
        .I2(\spo[1]_INST_0_i_11_n_0 ),
        .I3(a[4]),
        .I4(a[8]),
        .I5(a[6]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7F007F7FFFFFFFFF)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[11]),
        .I4(a[6]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF5F5F5F5F5F4F0F)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[11]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[6]),
        .I4(a[7]),
        .I5(a[8]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \spo[1]_INST_0_i_7 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[1]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \spo[1]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[0]),
        .O(\spo[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spo[1]_INST_0_i_9 
       (.I0(a[5]),
        .I1(a[6]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[11]),
        .I5(a[7]),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5D5D085D)) 
    \spo[8]_INST_0 
       (.I0(a[10]),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .I2(\spo[1]_INST_0_i_3_n_0 ),
        .I3(\spo[1]_INST_0_i_2_n_0 ),
        .I4(\spo[1]_INST_0_i_1_n_0 ),
        .O(spo[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
