-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Dec 11 05:38:42 2019
-- Host        : zhatianyics-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_spi_top_BridgeToPCIE_0_0_sim_netlist.vhdl
-- Design      : axi_spi_top_BridgeToPCIE_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_data0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    o_data : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_spi_top_BridgeToPCIE_0_0,BridgeToPCIE,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BridgeToPCIE,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_data0\ : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  \^i_data0\(13 downto 0) <= i_data0(13 downto 0);
  o_data(127 downto 114) <= \^i_data0\(13 downto 0);
  o_data(113) <= \<const0>\;
  o_data(112) <= \<const0>\;
  o_data(111) <= \<const0>\;
  o_data(110) <= \<const0>\;
  o_data(109) <= \<const0>\;
  o_data(108) <= \<const0>\;
  o_data(107) <= \<const0>\;
  o_data(106) <= \<const0>\;
  o_data(105) <= \<const0>\;
  o_data(104) <= \<const0>\;
  o_data(103) <= \<const0>\;
  o_data(102) <= \<const0>\;
  o_data(101) <= \<const0>\;
  o_data(100) <= \<const0>\;
  o_data(99) <= \<const0>\;
  o_data(98) <= \<const0>\;
  o_data(97) <= \<const0>\;
  o_data(96) <= \<const0>\;
  o_data(95 downto 82) <= \^i_data0\(13 downto 0);
  o_data(81) <= \<const0>\;
  o_data(80) <= \<const0>\;
  o_data(79) <= \<const0>\;
  o_data(78) <= \<const0>\;
  o_data(77) <= \<const0>\;
  o_data(76) <= \<const0>\;
  o_data(75) <= \<const0>\;
  o_data(74) <= \<const0>\;
  o_data(73) <= \<const0>\;
  o_data(72) <= \<const0>\;
  o_data(71) <= \<const0>\;
  o_data(70) <= \<const0>\;
  o_data(69) <= \<const0>\;
  o_data(68) <= \<const0>\;
  o_data(67) <= \<const0>\;
  o_data(66) <= \<const0>\;
  o_data(65) <= \<const0>\;
  o_data(64) <= \<const0>\;
  o_data(63 downto 50) <= \^i_data0\(13 downto 0);
  o_data(49) <= \<const0>\;
  o_data(48) <= \<const0>\;
  o_data(47) <= \<const0>\;
  o_data(46) <= \<const0>\;
  o_data(45) <= \<const0>\;
  o_data(44) <= \<const0>\;
  o_data(43) <= \<const0>\;
  o_data(42) <= \<const0>\;
  o_data(41) <= \<const0>\;
  o_data(40) <= \<const0>\;
  o_data(39) <= \<const0>\;
  o_data(38) <= \<const0>\;
  o_data(37) <= \<const0>\;
  o_data(36) <= \<const0>\;
  o_data(35) <= \<const0>\;
  o_data(34) <= \<const0>\;
  o_data(33) <= \<const0>\;
  o_data(32) <= \<const0>\;
  o_data(31 downto 18) <= \^i_data0\(13 downto 0);
  o_data(17) <= \<const0>\;
  o_data(16) <= \<const0>\;
  o_data(15) <= \<const0>\;
  o_data(14) <= \<const0>\;
  o_data(13) <= \<const0>\;
  o_data(12) <= \<const0>\;
  o_data(11) <= \<const0>\;
  o_data(10) <= \<const0>\;
  o_data(9) <= \<const0>\;
  o_data(8) <= \<const0>\;
  o_data(7) <= \<const0>\;
  o_data(6) <= \<const0>\;
  o_data(5) <= \<const0>\;
  o_data(4) <= \<const0>\;
  o_data(3) <= \<const0>\;
  o_data(2) <= \<const0>\;
  o_data(1) <= \<const0>\;
  o_data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
