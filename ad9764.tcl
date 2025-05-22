# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
# File: D:\study_learning\Verilog\lyh_quartus\AD9226_spi\ad9226.tcl
# Generated on: Fri Apr 11 14:21:14 2025

package require ::quartus::project

set_location_assignment PIN_T2 -to clk

set_location_assignment PIN_F2 -to ad_in[0]
set_location_assignment PIN_H1 -to ad_in[1]
set_location_assignment PIN_H2 -to ad_in[2]
set_location_assignment PIN_J1 -to ad_in[3]
set_location_assignment PIN_J2 -to ad_in[4]
set_location_assignment PIN_M1 -to ad_in[5]
set_location_assignment PIN_M2 -to ad_in[6]
set_location_assignment PIN_N1 -to ad_in[7]
set_location_assignment PIN_N2 -to ad_in[8]
set_location_assignment PIN_P1 -to ad_in[9]
set_location_assignment PIN_P2 -to ad_in[10]
set_location_assignment PIN_R1 -to ad_in[11]
set_location_assignment PIN_R2 -to ad_clk

set_location_assignment PIN_AA14 -to dac_out_data[0]
set_location_assignment PIN_AB14 -to dac_out_data[1]
set_location_assignment PIN_AA15 -to dac_out_data[2]
set_location_assignment PIN_AB15 -to dac_out_data[3]
set_location_assignment PIN_AA16 -to dac_out_data[4]
set_location_assignment PIN_AB16 -to dac_out_data[5]
set_location_assignment PIN_AA17 -to dac_out_data[6]
set_location_assignment PIN_AB17 -to dac_out_data[7]
set_location_assignment PIN_AA18 -to dac_out_data[8]
set_location_assignment PIN_AB18 -to dac_out_data[9]
set_location_assignment PIN_AA19 -to dac_out_data[10]
set_location_assignment PIN_AB19 -to dac_out_data[11]
set_location_assignment PIN_AA20 -to dac_out_data[12]
set_location_assignment PIN_AB20 -to dac_out_data[13]
set_location_assignment PIN_Y22 -to dac_clk
