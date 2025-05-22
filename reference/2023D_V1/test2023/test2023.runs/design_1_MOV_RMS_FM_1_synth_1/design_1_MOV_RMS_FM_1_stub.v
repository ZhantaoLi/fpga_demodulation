// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Aug  5 02:35:00 2023
// Host        : DESKTOP-PPMNIMR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MOV_RMS_FM_1_stub.v
// Design      : design_1_MOV_RMS_FM_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MOV_RMS,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sys_clk, sys_rst_n, clk_en, indata, RMS)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rst_n,clk_en,indata[15:0],RMS[15:0]" */;
  input sys_clk;
  input sys_rst_n;
  input clk_en;
  input [15:0]indata;
  output [15:0]RMS;
endmodule
