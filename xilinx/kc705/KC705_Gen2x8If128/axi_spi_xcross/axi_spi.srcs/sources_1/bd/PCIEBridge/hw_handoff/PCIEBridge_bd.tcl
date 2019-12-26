
################################################################
# This is a generated script based on design: PCIEBridge
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source PCIEBridge_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg900-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name PCIEBridge

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $M_AXIS
  set S_AXIS [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {16} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS

  # Create ports
  set CHNL_RX [ create_bd_port -dir I CHNL_RX ]
  set CHNL_RX_ACK [ create_bd_port -dir I CHNL_RX_ACK ]
  set CHNL_RX_CLK [ create_bd_port -dir I CHNL_RX_CLK ]
  set CHNL_RX_DATA [ create_bd_port -dir I -from 127 -to 0 CHNL_RX_DATA ]
  set CHNL_RX_DATA_REN [ create_bd_port -dir I CHNL_RX_DATA_REN ]
  set CHNL_RX_DATA_VALID [ create_bd_port -dir I CHNL_RX_DATA_VALID ]
  set CHNL_RX_LAST [ create_bd_port -dir I CHNL_RX_LAST ]
  set CHNL_RX_LEN [ create_bd_port -dir I -from 31 -to 0 CHNL_RX_LEN ]
  set CHNL_RX_OFF [ create_bd_port -dir I -from 30 -to 0 CHNL_RX_OFF ]
  set CHNL_TX [ create_bd_port -dir I CHNL_TX ]
  set CHNL_TX_ACK [ create_bd_port -dir I CHNL_TX_ACK ]
  set CHNL_TX_CLK [ create_bd_port -dir I CHNL_TX_CLK ]
  set CHNL_TX_DATA [ create_bd_port -dir I -from 127 -to 0 CHNL_TX_DATA ]
  set CHNL_TX_DATA_REN [ create_bd_port -dir I CHNL_TX_DATA_REN ]
  set CHNL_TX_DATA_VALID [ create_bd_port -dir I CHNL_TX_DATA_VALID ]
  set CHNL_TX_LAST [ create_bd_port -dir I CHNL_TX_LAST ]
  set CHNL_TX_LEN [ create_bd_port -dir I -from 31 -to 0 CHNL_TX_LEN ]
  set CHNL_TX_OFF [ create_bd_port -dir I -from 30 -to 0 CHNL_TX_OFF ]
  set RST [ create_bd_port -dir I RST ]
  set STATUS_rCount [ create_bd_port -dir I -from 31 -to 0 STATUS_rCount ]
  set STATUS_rLen [ create_bd_port -dir I -from 31 -to 0 STATUS_rLen ]
  set STATUS_rState [ create_bd_port -dir I -from 1 -to 0 STATUS_rState ]
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] $aclk
  set s_axis_aresetn [ create_bd_port -dir I -type rst s_axis_aresetn ]

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.TDATA_NUM_BYTES {16} \
 ] $axis_data_fifo_0

  # Create instance: rst_aclk_250M, and set properties
  set rst_aclk_250M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_aclk_250M ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {16.5} \
   CONFIG.C_MON_TYPE {MIX} \
   CONFIG.C_NUM_MONITOR_SLOTS {2} \
   CONFIG.C_NUM_OF_PROBES {24} \
   CONFIG.C_PROBE0_TYPE {0} \
   CONFIG.C_PROBE11_WIDTH {32} \
   CONFIG.C_PROBE12_WIDTH {31} \
   CONFIG.C_PROBE13_WIDTH {128} \
   CONFIG.C_PROBE16_WIDTH {32} \
   CONFIG.C_PROBE17_WIDTH {128} \
   CONFIG.C_PROBE1_TYPE {0} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE23_WIDTH {31} \
   CONFIG.C_PROBE2_TYPE {0} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_TYPE {0} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_TYPE {0} \
   CONFIG.C_PROBE4_WIDTH {2} \
   CONFIG.C_PROBE5_TYPE {0} \
   CONFIG.C_PROBE5_WIDTH {32} \
   CONFIG.C_PROBE6_TYPE {0} \
   CONFIG.C_PROBE6_WIDTH {32} \
   CONFIG.C_PROBE_WIDTH_PROPAGATION {MANUAL} \
   CONFIG.C_SLOT_0_APC_EN {0} \
   CONFIG.C_SLOT_0_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_0_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_APC_EN {0} \
   CONFIG.C_SLOT_1_AXI_DATA_SEL {1} \
   CONFIG.C_SLOT_1_AXI_TRIG_SEL {1} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets S_AXIS_1] [get_bd_intf_ports S_AXIS] [get_bd_intf_pins system_ila_0/SLOT_0_AXIS]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_intf_nets S_AXIS_1]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_ports M_AXIS] [get_bd_intf_pins axis_data_fifo_0/M_AXIS]
connect_bd_intf_net -intf_net [get_bd_intf_nets axis_data_fifo_0_M_AXIS] [get_bd_intf_ports M_AXIS] [get_bd_intf_pins system_ila_0/SLOT_1_AXIS]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_intf_nets axis_data_fifo_0_M_AXIS]

  # Create port connections
  connect_bd_net -net CHNL_RX_1 [get_bd_ports CHNL_RX] [get_bd_pins system_ila_0/probe8]
  connect_bd_net -net CHNL_RX_ACK_1 [get_bd_ports CHNL_RX_ACK] [get_bd_pins system_ila_0/probe9]
  connect_bd_net -net CHNL_RX_DATA_1 [get_bd_ports CHNL_RX_DATA] [get_bd_pins system_ila_0/probe13]
  connect_bd_net -net CHNL_RX_DATA_REN_1 [get_bd_ports CHNL_RX_DATA_REN] [get_bd_pins system_ila_0/probe15]
  connect_bd_net -net CHNL_RX_DATA_VALID_1 [get_bd_ports CHNL_RX_DATA_VALID] [get_bd_pins system_ila_0/probe14]
  connect_bd_net -net CHNL_RX_LAST_1 [get_bd_ports CHNL_RX_LAST] [get_bd_pins system_ila_0/probe10]
  connect_bd_net -net CHNL_RX_LEN_1 [get_bd_ports CHNL_RX_LEN] [get_bd_pins system_ila_0/probe11]
  connect_bd_net -net CHNL_RX_OFF_1 [get_bd_ports CHNL_RX_OFF] [get_bd_pins system_ila_0/probe12]
  connect_bd_net -net CHNL_TX_1 [get_bd_ports CHNL_TX] [get_bd_pins system_ila_0/probe21]
  connect_bd_net -net CHNL_TX_ACK_1 [get_bd_ports CHNL_TX_ACK] [get_bd_pins system_ila_0/probe19]
  connect_bd_net -net CHNL_TX_DATA_1 [get_bd_ports CHNL_TX_DATA] [get_bd_pins system_ila_0/probe17]
  connect_bd_net -net CHNL_TX_DATA_REN_1 [get_bd_ports CHNL_TX_DATA_REN] [get_bd_pins system_ila_0/probe22]
  connect_bd_net -net CHNL_TX_DATA_VALID_1 [get_bd_ports CHNL_TX_DATA_VALID] [get_bd_pins system_ila_0/probe18]
  connect_bd_net -net CHNL_TX_LAST_1 [get_bd_ports CHNL_TX_LAST] [get_bd_pins system_ila_0/probe20]
  connect_bd_net -net CHNL_TX_LEN_1 [get_bd_ports CHNL_TX_LEN] [get_bd_pins system_ila_0/probe16]
  connect_bd_net -net CHNL_TX_OFF_1 [get_bd_ports CHNL_TX_OFF] [get_bd_pins system_ila_0/probe23]
  connect_bd_net -net RST_1 [get_bd_ports RST] [get_bd_pins system_ila_0/probe7]
  connect_bd_net -net STATUS_rCount_1 [get_bd_ports STATUS_rCount] [get_bd_pins system_ila_0/probe6]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets STATUS_rCount_1]
  connect_bd_net -net STATUS_rLen_1 [get_bd_ports STATUS_rLen] [get_bd_pins system_ila_0/probe5]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets STATUS_rLen_1]
  connect_bd_net -net STATUS_rState_1 [get_bd_ports STATUS_rState] [get_bd_pins system_ila_0/probe4]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets STATUS_rState_1]
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins rst_aclk_250M/slowest_sync_clk] [get_bd_pins system_ila_0/clk]
  connect_bd_net -net axis_data_count [get_bd_pins axis_data_fifo_0/axis_data_count] [get_bd_pins system_ila_0/probe1]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets axis_data_count]
  connect_bd_net -net axis_rd_data_count [get_bd_pins axis_data_fifo_0/axis_rd_data_count] [get_bd_pins system_ila_0/probe3]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets axis_rd_data_count]
  connect_bd_net -net axis_wr_data_count [get_bd_pins axis_data_fifo_0/axis_wr_data_count] [get_bd_pins system_ila_0/probe2]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets axis_wr_data_count]
  connect_bd_net -net rst_aclk_250M_peripheral_aresetn [get_bd_pins rst_aclk_250M/peripheral_aresetn] [get_bd_pins system_ila_0/resetn]
  connect_bd_net -net s_axis_aresetn_1 [get_bd_ports s_axis_aresetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins rst_aclk_250M/ext_reset_in] [get_bd_pins system_ila_0/probe0]
  set_property -dict [ list \
HDL_ATTRIBUTE.DEBUG {true} \
 ] [get_bd_nets s_axis_aresetn_1]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


