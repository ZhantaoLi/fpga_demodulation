// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_ADC_36MHz, clk_ILA_7_2MHz, reset, locked, 
  clk_sys);
  output clk_ADC_36MHz;
  output clk_ILA_7_2MHz;
  input reset;
  output locked;
  input clk_sys;
endmodule
