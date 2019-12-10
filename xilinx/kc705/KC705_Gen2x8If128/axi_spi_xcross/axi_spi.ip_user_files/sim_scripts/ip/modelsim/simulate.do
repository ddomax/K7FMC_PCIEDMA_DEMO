onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.PCIeGen2x8If128 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {PCIeGen2x8If128.udo}

run -all

quit -force
