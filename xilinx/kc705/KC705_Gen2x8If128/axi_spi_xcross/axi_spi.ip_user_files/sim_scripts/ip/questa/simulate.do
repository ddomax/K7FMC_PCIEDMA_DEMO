onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PCIeGen2x8If128_opt

do {wave.do}

view wave
view structure
view signals

do {PCIeGen2x8If128.udo}

run -all

quit -force
