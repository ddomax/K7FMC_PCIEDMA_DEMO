onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+PCIeGen2x8If128 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.PCIeGen2x8If128 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {PCIeGen2x8If128.udo}

run -all

endsim

quit -force
