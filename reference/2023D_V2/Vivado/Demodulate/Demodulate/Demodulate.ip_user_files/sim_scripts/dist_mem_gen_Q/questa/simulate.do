onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dist_mem_gen_Q_opt

do {wave.do}

view wave
view structure
view signals

do {dist_mem_gen_Q.udo}

run -all

quit -force
