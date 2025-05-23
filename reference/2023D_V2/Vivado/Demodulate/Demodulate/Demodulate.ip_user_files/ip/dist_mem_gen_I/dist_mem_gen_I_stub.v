// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Aug  2 21:56:59 2023
// Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dist_mem_gen_I -prefix
//               dist_mem_gen_I_ dist_mem_gen_I_stub.v
// Design      : dist_mem_gen_I
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module dist_mem_gen_I(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],spo[9:0]" */;
  input [11:0]a;
  output [9:0]spo;
endmodule
