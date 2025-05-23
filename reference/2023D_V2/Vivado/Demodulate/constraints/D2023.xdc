create_clock -period 20.000 -name sys_clk_50MHz [get_ports sys_clk_50MHz]
# 用这种办法可以在一个语句里同时设置引脚标准和引脚位置
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R4} [get_ports sys_clk_50MHz]

set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN U2} [get_ports sys_rst_n]

#ad_data1
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E19} [get_ports {ad1_data[0]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G22} [get_ports {ad1_data[2]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J22} [get_ports {ad1_data[4]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K22} [get_ports {ad1_data[6]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M21} [get_ports {ad1_data[8]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N22} [get_ports ad1_otr]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E17} [get_ports ad1_clk]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D19} [get_ports {ad1_data[1]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G21} [get_ports {ad1_data[3]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H22} [get_ports {ad1_data[5]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN K21} [get_ports {ad1_data[7]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L21} [get_ports {ad1_data[9]}]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M22} [get_ports ad1_oe_n]

# 开始检测按键
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports meas_start_key_n]

# da1
set_property PACKAGE_PIN V9 [get_ports {da1_data[0]}]
set_property PACKAGE_PIN W9 [get_ports {da1_data[1]}]
set_property PACKAGE_PIN Y9 [get_ports {da1_data[2]}]
set_property PACKAGE_PIN V8 [get_ports {da1_data[3]}]
set_property PACKAGE_PIN U7 [get_ports {da1_data[4]}]
set_property PACKAGE_PIN AB7 [get_ports {da1_data[5]}]
set_property PACKAGE_PIN V7 [get_ports {da1_data[6]}]
set_property PACKAGE_PIN AB6 [get_ports {da1_data[7]}]
set_property PACKAGE_PIN AB8 [get_ports {da1_data[8]}]
set_property PACKAGE_PIN AA8 [get_ports {da1_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da1_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports da1_clk]
set_property PACKAGE_PIN Y8 [get_ports da1_clk]
# da2
set_property PACKAGE_PIN U18 [get_ports {da2_data[0]}]
set_property PACKAGE_PIN U17 [get_ports {da2_data[1]}]
set_property PACKAGE_PIN V19 [get_ports {da2_data[2]}]
set_property PACKAGE_PIN T18 [get_ports {da2_data[3]}]
set_property PACKAGE_PIN V20 [get_ports {da2_data[4]}]
set_property PACKAGE_PIN R18 [get_ports {da2_data[5]}]
set_property PACKAGE_PIN N17 [get_ports {da2_data[6]}]
set_property PACKAGE_PIN P17 [get_ports {da2_data[7]}]
set_property PACKAGE_PIN R16 [get_ports {da2_data[8]}]
set_property PACKAGE_PIN P15 [get_ports {da2_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {da2_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports da2_clk]
set_property PACKAGE_PIN R14 [get_ports da2_clk]

# message
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F15} [get_ports msg_out]

# LED
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN R2} [get_ports LED]

#ad_data2
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F21} [get_ports {ad2_data[0]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN L18} [get_ports {ad2_data[2]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN G20} [get_ports {ad2_data[4]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J21} [get_ports {ad2_data[6]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M20} [get_ports {ad2_data[8]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N19} [get_ports ad2_otr]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN T20} [get_ports ad2_clk]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN F18} [get_ports {ad2_data[1]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN M18} [get_ports {ad2_data[3]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H20} [get_ports {ad2_data[5]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN J20} [get_ports {ad2_data[7]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N20} [get_ports {ad2_data[9]}]
#set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN N18} [get_ports {ad2_oe_n}]


