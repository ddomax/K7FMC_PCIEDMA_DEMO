onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PCIEBridge_opt

do {wave.do}

view wave
view structure
view signals

do {PCIEBridge.udo}

run -all

quit -force
