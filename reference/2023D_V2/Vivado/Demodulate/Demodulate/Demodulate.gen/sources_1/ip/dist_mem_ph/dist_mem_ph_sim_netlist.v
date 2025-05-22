// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug  3 14:04:28 2023
// Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_ph/dist_mem_ph_sim_netlist.v
// Design      : dist_mem_ph
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_ph,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module dist_mem_ph
   (a,
    spo);
  input [11:0]a;
  output [31:0]spo;

  wire [11:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_mem_init_file = "dist_mem_ph.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  dist_mem_ph_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
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
(* C_MEM_INIT_FILE = "dist_mem_ph.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module dist_mem_ph_dist_mem_gen_v8_0_13
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
  input [31:0]d;
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
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [11:0]a;
  wire [31:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
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
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
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
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
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
  assign spo[31:28] = \^spo [31:28];
  assign spo[27:25] = \^spo [7:5];
  assign spo[24:21] = \^spo [8:5];
  assign spo[20:17] = \^spo [8:5];
  assign spo[16:13] = \^spo [8:5];
  assign spo[12:9] = \^spo [8:5];
  assign spo[8:0] = \^spo [8:0];
  GND GND
       (.G(\<const0> ));
  dist_mem_ph_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [31:28],\^spo [7:5],\^spo [8],\^spo [4:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module dist_mem_ph_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [12:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [12:0]spo;

  dist_mem_ph_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_ph_rom
   (spo,
    a);
  output [12:0]spo;
  input [11:0]a;

  wire [11:0]a;
  wire [12:0]spo;
  wire \spo[0]_INST_0_i_10_n_0 ;
  wire \spo[0]_INST_0_i_11_n_0 ;
  wire \spo[0]_INST_0_i_12_n_0 ;
  wire \spo[0]_INST_0_i_13_n_0 ;
  wire \spo[0]_INST_0_i_14_n_0 ;
  wire \spo[0]_INST_0_i_15_n_0 ;
  wire \spo[0]_INST_0_i_16_n_0 ;
  wire \spo[0]_INST_0_i_17_n_0 ;
  wire \spo[0]_INST_0_i_18_n_0 ;
  wire \spo[0]_INST_0_i_19_n_0 ;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_20_n_0 ;
  wire \spo[0]_INST_0_i_21_n_0 ;
  wire \spo[0]_INST_0_i_22_n_0 ;
  wire \spo[0]_INST_0_i_23_n_0 ;
  wire \spo[0]_INST_0_i_24_n_0 ;
  wire \spo[0]_INST_0_i_25_n_0 ;
  wire \spo[0]_INST_0_i_26_n_0 ;
  wire \spo[0]_INST_0_i_27_n_0 ;
  wire \spo[0]_INST_0_i_28_n_0 ;
  wire \spo[0]_INST_0_i_29_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_30_n_0 ;
  wire \spo[0]_INST_0_i_31_n_0 ;
  wire \spo[0]_INST_0_i_32_n_0 ;
  wire \spo[0]_INST_0_i_33_n_0 ;
  wire \spo[0]_INST_0_i_34_n_0 ;
  wire \spo[0]_INST_0_i_35_n_0 ;
  wire \spo[0]_INST_0_i_36_n_0 ;
  wire \spo[0]_INST_0_i_37_n_0 ;
  wire \spo[0]_INST_0_i_38_n_0 ;
  wire \spo[0]_INST_0_i_39_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_40_n_0 ;
  wire \spo[0]_INST_0_i_41_n_0 ;
  wire \spo[0]_INST_0_i_42_n_0 ;
  wire \spo[0]_INST_0_i_43_n_0 ;
  wire \spo[0]_INST_0_i_44_n_0 ;
  wire \spo[0]_INST_0_i_45_n_0 ;
  wire \spo[0]_INST_0_i_46_n_0 ;
  wire \spo[0]_INST_0_i_47_n_0 ;
  wire \spo[0]_INST_0_i_48_n_0 ;
  wire \spo[0]_INST_0_i_49_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_50_n_0 ;
  wire \spo[0]_INST_0_i_51_n_0 ;
  wire \spo[0]_INST_0_i_52_n_0 ;
  wire \spo[0]_INST_0_i_53_n_0 ;
  wire \spo[0]_INST_0_i_54_n_0 ;
  wire \spo[0]_INST_0_i_55_n_0 ;
  wire \spo[0]_INST_0_i_56_n_0 ;
  wire \spo[0]_INST_0_i_57_n_0 ;
  wire \spo[0]_INST_0_i_58_n_0 ;
  wire \spo[0]_INST_0_i_59_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_60_n_0 ;
  wire \spo[0]_INST_0_i_61_n_0 ;
  wire \spo[0]_INST_0_i_62_n_0 ;
  wire \spo[0]_INST_0_i_63_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[0]_INST_0_i_7_n_0 ;
  wire \spo[0]_INST_0_i_8_n_0 ;
  wire \spo[0]_INST_0_i_9_n_0 ;
  wire \spo[1]_INST_0_i_10_n_0 ;
  wire \spo[1]_INST_0_i_11_n_0 ;
  wire \spo[1]_INST_0_i_12_n_0 ;
  wire \spo[1]_INST_0_i_13_n_0 ;
  wire \spo[1]_INST_0_i_14_n_0 ;
  wire \spo[1]_INST_0_i_15_n_0 ;
  wire \spo[1]_INST_0_i_16_n_0 ;
  wire \spo[1]_INST_0_i_17_n_0 ;
  wire \spo[1]_INST_0_i_18_n_0 ;
  wire \spo[1]_INST_0_i_19_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_20_n_0 ;
  wire \spo[1]_INST_0_i_21_n_0 ;
  wire \spo[1]_INST_0_i_22_n_0 ;
  wire \spo[1]_INST_0_i_23_n_0 ;
  wire \spo[1]_INST_0_i_24_n_0 ;
  wire \spo[1]_INST_0_i_25_n_0 ;
  wire \spo[1]_INST_0_i_26_n_0 ;
  wire \spo[1]_INST_0_i_27_n_0 ;
  wire \spo[1]_INST_0_i_28_n_0 ;
  wire \spo[1]_INST_0_i_29_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_30_n_0 ;
  wire \spo[1]_INST_0_i_31_n_0 ;
  wire \spo[1]_INST_0_i_32_n_0 ;
  wire \spo[1]_INST_0_i_33_n_0 ;
  wire \spo[1]_INST_0_i_34_n_0 ;
  wire \spo[1]_INST_0_i_35_n_0 ;
  wire \spo[1]_INST_0_i_36_n_0 ;
  wire \spo[1]_INST_0_i_37_n_0 ;
  wire \spo[1]_INST_0_i_38_n_0 ;
  wire \spo[1]_INST_0_i_39_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_40_n_0 ;
  wire \spo[1]_INST_0_i_41_n_0 ;
  wire \spo[1]_INST_0_i_42_n_0 ;
  wire \spo[1]_INST_0_i_43_n_0 ;
  wire \spo[1]_INST_0_i_44_n_0 ;
  wire \spo[1]_INST_0_i_45_n_0 ;
  wire \spo[1]_INST_0_i_46_n_0 ;
  wire \spo[1]_INST_0_i_47_n_0 ;
  wire \spo[1]_INST_0_i_48_n_0 ;
  wire \spo[1]_INST_0_i_49_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_50_n_0 ;
  wire \spo[1]_INST_0_i_51_n_0 ;
  wire \spo[1]_INST_0_i_52_n_0 ;
  wire \spo[1]_INST_0_i_53_n_0 ;
  wire \spo[1]_INST_0_i_54_n_0 ;
  wire \spo[1]_INST_0_i_55_n_0 ;
  wire \spo[1]_INST_0_i_56_n_0 ;
  wire \spo[1]_INST_0_i_57_n_0 ;
  wire \spo[1]_INST_0_i_58_n_0 ;
  wire \spo[1]_INST_0_i_59_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_60_n_0 ;
  wire \spo[1]_INST_0_i_61_n_0 ;
  wire \spo[1]_INST_0_i_62_n_0 ;
  wire \spo[1]_INST_0_i_63_n_0 ;
  wire \spo[1]_INST_0_i_64_n_0 ;
  wire \spo[1]_INST_0_i_65_n_0 ;
  wire \spo[1]_INST_0_i_66_n_0 ;
  wire \spo[1]_INST_0_i_67_n_0 ;
  wire \spo[1]_INST_0_i_68_n_0 ;
  wire \spo[1]_INST_0_i_69_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[1]_INST_0_i_70_n_0 ;
  wire \spo[1]_INST_0_i_71_n_0 ;
  wire \spo[1]_INST_0_i_72_n_0 ;
  wire \spo[1]_INST_0_i_73_n_0 ;
  wire \spo[1]_INST_0_i_74_n_0 ;
  wire \spo[1]_INST_0_i_75_n_0 ;
  wire \spo[1]_INST_0_i_76_n_0 ;
  wire \spo[1]_INST_0_i_77_n_0 ;
  wire \spo[1]_INST_0_i_78_n_0 ;
  wire \spo[1]_INST_0_i_79_n_0 ;
  wire \spo[1]_INST_0_i_7_n_0 ;
  wire \spo[1]_INST_0_i_80_n_0 ;
  wire \spo[1]_INST_0_i_81_n_0 ;
  wire \spo[1]_INST_0_i_82_n_0 ;
  wire \spo[1]_INST_0_i_83_n_0 ;
  wire \spo[1]_INST_0_i_8_n_0 ;
  wire \spo[1]_INST_0_i_9_n_0 ;
  wire \spo[28]_INST_0_i_10_n_0 ;
  wire \spo[28]_INST_0_i_11_n_0 ;
  wire \spo[28]_INST_0_i_12_n_0 ;
  wire \spo[28]_INST_0_i_13_n_0 ;
  wire \spo[28]_INST_0_i_14_n_0 ;
  wire \spo[28]_INST_0_i_15_n_0 ;
  wire \spo[28]_INST_0_i_16_n_0 ;
  wire \spo[28]_INST_0_i_17_n_0 ;
  wire \spo[28]_INST_0_i_18_n_0 ;
  wire \spo[28]_INST_0_i_19_n_0 ;
  wire \spo[28]_INST_0_i_1_n_0 ;
  wire \spo[28]_INST_0_i_20_n_0 ;
  wire \spo[28]_INST_0_i_21_n_0 ;
  wire \spo[28]_INST_0_i_22_n_0 ;
  wire \spo[28]_INST_0_i_23_n_0 ;
  wire \spo[28]_INST_0_i_24_n_0 ;
  wire \spo[28]_INST_0_i_25_n_0 ;
  wire \spo[28]_INST_0_i_26_n_0 ;
  wire \spo[28]_INST_0_i_27_n_0 ;
  wire \spo[28]_INST_0_i_28_n_0 ;
  wire \spo[28]_INST_0_i_29_n_0 ;
  wire \spo[28]_INST_0_i_2_n_0 ;
  wire \spo[28]_INST_0_i_30_n_0 ;
  wire \spo[28]_INST_0_i_31_n_0 ;
  wire \spo[28]_INST_0_i_32_n_0 ;
  wire \spo[28]_INST_0_i_33_n_0 ;
  wire \spo[28]_INST_0_i_34_n_0 ;
  wire \spo[28]_INST_0_i_35_n_0 ;
  wire \spo[28]_INST_0_i_36_n_0 ;
  wire \spo[28]_INST_0_i_37_n_0 ;
  wire \spo[28]_INST_0_i_38_n_0 ;
  wire \spo[28]_INST_0_i_39_n_0 ;
  wire \spo[28]_INST_0_i_3_n_0 ;
  wire \spo[28]_INST_0_i_40_n_0 ;
  wire \spo[28]_INST_0_i_41_n_0 ;
  wire \spo[28]_INST_0_i_42_n_0 ;
  wire \spo[28]_INST_0_i_43_n_0 ;
  wire \spo[28]_INST_0_i_44_n_0 ;
  wire \spo[28]_INST_0_i_45_n_0 ;
  wire \spo[28]_INST_0_i_46_n_0 ;
  wire \spo[28]_INST_0_i_47_n_0 ;
  wire \spo[28]_INST_0_i_48_n_0 ;
  wire \spo[28]_INST_0_i_49_n_0 ;
  wire \spo[28]_INST_0_i_4_n_0 ;
  wire \spo[28]_INST_0_i_50_n_0 ;
  wire \spo[28]_INST_0_i_51_n_0 ;
  wire \spo[28]_INST_0_i_52_n_0 ;
  wire \spo[28]_INST_0_i_53_n_0 ;
  wire \spo[28]_INST_0_i_54_n_0 ;
  wire \spo[28]_INST_0_i_55_n_0 ;
  wire \spo[28]_INST_0_i_56_n_0 ;
  wire \spo[28]_INST_0_i_57_n_0 ;
  wire \spo[28]_INST_0_i_58_n_0 ;
  wire \spo[28]_INST_0_i_59_n_0 ;
  wire \spo[28]_INST_0_i_5_n_0 ;
  wire \spo[28]_INST_0_i_60_n_0 ;
  wire \spo[28]_INST_0_i_61_n_0 ;
  wire \spo[28]_INST_0_i_62_n_0 ;
  wire \spo[28]_INST_0_i_63_n_0 ;
  wire \spo[28]_INST_0_i_64_n_0 ;
  wire \spo[28]_INST_0_i_65_n_0 ;
  wire \spo[28]_INST_0_i_66_n_0 ;
  wire \spo[28]_INST_0_i_67_n_0 ;
  wire \spo[28]_INST_0_i_68_n_0 ;
  wire \spo[28]_INST_0_i_69_n_0 ;
  wire \spo[28]_INST_0_i_6_n_0 ;
  wire \spo[28]_INST_0_i_70_n_0 ;
  wire \spo[28]_INST_0_i_71_n_0 ;
  wire \spo[28]_INST_0_i_72_n_0 ;
  wire \spo[28]_INST_0_i_73_n_0 ;
  wire \spo[28]_INST_0_i_74_n_0 ;
  wire \spo[28]_INST_0_i_75_n_0 ;
  wire \spo[28]_INST_0_i_76_n_0 ;
  wire \spo[28]_INST_0_i_7_n_0 ;
  wire \spo[28]_INST_0_i_8_n_0 ;
  wire \spo[28]_INST_0_i_9_n_0 ;
  wire \spo[29]_INST_0_i_10_n_0 ;
  wire \spo[29]_INST_0_i_11_n_0 ;
  wire \spo[29]_INST_0_i_12_n_0 ;
  wire \spo[29]_INST_0_i_13_n_0 ;
  wire \spo[29]_INST_0_i_14_n_0 ;
  wire \spo[29]_INST_0_i_15_n_0 ;
  wire \spo[29]_INST_0_i_16_n_0 ;
  wire \spo[29]_INST_0_i_17_n_0 ;
  wire \spo[29]_INST_0_i_18_n_0 ;
  wire \spo[29]_INST_0_i_19_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[29]_INST_0_i_20_n_0 ;
  wire \spo[29]_INST_0_i_21_n_0 ;
  wire \spo[29]_INST_0_i_22_n_0 ;
  wire \spo[29]_INST_0_i_23_n_0 ;
  wire \spo[29]_INST_0_i_24_n_0 ;
  wire \spo[29]_INST_0_i_25_n_0 ;
  wire \spo[29]_INST_0_i_26_n_0 ;
  wire \spo[29]_INST_0_i_27_n_0 ;
  wire \spo[29]_INST_0_i_28_n_0 ;
  wire \spo[29]_INST_0_i_29_n_0 ;
  wire \spo[29]_INST_0_i_2_n_0 ;
  wire \spo[29]_INST_0_i_30_n_0 ;
  wire \spo[29]_INST_0_i_31_n_0 ;
  wire \spo[29]_INST_0_i_32_n_0 ;
  wire \spo[29]_INST_0_i_33_n_0 ;
  wire \spo[29]_INST_0_i_34_n_0 ;
  wire \spo[29]_INST_0_i_35_n_0 ;
  wire \spo[29]_INST_0_i_36_n_0 ;
  wire \spo[29]_INST_0_i_37_n_0 ;
  wire \spo[29]_INST_0_i_38_n_0 ;
  wire \spo[29]_INST_0_i_39_n_0 ;
  wire \spo[29]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_40_n_0 ;
  wire \spo[29]_INST_0_i_41_n_0 ;
  wire \spo[29]_INST_0_i_42_n_0 ;
  wire \spo[29]_INST_0_i_43_n_0 ;
  wire \spo[29]_INST_0_i_44_n_0 ;
  wire \spo[29]_INST_0_i_45_n_0 ;
  wire \spo[29]_INST_0_i_46_n_0 ;
  wire \spo[29]_INST_0_i_47_n_0 ;
  wire \spo[29]_INST_0_i_48_n_0 ;
  wire \spo[29]_INST_0_i_49_n_0 ;
  wire \spo[29]_INST_0_i_4_n_0 ;
  wire \spo[29]_INST_0_i_50_n_0 ;
  wire \spo[29]_INST_0_i_51_n_0 ;
  wire \spo[29]_INST_0_i_52_n_0 ;
  wire \spo[29]_INST_0_i_53_n_0 ;
  wire \spo[29]_INST_0_i_54_n_0 ;
  wire \spo[29]_INST_0_i_55_n_0 ;
  wire \spo[29]_INST_0_i_56_n_0 ;
  wire \spo[29]_INST_0_i_57_n_0 ;
  wire \spo[29]_INST_0_i_58_n_0 ;
  wire \spo[29]_INST_0_i_59_n_0 ;
  wire \spo[29]_INST_0_i_5_n_0 ;
  wire \spo[29]_INST_0_i_60_n_0 ;
  wire \spo[29]_INST_0_i_61_n_0 ;
  wire \spo[29]_INST_0_i_62_n_0 ;
  wire \spo[29]_INST_0_i_63_n_0 ;
  wire \spo[29]_INST_0_i_64_n_0 ;
  wire \spo[29]_INST_0_i_65_n_0 ;
  wire \spo[29]_INST_0_i_66_n_0 ;
  wire \spo[29]_INST_0_i_67_n_0 ;
  wire \spo[29]_INST_0_i_68_n_0 ;
  wire \spo[29]_INST_0_i_69_n_0 ;
  wire \spo[29]_INST_0_i_6_n_0 ;
  wire \spo[29]_INST_0_i_70_n_0 ;
  wire \spo[29]_INST_0_i_71_n_0 ;
  wire \spo[29]_INST_0_i_72_n_0 ;
  wire \spo[29]_INST_0_i_73_n_0 ;
  wire \spo[29]_INST_0_i_74_n_0 ;
  wire \spo[29]_INST_0_i_75_n_0 ;
  wire \spo[29]_INST_0_i_7_n_0 ;
  wire \spo[29]_INST_0_i_8_n_0 ;
  wire \spo[29]_INST_0_i_9_n_0 ;
  wire \spo[2]_INST_0_i_10_n_0 ;
  wire \spo[2]_INST_0_i_11_n_0 ;
  wire \spo[2]_INST_0_i_12_n_0 ;
  wire \spo[2]_INST_0_i_13_n_0 ;
  wire \spo[2]_INST_0_i_14_n_0 ;
  wire \spo[2]_INST_0_i_15_n_0 ;
  wire \spo[2]_INST_0_i_16_n_0 ;
  wire \spo[2]_INST_0_i_17_n_0 ;
  wire \spo[2]_INST_0_i_18_n_0 ;
  wire \spo[2]_INST_0_i_19_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_20_n_0 ;
  wire \spo[2]_INST_0_i_21_n_0 ;
  wire \spo[2]_INST_0_i_22_n_0 ;
  wire \spo[2]_INST_0_i_23_n_0 ;
  wire \spo[2]_INST_0_i_24_n_0 ;
  wire \spo[2]_INST_0_i_25_n_0 ;
  wire \spo[2]_INST_0_i_26_n_0 ;
  wire \spo[2]_INST_0_i_27_n_0 ;
  wire \spo[2]_INST_0_i_28_n_0 ;
  wire \spo[2]_INST_0_i_29_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_30_n_0 ;
  wire \spo[2]_INST_0_i_31_n_0 ;
  wire \spo[2]_INST_0_i_32_n_0 ;
  wire \spo[2]_INST_0_i_33_n_0 ;
  wire \spo[2]_INST_0_i_34_n_0 ;
  wire \spo[2]_INST_0_i_35_n_0 ;
  wire \spo[2]_INST_0_i_36_n_0 ;
  wire \spo[2]_INST_0_i_37_n_0 ;
  wire \spo[2]_INST_0_i_38_n_0 ;
  wire \spo[2]_INST_0_i_39_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_40_n_0 ;
  wire \spo[2]_INST_0_i_41_n_0 ;
  wire \spo[2]_INST_0_i_42_n_0 ;
  wire \spo[2]_INST_0_i_43_n_0 ;
  wire \spo[2]_INST_0_i_44_n_0 ;
  wire \spo[2]_INST_0_i_45_n_0 ;
  wire \spo[2]_INST_0_i_46_n_0 ;
  wire \spo[2]_INST_0_i_47_n_0 ;
  wire \spo[2]_INST_0_i_48_n_0 ;
  wire \spo[2]_INST_0_i_49_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_50_n_0 ;
  wire \spo[2]_INST_0_i_51_n_0 ;
  wire \spo[2]_INST_0_i_52_n_0 ;
  wire \spo[2]_INST_0_i_53_n_0 ;
  wire \spo[2]_INST_0_i_54_n_0 ;
  wire \spo[2]_INST_0_i_55_n_0 ;
  wire \spo[2]_INST_0_i_56_n_0 ;
  wire \spo[2]_INST_0_i_57_n_0 ;
  wire \spo[2]_INST_0_i_58_n_0 ;
  wire \spo[2]_INST_0_i_59_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_60_n_0 ;
  wire \spo[2]_INST_0_i_61_n_0 ;
  wire \spo[2]_INST_0_i_62_n_0 ;
  wire \spo[2]_INST_0_i_63_n_0 ;
  wire \spo[2]_INST_0_i_64_n_0 ;
  wire \spo[2]_INST_0_i_65_n_0 ;
  wire \spo[2]_INST_0_i_66_n_0 ;
  wire \spo[2]_INST_0_i_67_n_0 ;
  wire \spo[2]_INST_0_i_68_n_0 ;
  wire \spo[2]_INST_0_i_69_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_70_n_0 ;
  wire \spo[2]_INST_0_i_71_n_0 ;
  wire \spo[2]_INST_0_i_72_n_0 ;
  wire \spo[2]_INST_0_i_73_n_0 ;
  wire \spo[2]_INST_0_i_74_n_0 ;
  wire \spo[2]_INST_0_i_75_n_0 ;
  wire \spo[2]_INST_0_i_76_n_0 ;
  wire \spo[2]_INST_0_i_77_n_0 ;
  wire \spo[2]_INST_0_i_78_n_0 ;
  wire \spo[2]_INST_0_i_79_n_0 ;
  wire \spo[2]_INST_0_i_7_n_0 ;
  wire \spo[2]_INST_0_i_80_n_0 ;
  wire \spo[2]_INST_0_i_81_n_0 ;
  wire \spo[2]_INST_0_i_82_n_0 ;
  wire \spo[2]_INST_0_i_83_n_0 ;
  wire \spo[2]_INST_0_i_84_n_0 ;
  wire \spo[2]_INST_0_i_85_n_0 ;
  wire \spo[2]_INST_0_i_86_n_0 ;
  wire \spo[2]_INST_0_i_87_n_0 ;
  wire \spo[2]_INST_0_i_88_n_0 ;
  wire \spo[2]_INST_0_i_89_n_0 ;
  wire \spo[2]_INST_0_i_8_n_0 ;
  wire \spo[2]_INST_0_i_90_n_0 ;
  wire \spo[2]_INST_0_i_91_n_0 ;
  wire \spo[2]_INST_0_i_92_n_0 ;
  wire \spo[2]_INST_0_i_93_n_0 ;
  wire \spo[2]_INST_0_i_94_n_0 ;
  wire \spo[2]_INST_0_i_95_n_0 ;
  wire \spo[2]_INST_0_i_9_n_0 ;
  wire \spo[30]_INST_0_i_10_n_0 ;
  wire \spo[30]_INST_0_i_11_n_0 ;
  wire \spo[30]_INST_0_i_12_n_0 ;
  wire \spo[30]_INST_0_i_13_n_0 ;
  wire \spo[30]_INST_0_i_14_n_0 ;
  wire \spo[30]_INST_0_i_15_n_0 ;
  wire \spo[30]_INST_0_i_16_n_0 ;
  wire \spo[30]_INST_0_i_17_n_0 ;
  wire \spo[30]_INST_0_i_18_n_0 ;
  wire \spo[30]_INST_0_i_19_n_0 ;
  wire \spo[30]_INST_0_i_1_n_0 ;
  wire \spo[30]_INST_0_i_20_n_0 ;
  wire \spo[30]_INST_0_i_21_n_0 ;
  wire \spo[30]_INST_0_i_22_n_0 ;
  wire \spo[30]_INST_0_i_23_n_0 ;
  wire \spo[30]_INST_0_i_24_n_0 ;
  wire \spo[30]_INST_0_i_25_n_0 ;
  wire \spo[30]_INST_0_i_26_n_0 ;
  wire \spo[30]_INST_0_i_27_n_0 ;
  wire \spo[30]_INST_0_i_28_n_0 ;
  wire \spo[30]_INST_0_i_29_n_0 ;
  wire \spo[30]_INST_0_i_2_n_0 ;
  wire \spo[30]_INST_0_i_30_n_0 ;
  wire \spo[30]_INST_0_i_31_n_0 ;
  wire \spo[30]_INST_0_i_32_n_0 ;
  wire \spo[30]_INST_0_i_33_n_0 ;
  wire \spo[30]_INST_0_i_34_n_0 ;
  wire \spo[30]_INST_0_i_35_n_0 ;
  wire \spo[30]_INST_0_i_36_n_0 ;
  wire \spo[30]_INST_0_i_37_n_0 ;
  wire \spo[30]_INST_0_i_38_n_0 ;
  wire \spo[30]_INST_0_i_39_n_0 ;
  wire \spo[30]_INST_0_i_3_n_0 ;
  wire \spo[30]_INST_0_i_40_n_0 ;
  wire \spo[30]_INST_0_i_41_n_0 ;
  wire \spo[30]_INST_0_i_42_n_0 ;
  wire \spo[30]_INST_0_i_43_n_0 ;
  wire \spo[30]_INST_0_i_44_n_0 ;
  wire \spo[30]_INST_0_i_45_n_0 ;
  wire \spo[30]_INST_0_i_46_n_0 ;
  wire \spo[30]_INST_0_i_47_n_0 ;
  wire \spo[30]_INST_0_i_48_n_0 ;
  wire \spo[30]_INST_0_i_49_n_0 ;
  wire \spo[30]_INST_0_i_4_n_0 ;
  wire \spo[30]_INST_0_i_50_n_0 ;
  wire \spo[30]_INST_0_i_51_n_0 ;
  wire \spo[30]_INST_0_i_52_n_0 ;
  wire \spo[30]_INST_0_i_53_n_0 ;
  wire \spo[30]_INST_0_i_54_n_0 ;
  wire \spo[30]_INST_0_i_55_n_0 ;
  wire \spo[30]_INST_0_i_56_n_0 ;
  wire \spo[30]_INST_0_i_57_n_0 ;
  wire \spo[30]_INST_0_i_58_n_0 ;
  wire \spo[30]_INST_0_i_59_n_0 ;
  wire \spo[30]_INST_0_i_5_n_0 ;
  wire \spo[30]_INST_0_i_60_n_0 ;
  wire \spo[30]_INST_0_i_61_n_0 ;
  wire \spo[30]_INST_0_i_62_n_0 ;
  wire \spo[30]_INST_0_i_63_n_0 ;
  wire \spo[30]_INST_0_i_64_n_0 ;
  wire \spo[30]_INST_0_i_65_n_0 ;
  wire \spo[30]_INST_0_i_6_n_0 ;
  wire \spo[30]_INST_0_i_7_n_0 ;
  wire \spo[30]_INST_0_i_8_n_0 ;
  wire \spo[30]_INST_0_i_9_n_0 ;
  wire \spo[31]_INST_0_i_10_n_0 ;
  wire \spo[31]_INST_0_i_11_n_0 ;
  wire \spo[31]_INST_0_i_12_n_0 ;
  wire \spo[31]_INST_0_i_13_n_0 ;
  wire \spo[31]_INST_0_i_14_n_0 ;
  wire \spo[31]_INST_0_i_15_n_0 ;
  wire \spo[31]_INST_0_i_16_n_0 ;
  wire \spo[31]_INST_0_i_17_n_0 ;
  wire \spo[31]_INST_0_i_18_n_0 ;
  wire \spo[31]_INST_0_i_19_n_0 ;
  wire \spo[31]_INST_0_i_1_n_0 ;
  wire \spo[31]_INST_0_i_20_n_0 ;
  wire \spo[31]_INST_0_i_21_n_0 ;
  wire \spo[31]_INST_0_i_22_n_0 ;
  wire \spo[31]_INST_0_i_23_n_0 ;
  wire \spo[31]_INST_0_i_24_n_0 ;
  wire \spo[31]_INST_0_i_25_n_0 ;
  wire \spo[31]_INST_0_i_26_n_0 ;
  wire \spo[31]_INST_0_i_27_n_0 ;
  wire \spo[31]_INST_0_i_28_n_0 ;
  wire \spo[31]_INST_0_i_29_n_0 ;
  wire \spo[31]_INST_0_i_2_n_0 ;
  wire \spo[31]_INST_0_i_30_n_0 ;
  wire \spo[31]_INST_0_i_31_n_0 ;
  wire \spo[31]_INST_0_i_32_n_0 ;
  wire \spo[31]_INST_0_i_33_n_0 ;
  wire \spo[31]_INST_0_i_34_n_0 ;
  wire \spo[31]_INST_0_i_35_n_0 ;
  wire \spo[31]_INST_0_i_36_n_0 ;
  wire \spo[31]_INST_0_i_37_n_0 ;
  wire \spo[31]_INST_0_i_38_n_0 ;
  wire \spo[31]_INST_0_i_39_n_0 ;
  wire \spo[31]_INST_0_i_3_n_0 ;
  wire \spo[31]_INST_0_i_40_n_0 ;
  wire \spo[31]_INST_0_i_41_n_0 ;
  wire \spo[31]_INST_0_i_42_n_0 ;
  wire \spo[31]_INST_0_i_43_n_0 ;
  wire \spo[31]_INST_0_i_44_n_0 ;
  wire \spo[31]_INST_0_i_45_n_0 ;
  wire \spo[31]_INST_0_i_46_n_0 ;
  wire \spo[31]_INST_0_i_47_n_0 ;
  wire \spo[31]_INST_0_i_48_n_0 ;
  wire \spo[31]_INST_0_i_49_n_0 ;
  wire \spo[31]_INST_0_i_4_n_0 ;
  wire \spo[31]_INST_0_i_50_n_0 ;
  wire \spo[31]_INST_0_i_51_n_0 ;
  wire \spo[31]_INST_0_i_5_n_0 ;
  wire \spo[31]_INST_0_i_6_n_0 ;
  wire \spo[31]_INST_0_i_7_n_0 ;
  wire \spo[31]_INST_0_i_8_n_0 ;
  wire \spo[31]_INST_0_i_9_n_0 ;
  wire \spo[3]_INST_0_i_10_n_0 ;
  wire \spo[3]_INST_0_i_11_n_0 ;
  wire \spo[3]_INST_0_i_12_n_0 ;
  wire \spo[3]_INST_0_i_13_n_0 ;
  wire \spo[3]_INST_0_i_14_n_0 ;
  wire \spo[3]_INST_0_i_15_n_0 ;
  wire \spo[3]_INST_0_i_16_n_0 ;
  wire \spo[3]_INST_0_i_17_n_0 ;
  wire \spo[3]_INST_0_i_18_n_0 ;
  wire \spo[3]_INST_0_i_19_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_20_n_0 ;
  wire \spo[3]_INST_0_i_21_n_0 ;
  wire \spo[3]_INST_0_i_22_n_0 ;
  wire \spo[3]_INST_0_i_23_n_0 ;
  wire \spo[3]_INST_0_i_24_n_0 ;
  wire \spo[3]_INST_0_i_25_n_0 ;
  wire \spo[3]_INST_0_i_26_n_0 ;
  wire \spo[3]_INST_0_i_27_n_0 ;
  wire \spo[3]_INST_0_i_28_n_0 ;
  wire \spo[3]_INST_0_i_29_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_30_n_0 ;
  wire \spo[3]_INST_0_i_31_n_0 ;
  wire \spo[3]_INST_0_i_32_n_0 ;
  wire \spo[3]_INST_0_i_33_n_0 ;
  wire \spo[3]_INST_0_i_34_n_0 ;
  wire \spo[3]_INST_0_i_35_n_0 ;
  wire \spo[3]_INST_0_i_36_n_0 ;
  wire \spo[3]_INST_0_i_37_n_0 ;
  wire \spo[3]_INST_0_i_38_n_0 ;
  wire \spo[3]_INST_0_i_39_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_40_n_0 ;
  wire \spo[3]_INST_0_i_41_n_0 ;
  wire \spo[3]_INST_0_i_42_n_0 ;
  wire \spo[3]_INST_0_i_43_n_0 ;
  wire \spo[3]_INST_0_i_44_n_0 ;
  wire \spo[3]_INST_0_i_45_n_0 ;
  wire \spo[3]_INST_0_i_46_n_0 ;
  wire \spo[3]_INST_0_i_47_n_0 ;
  wire \spo[3]_INST_0_i_48_n_0 ;
  wire \spo[3]_INST_0_i_49_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_50_n_0 ;
  wire \spo[3]_INST_0_i_51_n_0 ;
  wire \spo[3]_INST_0_i_52_n_0 ;
  wire \spo[3]_INST_0_i_53_n_0 ;
  wire \spo[3]_INST_0_i_54_n_0 ;
  wire \spo[3]_INST_0_i_55_n_0 ;
  wire \spo[3]_INST_0_i_56_n_0 ;
  wire \spo[3]_INST_0_i_57_n_0 ;
  wire \spo[3]_INST_0_i_58_n_0 ;
  wire \spo[3]_INST_0_i_59_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_60_n_0 ;
  wire \spo[3]_INST_0_i_61_n_0 ;
  wire \spo[3]_INST_0_i_62_n_0 ;
  wire \spo[3]_INST_0_i_63_n_0 ;
  wire \spo[3]_INST_0_i_64_n_0 ;
  wire \spo[3]_INST_0_i_65_n_0 ;
  wire \spo[3]_INST_0_i_66_n_0 ;
  wire \spo[3]_INST_0_i_67_n_0 ;
  wire \spo[3]_INST_0_i_68_n_0 ;
  wire \spo[3]_INST_0_i_69_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_70_n_0 ;
  wire \spo[3]_INST_0_i_71_n_0 ;
  wire \spo[3]_INST_0_i_72_n_0 ;
  wire \spo[3]_INST_0_i_73_n_0 ;
  wire \spo[3]_INST_0_i_74_n_0 ;
  wire \spo[3]_INST_0_i_7_n_0 ;
  wire \spo[3]_INST_0_i_8_n_0 ;
  wire \spo[3]_INST_0_i_9_n_0 ;
  wire \spo[4]_INST_0_i_10_n_0 ;
  wire \spo[4]_INST_0_i_11_n_0 ;
  wire \spo[4]_INST_0_i_12_n_0 ;
  wire \spo[4]_INST_0_i_13_n_0 ;
  wire \spo[4]_INST_0_i_14_n_0 ;
  wire \spo[4]_INST_0_i_15_n_0 ;
  wire \spo[4]_INST_0_i_16_n_0 ;
  wire \spo[4]_INST_0_i_17_n_0 ;
  wire \spo[4]_INST_0_i_18_n_0 ;
  wire \spo[4]_INST_0_i_19_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_20_n_0 ;
  wire \spo[4]_INST_0_i_21_n_0 ;
  wire \spo[4]_INST_0_i_22_n_0 ;
  wire \spo[4]_INST_0_i_23_n_0 ;
  wire \spo[4]_INST_0_i_24_n_0 ;
  wire \spo[4]_INST_0_i_25_n_0 ;
  wire \spo[4]_INST_0_i_26_n_0 ;
  wire \spo[4]_INST_0_i_27_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_7_n_0 ;
  wire \spo[4]_INST_0_i_8_n_0 ;
  wire \spo[4]_INST_0_i_9_n_0 ;
  wire \spo[5]_INST_0_i_10_n_0 ;
  wire \spo[5]_INST_0_i_11_n_0 ;
  wire \spo[5]_INST_0_i_12_n_0 ;
  wire \spo[5]_INST_0_i_13_n_0 ;
  wire \spo[5]_INST_0_i_14_n_0 ;
  wire \spo[5]_INST_0_i_15_n_0 ;
  wire \spo[5]_INST_0_i_16_n_0 ;
  wire \spo[5]_INST_0_i_17_n_0 ;
  wire \spo[5]_INST_0_i_18_n_0 ;
  wire \spo[5]_INST_0_i_19_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_20_n_0 ;
  wire \spo[5]_INST_0_i_21_n_0 ;
  wire \spo[5]_INST_0_i_22_n_0 ;
  wire \spo[5]_INST_0_i_23_n_0 ;
  wire \spo[5]_INST_0_i_24_n_0 ;
  wire \spo[5]_INST_0_i_25_n_0 ;
  wire \spo[5]_INST_0_i_26_n_0 ;
  wire \spo[5]_INST_0_i_27_n_0 ;
  wire \spo[5]_INST_0_i_28_n_0 ;
  wire \spo[5]_INST_0_i_29_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_30_n_0 ;
  wire \spo[5]_INST_0_i_31_n_0 ;
  wire \spo[5]_INST_0_i_32_n_0 ;
  wire \spo[5]_INST_0_i_33_n_0 ;
  wire \spo[5]_INST_0_i_34_n_0 ;
  wire \spo[5]_INST_0_i_35_n_0 ;
  wire \spo[5]_INST_0_i_36_n_0 ;
  wire \spo[5]_INST_0_i_37_n_0 ;
  wire \spo[5]_INST_0_i_38_n_0 ;
  wire \spo[5]_INST_0_i_39_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_40_n_0 ;
  wire \spo[5]_INST_0_i_41_n_0 ;
  wire \spo[5]_INST_0_i_42_n_0 ;
  wire \spo[5]_INST_0_i_43_n_0 ;
  wire \spo[5]_INST_0_i_44_n_0 ;
  wire \spo[5]_INST_0_i_45_n_0 ;
  wire \spo[5]_INST_0_i_46_n_0 ;
  wire \spo[5]_INST_0_i_47_n_0 ;
  wire \spo[5]_INST_0_i_48_n_0 ;
  wire \spo[5]_INST_0_i_49_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_50_n_0 ;
  wire \spo[5]_INST_0_i_51_n_0 ;
  wire \spo[5]_INST_0_i_52_n_0 ;
  wire \spo[5]_INST_0_i_53_n_0 ;
  wire \spo[5]_INST_0_i_54_n_0 ;
  wire \spo[5]_INST_0_i_55_n_0 ;
  wire \spo[5]_INST_0_i_56_n_0 ;
  wire \spo[5]_INST_0_i_57_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_7_n_0 ;
  wire \spo[5]_INST_0_i_8_n_0 ;
  wire \spo[5]_INST_0_i_9_n_0 ;
  wire \spo[6]_INST_0_i_10_n_0 ;
  wire \spo[6]_INST_0_i_11_n_0 ;
  wire \spo[6]_INST_0_i_12_n_0 ;
  wire \spo[6]_INST_0_i_13_n_0 ;
  wire \spo[6]_INST_0_i_14_n_0 ;
  wire \spo[6]_INST_0_i_15_n_0 ;
  wire \spo[6]_INST_0_i_16_n_0 ;
  wire \spo[6]_INST_0_i_17_n_0 ;
  wire \spo[6]_INST_0_i_18_n_0 ;
  wire \spo[6]_INST_0_i_19_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_20_n_0 ;
  wire \spo[6]_INST_0_i_21_n_0 ;
  wire \spo[6]_INST_0_i_22_n_0 ;
  wire \spo[6]_INST_0_i_23_n_0 ;
  wire \spo[6]_INST_0_i_24_n_0 ;
  wire \spo[6]_INST_0_i_25_n_0 ;
  wire \spo[6]_INST_0_i_26_n_0 ;
  wire \spo[6]_INST_0_i_27_n_0 ;
  wire \spo[6]_INST_0_i_28_n_0 ;
  wire \spo[6]_INST_0_i_29_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_30_n_0 ;
  wire \spo[6]_INST_0_i_31_n_0 ;
  wire \spo[6]_INST_0_i_32_n_0 ;
  wire \spo[6]_INST_0_i_33_n_0 ;
  wire \spo[6]_INST_0_i_34_n_0 ;
  wire \spo[6]_INST_0_i_35_n_0 ;
  wire \spo[6]_INST_0_i_36_n_0 ;
  wire \spo[6]_INST_0_i_37_n_0 ;
  wire \spo[6]_INST_0_i_38_n_0 ;
  wire \spo[6]_INST_0_i_39_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_40_n_0 ;
  wire \spo[6]_INST_0_i_41_n_0 ;
  wire \spo[6]_INST_0_i_42_n_0 ;
  wire \spo[6]_INST_0_i_43_n_0 ;
  wire \spo[6]_INST_0_i_44_n_0 ;
  wire \spo[6]_INST_0_i_45_n_0 ;
  wire \spo[6]_INST_0_i_46_n_0 ;
  wire \spo[6]_INST_0_i_47_n_0 ;
  wire \spo[6]_INST_0_i_48_n_0 ;
  wire \spo[6]_INST_0_i_49_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_50_n_0 ;
  wire \spo[6]_INST_0_i_51_n_0 ;
  wire \spo[6]_INST_0_i_52_n_0 ;
  wire \spo[6]_INST_0_i_53_n_0 ;
  wire \spo[6]_INST_0_i_54_n_0 ;
  wire \spo[6]_INST_0_i_55_n_0 ;
  wire \spo[6]_INST_0_i_56_n_0 ;
  wire \spo[6]_INST_0_i_57_n_0 ;
  wire \spo[6]_INST_0_i_58_n_0 ;
  wire \spo[6]_INST_0_i_59_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_60_n_0 ;
  wire \spo[6]_INST_0_i_61_n_0 ;
  wire \spo[6]_INST_0_i_62_n_0 ;
  wire \spo[6]_INST_0_i_63_n_0 ;
  wire \spo[6]_INST_0_i_64_n_0 ;
  wire \spo[6]_INST_0_i_65_n_0 ;
  wire \spo[6]_INST_0_i_66_n_0 ;
  wire \spo[6]_INST_0_i_67_n_0 ;
  wire \spo[6]_INST_0_i_68_n_0 ;
  wire \spo[6]_INST_0_i_69_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_70_n_0 ;
  wire \spo[6]_INST_0_i_71_n_0 ;
  wire \spo[6]_INST_0_i_72_n_0 ;
  wire \spo[6]_INST_0_i_73_n_0 ;
  wire \spo[6]_INST_0_i_74_n_0 ;
  wire \spo[6]_INST_0_i_75_n_0 ;
  wire \spo[6]_INST_0_i_76_n_0 ;
  wire \spo[6]_INST_0_i_77_n_0 ;
  wire \spo[6]_INST_0_i_78_n_0 ;
  wire \spo[6]_INST_0_i_79_n_0 ;
  wire \spo[6]_INST_0_i_7_n_0 ;
  wire \spo[6]_INST_0_i_80_n_0 ;
  wire \spo[6]_INST_0_i_8_n_0 ;
  wire \spo[6]_INST_0_i_9_n_0 ;
  wire \spo[7]_INST_0_i_10_n_0 ;
  wire \spo[7]_INST_0_i_11_n_0 ;
  wire \spo[7]_INST_0_i_12_n_0 ;
  wire \spo[7]_INST_0_i_13_n_0 ;
  wire \spo[7]_INST_0_i_14_n_0 ;
  wire \spo[7]_INST_0_i_15_n_0 ;
  wire \spo[7]_INST_0_i_16_n_0 ;
  wire \spo[7]_INST_0_i_17_n_0 ;
  wire \spo[7]_INST_0_i_18_n_0 ;
  wire \spo[7]_INST_0_i_19_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_20_n_0 ;
  wire \spo[7]_INST_0_i_21_n_0 ;
  wire \spo[7]_INST_0_i_22_n_0 ;
  wire \spo[7]_INST_0_i_23_n_0 ;
  wire \spo[7]_INST_0_i_24_n_0 ;
  wire \spo[7]_INST_0_i_25_n_0 ;
  wire \spo[7]_INST_0_i_26_n_0 ;
  wire \spo[7]_INST_0_i_27_n_0 ;
  wire \spo[7]_INST_0_i_28_n_0 ;
  wire \spo[7]_INST_0_i_29_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_30_n_0 ;
  wire \spo[7]_INST_0_i_31_n_0 ;
  wire \spo[7]_INST_0_i_32_n_0 ;
  wire \spo[7]_INST_0_i_33_n_0 ;
  wire \spo[7]_INST_0_i_34_n_0 ;
  wire \spo[7]_INST_0_i_35_n_0 ;
  wire \spo[7]_INST_0_i_36_n_0 ;
  wire \spo[7]_INST_0_i_37_n_0 ;
  wire \spo[7]_INST_0_i_38_n_0 ;
  wire \spo[7]_INST_0_i_39_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_40_n_0 ;
  wire \spo[7]_INST_0_i_41_n_0 ;
  wire \spo[7]_INST_0_i_42_n_0 ;
  wire \spo[7]_INST_0_i_43_n_0 ;
  wire \spo[7]_INST_0_i_44_n_0 ;
  wire \spo[7]_INST_0_i_45_n_0 ;
  wire \spo[7]_INST_0_i_46_n_0 ;
  wire \spo[7]_INST_0_i_47_n_0 ;
  wire \spo[7]_INST_0_i_48_n_0 ;
  wire \spo[7]_INST_0_i_49_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_50_n_0 ;
  wire \spo[7]_INST_0_i_51_n_0 ;
  wire \spo[7]_INST_0_i_52_n_0 ;
  wire \spo[7]_INST_0_i_53_n_0 ;
  wire \spo[7]_INST_0_i_54_n_0 ;
  wire \spo[7]_INST_0_i_55_n_0 ;
  wire \spo[7]_INST_0_i_56_n_0 ;
  wire \spo[7]_INST_0_i_57_n_0 ;
  wire \spo[7]_INST_0_i_58_n_0 ;
  wire \spo[7]_INST_0_i_59_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_60_n_0 ;
  wire \spo[7]_INST_0_i_61_n_0 ;
  wire \spo[7]_INST_0_i_62_n_0 ;
  wire \spo[7]_INST_0_i_63_n_0 ;
  wire \spo[7]_INST_0_i_64_n_0 ;
  wire \spo[7]_INST_0_i_65_n_0 ;
  wire \spo[7]_INST_0_i_66_n_0 ;
  wire \spo[7]_INST_0_i_67_n_0 ;
  wire \spo[7]_INST_0_i_68_n_0 ;
  wire \spo[7]_INST_0_i_69_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_70_n_0 ;
  wire \spo[7]_INST_0_i_71_n_0 ;
  wire \spo[7]_INST_0_i_72_n_0 ;
  wire \spo[7]_INST_0_i_73_n_0 ;
  wire \spo[7]_INST_0_i_74_n_0 ;
  wire \spo[7]_INST_0_i_75_n_0 ;
  wire \spo[7]_INST_0_i_76_n_0 ;
  wire \spo[7]_INST_0_i_77_n_0 ;
  wire \spo[7]_INST_0_i_78_n_0 ;
  wire \spo[7]_INST_0_i_79_n_0 ;
  wire \spo[7]_INST_0_i_7_n_0 ;
  wire \spo[7]_INST_0_i_8_n_0 ;
  wire \spo[7]_INST_0_i_9_n_0 ;
  wire \spo[8]_INST_0_i_10_n_0 ;
  wire \spo[8]_INST_0_i_11_n_0 ;
  wire \spo[8]_INST_0_i_12_n_0 ;
  wire \spo[8]_INST_0_i_13_n_0 ;
  wire \spo[8]_INST_0_i_14_n_0 ;
  wire \spo[8]_INST_0_i_15_n_0 ;
  wire \spo[8]_INST_0_i_16_n_0 ;
  wire \spo[8]_INST_0_i_17_n_0 ;
  wire \spo[8]_INST_0_i_18_n_0 ;
  wire \spo[8]_INST_0_i_19_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_20_n_0 ;
  wire \spo[8]_INST_0_i_21_n_0 ;
  wire \spo[8]_INST_0_i_22_n_0 ;
  wire \spo[8]_INST_0_i_23_n_0 ;
  wire \spo[8]_INST_0_i_24_n_0 ;
  wire \spo[8]_INST_0_i_25_n_0 ;
  wire \spo[8]_INST_0_i_26_n_0 ;
  wire \spo[8]_INST_0_i_27_n_0 ;
  wire \spo[8]_INST_0_i_28_n_0 ;
  wire \spo[8]_INST_0_i_29_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_30_n_0 ;
  wire \spo[8]_INST_0_i_31_n_0 ;
  wire \spo[8]_INST_0_i_32_n_0 ;
  wire \spo[8]_INST_0_i_33_n_0 ;
  wire \spo[8]_INST_0_i_34_n_0 ;
  wire \spo[8]_INST_0_i_35_n_0 ;
  wire \spo[8]_INST_0_i_36_n_0 ;
  wire \spo[8]_INST_0_i_37_n_0 ;
  wire \spo[8]_INST_0_i_38_n_0 ;
  wire \spo[8]_INST_0_i_39_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_40_n_0 ;
  wire \spo[8]_INST_0_i_41_n_0 ;
  wire \spo[8]_INST_0_i_42_n_0 ;
  wire \spo[8]_INST_0_i_43_n_0 ;
  wire \spo[8]_INST_0_i_44_n_0 ;
  wire \spo[8]_INST_0_i_45_n_0 ;
  wire \spo[8]_INST_0_i_46_n_0 ;
  wire \spo[8]_INST_0_i_47_n_0 ;
  wire \spo[8]_INST_0_i_48_n_0 ;
  wire \spo[8]_INST_0_i_49_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_50_n_0 ;
  wire \spo[8]_INST_0_i_51_n_0 ;
  wire \spo[8]_INST_0_i_52_n_0 ;
  wire \spo[8]_INST_0_i_53_n_0 ;
  wire \spo[8]_INST_0_i_54_n_0 ;
  wire \spo[8]_INST_0_i_55_n_0 ;
  wire \spo[8]_INST_0_i_56_n_0 ;
  wire \spo[8]_INST_0_i_57_n_0 ;
  wire \spo[8]_INST_0_i_58_n_0 ;
  wire \spo[8]_INST_0_i_59_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_60_n_0 ;
  wire \spo[8]_INST_0_i_61_n_0 ;
  wire \spo[8]_INST_0_i_62_n_0 ;
  wire \spo[8]_INST_0_i_63_n_0 ;
  wire \spo[8]_INST_0_i_64_n_0 ;
  wire \spo[8]_INST_0_i_65_n_0 ;
  wire \spo[8]_INST_0_i_66_n_0 ;
  wire \spo[8]_INST_0_i_67_n_0 ;
  wire \spo[8]_INST_0_i_68_n_0 ;
  wire \spo[8]_INST_0_i_69_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_70_n_0 ;
  wire \spo[8]_INST_0_i_71_n_0 ;
  wire \spo[8]_INST_0_i_72_n_0 ;
  wire \spo[8]_INST_0_i_73_n_0 ;
  wire \spo[8]_INST_0_i_74_n_0 ;
  wire \spo[8]_INST_0_i_75_n_0 ;
  wire \spo[8]_INST_0_i_76_n_0 ;
  wire \spo[8]_INST_0_i_7_n_0 ;
  wire \spo[8]_INST_0_i_8_n_0 ;
  wire \spo[8]_INST_0_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[0]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[0]_INST_0_i_4_n_0 ),
        .O(spo[0]));
  MUXF8 \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[0]_INST_0_i_10 
       (.I0(\spo[0]_INST_0_i_23_n_0 ),
        .I1(\spo[0]_INST_0_i_24_n_0 ),
        .O(\spo[0]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_11 
       (.I0(\spo[0]_INST_0_i_25_n_0 ),
        .I1(\spo[0]_INST_0_i_26_n_0 ),
        .O(\spo[0]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_12 
       (.I0(\spo[0]_INST_0_i_27_n_0 ),
        .I1(\spo[0]_INST_0_i_28_n_0 ),
        .O(\spo[0]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[0]_INST_0_i_13 
       (.I0(\spo[0]_INST_0_i_29_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_31_n_0 ),
        .O(\spo[0]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[0]_INST_0_i_14 
       (.I0(\spo[0]_INST_0_i_32_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_33_n_0 ),
        .O(\spo[0]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_15 
       (.I0(\spo[0]_INST_0_i_34_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_35_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_16 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_37_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_38_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[0]_INST_0_i_17 
       (.I0(\spo[0]_INST_0_i_39_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_40_n_0 ),
        .O(\spo[0]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_18 
       (.I0(\spo[0]_INST_0_i_41_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_42_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_19 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_19_n_0 ));
  MUXF8 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_7_n_0 ),
        .I1(\spo[0]_INST_0_i_8_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_20 
       (.I0(\spo[0]_INST_0_i_45_n_0 ),
        .I1(\spo[0]_INST_0_i_46_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_36_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_47_n_0 ),
        .O(\spo[0]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_21 
       (.I0(\spo[0]_INST_0_i_48_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_49_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_22 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_50_n_0 ),
        .I3(a[10]),
        .I4(\spo[0]_INST_0_i_51_n_0 ),
        .O(\spo[0]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[0]_INST_0_i_23 
       (.I0(\spo[0]_INST_0_i_52_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_36_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_53_n_0 ),
        .O(\spo[0]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[0]_INST_0_i_24 
       (.I0(\spo[0]_INST_0_i_54_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_36_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_55_n_0 ),
        .O(\spo[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0_i_25 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(\spo[0]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[0]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[0]_INST_0_i_30_n_0 ),
        .O(\spo[0]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_26 
       (.I0(\spo[0]_INST_0_i_36_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_58_n_0 ),
        .I3(a[10]),
        .I4(\spo[0]_INST_0_i_59_n_0 ),
        .O(\spo[0]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[0]_INST_0_i_27 
       (.I0(\spo[0]_INST_0_i_60_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_36_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_61_n_0 ),
        .O(\spo[0]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[0]_INST_0_i_28 
       (.I0(\spo[0]_INST_0_i_62_n_0 ),
        .I1(a[10]),
        .I2(\spo[0]_INST_0_i_63_n_0 ),
        .I3(a[7]),
        .I4(\spo[0]_INST_0_i_36_n_0 ),
        .O(\spo[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAF54AB5572AF54AB)) 
    \spo[0]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_29_n_0 ));
  MUXF8 \spo[0]_INST_0_i_3 
       (.I0(\spo[0]_INST_0_i_9_n_0 ),
        .I1(\spo[0]_INST_0_i_10_n_0 ),
        .O(\spo[0]_INST_0_i_3_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \spo[0]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .O(\spo[0]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h5B55E5AAAEAA5955)) 
    \spo[0]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hE7A69AD9595DE6A6)) 
    \spo[0]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hBB5576ABAA5555AA)) 
    \spo[0]_INST_0_i_33 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h56AB55AAAD56AB55)) 
    \spo[0]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE5A2BADFDB5D64A2)) 
    \spo[0]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \spo[0]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .O(\spo[0]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h65AABA5DDB5565AA)) 
    \spo[0]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h54AB55AAAF54AB55)) 
    \spo[0]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hA6A298595155A6A2)) 
    \spo[0]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_39_n_0 ));
  MUXF8 \spo[0]_INST_0_i_4 
       (.I0(\spo[0]_INST_0_i_11_n_0 ),
        .I1(\spo[0]_INST_0_i_12_n_0 ),
        .O(\spo[0]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hA954AA5562A954AA)) 
    \spo[0]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h54AA55AAA954AA55)) 
    \spo[0]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hC0CCBC333333C0CC)) 
    \spo[0]_INST_0_i_42 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h24AA9A55595524AA)) 
    \spo[0]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h54ABAD5454AAAB54)) 
    \spo[0]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h00FFBF00FF0000FF)) 
    \spo[0]_INST_0_i_45 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h56ABAD5654AAA954)) 
    \spo[0]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h24A29A5D595524A2)) 
    \spo[0]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h54AB8D5054AAAB54)) 
    \spo[0]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h88AA675555558AAA)) 
    \spo[0]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_49_n_0 ));
  MUXF7 \spo[0]_INST_0_i_5 
       (.I0(\spo[0]_INST_0_i_13_n_0 ),
        .I1(\spo[0]_INST_0_i_14_n_0 ),
        .O(\spo[0]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h98AA275545559AAA)) 
    \spo[0]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0FB0F00FB04F0FB0)) 
    \spo[0]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[8]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h52A9B54254AAA954)) 
    \spo[0]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h1A8AA57565551AAA)) 
    \spo[0]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9A5545A224AA9B55)) 
    \spo[0]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h52A9AD5254AAA954)) 
    \spo[0]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hBAAA67555555BAAA)) 
    \spo[0]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h46AB55AA9D46BB55)) 
    \spo[0]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h5524AAFB9ADF5524)) 
    \spo[0]_INST_0_i_58 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h55AABA55AA5555AA)) 
    \spo[0]_INST_0_i_59 
       (.I0(a[7]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_59_n_0 ));
  MUXF7 \spo[0]_INST_0_i_6 
       (.I0(\spo[0]_INST_0_i_15_n_0 ),
        .I1(\spo[0]_INST_0_i_16_n_0 ),
        .O(\spo[0]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hDB5565AAA6AADB55)) 
    \spo[0]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h5526AA9BBA5D55A6)) 
    \spo[0]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hA956AB5552A956AB)) 
    \spo[0]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h595D67A2AEAA595D)) 
    \spo[0]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_63_n_0 ));
  MUXF7 \spo[0]_INST_0_i_7 
       (.I0(\spo[0]_INST_0_i_17_n_0 ),
        .I1(\spo[0]_INST_0_i_18_n_0 ),
        .O(\spo[0]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_8 
       (.I0(\spo[0]_INST_0_i_19_n_0 ),
        .I1(\spo[0]_INST_0_i_20_n_0 ),
        .O(\spo[0]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_9 
       (.I0(\spo[0]_INST_0_i_21_n_0 ),
        .I1(\spo[0]_INST_0_i_22_n_0 ),
        .O(\spo[0]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[1]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[1]_INST_0_i_4_n_0 ),
        .O(spo[1]));
  MUXF8 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_10 
       (.I0(\spo[1]_INST_0_i_29_n_0 ),
        .I1(\spo[1]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_32_n_0 ),
        .O(\spo[1]_INST_0_i_10_n_0 ));
  MUXF8 \spo[1]_INST_0_i_11 
       (.I0(\spo[1]_INST_0_i_33_n_0 ),
        .I1(\spo[1]_INST_0_i_34_n_0 ),
        .O(\spo[1]_INST_0_i_11_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_12 
       (.I0(\spo[1]_INST_0_i_35_n_0 ),
        .I1(\spo[1]_INST_0_i_36_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_37_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_38_n_0 ),
        .O(\spo[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_13 
       (.I0(\spo[1]_INST_0_i_39_n_0 ),
        .I1(\spo[1]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_40_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_41_n_0 ),
        .O(\spo[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_14 
       (.I0(\spo[1]_INST_0_i_42_n_0 ),
        .I1(\spo[1]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_44_n_0 ),
        .O(\spo[1]_INST_0_i_14_n_0 ));
  MUXF8 \spo[1]_INST_0_i_15 
       (.I0(\spo[1]_INST_0_i_45_n_0 ),
        .I1(\spo[1]_INST_0_i_46_n_0 ),
        .O(\spo[1]_INST_0_i_15_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_16 
       (.I0(\spo[1]_INST_0_i_47_n_0 ),
        .I1(\spo[1]_INST_0_i_48_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_49_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_38_n_0 ),
        .O(\spo[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_17 
       (.I0(\spo[1]_INST_0_i_50_n_0 ),
        .I1(\spo[1]_INST_0_i_51_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_53_n_0 ),
        .O(\spo[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_18 
       (.I0(\spo[1]_INST_0_i_54_n_0 ),
        .I1(\spo[1]_INST_0_i_55_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_56_n_0 ),
        .O(\spo[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_19 
       (.I0(\spo[1]_INST_0_i_57_n_0 ),
        .I1(\spo[1]_INST_0_i_58_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_59_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_60_n_0 ),
        .O(\spo[1]_INST_0_i_19_n_0 ));
  MUXF8 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_7_n_0 ),
        .I1(\spo[1]_INST_0_i_8_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_20 
       (.I0(\spo[1]_INST_0_i_61_n_0 ),
        .I1(\spo[1]_INST_0_i_62_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_64_n_0 ),
        .O(\spo[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_21 
       (.I0(\spo[1]_INST_0_i_65_n_0 ),
        .I1(\spo[1]_INST_0_i_66_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_67_n_0 ),
        .O(\spo[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_22 
       (.I0(\spo[1]_INST_0_i_68_n_0 ),
        .I1(\spo[1]_INST_0_i_55_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_37_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_69_n_0 ),
        .O(\spo[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_23 
       (.I0(\spo[1]_INST_0_i_70_n_0 ),
        .I1(\spo[1]_INST_0_i_71_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_60_n_0 ),
        .O(\spo[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_24 
       (.I0(\spo[1]_INST_0_i_61_n_0 ),
        .I1(\spo[1]_INST_0_i_73_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_74_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_75_n_0 ),
        .O(\spo[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE3C6861C3C7961C3)) 
    \spo[1]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h9C39396363C6C69C)) 
    \spo[1]_INST_0_i_26 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCAD5C521352E3ADE)) 
    \spo[1]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h96386BC63C69C794)) 
    \spo[1]_INST_0_i_28 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h62D5C58B9F2E3A74)) 
    \spo[1]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_3 
       (.I0(\spo[1]_INST_0_i_9_n_0 ),
        .I1(\spo[1]_INST_0_i_10_n_0 ),
        .I2(a[11]),
        .I3(\spo[1]_INST_0_i_11_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_12_n_0 ),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9E3863C63C61D79C)) 
    \spo[1]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h9639396969C6C696)) 
    \spo[1]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC61C79C39C39E386)) 
    \spo[1]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_32_n_0 ));
  MUXF7 \spo[1]_INST_0_i_33 
       (.I0(\spo[1]_INST_0_i_76_n_0 ),
        .I1(\spo[1]_INST_0_i_77_n_0 ),
        .O(\spo[1]_INST_0_i_33_n_0 ),
        .S(a[7]));
  MUXF7 \spo[1]_INST_0_i_34 
       (.I0(\spo[1]_INST_0_i_78_n_0 ),
        .I1(\spo[1]_INST_0_i_79_n_0 ),
        .O(\spo[1]_INST_0_i_34_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h363CC9C23EC9C736)) 
    \spo[1]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hD5212EDE2906D6F9)) 
    \spo[1]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9336366CECC98113)) 
    \spo[1]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h3CC9C9C3C336363C)) 
    \spo[1]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hC79E9E38386163C7)) 
    \spo[1]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_4 
       (.I0(\spo[1]_INST_0_i_13_n_0 ),
        .I1(\spo[1]_INST_0_i_14_n_0 ),
        .I2(a[11]),
        .I3(\spo[1]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[1]_INST_0_i_16_n_0 ),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAD105213D6EEAD6)) 
    \spo[1]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h9439396B6BC6C694)) 
    \spo[1]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE0D1850B3F6E6AD4)) 
    \spo[1]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h9C29396363D6C69C)) 
    \spo[1]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h9E3861C73C69C39E)) 
    \spo[1]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_44_n_0 ));
  MUXF7 \spo[1]_INST_0_i_45 
       (.I0(\spo[1]_INST_0_i_80_n_0 ),
        .I1(\spo[1]_INST_0_i_81_n_0 ),
        .O(\spo[1]_INST_0_i_45_n_0 ),
        .S(a[7]));
  MUXF7 \spo[1]_INST_0_i_46 
       (.I0(\spo[1]_INST_0_i_82_n_0 ),
        .I1(\spo[1]_INST_0_i_83_n_0 ),
        .O(\spo[1]_INST_0_i_46_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h36393DC9C9C6C236)) 
    \spo[1]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hD1216ED62906D6B9)) 
    \spo[1]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h376C7EC8C9938336)) 
    \spo[1]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_49_n_0 ));
  MUXF7 \spo[1]_INST_0_i_5 
       (.I0(\spo[1]_INST_0_i_17_n_0 ),
        .I1(\spo[1]_INST_0_i_18_n_0 ),
        .O(\spo[1]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hC2363DC93639C9C6)) 
    \spo[1]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hC001352B3BDECAD0)) 
    \spo[1]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h9336366C6CC9C993)) 
    \spo[1]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h367CC1073CC98336)) 
    \spo[1]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0336BE7C68C14107)) 
    \spo[1]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hC63639C93639C9C6)) 
    \spo[1]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h8000356B6FDECA94)) 
    \spo[1]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h60C69D38C09D3B60)) 
    \spo[1]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hC69C39639C2963D6)) 
    \spo[1]_INST_0_i_58 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h06BE69431679C186)) 
    \spo[1]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_59_n_0 ));
  MUXF7 \spo[1]_INST_0_i_6 
       (.I0(\spo[1]_INST_0_i_19_n_0 ),
        .I1(\spo[1]_INST_0_i_20_n_0 ),
        .O(\spo[1]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hC69C39639C3963C6)) 
    \spo[1]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h63C6C69C9C393963)) 
    \spo[1]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h06BCE9431C79C396)) 
    \spo[1]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hC8C63738C0353BCA)) 
    \spo[1]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hC694396B94396BC6)) 
    \spo[1]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hC236FDC13639C906)) 
    \spo[1]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hC5353ACA212EDED1)) 
    \spo[1]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h3EC8C336FCC1373C)) 
    \spo[1]_INST_0_i_67 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hB7BC3EC84943C336)) 
    \spo[1]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h9021356B6FDECA94)) 
    \spo[1]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_69_n_0 ));
  MUXF7 \spo[1]_INST_0_i_7 
       (.I0(\spo[1]_INST_0_i_21_n_0 ),
        .I1(\spo[1]_INST_0_i_22_n_0 ),
        .O(\spo[1]_INST_0_i_7_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h62C5C79F9D3A3860)) 
    \spo[1]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hC61C79C39C29E396)) 
    \spo[1]_INST_0_i_71 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h96B869463E69C796)) 
    \spo[1]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h1EB8E3463C61C79C)) 
    \spo[1]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hC8C5C735373A38CA)) 
    \spo[1]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hC61479C39439EB86)) 
    \spo[1]_INST_0_i_75 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h942921436BF6DEBC)) 
    \spo[1]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h376C7EC8C9939336)) 
    \spo[1]_INST_0_i_77 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hC636F9C13639C906)) 
    \spo[1]_INST_0_i_78 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hB63CC9C33CC9C336)) 
    \spo[1]_INST_0_i_79 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_79_n_0 ));
  MUXF7 \spo[1]_INST_0_i_8 
       (.I0(\spo[1]_INST_0_i_23_n_0 ),
        .I1(\spo[1]_INST_0_i_24_n_0 ),
        .O(\spo[1]_INST_0_i_8_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h940921436BF6D6BC)) 
    \spo[1]_INST_0_i_80 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h366CC9936CC99336)) 
    \spo[1]_INST_0_i_81 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h363CC9C73EC9C336)) 
    \spo[1]_INST_0_i_82 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h363CC9C33CC9C336)) 
    \spo[1]_INST_0_i_83 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[1]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0_i_9 
       (.I0(\spo[1]_INST_0_i_25_n_0 ),
        .I1(\spo[1]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[1]_INST_0_i_27_n_0 ),
        .I4(a[7]),
        .I5(\spo[1]_INST_0_i_28_n_0 ),
        .O(\spo[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0 
       (.I0(\spo[28]_INST_0_i_1_n_0 ),
        .I1(\spo[28]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[28]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[28]_INST_0_i_4_n_0 ),
        .O(spo[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_1 
       (.I0(\spo[28]_INST_0_i_5_n_0 ),
        .I1(\spo[28]_INST_0_i_6_n_0 ),
        .I2(a[11]),
        .I3(\spo[28]_INST_0_i_7_n_0 ),
        .I4(a[6]),
        .I5(\spo[28]_INST_0_i_8_n_0 ),
        .O(\spo[28]_INST_0_i_1_n_0 ));
  MUXF7 \spo[28]_INST_0_i_10 
       (.I0(\spo[28]_INST_0_i_30_n_0 ),
        .I1(\spo[28]_INST_0_i_31_n_0 ),
        .O(\spo[28]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[28]_INST_0_i_11 
       (.I0(\spo[28]_INST_0_i_32_n_0 ),
        .I1(\spo[28]_INST_0_i_33_n_0 ),
        .O(\spo[28]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[28]_INST_0_i_12 
       (.I0(\spo[28]_INST_0_i_34_n_0 ),
        .I1(\spo[28]_INST_0_i_35_n_0 ),
        .O(\spo[28]_INST_0_i_12_n_0 ),
        .S(a[6]));
  MUXF7 \spo[28]_INST_0_i_13 
       (.I0(\spo[28]_INST_0_i_36_n_0 ),
        .I1(\spo[28]_INST_0_i_37_n_0 ),
        .O(\spo[28]_INST_0_i_13_n_0 ),
        .S(a[6]));
  MUXF7 \spo[28]_INST_0_i_14 
       (.I0(\spo[28]_INST_0_i_38_n_0 ),
        .I1(\spo[28]_INST_0_i_39_n_0 ),
        .O(\spo[28]_INST_0_i_14_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h80FFFF00FF0000FF)) 
    \spo[28]_INST_0_i_15 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5A5AA5A5A5B4)) 
    \spo[28]_INST_0_i_16 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \spo[28]_INST_0_i_17 
       (.I0(a[9]),
        .I1(a[4]),
        .O(\spo[28]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h56423D1DBD95E222)) 
    \spo[28]_INST_0_i_18 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \spo[28]_INST_0_i_19 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .O(\spo[28]_INST_0_i_19_n_0 ));
  MUXF8 \spo[28]_INST_0_i_2 
       (.I0(\spo[28]_INST_0_i_9_n_0 ),
        .I1(\spo[28]_INST_0_i_10_n_0 ),
        .O(\spo[28]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h5642BD95BC846A2A)) 
    \spo[28]_INST_0_i_20 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0D2AFAFAFAC)) 
    \spo[28]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \spo[28]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .O(\spo[28]_INST_0_i_22_n_0 ));
  MUXF7 \spo[28]_INST_0_i_23 
       (.I0(\spo[28]_INST_0_i_40_n_0 ),
        .I1(\spo[28]_INST_0_i_41_n_0 ),
        .O(\spo[28]_INST_0_i_23_n_0 ),
        .S(a[7]));
  MUXF7 \spo[28]_INST_0_i_24 
       (.I0(\spo[28]_INST_0_i_42_n_0 ),
        .I1(\spo[28]_INST_0_i_43_n_0 ),
        .O(\spo[28]_INST_0_i_24_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hFEE87B3B1717C000)) 
    \spo[28]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spo[28]_INST_0_i_26 
       (.I0(a[9]),
        .I1(a[4]),
        .O(\spo[28]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AF5F40B0DF6E2)) 
    \spo[28]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_28 
       (.I0(\spo[28]_INST_0_i_44_n_0 ),
        .I1(\spo[28]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_46_n_0 ),
        .O(\spo[28]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_29 
       (.I0(\spo[28]_INST_0_i_47_n_0 ),
        .I1(\spo[28]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_48_n_0 ),
        .O(\spo[28]_INST_0_i_29_n_0 ));
  MUXF8 \spo[28]_INST_0_i_3 
       (.I0(\spo[28]_INST_0_i_11_n_0 ),
        .I1(\spo[28]_INST_0_i_12_n_0 ),
        .O(\spo[28]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_30 
       (.I0(\spo[28]_INST_0_i_49_n_0 ),
        .I1(\spo[28]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_51_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_22_n_0 ),
        .O(\spo[28]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_31 
       (.I0(\spo[28]_INST_0_i_19_n_0 ),
        .I1(\spo[28]_INST_0_i_52_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_53_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_54_n_0 ),
        .O(\spo[28]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_32 
       (.I0(\spo[28]_INST_0_i_55_n_0 ),
        .I1(\spo[28]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_58_n_0 ),
        .O(\spo[28]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_33 
       (.I0(\spo[28]_INST_0_i_59_n_0 ),
        .I1(\spo[28]_INST_0_i_60_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_61_n_0 ),
        .O(\spo[28]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_34 
       (.I0(\spo[28]_INST_0_i_62_n_0 ),
        .I1(\spo[28]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_64_n_0 ),
        .O(\spo[28]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_35 
       (.I0(\spo[28]_INST_0_i_19_n_0 ),
        .I1(\spo[28]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_54_n_0 ),
        .O(\spo[28]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_36 
       (.I0(\spo[28]_INST_0_i_66_n_0 ),
        .I1(\spo[28]_INST_0_i_67_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_58_n_0 ),
        .O(\spo[28]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_37 
       (.I0(\spo[28]_INST_0_i_69_n_0 ),
        .I1(\spo[28]_INST_0_i_70_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_71_n_0 ),
        .O(\spo[28]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_38 
       (.I0(\spo[28]_INST_0_i_22_n_0 ),
        .I1(\spo[28]_INST_0_i_72_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_73_n_0 ),
        .O(\spo[28]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_39 
       (.I0(\spo[28]_INST_0_i_74_n_0 ),
        .I1(\spo[28]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_75_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_76_n_0 ),
        .O(\spo[28]_INST_0_i_39_n_0 ));
  MUXF8 \spo[28]_INST_0_i_4 
       (.I0(\spo[28]_INST_0_i_13_n_0 ),
        .I1(\spo[28]_INST_0_i_14_n_0 ),
        .O(\spo[28]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT4 #(
    .INIT(16'h5AB5)) 
    \spo[28]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[28]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAAB962AA5462D555)) 
    \spo[28]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFFFFFF0000)) 
    \spo[28]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F40A0A0B0D)) 
    \spo[28]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8000F0FFFFFF0000)) 
    \spo[28]_INST_0_i_44 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0D0CF0F2E3E3)) 
    \spo[28]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h15557755A8AA80AA)) 
    \spo[28]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[9]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFA2AA8AA15555F55)) 
    \spo[28]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h5A595B59B4A2B6A2)) 
    \spo[28]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5A5AA5A5A5A4)) 
    \spo[28]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_5 
       (.I0(\spo[28]_INST_0_i_15_n_0 ),
        .I1(\spo[28]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_18_n_0 ),
        .O(\spo[28]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA45A)) 
    \spo[28]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[28]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFA2A2FFFB5554000)) 
    \spo[28]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h502AADD5B5554AAA)) 
    \spo[28]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F00F0F0D0C)) 
    \spo[28]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hCB34)) 
    \spo[28]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[28]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \spo[28]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[28]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h1157C000EAAAFFFF)) 
    \spo[28]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h5A5AA5A45B59A6A2)) 
    \spo[28]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \spo[28]_INST_0_i_58 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[4]),
        .O(\spo[28]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h80FF0000FF00FFFF)) 
    \spo[28]_INST_0_i_59 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[8]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_6 
       (.I0(\spo[28]_INST_0_i_19_n_0 ),
        .I1(\spo[28]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_22_n_0 ),
        .O(\spo[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FF0F00F0DF2E3)) 
    \spo[28]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h55D55755ABAA80AA)) 
    \spo[28]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h5642B99DBD95622A)) 
    \spo[28]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \spo[28]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .O(\spo[28]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hA5A55A5AA5A55A4B)) 
    \spo[28]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[28]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFEEA3B3F1517C000)) 
    \spo[28]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h0B0B0B08F0F0F3E3)) 
    \spo[28]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00000F00FFFF)) 
    \spo[28]_INST_0_i_67 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h5642D555AD95AAAA)) 
    \spo[28]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \spo[28]_INST_0_i_69 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[4]),
        .O(\spo[28]_INST_0_i_69_n_0 ));
  MUXF8 \spo[28]_INST_0_i_7 
       (.I0(\spo[28]_INST_0_i_23_n_0 ),
        .I1(\spo[28]_INST_0_i_24_n_0 ),
        .O(\spo[28]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h055FD000E880BFFF)) 
    \spo[28]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h700FFF0F0FF000F0)) 
    \spo[28]_INST_0_i_71 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hA4A4A4A45A5B5A49)) 
    \spo[28]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[28]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hB9D5622A62AA9D55)) 
    \spo[28]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h5A6D4B25B4DA925A)) 
    \spo[28]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF7FFF0000)) 
    \spo[28]_INST_0_i_75 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hADADADAC52525341)) 
    \spo[28]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[28]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[28]_INST_0_i_8 
       (.I0(\spo[28]_INST_0_i_25_n_0 ),
        .I1(\spo[28]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[28]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[28]_INST_0_i_27_n_0 ),
        .O(\spo[28]_INST_0_i_8_n_0 ));
  MUXF7 \spo[28]_INST_0_i_9 
       (.I0(\spo[28]_INST_0_i_28_n_0 ),
        .I1(\spo[28]_INST_0_i_29_n_0 ),
        .O(\spo[28]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0 
       (.I0(\spo[29]_INST_0_i_1_n_0 ),
        .I1(\spo[29]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[29]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[29]_INST_0_i_4_n_0 ),
        .O(spo[10]));
  MUXF8 \spo[29]_INST_0_i_1 
       (.I0(\spo[29]_INST_0_i_5_n_0 ),
        .I1(\spo[29]_INST_0_i_6_n_0 ),
        .O(\spo[29]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[29]_INST_0_i_10 
       (.I0(\spo[29]_INST_0_i_23_n_0 ),
        .I1(\spo[29]_INST_0_i_24_n_0 ),
        .O(\spo[29]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[29]_INST_0_i_11 
       (.I0(\spo[29]_INST_0_i_25_n_0 ),
        .I1(\spo[29]_INST_0_i_26_n_0 ),
        .O(\spo[29]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[29]_INST_0_i_12 
       (.I0(\spo[29]_INST_0_i_27_n_0 ),
        .I1(\spo[29]_INST_0_i_28_n_0 ),
        .O(\spo[29]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_13 
       (.I0(\spo[29]_INST_0_i_29_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_32_n_0 ),
        .O(\spo[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_14 
       (.I0(\spo[29]_INST_0_i_33_n_0 ),
        .I1(\spo[29]_INST_0_i_34_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_36_n_0 ),
        .O(\spo[29]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_15 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_39_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_40_n_0 ),
        .O(\spo[29]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[29]_INST_0_i_16 
       (.I0(\spo[29]_INST_0_i_41_n_0 ),
        .I1(a[10]),
        .I2(\spo[29]_INST_0_i_42_n_0 ),
        .I3(a[7]),
        .I4(\spo[29]_INST_0_i_43_n_0 ),
        .O(\spo[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_17 
       (.I0(\spo[29]_INST_0_i_44_n_0 ),
        .I1(\spo[29]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_47_n_0 ),
        .O(\spo[29]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_18 
       (.I0(\spo[29]_INST_0_i_48_n_0 ),
        .I1(\spo[29]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_49_n_0 ),
        .O(\spo[29]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_19 
       (.I0(\spo[29]_INST_0_i_50_n_0 ),
        .I1(\spo[29]_INST_0_i_51_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_52_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_40_n_0 ),
        .O(\spo[29]_INST_0_i_19_n_0 ));
  MUXF8 \spo[29]_INST_0_i_2 
       (.I0(\spo[29]_INST_0_i_7_n_0 ),
        .I1(\spo[29]_INST_0_i_8_n_0 ),
        .O(\spo[29]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_20 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_53_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_54_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_55_n_0 ),
        .O(\spo[29]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[29]_INST_0_i_21 
       (.I0(\spo[29]_INST_0_i_56_n_0 ),
        .I1(a[7]),
        .I2(\spo[29]_INST_0_i_57_n_0 ),
        .I3(a[10]),
        .I4(\spo[29]_INST_0_i_58_n_0 ),
        .O(\spo[29]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_22 
       (.I0(\spo[29]_INST_0_i_59_n_0 ),
        .I1(\spo[29]_INST_0_i_60_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_61_n_0 ),
        .O(\spo[29]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_23 
       (.I0(\spo[29]_INST_0_i_62_n_0 ),
        .I1(\spo[29]_INST_0_i_51_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_40_n_0 ),
        .O(\spo[29]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_24 
       (.I0(\spo[29]_INST_0_i_37_n_0 ),
        .I1(\spo[29]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_55_n_0 ),
        .O(\spo[29]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_25 
       (.I0(\spo[29]_INST_0_i_65_n_0 ),
        .I1(\spo[29]_INST_0_i_66_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_67_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_68_n_0 ),
        .O(\spo[29]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[29]_INST_0_i_26 
       (.I0(\spo[29]_INST_0_i_69_n_0 ),
        .I1(a[7]),
        .I2(\spo[29]_INST_0_i_70_n_0 ),
        .I3(a[10]),
        .I4(\spo[29]_INST_0_i_71_n_0 ),
        .O(\spo[29]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_27 
       (.I0(\spo[29]_INST_0_i_40_n_0 ),
        .I1(\spo[29]_INST_0_i_72_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_73_n_0 ),
        .O(\spo[29]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[29]_INST_0_i_28 
       (.I0(\spo[29]_INST_0_i_74_n_0 ),
        .I1(\spo[29]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[29]_INST_0_i_34_n_0 ),
        .I4(a[7]),
        .I5(\spo[29]_INST_0_i_75_n_0 ),
        .O(\spo[29]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hECEC222A5040FFFF)) 
    \spo[29]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_29_n_0 ));
  MUXF8 \spo[29]_INST_0_i_3 
       (.I0(\spo[29]_INST_0_i_9_n_0 ),
        .I1(\spo[29]_INST_0_i_10_n_0 ),
        .O(\spo[29]_INST_0_i_3_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h63)) 
    \spo[29]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .O(\spo[29]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF00FFFF00)) 
    \spo[29]_INST_0_i_31 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h5A0F0F5A5A1A0F50)) 
    \spo[29]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[29]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF0F05A5AA5A50F1A)) 
    \spo[29]_INST_0_i_33 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF000000FFFF)) 
    \spo[29]_INST_0_i_34 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h999BB3B332266666)) 
    \spo[29]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3736)) 
    \spo[29]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[29]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spo[29]_INST_0_i_37 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .O(\spo[29]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h6464644CD8C8D999)) 
    \spo[29]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFD828282A3)) 
    \spo[29]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_39_n_0 ));
  MUXF8 \spo[29]_INST_0_i_4 
       (.I0(\spo[29]_INST_0_i_11_n_0 ),
        .I1(\spo[29]_INST_0_i_12_n_0 ),
        .O(\spo[29]_INST_0_i_4_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hC9)) 
    \spo[29]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .O(\spo[29]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h3333FFFFCCCC0001)) 
    \spo[29]_INST_0_i_41 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \spo[29]_INST_0_i_42 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .O(\spo[29]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7575A080D8C85555)) 
    \spo[29]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8F00F0F00000FFFF)) 
    \spo[29]_INST_0_i_44 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6666666733313131)) 
    \spo[29]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h36)) 
    \spo[29]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .O(\spo[29]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h4002FDF55F5FA0A0)) 
    \spo[29]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFF0280FF40FF55AA)) 
    \spo[29]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h3377337732642244)) 
    \spo[29]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_49_n_0 ));
  MUXF7 \spo[29]_INST_0_i_5 
       (.I0(\spo[29]_INST_0_i_13_n_0 ),
        .I1(\spo[29]_INST_0_i_14_n_0 ),
        .O(\spo[29]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h5F5F5F5FA0A0A0A1)) 
    \spo[29]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hCC89)) 
    \spo[29]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[29]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBC444B8887777)) 
    \spo[29]_INST_0_i_52 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h3337C000FCCC3333)) 
    \spo[29]_INST_0_i_53 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F50A0A0A0B)) 
    \spo[29]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB083)) 
    \spo[29]_INST_0_i_55 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[4]),
        .O(\spo[29]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4A0F)) 
    \spo[29]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[5]),
        .I3(a[4]),
        .O(\spo[29]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h50004A0AFFFFF5F5)) 
    \spo[29]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h030CFCF3033FF880)) 
    \spo[29]_INST_0_i_58 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[8]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8FF000FF00FF0FF0)) 
    \spo[29]_INST_0_i_59 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_59_n_0 ));
  MUXF7 \spo[29]_INST_0_i_6 
       (.I0(\spo[29]_INST_0_i_15_n_0 ),
        .I1(\spo[29]_INST_0_i_16_n_0 ),
        .O(\spo[29]_INST_0_i_6_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0FF000EF)) 
    \spo[29]_INST_0_i_60 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[4]),
        .O(\spo[29]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h000FFF8F0FFFF000)) 
    \spo[29]_INST_0_i_61 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h5555A080FAEA5555)) 
    \spo[29]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB487)) 
    \spo[29]_INST_0_i_63 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[4]),
        .O(\spo[29]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFDFD22225040FFFF)) 
    \spo[29]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h6262626333333131)) 
    \spo[29]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h50EF)) 
    \spo[29]_INST_0_i_66 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[5]),
        .O(\spo[29]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h3264264C66CC66CC)) 
    \spo[29]_INST_0_i_67 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4B78)) 
    \spo[29]_INST_0_i_68 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[29]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6336)) 
    \spo[29]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[29]_INST_0_i_69_n_0 ));
  MUXF7 \spo[29]_INST_0_i_7 
       (.I0(\spo[29]_INST_0_i_17_n_0 ),
        .I1(\spo[29]_INST_0_i_18_n_0 ),
        .O(\spo[29]_INST_0_i_7_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h0F003070FFFF8F0F)) 
    \spo[29]_INST_0_i_70 
       (.I0(a[0]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h033F033FFCF3F880)) 
    \spo[29]_INST_0_i_71 
       (.I0(a[1]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hC8C8C8C8C9C9C9DB)) 
    \spo[29]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[29]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFAA0EAA05F5F5F5F)) 
    \spo[29]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[29]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h5557A0A0FAEA5555)) 
    \spo[29]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hC4C4C4C591919193)) 
    \spo[29]_INST_0_i_75 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[29]_INST_0_i_75_n_0 ));
  MUXF7 \spo[29]_INST_0_i_8 
       (.I0(\spo[29]_INST_0_i_19_n_0 ),
        .I1(\spo[29]_INST_0_i_20_n_0 ),
        .O(\spo[29]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[29]_INST_0_i_9 
       (.I0(\spo[29]_INST_0_i_21_n_0 ),
        .I1(\spo[29]_INST_0_i_22_n_0 ),
        .O(\spo[29]_INST_0_i_9_n_0 ),
        .S(a[6]));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[3]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_10 
       (.I0(\spo[2]_INST_0_i_32_n_0 ),
        .I1(\spo[2]_INST_0_i_33_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_34_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_35_n_0 ),
        .O(\spo[2]_INST_0_i_10_n_0 ));
  MUXF8 \spo[2]_INST_0_i_11 
       (.I0(\spo[2]_INST_0_i_36_n_0 ),
        .I1(\spo[2]_INST_0_i_37_n_0 ),
        .O(\spo[2]_INST_0_i_11_n_0 ),
        .S(a[10]));
  MUXF8 \spo[2]_INST_0_i_12 
       (.I0(\spo[2]_INST_0_i_38_n_0 ),
        .I1(\spo[2]_INST_0_i_39_n_0 ),
        .O(\spo[2]_INST_0_i_12_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_13 
       (.I0(\spo[2]_INST_0_i_40_n_0 ),
        .I1(\spo[2]_INST_0_i_41_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_34_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_42_n_0 ),
        .O(\spo[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_14 
       (.I0(\spo[2]_INST_0_i_43_n_0 ),
        .I1(\spo[2]_INST_0_i_44_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_45_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_46_n_0 ),
        .O(\spo[2]_INST_0_i_14_n_0 ));
  MUXF8 \spo[2]_INST_0_i_15 
       (.I0(\spo[2]_INST_0_i_47_n_0 ),
        .I1(\spo[2]_INST_0_i_48_n_0 ),
        .O(\spo[2]_INST_0_i_15_n_0 ),
        .S(a[10]));
  MUXF8 \spo[2]_INST_0_i_16 
       (.I0(\spo[2]_INST_0_i_49_n_0 ),
        .I1(\spo[2]_INST_0_i_50_n_0 ),
        .O(\spo[2]_INST_0_i_16_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_17 
       (.I0(\spo[2]_INST_0_i_51_n_0 ),
        .I1(\spo[2]_INST_0_i_52_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_45_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_53_n_0 ),
        .O(\spo[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_18 
       (.I0(\spo[2]_INST_0_i_54_n_0 ),
        .I1(\spo[2]_INST_0_i_55_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_57_n_0 ),
        .O(\spo[2]_INST_0_i_18_n_0 ));
  MUXF8 \spo[2]_INST_0_i_19 
       (.I0(\spo[2]_INST_0_i_58_n_0 ),
        .I1(\spo[2]_INST_0_i_59_n_0 ),
        .O(\spo[2]_INST_0_i_19_n_0 ),
        .S(a[10]));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_20 
       (.I0(\spo[2]_INST_0_i_60_n_0 ),
        .I1(\spo[6]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_61_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_62_n_0 ),
        .O(\spo[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_21 
       (.I0(\spo[2]_INST_0_i_63_n_0 ),
        .I1(\spo[2]_INST_0_i_64_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_65_n_0 ),
        .O(\spo[2]_INST_0_i_21_n_0 ));
  MUXF8 \spo[2]_INST_0_i_22 
       (.I0(\spo[2]_INST_0_i_66_n_0 ),
        .I1(\spo[2]_INST_0_i_67_n_0 ),
        .O(\spo[2]_INST_0_i_22_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h1C38387070F1F1E3)) 
    \spo[2]_INST_0_i_23 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hD9CD594D41060636)) 
    \spo[2]_INST_0_i_24 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hEBC7C78787060614)) 
    \spo[2]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_25_n_0 ));
  MUXF7 \spo[2]_INST_0_i_26 
       (.I0(\spo[2]_INST_0_i_68_n_0 ),
        .I1(\spo[2]_INST_0_i_69_n_0 ),
        .O(\spo[2]_INST_0_i_26_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_27 
       (.I0(\spo[2]_INST_0_i_70_n_0 ),
        .I1(\spo[2]_INST_0_i_71_n_0 ),
        .O(\spo[2]_INST_0_i_27_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hB7BFBFDEDEDCDC48)) 
    \spo[2]_INST_0_i_28 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB6BEDAD8BEDAD849)) 
    \spo[2]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_3 
       (.I0(\spo[2]_INST_0_i_7_n_0 ),
        .I1(\spo[2]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[2]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_10_n_0 ),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08103173103173F7)) 
    \spo[2]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h882103370923377F)) 
    \spo[2]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h49454125212622B6)) 
    \spo[2]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hCD4D45460636163A)) 
    \spo[2]_INST_0_i_33 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFF87FFFE080F8E0)) 
    \spo[2]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBFDCDE48DE48DC40)) 
    \spo[2]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_35_n_0 ));
  MUXF7 \spo[2]_INST_0_i_36 
       (.I0(\spo[2]_INST_0_i_72_n_0 ),
        .I1(\spo[2]_INST_0_i_73_n_0 ),
        .O(\spo[2]_INST_0_i_36_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_37 
       (.I0(\spo[2]_INST_0_i_74_n_0 ),
        .I1(\spo[2]_INST_0_i_75_n_0 ),
        .O(\spo[2]_INST_0_i_37_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_38 
       (.I0(\spo[2]_INST_0_i_76_n_0 ),
        .I1(\spo[2]_INST_0_i_77_n_0 ),
        .O(\spo[2]_INST_0_i_38_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_39 
       (.I0(\spo[2]_INST_0_i_78_n_0 ),
        .I1(\spo[2]_INST_0_i_79_n_0 ),
        .O(\spo[2]_INST_0_i_39_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_4 
       (.I0(\spo[2]_INST_0_i_11_n_0 ),
        .I1(\spo[2]_INST_0_i_12_n_0 ),
        .I2(a[11]),
        .I3(\spo[2]_INST_0_i_13_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_14_n_0 ),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC8402123402123B7)) 
    \spo[2]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hD9054925492545A6)) 
    \spo[2]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h77FCFEC8F6C8DC80)) 
    \spo[2]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hBB6EDDE8BDEAD4D9)) 
    \spo[2]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h36B2B9C9BAB9E9C5)) 
    \spo[2]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8C080810103171F3)) 
    \spo[2]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h402123B72123B7BF)) 
    \spo[2]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_46_n_0 ));
  MUXF7 \spo[2]_INST_0_i_47 
       (.I0(\spo[2]_INST_0_i_80_n_0 ),
        .I1(\spo[2]_INST_0_i_81_n_0 ),
        .O(\spo[2]_INST_0_i_47_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_48 
       (.I0(\spo[2]_INST_0_i_82_n_0 ),
        .I1(\spo[2]_INST_0_i_83_n_0 ),
        .O(\spo[2]_INST_0_i_48_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_49 
       (.I0(\spo[2]_INST_0_i_84_n_0 ),
        .I1(\spo[2]_INST_0_i_85_n_0 ),
        .O(\spo[2]_INST_0_i_49_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_5 
       (.I0(\spo[2]_INST_0_i_15_n_0 ),
        .I1(\spo[2]_INST_0_i_16_n_0 ),
        .I2(a[11]),
        .I3(\spo[2]_INST_0_i_17_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_18_n_0 ),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  MUXF7 \spo[2]_INST_0_i_50 
       (.I0(\spo[2]_INST_0_i_86_n_0 ),
        .I1(\spo[2]_INST_0_i_87_n_0 ),
        .O(\spo[2]_INST_0_i_50_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h3B3D7FFFDDD4ECC8)) 
    \spo[2]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[9]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h26B6BADAB6BADAD9)) 
    \spo[2]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8C09133709033377)) 
    \spo[2]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hDD014925492145A6)) 
    \spo[2]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hD9494D4646263632)) 
    \spo[2]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h73F7F7EFEFCECE8C)) 
    \spo[2]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hBFDFFFDEDC484840)) 
    \spo[2]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_57_n_0 ));
  MUXF7 \spo[2]_INST_0_i_58 
       (.I0(\spo[2]_INST_0_i_88_n_0 ),
        .I1(\spo[2]_INST_0_i_89_n_0 ),
        .O(\spo[2]_INST_0_i_58_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_59 
       (.I0(\spo[2]_INST_0_i_90_n_0 ),
        .I1(\spo[2]_INST_0_i_91_n_0 ),
        .O(\spo[2]_INST_0_i_59_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_6 
       (.I0(\spo[2]_INST_0_i_19_n_0 ),
        .I1(\spo[2]_INST_0_i_20_n_0 ),
        .I2(a[11]),
        .I3(\spo[2]_INST_0_i_21_n_0 ),
        .I4(a[6]),
        .I5(\spo[2]_INST_0_i_22_n_0 ),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h80EC13C801EC3793)) 
    \spo[2]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF905E905C1078506)) 
    \spo[2]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hF1C7E38FE38FC70E)) 
    \spo[2]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hDC48C000002121A7)) 
    \spo[2]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hD945492549254526)) 
    \spo[2]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h7F1FF8E0FF78E0E0)) 
    \spo[2]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_65_n_0 ));
  MUXF7 \spo[2]_INST_0_i_66 
       (.I0(\spo[2]_INST_0_i_92_n_0 ),
        .I1(\spo[2]_INST_0_i_93_n_0 ),
        .O(\spo[2]_INST_0_i_66_n_0 ),
        .S(a[7]));
  MUXF7 \spo[2]_INST_0_i_67 
       (.I0(\spo[2]_INST_0_i_94_n_0 ),
        .I1(\spo[2]_INST_0_i_95_n_0 ),
        .O(\spo[2]_INST_0_i_67_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h1E3C70F03878F0E1)) 
    \spo[2]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h163A3A7A7AF9F9E9)) 
    \spo[2]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_77_n_0 ),
        .I1(\spo[2]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_24_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_25_n_0 ),
        .O(\spo[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE3D7C79F8F1E0E1C)) 
    \spo[2]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hF3E7F3E7C386861C)) 
    \spo[2]_INST_0_i_71 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h136C7F883788FE9B)) 
    \spo[2]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h263626B2B6B9B9C9)) 
    \spo[2]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE3C7C78F8F0E0E1C)) 
    \spo[2]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hF0F1C387F1E38F0F)) 
    \spo[2]_INST_0_i_75 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hF187E30FE30FC70E)) 
    \spo[2]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hE9C5C58585060616)) 
    \spo[2]_INST_0_i_77 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h13EC7E003680FE13)) 
    \spo[2]_INST_0_i_78 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h8E1C0C181C393963)) 
    \spo[2]_INST_0_i_79 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_79_n_0 ));
  MUXF8 \spo[2]_INST_0_i_8 
       (.I0(\spo[2]_INST_0_i_26_n_0 ),
        .I1(\spo[2]_INST_0_i_27_n_0 ),
        .O(\spo[2]_INST_0_i_8_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hF987EB07EB07C706)) 
    \spo[2]_INST_0_i_80 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hDBD9D94949464426)) 
    \spo[2]_INST_0_i_81 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h93EC7F0037807E13)) 
    \spo[2]_INST_0_i_82 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h8F1C0E380E381C70)) 
    \spo[2]_INST_0_i_83 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h0E1C38701C3870F1)) 
    \spo[2]_INST_0_i_84 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h136EFFA837AAFE99)) 
    \spo[2]_INST_0_i_85 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hF187E31FE30FD71E)) 
    \spo[2]_INST_0_i_86 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h71F3F1E3E3C6C68C)) 
    \spo[2]_INST_0_i_87 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h06143878143878F9)) 
    \spo[2]_INST_0_i_88 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h2246BB682B66BDB9)) 
    \spo[2]_INST_0_i_89 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0_i_9 
       (.I0(\spo[2]_INST_0_i_28_n_0 ),
        .I1(\spo[2]_INST_0_i_29_n_0 ),
        .I2(a[10]),
        .I3(\spo[2]_INST_0_i_30_n_0 ),
        .I4(a[7]),
        .I5(\spo[2]_INST_0_i_31_n_0 ),
        .O(\spo[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7187E30FC38F871E)) 
    \spo[2]_INST_0_i_90 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h70F1E3C7F1E3C78F)) 
    \spo[2]_INST_0_i_91 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h480021A7402123B7)) 
    \spo[2]_INST_0_i_92 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[2]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h8C08081010313173)) 
    \spo[2]_INST_0_i_93 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h26B2B6B8B8C9D9CD)) 
    \spo[2]_INST_0_i_94 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h22B6BEDAB6BADED9)) 
    \spo[2]_INST_0_i_95 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[2]_INST_0_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0 
       (.I0(\spo[30]_INST_0_i_1_n_0 ),
        .I1(\spo[30]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[30]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[30]_INST_0_i_4_n_0 ),
        .O(spo[11]));
  MUXF8 \spo[30]_INST_0_i_1 
       (.I0(\spo[30]_INST_0_i_5_n_0 ),
        .I1(\spo[30]_INST_0_i_6_n_0 ),
        .O(\spo[30]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[30]_INST_0_i_10 
       (.I0(\spo[30]_INST_0_i_23_n_0 ),
        .I1(\spo[30]_INST_0_i_24_n_0 ),
        .O(\spo[30]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[30]_INST_0_i_11 
       (.I0(\spo[30]_INST_0_i_25_n_0 ),
        .I1(\spo[30]_INST_0_i_26_n_0 ),
        .O(\spo[30]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[30]_INST_0_i_12 
       (.I0(\spo[30]_INST_0_i_27_n_0 ),
        .I1(\spo[30]_INST_0_i_28_n_0 ),
        .O(\spo[30]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_13 
       (.I0(\spo[30]_INST_0_i_29_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_30_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_31_n_0 ),
        .O(\spo[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_14 
       (.I0(\spo[30]_INST_0_i_32_n_0 ),
        .I1(\spo[30]_INST_0_i_33_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_34_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[30]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_15 
       (.I0(\spo[30]_INST_0_i_35_n_0 ),
        .I1(\spo[30]_INST_0_i_36_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_37_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_38_n_0 ),
        .O(\spo[30]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_16 
       (.I0(\spo[30]_INST_0_i_39_n_0 ),
        .I1(\spo[30]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_41_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_42_n_0 ),
        .O(\spo[30]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_17 
       (.I0(\spo[30]_INST_0_i_43_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_44_n_0 ),
        .O(\spo[30]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[30]_INST_0_i_18 
       (.I0(\spo[30]_INST_0_i_45_n_0 ),
        .I1(a[10]),
        .I2(\spo[30]_INST_0_i_46_n_0 ),
        .I3(a[7]),
        .I4(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[30]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_19 
       (.I0(\spo[30]_INST_0_i_35_n_0 ),
        .I1(\spo[30]_INST_0_i_47_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_48_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_38_n_0 ),
        .O(\spo[30]_INST_0_i_19_n_0 ));
  MUXF8 \spo[30]_INST_0_i_2 
       (.I0(\spo[30]_INST_0_i_7_n_0 ),
        .I1(\spo[30]_INST_0_i_8_n_0 ),
        .O(\spo[30]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_20 
       (.I0(\spo[30]_INST_0_i_39_n_0 ),
        .I1(\spo[30]_INST_0_i_49_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_41_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_50_n_0 ),
        .O(\spo[30]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_21 
       (.I0(\spo[30]_INST_0_i_51_n_0 ),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_52_n_0 ),
        .O(\spo[30]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_22 
       (.I0(\spo[30]_INST_0_i_53_n_0 ),
        .I1(\spo[30]_INST_0_i_54_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_38_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_47_n_0 ),
        .O(\spo[30]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_23 
       (.I0(\spo[30]_INST_0_i_55_n_0 ),
        .I1(\spo[30]_INST_0_i_47_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_38_n_0 ),
        .O(\spo[30]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_24 
       (.I0(\spo[30]_INST_0_i_39_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_50_n_0 ),
        .O(\spo[30]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[30]_INST_0_i_25 
       (.I0(\spo[30]_INST_0_i_58_n_0 ),
        .I1(a[10]),
        .I2(\spo[30]_INST_0_i_59_n_0 ),
        .I3(a[7]),
        .I4(\spo[30]_INST_0_i_52_n_0 ),
        .O(\spo[30]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_26 
       (.I0(\spo[30]_INST_0_i_60_n_0 ),
        .I1(\spo[30]_INST_0_i_61_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_38_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_62_n_0 ),
        .O(\spo[30]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_27 
       (.I0(\spo[31]_INST_0_i_46_n_0 ),
        .I1(\spo[30]_INST_0_i_47_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_56_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_63_n_0 ),
        .O(\spo[30]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[30]_INST_0_i_28 
       (.I0(\spo[30]_INST_0_i_64_n_0 ),
        .I1(\spo[30]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[30]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[30]_INST_0_i_50_n_0 ),
        .O(\spo[30]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AAAAFF40AA)) 
    \spo[30]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_29_n_0 ));
  MUXF8 \spo[30]_INST_0_i_3 
       (.I0(\spo[30]_INST_0_i_9_n_0 ),
        .I1(\spo[30]_INST_0_i_10_n_0 ),
        .O(\spo[30]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h8000FF00000FF000)) 
    \spo[30]_INST_0_i_30 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h55555500FE00AA00)) 
    \spo[30]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hF5F55555FFFEA0A0)) 
    \spo[30]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0F00F00FFF0F)) 
    \spo[30]_INST_0_i_33 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7F7E7E7E37373737)) 
    \spo[30]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h80F8)) 
    \spo[30]_INST_0_i_35 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h88881000ECCCC888)) 
    \spo[30]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FFFFC8FF)) 
    \spo[30]_INST_0_i_37 
       (.I0(a[0]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE37)) 
    \spo[30]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h70F7)) 
    \spo[30]_INST_0_i_39 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_39_n_0 ));
  MUXF8 \spo[30]_INST_0_i_4 
       (.I0(\spo[30]_INST_0_i_11_n_0 ),
        .I1(\spo[30]_INST_0_i_12_n_0 ),
        .O(\spo[30]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h77FF77FE11331133)) 
    \spo[30]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4C34)) 
    \spo[30]_INST_0_i_41 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAA00558000554000)) 
    \spo[30]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h70F00000F0FFF0F0)) 
    \spo[30]_INST_0_i_43 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h00FFAA0015000000)) 
    \spo[30]_INST_0_i_44 
       (.I0(a[4]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[8]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB330E1D1)) 
    \spo[30]_INST_0_i_45 
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[9]),
        .O(\spo[30]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFF000FF0FFF)) 
    \spo[30]_INST_0_i_46 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h3200)) 
    \spo[30]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAAA55BF55)) 
    \spo[30]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFFAA007F15FF)) 
    \spo[30]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_49_n_0 ));
  MUXF7 \spo[30]_INST_0_i_5 
       (.I0(\spo[30]_INST_0_i_13_n_0 ),
        .I1(\spo[30]_INST_0_i_14_n_0 ),
        .O(\spo[30]_INST_0_i_5_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \spo[30]_INST_0_i_50 
       (.I0(a[4]),
        .I1(a[9]),
        .I2(a[5]),
        .I3(a[8]),
        .O(\spo[30]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA0BA)) 
    \spo[30]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3840)) 
    \spo[30]_INST_0_i_52 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[5]),
        .O(\spo[30]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0F00FF00F000)) 
    \spo[30]_INST_0_i_53 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h549D)) 
    \spo[30]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAA00FF800055EA00)) 
    \spo[30]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE9D)) 
    \spo[30]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h00AA55AAAAFF40AA)) 
    \spo[30]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF010F7F0)) 
    \spo[30]_INST_0_i_58 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[5]),
        .O(\spo[30]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h20202020044C4C4C)) 
    \spo[30]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[30]_INST_0_i_59_n_0 ));
  MUXF7 \spo[30]_INST_0_i_6 
       (.I0(\spo[30]_INST_0_i_15_n_0 ),
        .I1(\spo[30]_INST_0_i_16_n_0 ),
        .O(\spo[30]_INST_0_i_6_n_0 ),
        .S(a[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h54C8)) 
    \spo[30]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[9]),
        .O(\spo[30]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h3333040CC3F33333)) 
    \spo[30]_INST_0_i_61 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hBDFF)) 
    \spo[30]_INST_0_i_62 
       (.I0(a[9]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[8]),
        .O(\spo[30]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA00155FFFFF)) 
    \spo[30]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFFAA005F15FF)) 
    \spo[30]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[30]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h70F00FF0F0FF00F0)) 
    \spo[30]_INST_0_i_65 
       (.I0(a[1]),
        .I1(a[0]),
        .I2(a[8]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[30]_INST_0_i_65_n_0 ));
  MUXF7 \spo[30]_INST_0_i_7 
       (.I0(\spo[30]_INST_0_i_17_n_0 ),
        .I1(\spo[30]_INST_0_i_18_n_0 ),
        .O(\spo[30]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[30]_INST_0_i_8 
       (.I0(\spo[30]_INST_0_i_19_n_0 ),
        .I1(\spo[30]_INST_0_i_20_n_0 ),
        .O(\spo[30]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[30]_INST_0_i_9 
       (.I0(\spo[30]_INST_0_i_21_n_0 ),
        .I1(\spo[30]_INST_0_i_22_n_0 ),
        .O(\spo[30]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0 
       (.I0(\spo[31]_INST_0_i_1_n_0 ),
        .I1(\spo[31]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[31]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[31]_INST_0_i_4_n_0 ),
        .O(spo[12]));
  MUXF8 \spo[31]_INST_0_i_1 
       (.I0(\spo[31]_INST_0_i_5_n_0 ),
        .I1(\spo[31]_INST_0_i_6_n_0 ),
        .O(\spo[31]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[31]_INST_0_i_10 
       (.I0(\spo[31]_INST_0_i_23_n_0 ),
        .I1(\spo[31]_INST_0_i_24_n_0 ),
        .O(\spo[31]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[31]_INST_0_i_11 
       (.I0(\spo[31]_INST_0_i_25_n_0 ),
        .I1(\spo[31]_INST_0_i_26_n_0 ),
        .O(\spo[31]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[31]_INST_0_i_12 
       (.I0(\spo[31]_INST_0_i_27_n_0 ),
        .I1(\spo[31]_INST_0_i_28_n_0 ),
        .O(\spo[31]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_13 
       (.I0(\spo[31]_INST_0_i_29_n_0 ),
        .I1(\spo[31]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_32_n_0 ),
        .O(\spo[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_14 
       (.I0(\spo[31]_INST_0_i_33_n_0 ),
        .I1(\spo[31]_INST_0_i_34_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_36_n_0 ),
        .O(\spo[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFC0C0AFA0CFCF)) 
    \spo[31]_INST_0_i_15 
       (.I0(\spo[31]_INST_0_i_37_n_0 ),
        .I1(\spo[31]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[31]_INST_0_i_16 
       (.I0(\spo[31]_INST_0_i_39_n_0 ),
        .I1(a[10]),
        .I2(\spo[31]_INST_0_i_40_n_0 ),
        .I3(a[7]),
        .I4(\spo[31]_INST_0_i_41_n_0 ),
        .O(\spo[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0A05FEF1FF08F)) 
    \spo[31]_INST_0_i_17 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[10]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB939CECB393D9B9B)) 
    \spo[31]_INST_0_i_18 
       (.I0(a[10]),
        .I1(a[7]),
        .I2(a[8]),
        .I3(a[4]),
        .I4(a[9]),
        .I5(a[5]),
        .O(\spo[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FF0F0EFC03F7F)) 
    \spo[31]_INST_0_i_19 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_19_n_0 ));
  MUXF8 \spo[31]_INST_0_i_2 
       (.I0(\spo[31]_INST_0_i_7_n_0 ),
        .I1(\spo[31]_INST_0_i_8_n_0 ),
        .O(\spo[31]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hD979797D3C3D3929)) 
    \spo[31]_INST_0_i_20 
       (.I0(a[10]),
        .I1(a[7]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFC0A0CFAFCFA0CF)) 
    \spo[31]_INST_0_i_21 
       (.I0(\spo[31]_INST_0_i_42_n_0 ),
        .I1(\spo[31]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[31]_INST_0_i_22 
       (.I0(\spo[31]_INST_0_i_44_n_0 ),
        .I1(\spo[31]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[31]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[31]_INST_0_i_47_n_0 ),
        .O(\spo[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFC0C0AFA0CFCF)) 
    \spo[31]_INST_0_i_23 
       (.I0(\spo[31]_INST_0_i_48_n_0 ),
        .I1(\spo[31]_INST_0_i_36_n_0 ),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \spo[31]_INST_0_i_24 
       (.I0(\spo[31]_INST_0_i_49_n_0 ),
        .I1(a[10]),
        .I2(\spo[31]_INST_0_i_50_n_0 ),
        .I3(a[7]),
        .I4(\spo[31]_INST_0_i_51_n_0 ),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0C07FEF3FF00F)) 
    \spo[31]_INST_0_i_25 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[10]),
        .I3(a[7]),
        .I4(a[9]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h3C3D39299F9B9BDB)) 
    \spo[31]_INST_0_i_26 
       (.I0(a[10]),
        .I1(a[7]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0F1FF0F0CF803F7F)) 
    \spo[31]_INST_0_i_27 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[10]),
        .I3(a[8]),
        .I4(a[7]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF9797D7D3C393969)) 
    \spo[31]_INST_0_i_28 
       (.I0(a[10]),
        .I1(a[7]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h55555500FF55BF55)) 
    \spo[31]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_29_n_0 ));
  MUXF8 \spo[31]_INST_0_i_3 
       (.I0(\spo[31]_INST_0_i_9_n_0 ),
        .I1(\spo[31]_INST_0_i_10_n_0 ),
        .O(\spo[31]_INST_0_i_3_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA6B2)) 
    \spo[31]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[31]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \spo[31]_INST_0_i_31 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \spo[31]_INST_0_i_32 
       (.I0(a[9]),
        .I1(a[8]),
        .O(\spo[31]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hD5FF)) 
    \spo[31]_INST_0_i_33 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[8]),
        .O(\spo[31]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00000000FFFF)) 
    \spo[31]_INST_0_i_34 
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[8]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00010101C8C8C8C8)) 
    \spo[31]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    \spo[31]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[9]),
        .I3(a[5]),
        .O(\spo[31]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \spo[31]_INST_0_i_37 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[31]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF13373377)) 
    \spo[31]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    \spo[31]_INST_0_i_39 
       (.I0(a[7]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[8]),
        .I4(a[9]),
        .O(\spo[31]_INST_0_i_39_n_0 ));
  MUXF8 \spo[31]_INST_0_i_4 
       (.I0(\spo[31]_INST_0_i_11_n_0 ),
        .I1(\spo[31]_INST_0_i_12_n_0 ),
        .O(\spo[31]_INST_0_i_4_n_0 ),
        .S(a[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCC34)) 
    \spo[31]_INST_0_i_40 
       (.I0(a[4]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .O(\spo[31]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAAA7FBFFF)) 
    \spo[31]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7751)) 
    \spo[31]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[5]),
        .O(\spo[31]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFF4A0AAAAA)) 
    \spo[31]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[31]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hD5555555FFFFFFFF)) 
    \spo[31]_INST_0_i_44 
       (.I0(a[9]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \spo[31]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[9]),
        .O(\spo[31]_INST_0_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0C18)) 
    \spo[31]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .O(\spo[31]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFFFD5FFFFFFFF)) 
    \spo[31]_INST_0_i_47 
       (.I0(a[9]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[8]),
        .O(\spo[31]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF800055EA00)) 
    \spo[31]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80FFFF00)) 
    \spo[31]_INST_0_i_49 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[7]),
        .I4(a[9]),
        .O(\spo[31]_INST_0_i_49_n_0 ));
  MUXF7 \spo[31]_INST_0_i_5 
       (.I0(\spo[31]_INST_0_i_13_n_0 ),
        .I1(\spo[31]_INST_0_i_14_n_0 ),
        .O(\spo[31]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAAAA55AAAAFF40AA)) 
    \spo[31]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[9]),
        .I5(a[4]),
        .O(\spo[31]_INST_0_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE7)) 
    \spo[31]_INST_0_i_51 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[9]),
        .O(\spo[31]_INST_0_i_51_n_0 ));
  MUXF7 \spo[31]_INST_0_i_6 
       (.I0(\spo[31]_INST_0_i_15_n_0 ),
        .I1(\spo[31]_INST_0_i_16_n_0 ),
        .O(\spo[31]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[31]_INST_0_i_7 
       (.I0(\spo[31]_INST_0_i_17_n_0 ),
        .I1(\spo[31]_INST_0_i_18_n_0 ),
        .O(\spo[31]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[31]_INST_0_i_8 
       (.I0(\spo[31]_INST_0_i_19_n_0 ),
        .I1(\spo[31]_INST_0_i_20_n_0 ),
        .O(\spo[31]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[31]_INST_0_i_9 
       (.I0(\spo[31]_INST_0_i_21_n_0 ),
        .I1(\spo[31]_INST_0_i_22_n_0 ),
        .O(\spo[31]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[3]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[3]_INST_0_i_4_n_0 ),
        .O(spo[3]));
  MUXF8 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF8 \spo[3]_INST_0_i_10 
       (.I0(\spo[3]_INST_0_i_28_n_0 ),
        .I1(\spo[3]_INST_0_i_29_n_0 ),
        .O(\spo[3]_INST_0_i_10_n_0 ),
        .S(a[10]));
  MUXF7 \spo[3]_INST_0_i_11 
       (.I0(\spo[3]_INST_0_i_30_n_0 ),
        .I1(\spo[3]_INST_0_i_31_n_0 ),
        .O(\spo[3]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_12 
       (.I0(\spo[3]_INST_0_i_32_n_0 ),
        .I1(\spo[3]_INST_0_i_33_n_0 ),
        .O(\spo[3]_INST_0_i_12_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_13 
       (.I0(\spo[3]_INST_0_i_34_n_0 ),
        .I1(\spo[3]_INST_0_i_35_n_0 ),
        .O(\spo[3]_INST_0_i_13_n_0 ),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_14 
       (.I0(\spo[3]_INST_0_i_36_n_0 ),
        .I1(\spo[3]_INST_0_i_37_n_0 ),
        .O(\spo[3]_INST_0_i_14_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_15 
       (.I0(\spo[7]_INST_0_i_29_n_0 ),
        .I1(\spo[3]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_39_n_0 ),
        .O(\spo[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_16 
       (.I0(\spo[3]_INST_0_i_40_n_0 ),
        .I1(\spo[3]_INST_0_i_41_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_42_n_0 ),
        .O(\spo[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_17 
       (.I0(\spo[3]_INST_0_i_43_n_0 ),
        .I1(\spo[7]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_39_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_44_n_0 ),
        .O(\spo[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_18 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(\spo[3]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_43_n_0 ),
        .O(\spo[3]_INST_0_i_18_n_0 ));
  MUXF7 \spo[3]_INST_0_i_19 
       (.I0(\spo[3]_INST_0_i_47_n_0 ),
        .I1(\spo[3]_INST_0_i_48_n_0 ),
        .O(\spo[3]_INST_0_i_19_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_7_n_0 ),
        .I1(\spo[3]_INST_0_i_8_n_0 ),
        .I2(a[11]),
        .I3(\spo[3]_INST_0_i_9_n_0 ),
        .I4(a[6]),
        .I5(\spo[3]_INST_0_i_10_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  MUXF7 \spo[3]_INST_0_i_20 
       (.I0(\spo[3]_INST_0_i_49_n_0 ),
        .I1(\spo[3]_INST_0_i_50_n_0 ),
        .O(\spo[3]_INST_0_i_20_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h80000000FFFEFEFC)) 
    \spo[3]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0F0E0F0E0F0E1)) 
    \spo[3]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8F9F7FFF7AAAAAAA)) 
    \spo[3]_INST_0_i_23 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFEECC88013377FFF)) 
    \spo[3]_INST_0_i_24 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9BFFBFF7FF77F777)) 
    \spo[3]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5444422299955555)) 
    \spo[3]_INST_0_i_26 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h70E1F3F7F1E3F3F7)) 
    \spo[3]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_27_n_0 ));
  MUXF7 \spo[3]_INST_0_i_28 
       (.I0(\spo[3]_INST_0_i_51_n_0 ),
        .I1(\spo[3]_INST_0_i_52_n_0 ),
        .O(\spo[3]_INST_0_i_28_n_0 ),
        .S(a[7]));
  MUXF7 \spo[3]_INST_0_i_29 
       (.I0(\spo[3]_INST_0_i_53_n_0 ),
        .I1(\spo[3]_INST_0_i_54_n_0 ),
        .O(\spo[3]_INST_0_i_29_n_0 ),
        .S(a[7]));
  MUXF8 \spo[3]_INST_0_i_3 
       (.I0(\spo[3]_INST_0_i_11_n_0 ),
        .I1(\spo[3]_INST_0_i_12_n_0 ),
        .O(\spo[3]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_30 
       (.I0(\spo[3]_INST_0_i_55_n_0 ),
        .I1(\spo[3]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_58_n_0 ),
        .O(\spo[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_31 
       (.I0(\spo[7]_INST_0_i_59_n_0 ),
        .I1(\spo[3]_INST_0_i_58_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_59_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_60_n_0 ),
        .O(\spo[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_32 
       (.I0(\spo[3]_INST_0_i_61_n_0 ),
        .I1(\spo[3]_INST_0_i_62_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_49_n_0 ),
        .O(\spo[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \spo[3]_INST_0_i_33 
       (.I0(a[9]),
        .I1(\spo[3]_INST_0_i_64_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_66_n_0 ),
        .O(\spo[3]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_34 
       (.I0(\spo[3]_INST_0_i_67_n_0 ),
        .I1(\spo[3]_INST_0_i_68_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_69_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_69_n_0 ),
        .O(\spo[3]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_35 
       (.I0(\spo[3]_INST_0_i_70_n_0 ),
        .I1(\spo[7]_INST_0_i_72_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_71_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_73_n_0 ),
        .O(\spo[3]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_36 
       (.I0(\spo[3]_INST_0_i_64_n_0 ),
        .I1(\spo[7]_INST_0_i_74_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_72_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_76_n_0 ),
        .O(\spo[3]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_37 
       (.I0(\spo[7]_INST_0_i_77_n_0 ),
        .I1(\spo[3]_INST_0_i_73_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_74_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_79_n_0 ),
        .O(\spo[3]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h5444422299D55555)) 
    \spo[3]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A1A7A0A1A3B7)) 
    \spo[3]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_39_n_0 ));
  MUXF8 \spo[3]_INST_0_i_4 
       (.I0(\spo[3]_INST_0_i_13_n_0 ),
        .I1(\spo[3]_INST_0_i_14_n_0 ),
        .O(\spo[3]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h2A2AAAAA00010107)) 
    \spo[3]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hD5555555AAAAAAA9)) 
    \spo[3]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0007001AE0008000)) 
    \spo[3]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCFCE81337173F)) 
    \spo[3]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \spo[3]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0F0F0F0F0F1E)) 
    \spo[3]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h54545442B9959595)) 
    \spo[3]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888889)) 
    \spo[3]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2AAA55545656)) 
    \spo[3]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h07177FFFF0808000)) 
    \spo[3]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_49_n_0 ));
  MUXF7 \spo[3]_INST_0_i_5 
       (.I0(\spo[3]_INST_0_i_15_n_0 ),
        .I1(\spo[3]_INST_0_i_16_n_0 ),
        .O(\spo[3]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hF0F1E3C7F1E3C78F)) 
    \spo[3]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[3]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hBFF7FF77FF777777)) 
    \spo[3]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00130137C8008000)) 
    \spo[3]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h25A5A5A6A6A6B6B2)) 
    \spo[3]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hD5555555EEEEAAA9)) 
    \spo[3]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4442222A80155555)) 
    \spo[3]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hABBBFFDF6A2AAAAA)) 
    \spo[3]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00010103)) 
    \spo[3]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA55555556)) 
    \spo[3]_INST_0_i_58 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h001F077F80000000)) 
    \spo[3]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_59_n_0 ));
  MUXF7 \spo[3]_INST_0_i_6 
       (.I0(\spo[3]_INST_0_i_17_n_0 ),
        .I1(\spo[3]_INST_0_i_18_n_0 ),
        .O(\spo[3]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hDFFFDFFBFFF7F777)) 
    \spo[3]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0005071FF8E0E080)) 
    \spo[3]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hECC98101137FFFFF)) 
    \spo[3]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAF9F9E9)) 
    \spo[3]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F1F1E3)) 
    \spo[3]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAFBD5A4A6AAA)) 
    \spo[3]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hFE80800085557FFF)) 
    \spo[3]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hA1A5A1A5A1A6A2B6)) 
    \spo[3]_INST_0_i_67 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hDA5A59497A796945)) 
    \spo[3]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[3]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h4008080808888888)) 
    \spo[3]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_69_n_0 ));
  MUXF8 \spo[3]_INST_0_i_7 
       (.I0(\spo[3]_INST_0_i_19_n_0 ),
        .I1(\spo[3]_INST_0_i_20_n_0 ),
        .O(\spo[3]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'h6440000800088888)) 
    \spo[3]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[3]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00130137)) 
    \spo[3]_INST_0_i_71 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hF8E0800095555555)) 
    \spo[3]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hF8E080001F7FFFFF)) 
    \spo[3]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[3]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hDADA5A5A5A595949)) 
    \spo[3]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_8 
       (.I0(\spo[3]_INST_0_i_21_n_0 ),
        .I1(\spo[3]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_23_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_24_n_0 ),
        .O(\spo[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0_i_9 
       (.I0(\spo[3]_INST_0_i_25_n_0 ),
        .I1(\spo[3]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[3]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_27_n_0 ),
        .O(\spo[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_1_n_0 ),
        .I2(a[3]),
        .I3(\spo[4]_INST_0_i_2_n_0 ),
        .I4(a[2]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(spo[4]));
  MUXF8 \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[4]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_54_n_0 ),
        .O(\spo[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_11 
       (.I0(\spo[8]_INST_0_i_55_n_0 ),
        .I1(\spo[4]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_18_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_58_n_0 ),
        .O(\spo[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_59_n_0 ),
        .I1(\spo[4]_INST_0_i_23_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_24_n_0 ),
        .O(\spo[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_13 
       (.I0(\spo[4]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_26_n_0 ),
        .O(\spo[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_14 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_27_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_54_n_0 ),
        .O(\spo[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF30C0FF31CE7)) 
    \spo[4]_INST_0_i_15 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEA8A75F575758A0A)) 
    \spo[4]_INST_0_i_16 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h1D75EA8AEA8A75F5)) 
    \spo[4]_INST_0_i_17 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hA55AA55B5AA55BA6)) 
    \spo[4]_INST_0_i_18 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1DC0EAFF6ABFD500)) 
    \spo[4]_INST_0_i_19 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_19_n_0 ));
  MUXF8 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hBD624AD56A95D5AA)) 
    \spo[4]_INST_0_i_20 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00FF1F00FF30C)) 
    \spo[4]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFA3F17801500EAFF)) 
    \spo[4]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC33CC33D)) 
    \spo[4]_INST_0_i_23 
       (.I0(a[5]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .O(\spo[4]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA2AA5D755575BA0A)) 
    \spo[4]_INST_0_i_24 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAB46569D469DBD2A)) 
    \spo[4]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5AA5A55A5AA5A55B)) 
    \spo[4]_INST_0_i_26 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h01CCFE3FEE3F1780)) 
    \spo[4]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[4]_INST_0_i_27_n_0 ));
  MUXF7 \spo[4]_INST_0_i_3 
       (.I0(\spo[4]_INST_0_i_7_n_0 ),
        .I1(\spo[4]_INST_0_i_8_n_0 ),
        .O(\spo[4]_INST_0_i_3_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_4 
       (.I0(\spo[4]_INST_0_i_9_n_0 ),
        .I1(\spo[4]_INST_0_i_10_n_0 ),
        .O(\spo[4]_INST_0_i_4_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_5 
       (.I0(\spo[4]_INST_0_i_11_n_0 ),
        .I1(\spo[4]_INST_0_i_12_n_0 ),
        .O(\spo[4]_INST_0_i_5_n_0 ),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_6 
       (.I0(\spo[4]_INST_0_i_13_n_0 ),
        .I1(\spo[4]_INST_0_i_14_n_0 ),
        .O(\spo[4]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_44_n_0 ),
        .I1(\spo[4]_INST_0_i_15_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[4]_INST_0_i_16_n_0 ),
        .O(\spo[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_8 
       (.I0(\spo[4]_INST_0_i_17_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_48_n_0 ),
        .O(\spo[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0_i_9 
       (.I0(\spo[4]_INST_0_i_18_n_0 ),
        .I1(\spo[8]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[4]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_22_n_0 ),
        .O(\spo[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[5]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[5]_INST_0_i_4_n_0 ),
        .O(spo[6]));
  MUXF8 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[5]_INST_0_i_10 
       (.I0(\spo[5]_INST_0_i_23_n_0 ),
        .I1(\spo[5]_INST_0_i_24_n_0 ),
        .O(\spo[5]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_11 
       (.I0(\spo[5]_INST_0_i_25_n_0 ),
        .I1(\spo[5]_INST_0_i_26_n_0 ),
        .O(\spo[5]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_12 
       (.I0(\spo[5]_INST_0_i_27_n_0 ),
        .I1(\spo[5]_INST_0_i_28_n_0 ),
        .O(\spo[5]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[5]_INST_0_i_13 
       (.I0(\spo[5]_INST_0_i_29_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_31_n_0 ),
        .O(\spo[5]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0_i_14 
       (.I0(\spo[5]_INST_0_i_32_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_29_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_15 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_29_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_34_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_16 
       (.I0(\spo[5]_INST_0_i_35_n_0 ),
        .I1(\spo[5]_INST_0_i_36_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_33_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_29_n_0 ),
        .O(\spo[5]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[5]_INST_0_i_17 
       (.I0(\spo[5]_INST_0_i_37_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_38_n_0 ),
        .O(\spo[5]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \spo[5]_INST_0_i_18 
       (.I0(\spo[5]_INST_0_i_39_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_40_n_0 ),
        .O(\spo[5]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0_i_19 
       (.I0(\spo[5]_INST_0_i_41_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_42_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_19_n_0 ));
  MUXF8 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_7_n_0 ),
        .I1(\spo[5]_INST_0_i_8_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_20 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(\spo[5]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_21 
       (.I0(\spo[5]_INST_0_i_30_n_0 ),
        .I1(\spo[5]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_47_n_0 ),
        .O(\spo[5]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[5]_INST_0_i_22 
       (.I0(\spo[5]_INST_0_i_48_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_49_n_0 ),
        .O(\spo[5]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \spo[5]_INST_0_i_23 
       (.I0(\spo[5]_INST_0_i_50_n_0 ),
        .I1(a[7]),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \spo[5]_INST_0_i_24 
       (.I0(\spo[5]_INST_0_i_33_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_51_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_30_n_0 ),
        .O(\spo[5]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_25 
       (.I0(\spo[5]_INST_0_i_46_n_0 ),
        .I1(\spo[5]_INST_0_i_52_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_53_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_47_n_0 ),
        .O(\spo[5]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_26 
       (.I0(\spo[5]_INST_0_i_30_n_0 ),
        .I1(\spo[5]_INST_0_i_54_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_52_n_0 ),
        .O(\spo[5]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \spo[5]_INST_0_i_27 
       (.I0(\spo[5]_INST_0_i_46_n_0 ),
        .I1(a[10]),
        .I2(\spo[5]_INST_0_i_30_n_0 ),
        .I3(a[7]),
        .I4(\spo[5]_INST_0_i_55_n_0 ),
        .O(\spo[5]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0_i_28 
       (.I0(\spo[5]_INST_0_i_56_n_0 ),
        .I1(\spo[5]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[5]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[5]_INST_0_i_46_n_0 ),
        .O(\spo[5]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hC294294394294396)) 
    \spo[5]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_29_n_0 ));
  MUXF8 \spo[5]_INST_0_i_3 
       (.I0(\spo[5]_INST_0_i_9_n_0 ),
        .I1(\spo[5]_INST_0_i_10_n_0 ),
        .O(\spo[5]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h963C69C33C69C396)) 
    \spo[5]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h963C69C63C69C294)) 
    \spo[5]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C6969C6)) 
    \spo[5]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C6969C3)) 
    \spo[5]_INST_0_i_33 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C6B69C2)) 
    \spo[5]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4396963C3C6969C3)) 
    \spo[5]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C6969D2)) 
    \spo[5]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h963C6BC23C6BD294)) 
    \spo[5]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9C6969434396963C)) 
    \spo[5]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hD69C69439C694396)) 
    \spo[5]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_39_n_0 ));
  MUXF8 \spo[5]_INST_0_i_4 
       (.I0(\spo[5]_INST_0_i_11_n_0 ),
        .I1(\spo[5]_INST_0_i_12_n_0 ),
        .O(\spo[5]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h963D3D6B6BD6C294)) 
    \spo[5]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C6969C2)) 
    \spo[5]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hD2BC6943BC69C396)) 
    \spo[5]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hD2B46943B469C396)) 
    \spo[5]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hC396963C3C696BC2)) 
    \spo[5]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h94292943639696BC)) 
    \spo[5]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h963C69C23C69C294)) 
    \spo[5]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h3C6969C3C396963C)) 
    \spo[5]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h963C69C33C69C394)) 
    \spo[5]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9429294363D6D6BC)) 
    \spo[5]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_49_n_0 ));
  MUXF7 \spo[5]_INST_0_i_5 
       (.I0(\spo[5]_INST_0_i_13_n_0 ),
        .I1(\spo[5]_INST_0_i_14_n_0 ),
        .O(\spo[5]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hC2942D4B94294B96)) 
    \spo[5]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hC2942D6394296396)) 
    \spo[5]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hBC6969C3C396963C)) 
    \spo[5]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h943929434396963C)) 
    \spo[5]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h942D2D434396963C)) 
    \spo[5]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h962D294B4396963C)) 
    \spo[5]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hC396294396294396)) 
    \spo[5]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h963C69C3BC69C396)) 
    \spo[5]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[5]_INST_0_i_57_n_0 ));
  MUXF7 \spo[5]_INST_0_i_6 
       (.I0(\spo[5]_INST_0_i_15_n_0 ),
        .I1(\spo[5]_INST_0_i_16_n_0 ),
        .O(\spo[5]_INST_0_i_6_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_7 
       (.I0(\spo[5]_INST_0_i_17_n_0 ),
        .I1(\spo[5]_INST_0_i_18_n_0 ),
        .O(\spo[5]_INST_0_i_7_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_8 
       (.I0(\spo[5]_INST_0_i_19_n_0 ),
        .I1(\spo[5]_INST_0_i_20_n_0 ),
        .O(\spo[5]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_9 
       (.I0(\spo[5]_INST_0_i_21_n_0 ),
        .I1(\spo[5]_INST_0_i_22_n_0 ),
        .O(\spo[5]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[6]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[6]_INST_0_i_4_n_0 ),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .I2(a[11]),
        .I3(\spo[6]_INST_0_i_7_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_8_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  MUXF7 \spo[6]_INST_0_i_10 
       (.I0(\spo[6]_INST_0_i_33_n_0 ),
        .I1(\spo[6]_INST_0_i_34_n_0 ),
        .O(\spo[6]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_11 
       (.I0(\spo[6]_INST_0_i_35_n_0 ),
        .I1(\spo[6]_INST_0_i_36_n_0 ),
        .O(\spo[6]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_12 
       (.I0(\spo[6]_INST_0_i_37_n_0 ),
        .I1(\spo[6]_INST_0_i_38_n_0 ),
        .O(\spo[6]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_13 
       (.I0(\spo[6]_INST_0_i_39_n_0 ),
        .I1(\spo[6]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_41_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_42_n_0 ),
        .O(\spo[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_14 
       (.I0(\spo[6]_INST_0_i_22_n_0 ),
        .I1(\spo[6]_INST_0_i_43_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_44_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_45_n_0 ),
        .O(\spo[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_15 
       (.I0(\spo[6]_INST_0_i_46_n_0 ),
        .I1(\spo[6]_INST_0_i_47_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_29_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_48_n_0 ),
        .O(\spo[6]_INST_0_i_15_n_0 ));
  MUXF8 \spo[6]_INST_0_i_16 
       (.I0(\spo[6]_INST_0_i_49_n_0 ),
        .I1(\spo[6]_INST_0_i_50_n_0 ),
        .O(\spo[6]_INST_0_i_16_n_0 ),
        .S(a[10]));
  MUXF7 \spo[6]_INST_0_i_17 
       (.I0(\spo[6]_INST_0_i_51_n_0 ),
        .I1(\spo[6]_INST_0_i_52_n_0 ),
        .O(\spo[6]_INST_0_i_17_n_0 ),
        .S(a[7]));
  MUXF7 \spo[6]_INST_0_i_18 
       (.I0(\spo[6]_INST_0_i_53_n_0 ),
        .I1(\spo[6]_INST_0_i_54_n_0 ),
        .O(\spo[6]_INST_0_i_18_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0F3C1E781E783CF0)) 
    \spo[6]_INST_0_i_19 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_19_n_0 ));
  MUXF8 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_9_n_0 ),
        .I1(\spo[6]_INST_0_i_10_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h0E1C38601C2870E1)) 
    \spo[6]_INST_0_i_20 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF8E9E9C141078506)) 
    \spo[6]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE187C30FC30F871E)) 
    \spo[6]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hDCC8C84040010127)) 
    \spo[6]_INST_0_i_23 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hC905412741270536)) 
    \spo[6]_INST_0_i_24 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h377EECC8)) 
    \spo[6]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h77FFFFFEEECCDC88)) 
    \spo[6]_INST_0_i_26 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h2236BED836BADCC9)) 
    \spo[6]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h36BEFAD8BEFAD8C9)) 
    \spo[6]_INST_0_i_28 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80130137)) 
    \spo[6]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[6]_INST_0_i_29_n_0 ));
  MUXF8 \spo[6]_INST_0_i_3 
       (.I0(\spo[6]_INST_0_i_11_n_0 ),
        .I1(\spo[6]_INST_0_i_12_n_0 ),
        .O(\spo[6]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hC840012740012337)) 
    \spo[6]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_31 
       (.I0(\spo[6]_INST_0_i_55_n_0 ),
        .I1(\spo[6]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_58_n_0 ),
        .O(\spo[6]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_32 
       (.I0(\spo[6]_INST_0_i_59_n_0 ),
        .I1(\spo[6]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_29_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_60_n_0 ),
        .O(\spo[6]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_33 
       (.I0(\spo[6]_INST_0_i_61_n_0 ),
        .I1(\spo[6]_INST_0_i_62_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_40_n_0 ),
        .O(\spo[6]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_34 
       (.I0(\spo[6]_INST_0_i_19_n_0 ),
        .I1(\spo[6]_INST_0_i_64_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_66_n_0 ),
        .O(\spo[6]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_35 
       (.I0(\spo[6]_INST_0_i_67_n_0 ),
        .I1(\spo[6]_INST_0_i_68_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_29_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_69_n_0 ),
        .O(\spo[6]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_36 
       (.I0(\spo[6]_INST_0_i_70_n_0 ),
        .I1(\spo[6]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_71_n_0 ),
        .O(\spo[6]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_37 
       (.I0(\spo[6]_INST_0_i_72_n_0 ),
        .I1(\spo[6]_INST_0_i_73_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_74_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_22_n_0 ),
        .O(\spo[6]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_38 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(\spo[6]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_75_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_76_n_0 ),
        .O(\spo[6]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0F1E38701E3870E1)) 
    \spo[6]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_4 
       (.I0(\spo[6]_INST_0_i_13_n_0 ),
        .I1(\spo[6]_INST_0_i_14_n_0 ),
        .I2(a[11]),
        .I3(\spo[6]_INST_0_i_15_n_0 ),
        .I4(a[6]),
        .I5(\spo[6]_INST_0_i_16_n_0 ),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1E3C78F03C78F0E1)) 
    \spo[6]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hC905C12741270536)) 
    \spo[6]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE9C3C38787060614)) 
    \spo[6]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE1C3C397871E0E1C)) 
    \spo[6]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h163E7AF83E7AF8E9)) 
    \spo[6]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h1E3C387870E1E1C3)) 
    \spo[6]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h37BFBFFEFEDCDCC8)) 
    \spo[6]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h36BEBED8D8C9C941)) 
    \spo[6]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h80012377012377FF)) 
    \spo[6]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_48_n_0 ));
  MUXF7 \spo[6]_INST_0_i_49 
       (.I0(\spo[6]_INST_0_i_77_n_0 ),
        .I1(\spo[6]_INST_0_i_78_n_0 ),
        .O(\spo[6]_INST_0_i_49_n_0 ),
        .S(a[7]));
  MUXF8 \spo[6]_INST_0_i_5 
       (.I0(\spo[6]_INST_0_i_17_n_0 ),
        .I1(\spo[6]_INST_0_i_18_n_0 ),
        .O(\spo[6]_INST_0_i_5_n_0 ),
        .S(a[10]));
  MUXF7 \spo[6]_INST_0_i_50 
       (.I0(\spo[6]_INST_0_i_79_n_0 ),
        .I1(\spo[6]_INST_0_i_80_n_0 ),
        .O(\spo[6]_INST_0_i_50_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h06143878143878E9)) 
    \spo[6]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h27BE36FA36FABED8)) 
    \spo[6]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hF0E1E1C3C387871E)) 
    \spo[6]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h70E1C387E1C3870F)) 
    \spo[6]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hC901412741230536)) 
    \spo[6]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hC941410707362636)) 
    \spo[6]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFEECC8)) 
    \spo[6]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .O(\spo[6]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h3FDCFEC8FEC8DC40)) 
    \spo[6]_INST_0_i_58 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h373F3FFEFEDCDCC8)) 
    \spo[6]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_6 
       (.I0(\spo[6]_INST_0_i_19_n_0 ),
        .I1(\spo[6]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_22_n_0 ),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8801133701033377)) 
    \spo[6]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF0E1E1C3C387870E)) 
    \spo[6]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hE187C31FC30F971E)) 
    \spo[6]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h163EFAF83E7AF8E9)) 
    \spo[6]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h1E3C78F03C7870E1)) 
    \spo[6]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hD8C9C94141050726)) 
    \spo[6]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hE987C307C3078716)) 
    \spo[6]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h36BEFED8BEFADCC9)) 
    \spo[6]_INST_0_i_67 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h36BABAF8F8E9C9C1)) 
    \spo[6]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h40012337012337BF)) 
    \spo[6]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_7 
       (.I0(\spo[6]_INST_0_i_23_n_0 ),
        .I1(\spo[6]_INST_0_i_24_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_25_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_26_n_0 ),
        .O(\spo[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC840012340012337)) 
    \spo[6]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[6]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h77FCFEC8FEC8DC80)) 
    \spo[6]_INST_0_i_71 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h0E1C3C781C3878E1)) 
    \spo[6]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h1E3C78E03C68F0E1)) 
    \spo[6]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE985C107C1078516)) 
    \spo[6]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h2636BEF836BAF8C9)) 
    \spo[6]_INST_0_i_75 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h163C78F83C78F8E9)) 
    \spo[6]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hBFDCFEC8FEC8DC40)) 
    \spo[6]_INST_0_i_77 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h77CCFE88EE88CC00)) 
    \spo[6]_INST_0_i_78 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[6]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hC1050507271636BE)) 
    \spo[6]_INST_0_i_79 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0_i_8 
       (.I0(\spo[6]_INST_0_i_27_n_0 ),
        .I1(\spo[6]_INST_0_i_28_n_0 ),
        .I2(a[10]),
        .I3(\spo[6]_INST_0_i_29_n_0 ),
        .I4(a[7]),
        .I5(\spo[6]_INST_0_i_30_n_0 ),
        .O(\spo[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC941410501262236)) 
    \spo[6]_INST_0_i_80 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_80_n_0 ));
  MUXF7 \spo[6]_INST_0_i_9 
       (.I0(\spo[6]_INST_0_i_31_n_0 ),
        .I1(\spo[6]_INST_0_i_32_n_0 ),
        .O(\spo[6]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[7]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[7]_INST_0_i_4_n_0 ),
        .O(spo[8]));
  MUXF8 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[11]));
  MUXF7 \spo[7]_INST_0_i_10 
       (.I0(\spo[7]_INST_0_i_23_n_0 ),
        .I1(\spo[7]_INST_0_i_24_n_0 ),
        .O(\spo[7]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_11 
       (.I0(\spo[7]_INST_0_i_25_n_0 ),
        .I1(\spo[7]_INST_0_i_26_n_0 ),
        .O(\spo[7]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_12 
       (.I0(\spo[7]_INST_0_i_27_n_0 ),
        .I1(\spo[7]_INST_0_i_28_n_0 ),
        .O(\spo[7]_INST_0_i_12_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_13 
       (.I0(\spo[7]_INST_0_i_29_n_0 ),
        .I1(\spo[7]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_32_n_0 ),
        .O(\spo[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_14 
       (.I0(\spo[7]_INST_0_i_33_n_0 ),
        .I1(\spo[7]_INST_0_i_34_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_35_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_36_n_0 ),
        .O(\spo[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_15 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(\spo[7]_INST_0_i_38_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_39_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_40_n_0 ),
        .O(\spo[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_16 
       (.I0(\spo[31]_INST_0_i_31_n_0 ),
        .I1(\spo[7]_INST_0_i_41_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_42_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_43_n_0 ),
        .O(\spo[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_17 
       (.I0(\spo[7]_INST_0_i_44_n_0 ),
        .I1(\spo[7]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_47_n_0 ),
        .O(\spo[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_18 
       (.I0(\spo[7]_INST_0_i_48_n_0 ),
        .I1(\spo[7]_INST_0_i_30_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_31_n_0 ),
        .I4(a[7]),
        .I5(\spo[3]_INST_0_i_27_n_0 ),
        .O(\spo[7]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_19 
       (.I0(\spo[7]_INST_0_i_49_n_0 ),
        .I1(\spo[3]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_50_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_51_n_0 ),
        .O(\spo[7]_INST_0_i_19_n_0 ));
  MUXF8 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_7_n_0 ),
        .I1(\spo[7]_INST_0_i_8_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_20 
       (.I0(\spo[7]_INST_0_i_37_n_0 ),
        .I1(\spo[7]_INST_0_i_52_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_53_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_54_n_0 ),
        .O(\spo[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_21 
       (.I0(\spo[7]_INST_0_i_55_n_0 ),
        .I1(\spo[7]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_58_n_0 ),
        .O(\spo[7]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_22 
       (.I0(\spo[7]_INST_0_i_59_n_0 ),
        .I1(\spo[7]_INST_0_i_60_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_46_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_61_n_0 ),
        .O(\spo[7]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_23 
       (.I0(\spo[7]_INST_0_i_62_n_0 ),
        .I1(\spo[7]_INST_0_i_63_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_64_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_41_n_0 ),
        .O(\spo[7]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \spo[7]_INST_0_i_24 
       (.I0(a[9]),
        .I1(\spo[7]_INST_0_i_40_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_66_n_0 ),
        .O(\spo[7]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_25 
       (.I0(\spo[7]_INST_0_i_67_n_0 ),
        .I1(\spo[7]_INST_0_i_68_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_69_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_70_n_0 ),
        .O(\spo[7]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_26 
       (.I0(\spo[7]_INST_0_i_71_n_0 ),
        .I1(\spo[7]_INST_0_i_72_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_73_n_0 ),
        .O(\spo[7]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_27 
       (.I0(\spo[7]_INST_0_i_40_n_0 ),
        .I1(\spo[7]_INST_0_i_74_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_75_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_76_n_0 ),
        .O(\spo[7]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0_i_28 
       (.I0(\spo[7]_INST_0_i_77_n_0 ),
        .I1(\spo[7]_INST_0_i_51_n_0 ),
        .I2(a[10]),
        .I3(\spo[7]_INST_0_i_78_n_0 ),
        .I4(a[7]),
        .I5(\spo[7]_INST_0_i_79_n_0 ),
        .O(\spo[7]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hABBDBBDD26EE6AAA)) 
    \spo[7]_INST_0_i_29 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_29_n_0 ));
  MUXF8 \spo[7]_INST_0_i_3 
       (.I0(\spo[7]_INST_0_i_9_n_0 ),
        .I1(\spo[7]_INST_0_i_10_n_0 ),
        .O(\spo[7]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'h5040020A85155555)) 
    \spo[7]_INST_0_i_30 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FEFCFCE8)) 
    \spo[7]_INST_0_i_31 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h20A0A1A7A0A1A3B7)) 
    \spo[7]_INST_0_i_32 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[7]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2AAA00010107)) 
    \spo[7]_INST_0_i_33 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hDA5A5A585A5A5849)) 
    \spo[7]_INST_0_i_34 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCFCE83F7F7FFF)) 
    \spo[7]_INST_0_i_35 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0007001A80000000)) 
    \spo[7]_INST_0_i_36 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF0E1C387E1C3870F)) 
    \spo[7]_INST_0_i_37 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0112367EECC88000)) 
    \spo[7]_INST_0_i_38 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000880055555756)) 
    \spo[7]_INST_0_i_39 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_39_n_0 ));
  MUXF8 \spo[7]_INST_0_i_4 
       (.I0(\spo[7]_INST_0_i_11_n_0 ),
        .I1(\spo[7]_INST_0_i_12_n_0 ),
        .O(\spo[7]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E1)) 
    \spo[7]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F1E)) 
    \spo[7]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h5849410549410525)) 
    \spo[7]_INST_0_i_42 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0137137F64884888)) 
    \spo[7]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hDE5A5E585E5A5C49)) 
    \spo[7]_INST_0_i_44 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h25A5A5A7A7B6A6B6)) 
    \spo[7]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0013013780000000)) 
    \spo[7]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFF7FF77F777)) 
    \spo[7]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9BFFBFFFFFF7FF77)) 
    \spo[7]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \spo[7]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_49_n_0 ));
  MUXF7 \spo[7]_INST_0_i_5 
       (.I0(\spo[7]_INST_0_i_13_n_0 ),
        .I1(\spo[7]_INST_0_i_14_n_0 ),
        .O(\spo[7]_INST_0_i_5_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hA1FF7FFF7EAAAAAA)) 
    \spo[7]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hF8E08000071F7FFF)) 
    \spo[7]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h015F7FFFFE808000)) 
    \spo[7]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h222AAAAA55555576)) 
    \spo[7]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F8F8E9)) 
    \spo[7]_INST_0_i_54 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h4440022280155555)) 
    \spo[7]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFFFDF6AAAAAAA)) 
    \spo[7]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00130137)) 
    \spo[7]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h5F5C5E485E485C40)) 
    \spo[7]_INST_0_i_58 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hDF5F5F5E5E5C5C48)) 
    \spo[7]_INST_0_i_59 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_59_n_0 ));
  MUXF7 \spo[7]_INST_0_i_6 
       (.I0(\spo[7]_INST_0_i_15_n_0 ),
        .I1(\spo[7]_INST_0_i_16_n_0 ),
        .O(\spo[7]_INST_0_i_6_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h25A5A5A7A5A7A5B6)) 
    \spo[7]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFBFFF7F777)) 
    \spo[7]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0137137FECC8C880)) 
    \spo[7]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hECC9810113377FFF)) 
    \spo[7]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAF8FAFAF8E9)) 
    \spo[7]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hABBFBBFD66EA6AAA)) 
    \spo[7]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hF8E0800085157FFF)) 
    \spo[7]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h21A5A1A5A1A6A2B6)) 
    \spo[7]_INST_0_i_67 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hDA7A5A7858694941)) 
    \spo[7]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8E0807FFFFFFF)) 
    \spo[7]_INST_0_i_69 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_69_n_0 ));
  MUXF7 \spo[7]_INST_0_i_7 
       (.I0(\spo[7]_INST_0_i_17_n_0 ),
        .I1(\spo[7]_INST_0_i_18_n_0 ),
        .O(\spo[7]_INST_0_i_7_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h4000000808080888)) 
    \spo[7]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h6440000000000888)) 
    \spo[7]_INST_0_i_71 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hABFDFD557EAAAAAA)) 
    \spo[7]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h9F1C1E081E081C00)) 
    \spo[7]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h0F1F0F1F0F1E0E1C)) 
    \spo[7]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hF8E0800085155555)) 
    \spo[7]_INST_0_i_75 
       (.I0(a[8]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h071F7FFFF0A08000)) 
    \spo[7]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[4]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[5]),
        .I5(a[9]),
        .O(\spo[7]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0F381E701E7038F0)) 
    \spo[7]_INST_0_i_77 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hDADA5A585A5A5849)) 
    \spo[7]_INST_0_i_78 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[7]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h0707070707060614)) 
    \spo[7]_INST_0_i_79 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_79_n_0 ));
  MUXF7 \spo[7]_INST_0_i_8 
       (.I0(\spo[7]_INST_0_i_19_n_0 ),
        .I1(\spo[7]_INST_0_i_20_n_0 ),
        .O(\spo[7]_INST_0_i_8_n_0 ),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_9 
       (.I0(\spo[7]_INST_0_i_21_n_0 ),
        .I1(\spo[7]_INST_0_i_22_n_0 ),
        .O(\spo[7]_INST_0_i_9_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .I2(a[3]),
        .I3(\spo[8]_INST_0_i_3_n_0 ),
        .I4(a[2]),
        .I5(\spo[8]_INST_0_i_4_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .I2(a[11]),
        .I3(\spo[8]_INST_0_i_7_n_0 ),
        .I4(a[6]),
        .I5(\spo[8]_INST_0_i_8_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  MUXF7 \spo[8]_INST_0_i_10 
       (.I0(\spo[8]_INST_0_i_30_n_0 ),
        .I1(\spo[8]_INST_0_i_31_n_0 ),
        .O(\spo[8]_INST_0_i_10_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_11 
       (.I0(\spo[8]_INST_0_i_32_n_0 ),
        .I1(\spo[8]_INST_0_i_33_n_0 ),
        .O(\spo[8]_INST_0_i_11_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_12 
       (.I0(\spo[8]_INST_0_i_34_n_0 ),
        .I1(\spo[8]_INST_0_i_35_n_0 ),
        .O(\spo[8]_INST_0_i_12_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_13 
       (.I0(\spo[8]_INST_0_i_36_n_0 ),
        .I1(\spo[8]_INST_0_i_37_n_0 ),
        .O(\spo[8]_INST_0_i_13_n_0 ),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_14 
       (.I0(\spo[8]_INST_0_i_38_n_0 ),
        .I1(\spo[8]_INST_0_i_39_n_0 ),
        .O(\spo[8]_INST_0_i_14_n_0 ),
        .S(a[6]));
  LUT6 #(
    .INIT(64'h700F0FF00FF0F00F)) 
    \spo[8]_INST_0_i_15 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA55AA55A5AA55AB4)) 
    \spo[8]_INST_0_i_16 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \spo[8]_INST_0_i_17 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[4]),
        .O(\spo[8]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hA9C2421D421D9522)) 
    \spo[8]_INST_0_i_18 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \spo[8]_INST_0_i_19 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[8]_INST_0_i_19_n_0 ));
  MUXF8 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_9_n_0 ),
        .I1(\spo[8]_INST_0_i_10_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hA94242954395842A)) 
    \spo[8]_INST_0_i_20 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h2FD02FD250AF50AC)) 
    \spo[8]_INST_0_i_21 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \spo[8]_INST_0_i_22 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[8]_INST_0_i_22_n_0 ));
  MUXF7 \spo[8]_INST_0_i_23 
       (.I0(\spo[8]_INST_0_i_40_n_0 ),
        .I1(\spo[8]_INST_0_i_41_n_0 ),
        .O(\spo[8]_INST_0_i_23_n_0 ),
        .S(a[7]));
  MUXF7 \spo[8]_INST_0_i_24 
       (.I0(\spo[8]_INST_0_i_42_n_0 ),
        .I1(\spo[8]_INST_0_i_43_n_0 ),
        .O(\spo[8]_INST_0_i_24_n_0 ),
        .S(a[7]));
  LUT6 #(
    .INIT(64'h0184E83BE83F1700)) 
    \spo[8]_INST_0_i_25 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \spo[8]_INST_0_i_26 
       (.I0(a[9]),
        .I1(a[0]),
        .I2(a[4]),
        .O(\spo[8]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF50A0AF4F40D09E2)) 
    \spo[8]_INST_0_i_27 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_28 
       (.I0(\spo[8]_INST_0_i_44_n_0 ),
        .I1(\spo[8]_INST_0_i_45_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_46_n_0 ),
        .O(\spo[8]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_29 
       (.I0(\spo[8]_INST_0_i_47_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_48_n_0 ),
        .O(\spo[8]_INST_0_i_29_n_0 ));
  MUXF8 \spo[8]_INST_0_i_3 
       (.I0(\spo[8]_INST_0_i_11_n_0 ),
        .I1(\spo[8]_INST_0_i_12_n_0 ),
        .O(\spo[8]_INST_0_i_3_n_0 ),
        .S(a[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_30 
       (.I0(\spo[8]_INST_0_i_49_n_0 ),
        .I1(\spo[8]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_51_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_22_n_0 ),
        .O(\spo[8]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_31 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_52_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_53_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_54_n_0 ),
        .O(\spo[8]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_32 
       (.I0(\spo[8]_INST_0_i_55_n_0 ),
        .I1(\spo[8]_INST_0_i_56_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_58_n_0 ),
        .O(\spo[8]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_33 
       (.I0(\spo[8]_INST_0_i_59_n_0 ),
        .I1(\spo[8]_INST_0_i_60_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_19_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_61_n_0 ),
        .O(\spo[8]_INST_0_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_34 
       (.I0(\spo[8]_INST_0_i_62_n_0 ),
        .I1(\spo[8]_INST_0_i_50_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_64_n_0 ),
        .O(\spo[8]_INST_0_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_35 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_65_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_54_n_0 ),
        .O(\spo[8]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_36 
       (.I0(\spo[8]_INST_0_i_66_n_0 ),
        .I1(\spo[8]_INST_0_i_67_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_68_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_58_n_0 ),
        .O(\spo[8]_INST_0_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_37 
       (.I0(\spo[8]_INST_0_i_69_n_0 ),
        .I1(\spo[8]_INST_0_i_70_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_57_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_71_n_0 ),
        .O(\spo[8]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_38 
       (.I0(\spo[8]_INST_0_i_22_n_0 ),
        .I1(\spo[8]_INST_0_i_72_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_63_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_73_n_0 ),
        .O(\spo[8]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_39 
       (.I0(\spo[8]_INST_0_i_74_n_0 ),
        .I1(\spo[8]_INST_0_i_22_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_75_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_76_n_0 ),
        .O(\spo[8]_INST_0_i_39_n_0 ));
  MUXF8 \spo[8]_INST_0_i_4 
       (.I0(\spo[8]_INST_0_i_13_n_0 ),
        .I1(\spo[8]_INST_0_i_14_n_0 ),
        .O(\spo[8]_INST_0_i_4_n_0 ),
        .S(a[11]));
  LUT5 #(
    .INIT(32'hA55A4AB5)) 
    \spo[8]_INST_0_i_40 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h5495A92AA92A4255)) 
    \spo[8]_INST_0_i_41 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FF00FFFF00)) 
    \spo[8]_INST_0_i_42 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0AF50AF4F50AF40D)) 
    \spo[8]_INST_0_i_43 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h7F3000CF00FFFF00)) 
    \spo[8]_INST_0_i_44 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF20C0FF21CE3)) 
    \spo[8]_INST_0_i_45 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hEA8A557555758A0A)) 
    \spo[8]_INST_0_i_46 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h1D55EA8AEA8A5575)) 
    \spo[8]_INST_0_i_47 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA5A65B594B5DB6A2)) 
    \spo[8]_INST_0_i_48 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hA55AA55A5AA55AA4)) 
    \spo[8]_INST_0_i_49 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_5 
       (.I0(\spo[8]_INST_0_i_15_n_0 ),
        .I1(\spo[8]_INST_0_i_16_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_17_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_18_n_0 ),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5AA5B54A)) 
    \spo[8]_INST_0_i_50 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h1DC0EABF6ABFD500)) 
    \spo[8]_INST_0_i_51 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hBD424A956A95D52A)) 
    \spo[8]_INST_0_i_52 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h0FF00FF0F00FF20C)) 
    \spo[8]_INST_0_i_53 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h34CBCB34)) 
    \spo[8]_INST_0_i_54 
       (.I0(a[5]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF40B0FF0)) 
    \spo[8]_INST_0_i_55 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .O(\spo[8]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hEA3F17001500AAFF)) 
    \spo[8]_INST_0_i_56 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hA55A5AA4A45959A2)) 
    \spo[8]_INST_0_i_57 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \spo[8]_INST_0_i_58 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[8]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h70FF0F000F00F0FF)) 
    \spo[8]_INST_0_i_59 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[8]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_6 
       (.I0(\spo[8]_INST_0_i_19_n_0 ),
        .I1(\spo[8]_INST_0_i_20_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_21_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_22_n_0 ),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF00F0FF0F00D0DE3)) 
    \spo[8]_INST_0_i_60 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hA2AA55755575BA0A)) 
    \spo[8]_INST_0_i_61 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hA946429D429D952A)) 
    \spo[8]_INST_0_i_62 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \spo[8]_INST_0_i_63 
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[8]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h5AA5A55A5AA5A54B)) 
    \spo[8]_INST_0_i_64 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[4]),
        .I5(a[1]),
        .O(\spo[8]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h01C4EA3FEA3F1700)) 
    \spo[8]_INST_0_i_65 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hF40BF4080FF00CE3)) 
    \spo[8]_INST_0_i_66 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFF00CF0030FF)) 
    \spo[8]_INST_0_i_67 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hA92A4255525595AA)) 
    \spo[8]_INST_0_i_68 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \spo[8]_INST_0_i_69 
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[0]),
        .I3(a[4]),
        .O(\spo[8]_INST_0_i_69_n_0 ));
  MUXF8 \spo[8]_INST_0_i_7 
       (.I0(\spo[8]_INST_0_i_23_n_0 ),
        .I1(\spo[8]_INST_0_i_24_n_0 ),
        .O(\spo[8]_INST_0_i_7_n_0 ),
        .S(a[10]));
  LUT6 #(
    .INIT(64'hE83F1740174080FF)) 
    \spo[8]_INST_0_i_70 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hBC0CC3F3C3F33C0C)) 
    \spo[8]_INST_0_i_71 
       (.I0(a[1]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(a[5]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h5AA55AA4B54AB449)) 
    \spo[8]_INST_0_i_72 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h429D952A956A2AD5)) 
    \spo[8]_INST_0_i_73 
       (.I0(a[8]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hA5924B254B25925A)) 
    \spo[8]_INST_0_i_74 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h7F0000FF80FFFF00)) 
    \spo[8]_INST_0_i_75 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[8]),
        .I3(a[9]),
        .I4(a[0]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h52AD52ACAD52AC41)) 
    \spo[8]_INST_0_i_76 
       (.I0(a[8]),
        .I1(a[5]),
        .I2(a[9]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[8]_INST_0_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0_i_8 
       (.I0(\spo[8]_INST_0_i_25_n_0 ),
        .I1(\spo[8]_INST_0_i_26_n_0 ),
        .I2(a[10]),
        .I3(\spo[8]_INST_0_i_15_n_0 ),
        .I4(a[7]),
        .I5(\spo[8]_INST_0_i_27_n_0 ),
        .O(\spo[8]_INST_0_i_8_n_0 ));
  MUXF7 \spo[8]_INST_0_i_9 
       (.I0(\spo[8]_INST_0_i_28_n_0 ),
        .I1(\spo[8]_INST_0_i_29_n_0 ),
        .O(\spo[8]_INST_0_i_9_n_0 ),
        .S(a[6]));
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
