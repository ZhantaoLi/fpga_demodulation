onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dist_mem_ph_opt

do {wave.do}

view wave
view structure
view signals

do {dist_mem_ph.udo}

run -all

quit -force
