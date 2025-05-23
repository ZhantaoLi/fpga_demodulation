## ================================================================================
## Legal Notice: Copyright (C) 1991-2006 Altera Corporation
## Any megafunction design, and related net list (encrypted or decrypted),
## support information, device programming or simulation file, and any other
## associated documentation or information provided by Altera or a partner
## under Altera's Megafunction Partnership Program may be used only to
## program PLD devices (but not masked PLD devices) from Altera.  Any other
## use of such megafunction design, net list, support information, device
## programming or simulation file, or any other related documentation or
## information is prohibited for any other purpose, including, but not
## limited to modification, reverse engineering, de-compiling, or use with
## any other silicon devices, unless such use is explicitly licensed under
## a separate agreement with Altera or a megafunction partner.  Title to
## the intellectual property, including patents, copyrights, trademarks,
## trade secrets, or maskworks, embodied in any such megafunction design,
## net list, support information, device programming or simulation file, or
## any other related documentation or information provided by Altera or a
## megafunction partner, remains with Altera, the megafunction partner, or
## their respective licensors.  No other licenses, including any licenses
## needed under any third party's intellectual property, are provided herein.
## ================================================================================
##

## Generated by: FIR Compiler 13.1
## Generated on: 2025-4-26 17:02:15
  
#START MEGAWIZARD INSERT VARIABLES
set megacore_wrapper_dir {D:/study_learning/Verilog/quartus13_prj/}
set megacore_lib_dir {d:/altera/13.1/ip/altera/fir_compiler/lib/ip_toolbench/../}
set top_entity fir_hpf
set timing_resolution "1ps"
set core_version "13.1"
set quartus_root_dir {d:/altera/13.1/quartus/}
set device_family "Cyclone IV E"  
set new_flow false
set is_reg_test false
set fir_arch "Distributed Arithmetic : Fully Parallel Filter"
set tag "_fir_131"
###
# to perform gate-level simulation,
# you need to change sim_type from "simgen" to "gate_level"   
set sim_type "simgen"  
###  
#END MEGAWIZARD INSERT VARIABLES
## 


global env
#if ![info exists env(QUARTUS_ROOTDIR)] {
#    puts "Expected Enviroment variable QUARTUS_ROOTDIR pointing to a valid Quartus installation"
#    exit
#}
set q_sim_lib [file join $quartus_root_dir eda sim_lib]
#set q_sim_lib [file join $env(QUARTUS_ROOTDIR) eda sim_lib]
# Close existing ModelSim simulation 
quit -sim
# Set simgen model as the default simulation model

if [file exists "auk_do_coverage.tcl"] {
    set do_coverage 1
} else {
    set do_coverage 0
}
if {[info exists megacore_wrapper_dir]} {
    set vsim_working_dir $megacore_wrapper_dir
} else {
    puts "Error: megacore_wrapper_dir variable is not defined and not development mode identified: Exiting"
    exit
}
cd $vsim_working_dir

if [file exists "auk_megatest_vars.tcl"] {
    ## I will load the sim_type  "rtl" , "simgen" or "gate_level" through file auk_megatest_vars.tcl
    ## also there will be a variable set family_atom  with the family device  
    source auk_megatest_vars.tcl
    if {![info exists sim_type]} {
	puts "wrong contents of auk_megatest_vars.tcl"
    } 
    if {[string match "rtl" $sim_type]} {set development 1} else { set development 0} 

    onerror {quit -f}
    onbreak {resume}
} else {
    set development 0
    #set sim_type "simgen"
    ## onbreak resume is done to avoid getting the test case stuck during regtesting
    onbreak {resume}
    onerror {quit -f}
}
if {[string match "true" $is_reg_test]} {
    set testbench_name "tb_regtest" 
} else {
    set testbench_name "tb_${top_entity}"
}

if {[file exists ${top_entity}.vho] && [string match "simgen" $sim_type]} {
    puts "Info: IPFS file ${top_entity}.vho found"
    set language_ext "vho"
    set use_ipfs 1
    set flow "simgen"
} elseif {[file exists ${top_entity}.vo] && [string match "simgen" $sim_type]} {
    puts "Info: IPFS file ${top_entity}.vo found"
    set language_ext "vo"
    set use_ipfs 1
    set flow "simgen"
} elseif {[file exists [file join simulation modelsim ${top_entity}.vo]] && [string match "gate_level" $sim_type]} {
    puts "Info: Gate Level ${top_entity}.vo found"
    set language_ext "vo"
    set use_ipfs 1
    set flow "gate_level";  # 
} elseif {[file exists [file join simulation modelsim ${top_entity}.vho]] && [string match "gate_level" $sim_type]} {
    puts "Info: Gate Level ${top_entity}.vho found"
    set language_ext "vho"
    set use_ipfs 1
    set flow "gate_level";  #
} else {
    puts "Info: No IPFS nor Gate Level model found. Simulating with RTL pre-compiled development libraries"
    set use_ipfs 0
    set flow "rtl"
}

if {[file exist fir_work]} 	{
    catch {
	eval "file delete -force -- fir_work"
    } dummy
    puts "file delete command returned $dummy\n"
}
if {[file exist fir_work] ==0} 	{
    vlib fir_work
    vmap fir_work fir_work
}

if {$development == 1} {
    ## I need an environment variable here for the root of the projects
    #set base_dir [file join $env(DSP_CORES_LOC) dsp_cores compiled_libs]
    set base_dir [file join $env(DSP_CORES_LOC) compiled_libs]
    set fir_base_dir [file join $env(DSP_CORES_LOC) FIR src rtl]
    set fir_unq_dir [file join $env(DSP_CORES_LOC) FIR src rtl_lib]
    set lib_base_dir [file join $env(DSP_CORES_LOC) lib packages]
    if {![file exists $base_dir]} {
	puts "base_dir not located, Is the environment variable DSP_CORES_LOC defined and properly set?"
    }
    # map all the libraries available in the compiled form
    set current_dir [pwd]
    cd $base_dir
    set lib_list [glob *]
    cd $current_dir
    foreach i $lib_list {
	vmap $i [file join $base_dir $i]
    }

    if {[string match "true" $new_flow]} {
	vmap work fir_work
    }
    
    ## here now there are vhd files as well as verilog files!!
    catch {glob "${top_entity}*.v"} return_msg
    set gen_files_verilog $return_msg
    if {![regexp "no files matched glob" $return_msg]} {
	foreach i $gen_files_verilog {
	    vlog  -work fir_work $i
	}
    } else {
	puts "no verilog files to compile"
    }
    ## all vhdl files except the test bench
    set gen_files_vhdl [glob "*${top_entity}*.vhd"]
    foreach i $gen_files_vhdl {
	if {![string match "tb_${top_entity}.vhd" $i]} {
	    vcom  -93 -work fir_work $i }
    }
    #for the test bench;
    vcom -93 -work fir_work "${testbench_name}.vhd"

#the below should already be covered by the above code
    if {[file exist "${top_entity}.vhd"]} {
	set hdl_extension ".vhd"
#	vcom  -93 -work fir_work ${top_entity}.vhd
    } elseif {[file exist "${top_entity}.v"]} {
	set hdl_extension ".v"
#	vlog  -work fir_work ${top_entity}.v
    }
} else {
    set quartus_libs [list \
			  altera_mf {altera_mf_components altera_mf} {altera_mf} 		"$q_sim_lib" 	\
			  lpm       {220pack 220model}	{220model}	"$q_sim_lib" 	\
			  sgate	  {sgate_pack sgate} {sgate} 		"$q_sim_lib" 	]

    if {([vsimAuth] != "ALTERA")} {
	foreach {lib file_vhdl_list file_verilog_list src_files_loc} $quartus_libs {
	    vlib $lib
	    vmap $lib $lib
	    if {[string match "vho" $language_ext]} {
		foreach file_item $file_vhdl_list {
		    # in here I should use a device family parameter to just compile the required library only (optional)
		    catch {vcom -explicit -93 -work $lib [file join $src_files_loc ${file_item}.vhd]} err_msg
		    if {![string match "" $err_msg]} {return $err_msg}
		}
	    } elseif {[string match "vo" $language_ext]} {
		foreach file_item $file_verilog_list {
		    catch {vlog -work $lib [file join $src_files_loc ${file_item}.v]} err_msg
		    if {![string match "" $err_msg]} {return $err_msg}
		}
	    }
	}
	if {[string match $flow "gate_level"] } { 
	    regsub {[ ]+} $device_family "" temp_device_family
	    regsub {[ ]+} $temp_device_family "" temp_device_family2
	    set device_lib_name [string tolower $temp_device_family2]
	    vlib $device_lib_name
	    vmap $device_lib_name
	    vlib altera
	    vmap altera
	    vcom -93 -work altera [file join $q_sim_lib altera_primitives_components.vhd]
	    vcom -93 -work altera [file join $q_sim_lib altera_primitives.vhd]
	    if {[string match $language_ext "vho"]} {
		vcom -93 -work $device_lib_name [file join $q_sim_lib ${device_lib_name}_atoms.vhd]
		vcom -93 -work $device_lib_name [file join $q_sim_lib ${device_lib_name}_components.vhd] }
	    if {[string match $language_ext "vo"]}  {
		vlog -work $device_lib_name [file join $q_sim_lib ${device_lib_name}_atoms.v]
		vcom -93 -work $device_lib_name [file join $q_sim_lib ${device_lib_name}_components.vhd] }
	    #if the above automatic mapping doesn't work, modify the below code to match your device name.
	    #if {[string match $device_family "Stratix III"] } {
		#vlib stratixiii
		#vmap stratixiii stratixiii
		#vcom -93 -work stratixiii  [file join $q_sim_lib stratixiii_atoms.vhd]
		#vcom -93 -work stratixiii  [file join $q_sim_lib stratixiii_components.vhd]
	    #}
	}
    }

    if {[string match $flow "simgen"] } {
	if {[string match $language_ext "vho"]} {vcom -93 -work fir_work [file join $megacore_wrapper_dir ${top_entity}.vho] }
	if {[string match $language_ext "vo"]}  {vlog -work fir_work [file join $megacore_wrapper_dir ${top_entity}.vo] }
    }
       if {[string match $flow "gate_level"] } {
	if {[string match $language_ext "vho"]} {vcom -93 -work fir_work [file join $megacore_wrapper_dir simulation modelsim ${top_entity}.vho] }
	if {[string match $language_ext "vo"]}  {vlog -work fir_work [file join $megacore_wrapper_dir simulation modelsim ${top_entity}.vo] }
    }


    #compile testbench 
    if {[string match $is_reg_test "true"]} {
	vlib auk_dspip_lib
	vmap auk_dspip_lib [file join $env(DSP_CORES_LOC) compiled_libs auk_dspip_lib]
    }
    vcom -93  -work fir_work ${testbench_name}.vhd 
}




#prepare simulation command
set vsim_cmd vsim

if {[string match $flow "simgen"]} {
    lappend vsim_cmd "-L" "Sgate" "-L" "altera_mf" "-L" "lpm" "-L" "fir_work"
} 
if {[string match $flow "rtl"] && [string match $new_flow "false"]} {
    lappend vsim_cmd "-L" "fir_verilog_lib" "-L" "altera_mf_ver" "-L" "lpm_ver"
}
if {[string match $flow "rtl"] && [string match $new_flow "true"]} {
    lappend vsim_cmd "-L" "altera_mf" "-L" "lpm" "-L" "auk_dspip_lib" "-L" "auk_dspip_fir_lib" 
}
if {[string match $flow "gate_level"]} {
    lappend vsim_cmd "-L" "Sgate" "-L" "altera_mf" "-L" "lpm" "-L" "$device_lib_name" "-L" "fir_work"
    if {[string match $language_ext "vho"]} {
	if {[file exists [file join . simulation modelsim ${top_entity}_vhd.sdo]]} {
	    lappend vsim_cmd "-sdftyp" "/tb_${top_entity}/DUT=./simulation/modelsim/${top_entity}_vhd.sdo"}
    }
    if {[string match $language_ext "vo"]} {
	if {[file exists [file join . simulation modelsim ${top_entity}_v.sdo]]} {
	    lappend vsim_cmd "-sdftyp" "/tb_${top_entity}/DUT=./simulation/modelsim/${top_entity}_v.sdo"}
    }
} 
lappend vsim_cmd "FIR_work.tb_${top_entity}" "-t" "$timing_resolution"

catch {	eval $vsim_cmd } vsim_msg
puts $vsim_msg

# waveform formation
##  I would like to load this waveforms only in interactive mode
## in testing mode they shouldn't be loaded.   TBD
if {[file exists "wave.do"]} {
    do wave.do
} else {
    add wave sim:/tb_${top_entity}/*
    if {[string match $is_reg_test "true"]} {
	add wave -noupdate -divider {tb_sink}
	add wave sim:/tb_${top_entity}/sink_model/*
	add wave -noupdate -divider {tb_source}
	add wave sim:/tb_${top_entity}/source_model/* 
    }
    if {[string match $flow "rtl"]} {
	add wave -noupdate -divider {top_wrapper}
	add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/*
	add wave -noupdate -divider {top_wrapper_sink}
	add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/sink/*
	add wave -noupdate -divider {top_wrapper_source}
	add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/source/*
	add wave -noupdate -divider {top_wrapper_intf_ctrl}
	add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/intf_ctrl/*
	add wave -noupdate -divider {fir_core}
	add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/fircore/*
	if {[string match "true" $new_flow]} {
	    add wave -noupdate -divider {fir_core_inst}
	    add wave sim:/tb_${top_entity}/dut/${top_entity}_ast_inst/fircore/fir_core_inst/*
	}
    }
}

#start simulation silently
set StdArithNoWarnings 1
run 0 ns
set StdArithNoWarnings 0
catch {run -all} run_msg
puts $run_msg

if [file exists "auk_finish_msim_run.tcl"] {source auk_finish_msim_run.tcl}
