// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Aug  3 19:01:34 2023
// Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_ADC_36MHz, clk_ILA_7_2MHz, reset, locked, 
  clk_sys)
/* synthesis syn_black_box black_box_pad_pin="clk_ADC_36MHz,clk_ILA_7_2MHz,reset,locked,clk_sys" */;
  output clk_ADC_36MHz;
  output clk_ILA_7_2MHz;
  input reset;
  output locked;
  input clk_sys;
endmodule
