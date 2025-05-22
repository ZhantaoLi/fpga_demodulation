vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/processing_system7_vip_v1_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_28
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_26

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 activehdl/processing_system7_vip_v1_0_14
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 activehdl/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_2/sim/design_1_axi_gpio_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/sim/bd_36cd.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/bd_0/ip/ip_0/sim/bd_36cd_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_1/sim/design_1_system_ila_0_1.v" \
"../../../bd/design_1/ip/design_1_D_trig_0_0/sim/design_1_D_trig_0_0.v" \
"../../../bd/design_1/ip/design_1_D_trig_0_1/sim/design_1_D_trig_0_1.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_0/bd_0/sim/bd_ac61.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_0/bd_0/ip/ip_0/sim/bd_ac61_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_0/sim/design_1_system_ila_FM_0.v" \
"../../../bd/design_1/ip/design_1_DAC8830_WR_0_0/sim/design_1_DAC8830_WR_0_0.v" \
"../../../bd/design_1/ip/design_1_DAC8830_spi_0_0/sim/design_1_DAC8830_spi_0_0.v" \
"../../../bd/design_1/ip/design_1_DAC8830_WR_0_1/sim/design_1_DAC8830_WR_0_1.v" \
"../../../bd/design_1/ip/design_1_DAC8830_spi_0_1/sim/design_1_DAC8830_spi_0_1.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_2/bd_0/sim/bd_6de0.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_2/bd_0/ip/ip_0/sim/bd_6de0_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_FM_2/sim/design_1_system_ila_FM_2.v" \
"../../../bd/design_1/ip/design_1_MOV_VPP_TOP_0_0/sim/design_1_MOV_VPP_TOP_0_0.v" \
"../../../bd/design_1/ip/design_1_MOV_VPP_TOP_1_0/sim/design_1_MOV_VPP_TOP_1_0.v" \
"../../../bd/design_1/ip/design_1_D_trig_0_2/sim/design_1_D_trig_0_2.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_0/bd_0/sim/bd_a0b7.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_0/bd_0/ip/ip_0/sim/bd_a0b7_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_0/sim/design_1_system_ila_VPP_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_3/sim/design_1_axi_gpio_0_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_AM_0/bd_0/sim/bd_d860.v" \
"../../../bd/design_1/ip/design_1_system_ila_AM_0/bd_0/ip/ip_0/sim/bd_d860_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_AM_0/sim/design_1_system_ila_AM_0.v" \
"../../../bd/design_1/ip/design_1_FREQ_counter_0_0/sim/design_1_FREQ_counter_0_0.v" \
"../../../bd/design_1/ip/design_1_FREQ_counter_0_1/sim/design_1_FREQ_counter_0_1.v" \
"../../../bd/design_1/ip/design_1_clock_1M_0_0/sim/design_1_clock_1M_0_0.v" \
"../../../bd/design_1/ip/design_1_LTC2248_0_0/sim/design_1_LTC2248_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_3_0/sim/design_1_axi_gpio_3_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_3_1/sim/design_1_axi_gpio_3_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_5_0/sim/design_1_axi_gpio_5_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_FREQ_counter_FM_0/sim/design_1_FREQ_counter_FM_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_6_0/sim/design_1_axi_gpio_6_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_PSK_OUT_0_0/sim/design_1_PSK_OUT_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_7_0/sim/design_1_axi_gpio_7_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_DATA_SELE_0_0/sim/design_1_DATA_SELE_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_1/bd_0/sim/bd_6076.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_1/bd_0/ip/ip_0/sim/bd_6076_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_VPP_1/sim/design_1_system_ila_VPP_1.v" \
"../../../bd/design_1/ip/design_1_AM_DM_0_0/sim/design_1_AM_DM_0_0.v" \
"../../../bd/design_1/ip/design_1_MOV_RMS_0_1/sim/design_1_MOV_RMS_0_1.v" \
"../../../bd/design_1/ip/design_1_MOV_RMS_AM_0/sim/design_1_MOV_RMS_AM_0.v" \
"../../../bd/design_1/ip/design_1_MOV_RMS_FM_1/sim/design_1_MOV_RMS_FM_1.v" \
"../../../bd/design_1/ip/design_1_FM_DM_0_0/sim/design_1_FM_DM_0_0.v" \
"../../../bd/design_1/ip/design_1_PSK_DM_0_0/sim/design_1_PSK_DM_0_0.v" \
"../../../bd/design_1/ip/design_1_AD5664_WR_0_0/sim/design_1_AD5664_WR_0_0.v" \
"../../../bd/design_1/ip/design_1_AD5664_spi_0_0/sim/design_1_AD5664_spi_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_SELE_0/bd_0/sim/bd_53e6.v" \
"../../../bd/design_1/ip/design_1_system_ila_SELE_0/bd_0/ip/ip_0/sim/bd_53e6_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_SELE_0/sim/design_1_system_ila_SELE_0.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../test2023.gen/sources_1/bd/design_1/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../test2023.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+D:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

