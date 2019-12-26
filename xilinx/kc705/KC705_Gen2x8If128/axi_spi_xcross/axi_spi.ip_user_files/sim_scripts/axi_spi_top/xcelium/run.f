-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_11 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_15 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d655/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_axi_quad_spi_0_0/sim/axi_spi_top_axi_quad_spi_0_0.vhd" \
-endlib
-makelib xcelium_lib/jtag_axi \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1cc2/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_jtag_axi_0_0/sim/axi_spi_top_jtag_axi_0_0.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_clk_wiz_0_0/axi_spi_top_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_clk_wiz_0_0/axi_spi_top_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_rst_clk_wiz_0_100M_0/sim/axi_spi_top_rst_clk_wiz_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/jesd204_v7_2_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1380/hdl/jesd204_v7_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_16 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_15 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_17 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_xbar_0/sim/axi_spi_top_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_util_ds_buf_0_0/util_ds_buf.vhd" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_util_ds_buf_0_0/sim/axi_spi_top_util_ds_buf_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_inv_0_0/sim/axi_spi_top_inv_0_0.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_data_rearrange_0_0/sim/axi_spi_top_data_rearrange_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_1 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_10 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/axi_traffic_gen_v3_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_traffic_gen_v3_0_2 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a923/hdl/axi_traffic_gen_v3_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_5 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_5 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_14 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_5 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/dds_compiler_v6_0_16 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/a2f9/hdl/dds_compiler_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_dds_compiler_0_0/sim/axi_spi_top_dds_compiler_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_vio_0_0/sim/axi_spi_top_vio_0_0.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_err_detector_0_0/sim/axi_spi_top_err_detector_0_0.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_BridgeToPCIE_0_0/sim/axi_spi_top_BridgeToPCIE_0_0.v" \
  "../../../bd/axi_spi_top/ip/axi_spi_top_fifo_generator_0_0/sim/axi_spi_top_fifo_generator_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_16 \
  "../../../../axi_spi.srcs/sources_1/bd/axi_spi_top/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/axi_spi_top/ip/axi_spi_top_auto_pc_0/sim/axi_spi_top_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

