# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Project\ZYNQ\7035\test2023\workspace\pstop_system\_ide\scripts\systemdebugger_pstop_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Project\ZYNQ\7035\test2023\workspace\pstop_system\_ide\scripts\systemdebugger_pstop_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299099808" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299099808-23732093-0"}
fpga -file D:/Project/ZYNQ/7035/test2023/workspace/pstop/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Project/ZYNQ/7035/test2023/workspace/DS2023/export/DS2023/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/Project/ZYNQ/7035/test2023/workspace/pstop/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/Project/ZYNQ/7035/test2023/workspace/pstop/Release/pstop.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
