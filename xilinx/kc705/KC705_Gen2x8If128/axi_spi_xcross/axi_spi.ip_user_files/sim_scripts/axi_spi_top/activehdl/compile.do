vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_quad_spi_v3_2_15
vlib activehdl/jtag_axi
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/jesd204_v7_2_2
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_16
vlib activehdl/axi_data_fifo_v2_1_15
vlib activehdl/axi_crossbar_v2_1_17
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/lib_bmg_v1_0_10
vlib activehdl/axi_traffic_gen_v3_0_2
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_dsp48_multadd_v3_0_5
vlib activehdl/dds_compiler_v6_0_16
vlib activehdl/axi_protocol_converter_v2_1_16

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_15 activehdl/axi_quad_spi_v3_2_15
vmap jtag_axi activehdl/jtag_axi
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap jesd204_v7_2_2 activehdl/jesd204_v7_2_2
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_16 activehdl/axi_register_slice_v2_1_16
vmap axi_data_fifo_v2_1_15 activehdl/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 activehdl/axi_crossbar_v2_1_17
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 activehdl/lib_bmg_v1_0_10
vmap axi_traffic_gen_v3_0_2 activehdl/axi_traffic_gen_v3_0_2
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 activehdl/xbip_dsp48_multadd_v3_0_5
vmap dds_compiler_v6_0_16 activehdl/dds_compiler_v6_0_16
vmap axi_protocol_converter_v2_1_16 activehdl/axi_protocol_converter_v2_1_16

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_15 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d655/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_spi_top/ip/axi_spi_top_axi_quad_spi_0_0/sim/axi_spi_top_axi_quad_spi_0_0.vhd" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1cc2/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jtag_axi_0_0/sim/axi_spi_top_jtag_axi_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_clk_wiz_0_0/axi_spi_top_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_clk_wiz_0_0/axi_spi_top_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_spi_top/ip/axi_spi_top_rst_clk_wiz_0_100M_0/sim/axi_spi_top_rst_clk_wiz_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_Tgate_0_0/sim/axi_spi_top_Tgate_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_Tgate_0_1/sim/axi_spi_top_Tgate_0_1.v" \
"../../../bd/axi_spi_top/sim/axi_spi_top.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_Tgate_2_0/sim/axi_spi_top_Tgate_2_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_Tgate_width5_0_0/sim/axi_spi_top_Tgate_width5_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt/example_design/axi_spi_top_jesd204_0_0_phy_gt_tx_startup_fsm.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt/example_design/axi_spi_top_jesd204_0_0_phy_gt_rx_startup_fsm.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt_init.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt_cpll_railing.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt_gt.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt_multi_gt.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt/example_design/axi_spi_top_jesd204_0_0_phy_gt_sync_block.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/ip_0/axi_spi_top_jesd204_0_0_phy_gt.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy_block.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy_sync_block.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy_support.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy_gt_common_wrapper.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy_gtwizard_0_common.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/ip_0/synth/axi_spi_top_jesd204_0_0_phy.v" \

vlog -work jesd204_v7_2_2  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1380/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_clocking.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_support.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_block.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_ipif/axi_spi_top_jesd204_0_0_address_decoder.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_register_decode.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_ipif/axi_spi_top_jesd204_0_0_axi_lite_ipif.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_ipif/axi_spi_top_jesd204_0_0_counter_f.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_ipif/axi_spi_top_jesd204_0_0_pselect_f.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_ipif/axi_spi_top_jesd204_0_0_slave_attachment.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_count_err.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0_reset_block.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_jesd204_0_0/synth/axi_spi_top_jesd204_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_15  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_xbar_0/sim/axi_spi_top_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_spi_top/ip/axi_spi_top_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/axi_spi_top/ip/axi_spi_top_util_ds_buf_0_0/sim/axi_spi_top_util_ds_buf_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_inv_0_0/sim/axi_spi_top_inv_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_data_rearrange_0_0/sim/axi_spi_top_data_rearrange_0_0.v" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_2 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_2  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_axi_traffic_gen_0_0/sim/axi_spi_top_axi_traffic_gen_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_init_delay_0_0/sim/axi_spi_top_init_delay_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_axi_traffic_gen_0_1/sim/axi_spi_top_axi_traffic_gen_0_1.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_axi_traffic_gen_0_2/sim/axi_spi_top_axi_traffic_gen_0_2.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_init_delay_0_1/sim/axi_spi_top_init_delay_0_1.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_data_comb_0_0/sim/axi_spi_top_data_comb_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_uart_ila_top_0_0/src/uart_ila_top_fifo_generator_0_0/sim/uart_ila_top_fifo_generator_0_0.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/uart_ila_top_uart_0_0.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/uart_ila_top_fsm_ctr_0_0.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/baud_rate_gen.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/receiver.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/transmitter.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/uart.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/uart_ila_top.v" \
"../../../bd/axi_spi_top/ipshared/cf5f/sim/fsm_ctr.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_uart_ila_top_0_0/sim/axi_spi_top_uart_ila_top_0_0.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_16 -93 \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a2f9/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_spi_top/ip/axi_spi_top_dds_compiler_0_0/sim/axi_spi_top_dds_compiler_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_vio_0_0/sim/axi_spi_top_vio_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_err_detector_0_0/sim/axi_spi_top_err_detector_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_BridgeToPCIE_0_0/sim/axi_spi_top_BridgeToPCIE_0_0.v" \
"../../../bd/axi_spi_top/ip/axi_spi_top_fifo_generator_0_0/sim/axi_spi_top_fifo_generator_0_0.v" \

vlog -work axi_protocol_converter_v2_1_16  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/4903" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/src/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6180/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a08d/hdl/verilog" "+incdir+../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/2457/hdl" \
"../../../bd/axi_spi_top/ip/axi_spi_top_auto_pc_0/sim/axi_spi_top_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

