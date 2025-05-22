// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Aug  3 00:57:36 2023
// Host        : DESKTOP-PPMNIMR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Project/ZYNQ/7035/test2023/test2023.gen/sources_1/bd/design_1/ip/design_1_system_ila_FM_1/design_1_system_ila_FM_1_stub.v
// Design      : design_1_system_ila_FM_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_6ca0,Vivado 2022.1" *)
module design_1_system_ila_FM_1(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0]" */;
  input clk;
  input [15:0]probe0;
endmodule
