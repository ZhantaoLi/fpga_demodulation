# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 4
set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.cache/wt [current_project]
set_property parent.project_path C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/AM_I.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/AM_Q.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/FM_I.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/FM_Q.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/calibrate_I.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/calibrate_Q.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/2FSK_I.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/2FSK_Q.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/2PSK_I.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/2PSK_Q.coe
add_files C:/Users/86183/Desktop/dianSai/2023_D/Matlab/COE/phase.coe
read_verilog -library xil_defaultlib {
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/two_channel_ADC.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/filter/CIC_decimation_10_fs6MHz.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/new/TOP_new.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/filter/CIC_decimation_20_fs36MHz.v
  C:/Users/86183/Desktop/dianSai/2019_G/Vivado/FM_audio_demodulate/src/two_channel_dac.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Phase_dev_cal.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/demod/Demodulate.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/demod/Cordic.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/demod/IQ_generate.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/filter/LPF_60k_fs1_8MHz.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/filter/LPF_20kHz_fs1_8MHz.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/TOP_FSM.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Max_Min.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Get_Ma.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/FSM_Max_Min.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/Judge_and_calculate.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/SquareJudge.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Signal_discrim.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/DAC_selector.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/Message_generator.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Fre_Judge.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/ASK_decision.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/AGC.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/cal/Find_Max_Lim.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/AM_DC_Isolator.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/Communicate.v
  C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/src/PSK_Judge.v
}
read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_gen_Q/dist_mem_gen_Q.xci
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_gen_Q/dist_mem_gen_Q_ooc.xdc]

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_0.xci
set_property used_in_synthesis false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc]

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_gen_I/dist_mem_gen_I.xci
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_gen_I/dist_mem_gen_I_ooc.xdc]

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/mult_gen_0/mult_gen_0.xci

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_ph/dist_mem_ph.xci
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_ph/dist_mem_ph_ooc.xdc]

read_ip -quiet C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_1/ila_1.xci
set_property used_in_synthesis false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/ila_1/ila_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/constraints/D2023.xdc
set_property used_in_implementation false [get_files C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/constraints/D2023.xdc]

read_xdc C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/constrs_1/new/TOP_new.xdc
set_property used_in_implementation false [get_files C:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/constrs_1/new/TOP_new.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top TOP_new -part xc7a35tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOP_new.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TOP_new_utilization_synth.rpt -pb TOP_new_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
