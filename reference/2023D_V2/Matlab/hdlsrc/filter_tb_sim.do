onbreak resume
onerror resume
vsim -voptargs=+acc work.filter_tb
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/clk
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/clk_enable
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/reset
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/filter_in
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/filter_out
add wave sim:/filter_tb/filter_out_ref
add wave sim:/filter_tb/u_CIC_decimation_20_fs36MHz/ce_out
run -all
