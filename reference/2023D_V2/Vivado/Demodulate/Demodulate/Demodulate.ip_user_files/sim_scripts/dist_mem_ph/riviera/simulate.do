onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dist_mem_ph -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dist_mem_ph xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dist_mem_ph.udo}

run -all

endsim

quit -force
