// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Aug  5 10:06:34 2023
// Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[41:0],probe1[13:0],probe2[13:0],probe3[13:0],probe4[13:0],probe5[13:0],probe6[13:0],probe7[13:0],probe8[2:0]" */;
  input clk;
  input [41:0]probe0;
  input [13:0]probe1;
  input [13:0]probe2;
  input [13:0]probe3;
  input [13:0]probe4;
  input [13:0]probe5;
  input [13:0]probe6;
  input [13:0]probe7;
  input [2:0]probe8;
endmodule
