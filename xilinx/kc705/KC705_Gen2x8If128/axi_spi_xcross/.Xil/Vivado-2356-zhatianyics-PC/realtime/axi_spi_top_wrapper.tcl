# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7k325tffg900-2

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2875/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2c14/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ip/axi_spi_top_axi_quad_spi_0_0/netlist
  } {
      C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include {
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2875/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2c14/hdl/verilog
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl
    d:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/ip/axi_spi_top_axi_quad_spi_0_0/netlist
  } {
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_axi_quad_spi_0_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_jtag_axi_0_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_clk_wiz_0_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_rst_clk_wiz_0_100M_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_Tgate_0_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_Tgate_0_1_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_system_ila_0_1_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_Tgate_2_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_Tgate_width5_0_0_stub.v
      D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/realtime/axi_spi_top_auto_pc_0_stub.v
      D:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/new/Tgate.v
      D:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/new/Tgate_width5.v
      D:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/synth/axi_spi_top.v
      D:/Vivado2018_wrk/axi_spi/axi_spi.srcs/sources_1/bd/axi_spi_top/hdl/axi_spi_top_wrapper.v
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top axi_spi_top_wrapper
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "D:/Vivado2018_wrk/axi_spi/.Xil/Vivado-2356-zhatianyics-PC/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
