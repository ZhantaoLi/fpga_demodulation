-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Aug  3 14:04:28 2023
-- Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/86183/Desktop/dianSai/2023_D/Vivado/Demodulate/Demodulate/Demodulate.srcs/sources_1/ip/dist_mem_ph/dist_mem_ph_sim_netlist.vhdl
-- Design      : dist_mem_ph
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_ph_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 12 downto 0 );
    a : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_ph_rom : entity is "rom";
end dist_mem_ph_rom;

architecture STRUCTURE of dist_mem_ph_rom is
  signal \spo[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_77_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_78_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_79_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_80_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_81_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_82_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_83_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_77_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_78_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_79_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_80_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_81_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_82_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_83_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_84_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_85_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_86_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_87_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_88_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_89_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_90_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_91_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_92_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_93_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_94_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_95_n_0\ : STD_LOGIC;
  signal \spo[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_77_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_78_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_79_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_80_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_77_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_78_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_79_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_44_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_45_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_48_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_49_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_50_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_51_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_53_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_56_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_59_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_61_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_62_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_63_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_64_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_65_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_66_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_67_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_68_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_69_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_70_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_71_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_72_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_73_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_74_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_75_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_76_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \spo[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_30\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[0]_INST_0_i_36\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_17\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_19\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_22\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_26\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_50\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_54\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_55\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_58\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_63\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[28]_INST_0_i_69\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_30\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_36\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_37\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_40\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_42\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_46\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_51\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_55\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_56\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_60\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_63\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_66\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_68\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \spo[29]_INST_0_i_69\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_35\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_38\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_39\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_41\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_45\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_47\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_50\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_51\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_52\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_54\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_56\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_58\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_60\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[30]_INST_0_i_62\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_30\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_32\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_33\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_36\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_37\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_39\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_40\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_42\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_45\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_46\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_49\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \spo[31]_INST_0_i_51\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[4]_INST_0_i_23\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_25\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_29\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spo[6]_INST_0_i_57\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_17\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_19\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_22\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_26\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_50\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_54\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_55\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_58\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_63\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spo[8]_INST_0_i_69\ : label is "soft_lutpair17";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_1_n_0\,
      I1 => \spo[0]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[0]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[0]_INST_0_i_4_n_0\,
      O => spo(0)
    );
\spo[0]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_5_n_0\,
      I1 => \spo[0]_INST_0_i_6_n_0\,
      O => \spo[0]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_23_n_0\,
      I1 => \spo[0]_INST_0_i_24_n_0\,
      O => \spo[0]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_25_n_0\,
      I1 => \spo[0]_INST_0_i_26_n_0\,
      O => \spo[0]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_27_n_0\,
      I1 => \spo[0]_INST_0_i_28_n_0\,
      O => \spo[0]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[0]_INST_0_i_29_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_31_n_0\,
      O => \spo[0]_INST_0_i_13_n_0\
    );
\spo[0]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_32_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_33_n_0\,
      O => \spo[0]_INST_0_i_14_n_0\
    );
\spo[0]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_34_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_35_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_15_n_0\
    );
\spo[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_36_n_0\,
      I1 => \spo[0]_INST_0_i_37_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_38_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_16_n_0\
    );
\spo[0]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_39_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_40_n_0\,
      O => \spo[0]_INST_0_i_17_n_0\
    );
\spo[0]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_41_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_42_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_18_n_0\
    );
\spo[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_36_n_0\,
      I1 => \spo[0]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_44_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_19_n_0\
    );
\spo[0]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_7_n_0\,
      I1 => \spo[0]_INST_0_i_8_n_0\,
      O => \spo[0]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_45_n_0\,
      I1 => \spo[0]_INST_0_i_46_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_36_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_47_n_0\,
      O => \spo[0]_INST_0_i_20_n_0\
    );
\spo[0]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_48_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_49_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_21_n_0\
    );
\spo[0]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_36_n_0\,
      I1 => a(7),
      I2 => \spo[0]_INST_0_i_50_n_0\,
      I3 => a(10),
      I4 => \spo[0]_INST_0_i_51_n_0\,
      O => \spo[0]_INST_0_i_22_n_0\
    );
\spo[0]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[0]_INST_0_i_52_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_36_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_53_n_0\,
      O => \spo[0]_INST_0_i_23_n_0\
    );
\spo[0]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_54_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_36_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_55_n_0\,
      O => \spo[0]_INST_0_i_24_n_0\
    );
\spo[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_36_n_0\,
      I1 => \spo[0]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[0]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[0]_INST_0_i_30_n_0\,
      O => \spo[0]_INST_0_i_25_n_0\
    );
\spo[0]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_36_n_0\,
      I1 => a(7),
      I2 => \spo[0]_INST_0_i_58_n_0\,
      I3 => a(10),
      I4 => \spo[0]_INST_0_i_59_n_0\,
      O => \spo[0]_INST_0_i_26_n_0\
    );
\spo[0]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[0]_INST_0_i_60_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_36_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_61_n_0\,
      O => \spo[0]_INST_0_i_27_n_0\
    );
\spo[0]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[0]_INST_0_i_62_n_0\,
      I1 => a(10),
      I2 => \spo[0]_INST_0_i_63_n_0\,
      I3 => a(7),
      I4 => \spo[0]_INST_0_i_36_n_0\,
      O => \spo[0]_INST_0_i_28_n_0\
    );
\spo[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF54AB5572AF54AB"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_29_n_0\
    );
\spo[0]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_9_n_0\,
      I1 => \spo[0]_INST_0_i_10_n_0\,
      O => \spo[0]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[0]_INST_0_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      O => \spo[0]_INST_0_i_30_n_0\
    );
\spo[0]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5B55E5AAAEAA5955"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_31_n_0\
    );
\spo[0]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E7A69AD9595DE6A6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_32_n_0\
    );
\spo[0]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB5576ABAA5555AA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_33_n_0\
    );
\spo[0]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AB55AAAD56AB55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_34_n_0\
    );
\spo[0]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5A2BADFDB5D64A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_35_n_0\
    );
\spo[0]_INST_0_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      O => \spo[0]_INST_0_i_36_n_0\
    );
\spo[0]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AABA5DDB5565AA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_37_n_0\
    );
\spo[0]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54AB55AAAF54AB55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_38_n_0\
    );
\spo[0]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A298595155A6A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_39_n_0\
    );
\spo[0]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[0]_INST_0_i_11_n_0\,
      I1 => \spo[0]_INST_0_i_12_n_0\,
      O => \spo[0]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[0]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A954AA5562A954AA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_40_n_0\
    );
\spo[0]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54AA55AAA954AA55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_41_n_0\
    );
\spo[0]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CCBC333333C0CC"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(1),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_42_n_0\
    );
\spo[0]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24AA9A55595524AA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_43_n_0\
    );
\spo[0]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54ABAD5454AAAB54"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_44_n_0\
    );
\spo[0]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFBF00FF0000FF"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => a(5),
      I3 => a(8),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_45_n_0\
    );
\spo[0]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56ABAD5654AAA954"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_46_n_0\
    );
\spo[0]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24A29A5D595524A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_47_n_0\
    );
\spo[0]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54AB8D5054AAAB54"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_48_n_0\
    );
\spo[0]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88AA675555558AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_49_n_0\
    );
\spo[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_13_n_0\,
      I1 => \spo[0]_INST_0_i_14_n_0\,
      O => \spo[0]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98AA275545559AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_50_n_0\
    );
\spo[0]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FB0F00FB04F0FB0"
    )
        port map (
      I0 => a(5),
      I1 => a(1),
      I2 => a(7),
      I3 => a(8),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_51_n_0\
    );
\spo[0]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52A9B54254AAA954"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_52_n_0\
    );
\spo[0]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1A8AA57565551AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_53_n_0\
    );
\spo[0]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A5545A224AA9B55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_54_n_0\
    );
\spo[0]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52A9AD5254AAA954"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[0]_INST_0_i_55_n_0\
    );
\spo[0]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAA67555555BAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_56_n_0\
    );
\spo[0]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46AB55AA9D46BB55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_57_n_0\
    );
\spo[0]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5524AAFB9ADF5524"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_58_n_0\
    );
\spo[0]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AABA55AA5555AA"
    )
        port map (
      I0 => a(7),
      I1 => a(1),
      I2 => a(5),
      I3 => a(8),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_59_n_0\
    );
\spo[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_15_n_0\,
      I1 => \spo[0]_INST_0_i_16_n_0\,
      O => \spo[0]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB5565AAA6AADB55"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_60_n_0\
    );
\spo[0]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5526AA9BBA5D55A6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_61_n_0\
    );
\spo[0]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A956AB5552A956AB"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[0]_INST_0_i_62_n_0\
    );
\spo[0]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"595D67A2AEAA595D"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[0]_INST_0_i_63_n_0\
    );
\spo[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_17_n_0\,
      I1 => \spo[0]_INST_0_i_18_n_0\,
      O => \spo[0]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_19_n_0\,
      I1 => \spo[0]_INST_0_i_20_n_0\,
      O => \spo[0]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[0]_INST_0_i_21_n_0\,
      I1 => \spo[0]_INST_0_i_22_n_0\,
      O => \spo[0]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_1_n_0\,
      I1 => \spo[1]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[1]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[1]_INST_0_i_4_n_0\,
      O => spo(1)
    );
\spo[1]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_5_n_0\,
      I1 => \spo[1]_INST_0_i_6_n_0\,
      O => \spo[1]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_29_n_0\,
      I1 => \spo[1]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_32_n_0\,
      O => \spo[1]_INST_0_i_10_n_0\
    );
\spo[1]_INST_0_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_33_n_0\,
      I1 => \spo[1]_INST_0_i_34_n_0\,
      O => \spo[1]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_35_n_0\,
      I1 => \spo[1]_INST_0_i_36_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_37_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_38_n_0\,
      O => \spo[1]_INST_0_i_12_n_0\
    );
\spo[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_39_n_0\,
      I1 => \spo[1]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_40_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_41_n_0\,
      O => \spo[1]_INST_0_i_13_n_0\
    );
\spo[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_42_n_0\,
      I1 => \spo[1]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_44_n_0\,
      O => \spo[1]_INST_0_i_14_n_0\
    );
\spo[1]_INST_0_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_45_n_0\,
      I1 => \spo[1]_INST_0_i_46_n_0\,
      O => \spo[1]_INST_0_i_15_n_0\,
      S => a(10)
    );
\spo[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_47_n_0\,
      I1 => \spo[1]_INST_0_i_48_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_49_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_38_n_0\,
      O => \spo[1]_INST_0_i_16_n_0\
    );
\spo[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_50_n_0\,
      I1 => \spo[1]_INST_0_i_51_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_52_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_53_n_0\,
      O => \spo[1]_INST_0_i_17_n_0\
    );
\spo[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_54_n_0\,
      I1 => \spo[1]_INST_0_i_55_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_52_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_56_n_0\,
      O => \spo[1]_INST_0_i_18_n_0\
    );
\spo[1]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_57_n_0\,
      I1 => \spo[1]_INST_0_i_58_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_59_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_60_n_0\,
      O => \spo[1]_INST_0_i_19_n_0\
    );
\spo[1]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[1]_INST_0_i_7_n_0\,
      I1 => \spo[1]_INST_0_i_8_n_0\,
      O => \spo[1]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_61_n_0\,
      I1 => \spo[1]_INST_0_i_62_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_64_n_0\,
      O => \spo[1]_INST_0_i_20_n_0\
    );
\spo[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_65_n_0\,
      I1 => \spo[1]_INST_0_i_66_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_52_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_67_n_0\,
      O => \spo[1]_INST_0_i_21_n_0\
    );
\spo[1]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_68_n_0\,
      I1 => \spo[1]_INST_0_i_55_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_37_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_69_n_0\,
      O => \spo[1]_INST_0_i_22_n_0\
    );
\spo[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_70_n_0\,
      I1 => \spo[1]_INST_0_i_71_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_72_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_60_n_0\,
      O => \spo[1]_INST_0_i_23_n_0\
    );
\spo[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_61_n_0\,
      I1 => \spo[1]_INST_0_i_73_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_74_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_75_n_0\,
      O => \spo[1]_INST_0_i_24_n_0\
    );
\spo[1]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C6861C3C7961C3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_25_n_0\
    );
\spo[1]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C39396363C6C69C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_26_n_0\
    );
\spo[1]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAD5C521352E3ADE"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_27_n_0\
    );
\spo[1]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96386BC63C69C794"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_28_n_0\
    );
\spo[1]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62D5C58B9F2E3A74"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_29_n_0\
    );
\spo[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_9_n_0\,
      I1 => \spo[1]_INST_0_i_10_n_0\,
      I2 => a(11),
      I3 => \spo[1]_INST_0_i_11_n_0\,
      I4 => a(6),
      I5 => \spo[1]_INST_0_i_12_n_0\,
      O => \spo[1]_INST_0_i_3_n_0\
    );
\spo[1]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E3863C63C61D79C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_30_n_0\
    );
\spo[1]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9639396969C6C696"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_31_n_0\
    );
\spo[1]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C61C79C39C39E386"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_32_n_0\
    );
\spo[1]_INST_0_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_76_n_0\,
      I1 => \spo[1]_INST_0_i_77_n_0\,
      O => \spo[1]_INST_0_i_33_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_78_n_0\,
      I1 => \spo[1]_INST_0_i_79_n_0\,
      O => \spo[1]_INST_0_i_34_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"363CC9C23EC9C736"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_35_n_0\
    );
\spo[1]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5212EDE2906D6F9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_36_n_0\
    );
\spo[1]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9336366CECC98113"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_37_n_0\
    );
\spo[1]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC9C9C3C336363C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_38_n_0\
    );
\spo[1]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C79E9E38386163C7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_39_n_0\
    );
\spo[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_13_n_0\,
      I1 => \spo[1]_INST_0_i_14_n_0\,
      I2 => a(11),
      I3 => \spo[1]_INST_0_i_15_n_0\,
      I4 => a(6),
      I5 => \spo[1]_INST_0_i_16_n_0\,
      O => \spo[1]_INST_0_i_4_n_0\
    );
\spo[1]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAD105213D6EEAD6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_40_n_0\
    );
\spo[1]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9439396B6BC6C694"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_41_n_0\
    );
\spo[1]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0D1850B3F6E6AD4"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_42_n_0\
    );
\spo[1]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C29396363D6C69C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_43_n_0\
    );
\spo[1]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9E3861C73C69C39E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_44_n_0\
    );
\spo[1]_INST_0_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_80_n_0\,
      I1 => \spo[1]_INST_0_i_81_n_0\,
      O => \spo[1]_INST_0_i_45_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_82_n_0\,
      I1 => \spo[1]_INST_0_i_83_n_0\,
      O => \spo[1]_INST_0_i_46_n_0\,
      S => a(7)
    );
\spo[1]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36393DC9C9C6C236"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_47_n_0\
    );
\spo[1]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1216ED62906D6B9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_48_n_0\
    );
\spo[1]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"376C7EC8C9938336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[1]_INST_0_i_49_n_0\
    );
\spo[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_17_n_0\,
      I1 => \spo[1]_INST_0_i_18_n_0\,
      O => \spo[1]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2363DC93639C9C6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_50_n_0\
    );
\spo[1]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C001352B3BDECAD0"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_51_n_0\
    );
\spo[1]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9336366C6CC9C993"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_52_n_0\
    );
\spo[1]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"367CC1073CC98336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_53_n_0\
    );
\spo[1]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0336BE7C68C14107"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_54_n_0\
    );
\spo[1]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C63639C93639C9C6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_55_n_0\
    );
\spo[1]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000356B6FDECA94"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_56_n_0\
    );
\spo[1]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60C69D38C09D3B60"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_57_n_0\
    );
\spo[1]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C69C39639C2963D6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_58_n_0\
    );
\spo[1]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06BE69431679C186"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_59_n_0\
    );
\spo[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_19_n_0\,
      I1 => \spo[1]_INST_0_i_20_n_0\,
      O => \spo[1]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C69C39639C3963C6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_60_n_0\
    );
\spo[1]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"63C6C69C9C393963"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_61_n_0\
    );
\spo[1]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06BCE9431C79C396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_62_n_0\
    );
\spo[1]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C63738C0353BCA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_63_n_0\
    );
\spo[1]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C694396B94396BC6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_64_n_0\
    );
\spo[1]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C236FDC13639C906"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_65_n_0\
    );
\spo[1]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5353ACA212EDED1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_66_n_0\
    );
\spo[1]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EC8C336FCC1373C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_67_n_0\
    );
\spo[1]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7BC3EC84943C336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[1]_INST_0_i_68_n_0\
    );
\spo[1]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9021356B6FDECA94"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_69_n_0\
    );
\spo[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_21_n_0\,
      I1 => \spo[1]_INST_0_i_22_n_0\,
      O => \spo[1]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62C5C79F9D3A3860"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_70_n_0\
    );
\spo[1]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C61C79C39C29E396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_71_n_0\
    );
\spo[1]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96B869463E69C796"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_72_n_0\
    );
\spo[1]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EB8E3463C61C79C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_73_n_0\
    );
\spo[1]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C5C735373A38CA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_74_n_0\
    );
\spo[1]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C61479C39439EB86"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_75_n_0\
    );
\spo[1]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"942921436BF6DEBC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_76_n_0\
    );
\spo[1]_INST_0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"376C7EC8C9939336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[1]_INST_0_i_77_n_0\
    );
\spo[1]_INST_0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C636F9C13639C906"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_78_n_0\
    );
\spo[1]_INST_0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B63CC9C33CC9C336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_79_n_0\
    );
\spo[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[1]_INST_0_i_23_n_0\,
      I1 => \spo[1]_INST_0_i_24_n_0\,
      O => \spo[1]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[1]_INST_0_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"940921436BF6D6BC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[1]_INST_0_i_80_n_0\
    );
\spo[1]_INST_0_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366CC9936CC99336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_81_n_0\
    );
\spo[1]_INST_0_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"363CC9C73EC9C336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_82_n_0\
    );
\spo[1]_INST_0_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"363CC9C33CC9C336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[1]_INST_0_i_83_n_0\
    );
\spo[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[1]_INST_0_i_25_n_0\,
      I1 => \spo[1]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[1]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[1]_INST_0_i_28_n_0\,
      O => \spo[1]_INST_0_i_9_n_0\
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_1_n_0\,
      I1 => \spo[28]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[28]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[28]_INST_0_i_4_n_0\,
      O => spo(9)
    );
\spo[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_5_n_0\,
      I1 => \spo[28]_INST_0_i_6_n_0\,
      I2 => a(11),
      I3 => \spo[28]_INST_0_i_7_n_0\,
      I4 => a(6),
      I5 => \spo[28]_INST_0_i_8_n_0\,
      O => \spo[28]_INST_0_i_1_n_0\
    );
\spo[28]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_30_n_0\,
      I1 => \spo[28]_INST_0_i_31_n_0\,
      O => \spo[28]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_32_n_0\,
      I1 => \spo[28]_INST_0_i_33_n_0\,
      O => \spo[28]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_34_n_0\,
      I1 => \spo[28]_INST_0_i_35_n_0\,
      O => \spo[28]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_36_n_0\,
      I1 => \spo[28]_INST_0_i_37_n_0\,
      O => \spo[28]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_38_n_0\,
      I1 => \spo[28]_INST_0_i_39_n_0\,
      O => \spo[28]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[28]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFF00FF0000FF"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(8),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_15_n_0\
    );
\spo[28]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5AA5A5A5B4"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_16_n_0\
    );
\spo[28]_INST_0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(9),
      I1 => a(4),
      O => \spo[28]_INST_0_i_17_n_0\
    );
\spo[28]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56423D1DBD95E222"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_18_n_0\
    );
\spo[28]_INST_0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      O => \spo[28]_INST_0_i_19_n_0\
    );
\spo[28]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[28]_INST_0_i_9_n_0\,
      I1 => \spo[28]_INST_0_i_10_n_0\,
      O => \spo[28]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[28]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5642BD95BC846A2A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_20_n_0\
    );
\spo[28]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0D2AFAFAFAC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_21_n_0\
    );
\spo[28]_INST_0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      O => \spo[28]_INST_0_i_22_n_0\
    );
\spo[28]_INST_0_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_40_n_0\,
      I1 => \spo[28]_INST_0_i_41_n_0\,
      O => \spo[28]_INST_0_i_23_n_0\,
      S => a(7)
    );
\spo[28]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_42_n_0\,
      I1 => \spo[28]_INST_0_i_43_n_0\,
      O => \spo[28]_INST_0_i_24_n_0\,
      S => a(7)
    );
\spo[28]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE87B3B1717C000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_25_n_0\
    );
\spo[28]_INST_0_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => a(4),
      O => \spo[28]_INST_0_i_26_n_0\
    );
\spo[28]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0AF5F40B0DF6E2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[28]_INST_0_i_27_n_0\
    );
\spo[28]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_44_n_0\,
      I1 => \spo[28]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_46_n_0\,
      O => \spo[28]_INST_0_i_28_n_0\
    );
\spo[28]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_47_n_0\,
      I1 => \spo[28]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_48_n_0\,
      O => \spo[28]_INST_0_i_29_n_0\
    );
\spo[28]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[28]_INST_0_i_11_n_0\,
      I1 => \spo[28]_INST_0_i_12_n_0\,
      O => \spo[28]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[28]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_49_n_0\,
      I1 => \spo[28]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_51_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_22_n_0\,
      O => \spo[28]_INST_0_i_30_n_0\
    );
\spo[28]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_19_n_0\,
      I1 => \spo[28]_INST_0_i_52_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_53_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_54_n_0\,
      O => \spo[28]_INST_0_i_31_n_0\
    );
\spo[28]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_55_n_0\,
      I1 => \spo[28]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_58_n_0\,
      O => \spo[28]_INST_0_i_32_n_0\
    );
\spo[28]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_59_n_0\,
      I1 => \spo[28]_INST_0_i_60_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_61_n_0\,
      O => \spo[28]_INST_0_i_33_n_0\
    );
\spo[28]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_62_n_0\,
      I1 => \spo[28]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_64_n_0\,
      O => \spo[28]_INST_0_i_34_n_0\
    );
\spo[28]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_19_n_0\,
      I1 => \spo[28]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_54_n_0\,
      O => \spo[28]_INST_0_i_35_n_0\
    );
\spo[28]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_66_n_0\,
      I1 => \spo[28]_INST_0_i_67_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_68_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_58_n_0\,
      O => \spo[28]_INST_0_i_36_n_0\
    );
\spo[28]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_69_n_0\,
      I1 => \spo[28]_INST_0_i_70_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_71_n_0\,
      O => \spo[28]_INST_0_i_37_n_0\
    );
\spo[28]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_22_n_0\,
      I1 => \spo[28]_INST_0_i_72_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_73_n_0\,
      O => \spo[28]_INST_0_i_38_n_0\
    );
\spo[28]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_74_n_0\,
      I1 => \spo[28]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_75_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_76_n_0\,
      O => \spo[28]_INST_0_i_39_n_0\
    );
\spo[28]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[28]_INST_0_i_13_n_0\,
      I1 => \spo[28]_INST_0_i_14_n_0\,
      O => \spo[28]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[28]_INST_0_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5AB5"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[28]_INST_0_i_40_n_0\
    );
\spo[28]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB962AA5462D555"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_41_n_0\
    );
\spo[28]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFFFFFF0000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(8),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_42_n_0\
    );
\spo[28]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F40A0A0B0D"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_43_n_0\
    );
\spo[28]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000F0FFFFFF0000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_44_n_0\
    );
\spo[28]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0D0CF0F2E3E3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_45_n_0\
    );
\spo[28]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15557755A8AA80AA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(9),
      I4 => a(5),
      I5 => a(4),
      O => \spo[28]_INST_0_i_46_n_0\
    );
\spo[28]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA2AA8AA15555F55"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(5),
      I5 => a(4),
      O => \spo[28]_INST_0_i_47_n_0\
    );
\spo[28]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A595B59B4A2B6A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[28]_INST_0_i_48_n_0\
    );
\spo[28]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5AA5A5A5A4"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_49_n_0\
    );
\spo[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_15_n_0\,
      I1 => \spo[28]_INST_0_i_16_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_18_n_0\,
      O => \spo[28]_INST_0_i_5_n_0\
    );
\spo[28]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A45A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[28]_INST_0_i_50_n_0\
    );
\spo[28]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA2A2FFFB5554000"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_51_n_0\
    );
\spo[28]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"502AADD5B5554AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_52_n_0\
    );
\spo[28]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00F0F0D0C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_53_n_0\
    );
\spo[28]_INST_0_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CB34"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(9),
      I3 => a(4),
      O => \spo[28]_INST_0_i_54_n_0\
    );
\spo[28]_INST_0_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[28]_INST_0_i_55_n_0\
    );
\spo[28]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1157C000EAAAFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_56_n_0\
    );
\spo[28]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5AA5A45B59A6A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[28]_INST_0_i_57_n_0\
    );
\spo[28]_INST_0_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(4),
      O => \spo[28]_INST_0_i_58_n_0\
    );
\spo[28]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF0000FF00FFFF"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(9),
      I4 => a(8),
      I5 => a(4),
      O => \spo[28]_INST_0_i_59_n_0\
    );
\spo[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_19_n_0\,
      I1 => \spo[28]_INST_0_i_20_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_22_n_0\,
      O => \spo[28]_INST_0_i_6_n_0\
    );
\spo[28]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FF0F00F0DF2E3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[28]_INST_0_i_60_n_0\
    );
\spo[28]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55755ABAA80AA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(9),
      I4 => a(5),
      I5 => a(4),
      O => \spo[28]_INST_0_i_61_n_0\
    );
\spo[28]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5642B99DBD95622A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_62_n_0\
    );
\spo[28]_INST_0_i_63\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      O => \spo[28]_INST_0_i_63_n_0\
    );
\spo[28]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A55A5AA5A55A4B"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[28]_INST_0_i_64_n_0\
    );
\spo[28]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEA3B3F1517C000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_65_n_0\
    );
\spo[28]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B08F0F0F3E3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_66_n_0\
    );
\spo[28]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00000F00FFFF"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(8),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_67_n_0\
    );
\spo[28]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5642D555AD95AAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_68_n_0\
    );
\spo[28]_INST_0_i_69\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(4),
      O => \spo[28]_INST_0_i_69_n_0\
    );
\spo[28]_INST_0_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[28]_INST_0_i_23_n_0\,
      I1 => \spo[28]_INST_0_i_24_n_0\,
      O => \spo[28]_INST_0_i_7_n_0\,
      S => a(10)
    );
\spo[28]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"055FD000E880BFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_70_n_0\
    );
\spo[28]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700FFF0F0FF000F0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(9),
      I4 => a(5),
      I5 => a(4),
      O => \spo[28]_INST_0_i_71_n_0\
    );
\spo[28]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4A4A4A45A5B5A49"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[28]_INST_0_i_72_n_0\
    );
\spo[28]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B9D5622A62AA9D55"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_73_n_0\
    );
\spo[28]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A6D4B25B4DA925A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[28]_INST_0_i_74_n_0\
    );
\spo[28]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF7FFF0000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(5),
      I3 => a(8),
      I4 => a(9),
      I5 => a(4),
      O => \spo[28]_INST_0_i_75_n_0\
    );
\spo[28]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ADADADAC52525341"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[28]_INST_0_i_76_n_0\
    );
\spo[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[28]_INST_0_i_25_n_0\,
      I1 => \spo[28]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[28]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[28]_INST_0_i_27_n_0\,
      O => \spo[28]_INST_0_i_8_n_0\
    );
\spo[28]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[28]_INST_0_i_28_n_0\,
      I1 => \spo[28]_INST_0_i_29_n_0\,
      O => \spo[28]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_1_n_0\,
      I1 => \spo[29]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[29]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[29]_INST_0_i_4_n_0\,
      O => spo(10)
    );
\spo[29]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_5_n_0\,
      I1 => \spo[29]_INST_0_i_6_n_0\,
      O => \spo[29]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[29]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_23_n_0\,
      I1 => \spo[29]_INST_0_i_24_n_0\,
      O => \spo[29]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_25_n_0\,
      I1 => \spo[29]_INST_0_i_26_n_0\,
      O => \spo[29]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_27_n_0\,
      I1 => \spo[29]_INST_0_i_28_n_0\,
      O => \spo[29]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_29_n_0\,
      I1 => \spo[29]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_32_n_0\,
      O => \spo[29]_INST_0_i_13_n_0\
    );
\spo[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_33_n_0\,
      I1 => \spo[29]_INST_0_i_34_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_36_n_0\,
      O => \spo[29]_INST_0_i_14_n_0\
    );
\spo[29]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_37_n_0\,
      I1 => \spo[29]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_39_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_40_n_0\,
      O => \spo[29]_INST_0_i_15_n_0\
    );
\spo[29]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[29]_INST_0_i_41_n_0\,
      I1 => a(10),
      I2 => \spo[29]_INST_0_i_42_n_0\,
      I3 => a(7),
      I4 => \spo[29]_INST_0_i_43_n_0\,
      O => \spo[29]_INST_0_i_16_n_0\
    );
\spo[29]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_44_n_0\,
      I1 => \spo[29]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_47_n_0\,
      O => \spo[29]_INST_0_i_17_n_0\
    );
\spo[29]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_48_n_0\,
      I1 => \spo[29]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_49_n_0\,
      O => \spo[29]_INST_0_i_18_n_0\
    );
\spo[29]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_50_n_0\,
      I1 => \spo[29]_INST_0_i_51_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_52_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_40_n_0\,
      O => \spo[29]_INST_0_i_19_n_0\
    );
\spo[29]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_7_n_0\,
      I1 => \spo[29]_INST_0_i_8_n_0\,
      O => \spo[29]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[29]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_37_n_0\,
      I1 => \spo[29]_INST_0_i_53_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_54_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_55_n_0\,
      O => \spo[29]_INST_0_i_20_n_0\
    );
\spo[29]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[29]_INST_0_i_56_n_0\,
      I1 => a(7),
      I2 => \spo[29]_INST_0_i_57_n_0\,
      I3 => a(10),
      I4 => \spo[29]_INST_0_i_58_n_0\,
      O => \spo[29]_INST_0_i_21_n_0\
    );
\spo[29]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_59_n_0\,
      I1 => \spo[29]_INST_0_i_60_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_61_n_0\,
      O => \spo[29]_INST_0_i_22_n_0\
    );
\spo[29]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_62_n_0\,
      I1 => \spo[29]_INST_0_i_51_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_40_n_0\,
      O => \spo[29]_INST_0_i_23_n_0\
    );
\spo[29]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_37_n_0\,
      I1 => \spo[29]_INST_0_i_40_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_64_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_55_n_0\,
      O => \spo[29]_INST_0_i_24_n_0\
    );
\spo[29]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_65_n_0\,
      I1 => \spo[29]_INST_0_i_66_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_67_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_68_n_0\,
      O => \spo[29]_INST_0_i_25_n_0\
    );
\spo[29]_INST_0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[29]_INST_0_i_69_n_0\,
      I1 => a(7),
      I2 => \spo[29]_INST_0_i_70_n_0\,
      I3 => a(10),
      I4 => \spo[29]_INST_0_i_71_n_0\,
      O => \spo[29]_INST_0_i_26_n_0\
    );
\spo[29]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_40_n_0\,
      I1 => \spo[29]_INST_0_i_72_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_73_n_0\,
      O => \spo[29]_INST_0_i_27_n_0\
    );
\spo[29]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[29]_INST_0_i_74_n_0\,
      I1 => \spo[29]_INST_0_i_40_n_0\,
      I2 => a(10),
      I3 => \spo[29]_INST_0_i_34_n_0\,
      I4 => a(7),
      I5 => \spo[29]_INST_0_i_75_n_0\,
      O => \spo[29]_INST_0_i_28_n_0\
    );
\spo[29]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECEC222A5040FFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_29_n_0\
    );
\spo[29]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_9_n_0\,
      I1 => \spo[29]_INST_0_i_10_n_0\,
      O => \spo[29]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[29]_INST_0_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"63"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      O => \spo[29]_INST_0_i_30_n_0\
    );
\spo[29]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF00FFFF00"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => a(0),
      I3 => a(8),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_31_n_0\
    );
\spo[29]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A0F0F5A5A1A0F50"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(9),
      I4 => a(4),
      I5 => a(1),
      O => \spo[29]_INST_0_i_32_n_0\
    );
\spo[29]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F05A5AA5A50F1A"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[29]_INST_0_i_33_n_0\
    );
\spo[29]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFF000000FFFF"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => a(0),
      I3 => a(8),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_34_n_0\
    );
\spo[29]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999BB3B332266666"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[29]_INST_0_i_35_n_0\
    );
\spo[29]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3736"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[29]_INST_0_i_36_n_0\
    );
\spo[29]_INST_0_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      O => \spo[29]_INST_0_i_37_n_0\
    );
\spo[29]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6464644CD8C8D999"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(9),
      I5 => a(4),
      O => \spo[29]_INST_0_i_38_n_0\
    );
\spo[29]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFD828282A3"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[29]_INST_0_i_39_n_0\
    );
\spo[29]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[29]_INST_0_i_11_n_0\,
      I1 => \spo[29]_INST_0_i_12_n_0\,
      O => \spo[29]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[29]_INST_0_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      O => \spo[29]_INST_0_i_40_n_0\
    );
\spo[29]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333FFFFCCCC0001"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => \spo[29]_INST_0_i_41_n_0\
    );
\spo[29]_INST_0_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      O => \spo[29]_INST_0_i_42_n_0\
    );
\spo[29]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7575A080D8C85555"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_43_n_0\
    );
\spo[29]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00F0F00000FFFF"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(9),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_44_n_0\
    );
\spo[29]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666733313131"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[29]_INST_0_i_45_n_0\
    );
\spo[29]_INST_0_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"36"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      O => \spo[29]_INST_0_i_46_n_0\
    );
\spo[29]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002FDF55F5FA0A0"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[29]_INST_0_i_47_n_0\
    );
\spo[29]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0280FF40FF55AA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[29]_INST_0_i_48_n_0\
    );
\spo[29]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3377337732642244"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[29]_INST_0_i_49_n_0\
    );
\spo[29]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_13_n_0\,
      I1 => \spo[29]_INST_0_i_14_n_0\,
      O => \spo[29]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5FA0A0A0A1"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[29]_INST_0_i_50_n_0\
    );
\spo[29]_INST_0_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC89"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[29]_INST_0_i_51_n_0\
    );
\spo[29]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBC444B8887777"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_52_n_0\
    );
\spo[29]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3337C000FCCC3333"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_53_n_0\
    );
\spo[29]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F50A0A0A0B"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[29]_INST_0_i_54_n_0\
    );
\spo[29]_INST_0_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B083"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(5),
      I3 => a(4),
      O => \spo[29]_INST_0_i_55_n_0\
    );
\spo[29]_INST_0_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A0F"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(5),
      I3 => a(4),
      O => \spo[29]_INST_0_i_56_n_0\
    );
\spo[29]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50004A0AFFFFF5F5"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(9),
      I5 => a(5),
      O => \spo[29]_INST_0_i_57_n_0\
    );
\spo[29]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030CFCF3033FF880"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(4),
      I3 => a(8),
      I4 => a(5),
      I5 => a(9),
      O => \spo[29]_INST_0_i_58_n_0\
    );
\spo[29]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FF000FF00FF0FF0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[29]_INST_0_i_59_n_0\
    );
\spo[29]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_15_n_0\,
      I1 => \spo[29]_INST_0_i_16_n_0\,
      O => \spo[29]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF000EF"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => a(8),
      I3 => a(5),
      I4 => a(4),
      O => \spo[29]_INST_0_i_60_n_0\
    );
\spo[29]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFF8F0FFFF000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[29]_INST_0_i_61_n_0\
    );
\spo[29]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A080FAEA5555"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_62_n_0\
    );
\spo[29]_INST_0_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B487"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(5),
      I3 => a(4),
      O => \spo[29]_INST_0_i_63_n_0\
    );
\spo[29]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFD22225040FFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_64_n_0\
    );
\spo[29]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6262626333333131"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[29]_INST_0_i_65_n_0\
    );
\spo[29]_INST_0_i_66\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50EF"
    )
        port map (
      I0 => a(4),
      I1 => a(9),
      I2 => a(8),
      I3 => a(5),
      O => \spo[29]_INST_0_i_66_n_0\
    );
\spo[29]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3264264C66CC66CC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[29]_INST_0_i_67_n_0\
    );
\spo[29]_INST_0_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B78"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      O => \spo[29]_INST_0_i_68_n_0\
    );
\spo[29]_INST_0_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6336"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[29]_INST_0_i_69_n_0\
    );
\spo[29]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_17_n_0\,
      I1 => \spo[29]_INST_0_i_18_n_0\,
      O => \spo[29]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F003070FFFF8F0F"
    )
        port map (
      I0 => a(0),
      I1 => a(9),
      I2 => a(8),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => \spo[29]_INST_0_i_70_n_0\
    );
\spo[29]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"033F033FFCF3F880"
    )
        port map (
      I0 => a(1),
      I1 => a(7),
      I2 => a(4),
      I3 => a(8),
      I4 => a(9),
      I5 => a(5),
      O => \spo[29]_INST_0_i_71_n_0\
    );
\spo[29]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C8C8C8C9C9C9DB"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[29]_INST_0_i_72_n_0\
    );
\spo[29]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAA0EAA05F5F5F5F"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(9),
      I5 => a(5),
      O => \spo[29]_INST_0_i_73_n_0\
    );
\spo[29]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557A0A0FAEA5555"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(4),
      O => \spo[29]_INST_0_i_74_n_0\
    );
\spo[29]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C591919193"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[29]_INST_0_i_75_n_0\
    );
\spo[29]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_19_n_0\,
      I1 => \spo[29]_INST_0_i_20_n_0\,
      O => \spo[29]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[29]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[29]_INST_0_i_21_n_0\,
      I1 => \spo[29]_INST_0_i_22_n_0\,
      O => \spo[29]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[2]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_1_n_0\,
      I1 => \spo[2]_INST_0_i_2_n_0\,
      O => spo(2),
      S => a(3)
    );
\spo[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_3_n_0\,
      I1 => \spo[2]_INST_0_i_4_n_0\,
      O => \spo[2]_INST_0_i_1_n_0\,
      S => a(2)
    );
\spo[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_32_n_0\,
      I1 => \spo[2]_INST_0_i_33_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_34_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_35_n_0\,
      O => \spo[2]_INST_0_i_10_n_0\
    );
\spo[2]_INST_0_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_36_n_0\,
      I1 => \spo[2]_INST_0_i_37_n_0\,
      O => \spo[2]_INST_0_i_11_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_38_n_0\,
      I1 => \spo[2]_INST_0_i_39_n_0\,
      O => \spo[2]_INST_0_i_12_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_40_n_0\,
      I1 => \spo[2]_INST_0_i_41_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_34_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_42_n_0\,
      O => \spo[2]_INST_0_i_13_n_0\
    );
\spo[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_43_n_0\,
      I1 => \spo[2]_INST_0_i_44_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_45_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_46_n_0\,
      O => \spo[2]_INST_0_i_14_n_0\
    );
\spo[2]_INST_0_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_47_n_0\,
      I1 => \spo[2]_INST_0_i_48_n_0\,
      O => \spo[2]_INST_0_i_15_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_49_n_0\,
      I1 => \spo[2]_INST_0_i_50_n_0\,
      O => \spo[2]_INST_0_i_16_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_51_n_0\,
      I1 => \spo[2]_INST_0_i_52_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_45_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_53_n_0\,
      O => \spo[2]_INST_0_i_17_n_0\
    );
\spo[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_54_n_0\,
      I1 => \spo[2]_INST_0_i_55_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_56_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_57_n_0\,
      O => \spo[2]_INST_0_i_18_n_0\
    );
\spo[2]_INST_0_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_58_n_0\,
      I1 => \spo[2]_INST_0_i_59_n_0\,
      O => \spo[2]_INST_0_i_19_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_5_n_0\,
      I1 => \spo[2]_INST_0_i_6_n_0\,
      O => \spo[2]_INST_0_i_2_n_0\,
      S => a(2)
    );
\spo[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_60_n_0\,
      I1 => \spo[6]_INST_0_i_20_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_61_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_62_n_0\,
      O => \spo[2]_INST_0_i_20_n_0\
    );
\spo[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_63_n_0\,
      I1 => \spo[2]_INST_0_i_64_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_56_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_65_n_0\,
      O => \spo[2]_INST_0_i_21_n_0\
    );
\spo[2]_INST_0_i_22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_66_n_0\,
      I1 => \spo[2]_INST_0_i_67_n_0\,
      O => \spo[2]_INST_0_i_22_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1C38387070F1F1E3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_23_n_0\
    );
\spo[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D9CD594D41060636"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_24_n_0\
    );
\spo[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBC7C78787060614"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_25_n_0\
    );
\spo[2]_INST_0_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_68_n_0\,
      I1 => \spo[2]_INST_0_i_69_n_0\,
      O => \spo[2]_INST_0_i_26_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_70_n_0\,
      I1 => \spo[2]_INST_0_i_71_n_0\,
      O => \spo[2]_INST_0_i_27_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7BFBFDEDEDCDC48"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[2]_INST_0_i_28_n_0\
    );
\spo[2]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6BEDAD8BEDAD849"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_29_n_0\
    );
\spo[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_7_n_0\,
      I1 => \spo[2]_INST_0_i_8_n_0\,
      I2 => a(11),
      I3 => \spo[2]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_10_n_0\,
      O => \spo[2]_INST_0_i_3_n_0\
    );
\spo[2]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08103173103173F7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[2]_INST_0_i_30_n_0\
    );
\spo[2]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"882103370923377F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_31_n_0\
    );
\spo[2]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"49454125212622B6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_32_n_0\
    );
\spo[2]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD4D45460636163A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[2]_INST_0_i_33_n_0\
    );
\spo[2]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF87FFFE080F8E0"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(5),
      I3 => a(0),
      I4 => a(9),
      I5 => a(1),
      O => \spo[2]_INST_0_i_34_n_0\
    );
\spo[2]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFDCDE48DE48DC40"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_35_n_0\
    );
\spo[2]_INST_0_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_72_n_0\,
      I1 => \spo[2]_INST_0_i_73_n_0\,
      O => \spo[2]_INST_0_i_36_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_74_n_0\,
      I1 => \spo[2]_INST_0_i_75_n_0\,
      O => \spo[2]_INST_0_i_37_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_76_n_0\,
      I1 => \spo[2]_INST_0_i_77_n_0\,
      O => \spo[2]_INST_0_i_38_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_78_n_0\,
      I1 => \spo[2]_INST_0_i_79_n_0\,
      O => \spo[2]_INST_0_i_39_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_11_n_0\,
      I1 => \spo[2]_INST_0_i_12_n_0\,
      I2 => a(11),
      I3 => \spo[2]_INST_0_i_13_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_14_n_0\,
      O => \spo[2]_INST_0_i_4_n_0\
    );
\spo[2]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8402123402123B7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[2]_INST_0_i_40_n_0\
    );
\spo[2]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D9054925492545A6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_41_n_0\
    );
\spo[2]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FCFEC8F6C8DC80"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_42_n_0\
    );
\spo[2]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB6EDDE8BDEAD4D9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_43_n_0\
    );
\spo[2]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36B2B9C9BAB9E9C5"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[2]_INST_0_i_44_n_0\
    );
\spo[2]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C080810103171F3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_45_n_0\
    );
\spo[2]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"402123B72123B7BF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_46_n_0\
    );
\spo[2]_INST_0_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_80_n_0\,
      I1 => \spo[2]_INST_0_i_81_n_0\,
      O => \spo[2]_INST_0_i_47_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_82_n_0\,
      I1 => \spo[2]_INST_0_i_83_n_0\,
      O => \spo[2]_INST_0_i_48_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_84_n_0\,
      I1 => \spo[2]_INST_0_i_85_n_0\,
      O => \spo[2]_INST_0_i_49_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_15_n_0\,
      I1 => \spo[2]_INST_0_i_16_n_0\,
      I2 => a(11),
      I3 => \spo[2]_INST_0_i_17_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_18_n_0\,
      O => \spo[2]_INST_0_i_5_n_0\
    );
\spo[2]_INST_0_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_86_n_0\,
      I1 => \spo[2]_INST_0_i_87_n_0\,
      O => \spo[2]_INST_0_i_50_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3D7FFFDDD4ECC8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(9),
      I5 => a(1),
      O => \spo[2]_INST_0_i_51_n_0\
    );
\spo[2]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26B6BADAB6BADAD9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_52_n_0\
    );
\spo[2]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C09133709033377"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_53_n_0\
    );
\spo[2]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD014925492145A6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_54_n_0\
    );
\spo[2]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D9494D4646263632"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[2]_INST_0_i_55_n_0\
    );
\spo[2]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73F7F7EFEFCECE8C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_56_n_0\
    );
\spo[2]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFDFFFDEDC484840"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[2]_INST_0_i_57_n_0\
    );
\spo[2]_INST_0_i_58\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_88_n_0\,
      I1 => \spo[2]_INST_0_i_89_n_0\,
      O => \spo[2]_INST_0_i_58_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_59\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_90_n_0\,
      I1 => \spo[2]_INST_0_i_91_n_0\,
      O => \spo[2]_INST_0_i_59_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_19_n_0\,
      I1 => \spo[2]_INST_0_i_20_n_0\,
      I2 => a(11),
      I3 => \spo[2]_INST_0_i_21_n_0\,
      I4 => a(6),
      I5 => \spo[2]_INST_0_i_22_n_0\,
      O => \spo[2]_INST_0_i_6_n_0\
    );
\spo[2]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80EC13C801EC3793"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_60_n_0\
    );
\spo[2]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F905E905C1078506"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_61_n_0\
    );
\spo[2]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1C7E38FE38FC70E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_62_n_0\
    );
\spo[2]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DC48C000002121A7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_63_n_0\
    );
\spo[2]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D945492549254526"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_64_n_0\
    );
\spo[2]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F1FF8E0FF78E0E0"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(5),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_65_n_0\
    );
\spo[2]_INST_0_i_66\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_92_n_0\,
      I1 => \spo[2]_INST_0_i_93_n_0\,
      O => \spo[2]_INST_0_i_66_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_67\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[2]_INST_0_i_94_n_0\,
      I1 => \spo[2]_INST_0_i_95_n_0\,
      O => \spo[2]_INST_0_i_67_n_0\,
      S => a(7)
    );
\spo[2]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E3C70F03878F0E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_68_n_0\
    );
\spo[2]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"163A3A7A7AF9F9E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_69_n_0\
    );
\spo[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_77_n_0\,
      I1 => \spo[2]_INST_0_i_23_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_24_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_25_n_0\,
      O => \spo[2]_INST_0_i_7_n_0\
    );
\spo[2]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3D7C79F8F1E0E1C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_70_n_0\
    );
\spo[2]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3E7F3E7C386861C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_71_n_0\
    );
\spo[2]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"136C7F883788FE9B"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_72_n_0\
    );
\spo[2]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"263626B2B6B9B9C9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_73_n_0\
    );
\spo[2]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C7C78F8F0E0E1C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_74_n_0\
    );
\spo[2]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F1C387F1E38F0F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_75_n_0\
    );
\spo[2]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F187E30FE30FC70E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_76_n_0\
    );
\spo[2]_INST_0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E9C5C58585060616"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_77_n_0\
    );
\spo[2]_INST_0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13EC7E003680FE13"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_78_n_0\
    );
\spo[2]_INST_0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E1C0C181C393963"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_79_n_0\
    );
\spo[2]_INST_0_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[2]_INST_0_i_26_n_0\,
      I1 => \spo[2]_INST_0_i_27_n_0\,
      O => \spo[2]_INST_0_i_8_n_0\,
      S => a(10)
    );
\spo[2]_INST_0_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F987EB07EB07C706"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_80_n_0\
    );
\spo[2]_INST_0_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBD9D94949464426"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_81_n_0\
    );
\spo[2]_INST_0_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"93EC7F0037807E13"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_82_n_0\
    );
\spo[2]_INST_0_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F1C0E380E381C70"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_83_n_0\
    );
\spo[2]_INST_0_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E1C38701C3870F1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_84_n_0\
    );
\spo[2]_INST_0_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"136EFFA837AAFE99"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_85_n_0\
    );
\spo[2]_INST_0_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F187E31FE30FD71E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_86_n_0\
    );
\spo[2]_INST_0_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71F3F1E3E3C6C68C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_87_n_0\
    );
\spo[2]_INST_0_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06143878143878F9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_88_n_0\
    );
\spo[2]_INST_0_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2246BB682B66BDB9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_89_n_0\
    );
\spo[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[2]_INST_0_i_28_n_0\,
      I1 => \spo[2]_INST_0_i_29_n_0\,
      I2 => a(10),
      I3 => \spo[2]_INST_0_i_30_n_0\,
      I4 => a(7),
      I5 => \spo[2]_INST_0_i_31_n_0\,
      O => \spo[2]_INST_0_i_9_n_0\
    );
\spo[2]_INST_0_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7187E30FC38F871E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[2]_INST_0_i_90_n_0\
    );
\spo[2]_INST_0_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F1E3C7F1E3C78F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_91_n_0\
    );
\spo[2]_INST_0_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"480021A7402123B7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[2]_INST_0_i_92_n_0\
    );
\spo[2]_INST_0_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C08081010313173"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_93_n_0\
    );
\spo[2]_INST_0_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"26B2B6B8B8C9D9CD"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[2]_INST_0_i_94_n_0\
    );
\spo[2]_INST_0_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B6BEDAB6BADED9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[2]_INST_0_i_95_n_0\
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_1_n_0\,
      I1 => \spo[30]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[30]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[30]_INST_0_i_4_n_0\,
      O => spo(11)
    );
\spo[30]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[30]_INST_0_i_5_n_0\,
      I1 => \spo[30]_INST_0_i_6_n_0\,
      O => \spo[30]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[30]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_23_n_0\,
      I1 => \spo[30]_INST_0_i_24_n_0\,
      O => \spo[30]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_25_n_0\,
      I1 => \spo[30]_INST_0_i_26_n_0\,
      O => \spo[30]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_27_n_0\,
      I1 => \spo[30]_INST_0_i_28_n_0\,
      O => \spo[30]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_29_n_0\,
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_30_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_31_n_0\,
      O => \spo[30]_INST_0_i_13_n_0\
    );
\spo[30]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_32_n_0\,
      I1 => \spo[30]_INST_0_i_33_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_34_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_36_n_0\,
      O => \spo[30]_INST_0_i_14_n_0\
    );
\spo[30]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_35_n_0\,
      I1 => \spo[30]_INST_0_i_36_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_37_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_38_n_0\,
      O => \spo[30]_INST_0_i_15_n_0\
    );
\spo[30]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_39_n_0\,
      I1 => \spo[30]_INST_0_i_40_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_41_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_42_n_0\,
      O => \spo[30]_INST_0_i_16_n_0\
    );
\spo[30]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_43_n_0\,
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[31]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_44_n_0\,
      O => \spo[30]_INST_0_i_17_n_0\
    );
\spo[30]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[30]_INST_0_i_45_n_0\,
      I1 => a(10),
      I2 => \spo[30]_INST_0_i_46_n_0\,
      I3 => a(7),
      I4 => \spo[31]_INST_0_i_36_n_0\,
      O => \spo[30]_INST_0_i_18_n_0\
    );
\spo[30]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_35_n_0\,
      I1 => \spo[30]_INST_0_i_47_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_48_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_38_n_0\,
      O => \spo[30]_INST_0_i_19_n_0\
    );
\spo[30]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[30]_INST_0_i_7_n_0\,
      I1 => \spo[30]_INST_0_i_8_n_0\,
      O => \spo[30]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[30]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_39_n_0\,
      I1 => \spo[30]_INST_0_i_49_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_41_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_50_n_0\,
      O => \spo[30]_INST_0_i_20_n_0\
    );
\spo[30]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_51_n_0\,
      I1 => \spo[31]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => \spo[31]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_52_n_0\,
      O => \spo[30]_INST_0_i_21_n_0\
    );
\spo[30]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_53_n_0\,
      I1 => \spo[30]_INST_0_i_54_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_38_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_47_n_0\,
      O => \spo[30]_INST_0_i_22_n_0\
    );
\spo[30]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_55_n_0\,
      I1 => \spo[30]_INST_0_i_47_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_56_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_38_n_0\,
      O => \spo[30]_INST_0_i_23_n_0\
    );
\spo[30]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_39_n_0\,
      I1 => \spo[30]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_50_n_0\,
      O => \spo[30]_INST_0_i_24_n_0\
    );
\spo[30]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[30]_INST_0_i_58_n_0\,
      I1 => a(10),
      I2 => \spo[30]_INST_0_i_59_n_0\,
      I3 => a(7),
      I4 => \spo[30]_INST_0_i_52_n_0\,
      O => \spo[30]_INST_0_i_25_n_0\
    );
\spo[30]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_60_n_0\,
      I1 => \spo[30]_INST_0_i_61_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_38_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_62_n_0\,
      O => \spo[30]_INST_0_i_26_n_0\
    );
\spo[30]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_46_n_0\,
      I1 => \spo[30]_INST_0_i_47_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_56_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_63_n_0\,
      O => \spo[30]_INST_0_i_27_n_0\
    );
\spo[30]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[30]_INST_0_i_64_n_0\,
      I1 => \spo[30]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[30]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[30]_INST_0_i_50_n_0\,
      O => \spo[30]_INST_0_i_28_n_0\
    );
\spo[30]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AAAAFF40AA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_29_n_0\
    );
\spo[30]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[30]_INST_0_i_9_n_0\,
      I1 => \spo[30]_INST_0_i_10_n_0\,
      O => \spo[30]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[30]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FF00000FF000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_30_n_0\
    );
\spo[30]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555500FE00AA00"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_31_n_0\
    );
\spo[30]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F55555FFFEA0A0"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[30]_INST_0_i_32_n_0\
    );
\spo[30]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F0F00F00FFF0F"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_33_n_0\
    );
\spo[30]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7E7E7E37373737"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[30]_INST_0_i_34_n_0\
    );
\spo[30]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80F8"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      O => \spo[30]_INST_0_i_35_n_0\
    );
\spo[30]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88881000ECCCC888"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_36_n_0\
    );
\spo[30]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00FFFFC8FF"
    )
        port map (
      I0 => a(0),
      I1 => a(4),
      I2 => a(1),
      I3 => a(8),
      I4 => a(9),
      I5 => a(5),
      O => \spo[30]_INST_0_i_37_n_0\
    );
\spo[30]_INST_0_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE37"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[30]_INST_0_i_38_n_0\
    );
\spo[30]_INST_0_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70F7"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(9),
      I3 => a(5),
      O => \spo[30]_INST_0_i_39_n_0\
    );
\spo[30]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[30]_INST_0_i_11_n_0\,
      I1 => \spo[30]_INST_0_i_12_n_0\,
      O => \spo[30]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[30]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF77FE11331133"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[30]_INST_0_i_40_n_0\
    );
\spo[30]_INST_0_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C34"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      O => \spo[30]_INST_0_i_41_n_0\
    );
\spo[30]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00558000554000"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_42_n_0\
    );
\spo[30]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F00000F0FFF0F0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(4),
      I4 => a(9),
      I5 => a(5),
      O => \spo[30]_INST_0_i_43_n_0\
    );
\spo[30]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFAA0015000000"
    )
        port map (
      I0 => a(4),
      I1 => a(0),
      I2 => a(1),
      I3 => a(8),
      I4 => a(9),
      I5 => a(5),
      O => \spo[30]_INST_0_i_44_n_0\
    );
\spo[30]_INST_0_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B330E1D1"
    )
        port map (
      I0 => a(7),
      I1 => a(8),
      I2 => a(5),
      I3 => a(4),
      I4 => a(9),
      O => \spo[30]_INST_0_i_45_n_0\
    );
\spo[30]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFF000FF0FFF"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_46_n_0\
    );
\spo[30]_INST_0_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3200"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(5),
      O => \spo[30]_INST_0_i_47_n_0\
    );
\spo[30]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAAA55BF55"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_48_n_0\
    );
\spo[30]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFFAA007F15FF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_49_n_0\
    );
\spo[30]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_13_n_0\,
      I1 => \spo[30]_INST_0_i_14_n_0\,
      O => \spo[30]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => a(4),
      I1 => a(9),
      I2 => a(5),
      I3 => a(8),
      O => \spo[30]_INST_0_i_50_n_0\
    );
\spo[30]_INST_0_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0BA"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(9),
      I3 => a(5),
      O => \spo[30]_INST_0_i_51_n_0\
    );
\spo[30]_INST_0_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3840"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(9),
      I3 => a(5),
      O => \spo[30]_INST_0_i_52_n_0\
    );
\spo[30]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F0F00FF00F000"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_53_n_0\
    );
\spo[30]_INST_0_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"549D"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[30]_INST_0_i_54_n_0\
    );
\spo[30]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FF800055EA00"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_55_n_0\
    );
\spo[30]_INST_0_i_56\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE9D"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[30]_INST_0_i_56_n_0\
    );
\spo[30]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA55AAAAFF40AA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_57_n_0\
    );
\spo[30]_INST_0_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F010F7F0"
    )
        port map (
      I0 => a(7),
      I1 => a(4),
      I2 => a(8),
      I3 => a(9),
      I4 => a(5),
      O => \spo[30]_INST_0_i_58_n_0\
    );
\spo[30]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020044C4C4C"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[30]_INST_0_i_59_n_0\
    );
\spo[30]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_15_n_0\,
      I1 => \spo[30]_INST_0_i_16_n_0\,
      O => \spo[30]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_60\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54C8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(9),
      O => \spo[30]_INST_0_i_60_n_0\
    );
\spo[30]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333040CC3F33333"
    )
        port map (
      I0 => a(0),
      I1 => a(8),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[30]_INST_0_i_61_n_0\
    );
\spo[30]_INST_0_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BDFF"
    )
        port map (
      I0 => a(9),
      I1 => a(4),
      I2 => a(5),
      I3 => a(8),
      O => \spo[30]_INST_0_i_62_n_0\
    );
\spo[30]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA00155FFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[30]_INST_0_i_63_n_0\
    );
\spo[30]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFFAA005F15FF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[30]_INST_0_i_64_n_0\
    );
\spo[30]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F00FF0F0FF00F0"
    )
        port map (
      I0 => a(1),
      I1 => a(0),
      I2 => a(8),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[30]_INST_0_i_65_n_0\
    );
\spo[30]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_17_n_0\,
      I1 => \spo[30]_INST_0_i_18_n_0\,
      O => \spo[30]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_19_n_0\,
      I1 => \spo[30]_INST_0_i_20_n_0\,
      O => \spo[30]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[30]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[30]_INST_0_i_21_n_0\,
      I1 => \spo[30]_INST_0_i_22_n_0\,
      O => \spo[30]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_1_n_0\,
      I1 => \spo[31]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[31]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[31]_INST_0_i_4_n_0\,
      O => spo(12)
    );
\spo[31]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[31]_INST_0_i_5_n_0\,
      I1 => \spo[31]_INST_0_i_6_n_0\,
      O => \spo[31]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[31]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_23_n_0\,
      I1 => \spo[31]_INST_0_i_24_n_0\,
      O => \spo[31]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_25_n_0\,
      I1 => \spo[31]_INST_0_i_26_n_0\,
      O => \spo[31]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_27_n_0\,
      I1 => \spo[31]_INST_0_i_28_n_0\,
      O => \spo[31]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_29_n_0\,
      I1 => \spo[31]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[31]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_32_n_0\,
      O => \spo[31]_INST_0_i_13_n_0\
    );
\spo[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_33_n_0\,
      I1 => \spo[31]_INST_0_i_34_n_0\,
      I2 => a(10),
      I3 => \spo[31]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_36_n_0\,
      O => \spo[31]_INST_0_i_14_n_0\
    );
\spo[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFC0C0AFA0CFCF"
    )
        port map (
      I0 => \spo[31]_INST_0_i_37_n_0\,
      I1 => \spo[31]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => a(8),
      I4 => a(7),
      I5 => a(9),
      O => \spo[31]_INST_0_i_15_n_0\
    );
\spo[31]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_39_n_0\,
      I1 => a(10),
      I2 => \spo[31]_INST_0_i_40_n_0\,
      I3 => a(7),
      I4 => \spo[31]_INST_0_i_41_n_0\,
      O => \spo[31]_INST_0_i_16_n_0\
    );
\spo[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0A05FEF1FF08F"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(10),
      I3 => a(7),
      I4 => a(9),
      I5 => a(8),
      O => \spo[31]_INST_0_i_17_n_0\
    );
\spo[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B939CECB393D9B9B"
    )
        port map (
      I0 => a(10),
      I1 => a(7),
      I2 => a(8),
      I3 => a(4),
      I4 => a(9),
      I5 => a(5),
      O => \spo[31]_INST_0_i_18_n_0\
    );
\spo[31]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FF0F0EFC03F7F"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(10),
      I3 => a(8),
      I4 => a(7),
      I5 => a(9),
      O => \spo[31]_INST_0_i_19_n_0\
    );
\spo[31]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[31]_INST_0_i_7_n_0\,
      I1 => \spo[31]_INST_0_i_8_n_0\,
      O => \spo[31]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D979797D3C3D3929"
    )
        port map (
      I0 => a(10),
      I1 => a(7),
      I2 => a(9),
      I3 => a(4),
      I4 => a(5),
      I5 => a(8),
      O => \spo[31]_INST_0_i_20_n_0\
    );
\spo[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0CFAFCFA0CF"
    )
        port map (
      I0 => \spo[31]_INST_0_i_42_n_0\,
      I1 => \spo[31]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => a(7),
      I4 => a(9),
      I5 => a(8),
      O => \spo[31]_INST_0_i_21_n_0\
    );
\spo[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_44_n_0\,
      I1 => \spo[31]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[31]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[31]_INST_0_i_47_n_0\,
      O => \spo[31]_INST_0_i_22_n_0\
    );
\spo[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFC0C0AFA0CFCF"
    )
        port map (
      I0 => \spo[31]_INST_0_i_48_n_0\,
      I1 => \spo[31]_INST_0_i_36_n_0\,
      I2 => a(10),
      I3 => a(8),
      I4 => a(7),
      I5 => a(9),
      O => \spo[31]_INST_0_i_23_n_0\
    );
\spo[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \spo[31]_INST_0_i_49_n_0\,
      I1 => a(10),
      I2 => \spo[31]_INST_0_i_50_n_0\,
      I3 => a(7),
      I4 => \spo[31]_INST_0_i_51_n_0\,
      I5 => a(8),
      O => \spo[31]_INST_0_i_24_n_0\
    );
\spo[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0C07FEF3FF00F"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(10),
      I3 => a(7),
      I4 => a(9),
      I5 => a(8),
      O => \spo[31]_INST_0_i_25_n_0\
    );
\spo[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3D39299F9B9BDB"
    )
        port map (
      I0 => a(10),
      I1 => a(7),
      I2 => a(9),
      I3 => a(4),
      I4 => a(5),
      I5 => a(8),
      O => \spo[31]_INST_0_i_26_n_0\
    );
\spo[31]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1FF0F0CF803F7F"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(10),
      I3 => a(8),
      I4 => a(7),
      I5 => a(9),
      O => \spo[31]_INST_0_i_27_n_0\
    );
\spo[31]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9797D7D3C393969"
    )
        port map (
      I0 => a(10),
      I1 => a(7),
      I2 => a(9),
      I3 => a(4),
      I4 => a(5),
      I5 => a(8),
      O => \spo[31]_INST_0_i_28_n_0\
    );
\spo[31]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555500FF55BF55"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[31]_INST_0_i_29_n_0\
    );
\spo[31]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[31]_INST_0_i_9_n_0\,
      I1 => \spo[31]_INST_0_i_10_n_0\,
      O => \spo[31]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[31]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6B2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[31]_INST_0_i_30_n_0\
    );
\spo[31]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(4),
      I3 => a(5),
      I4 => a(8),
      I5 => a(9),
      O => \spo[31]_INST_0_i_31_n_0\
    );
\spo[31]_INST_0_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      O => \spo[31]_INST_0_i_32_n_0\
    );
\spo[31]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(4),
      I3 => a(8),
      O => \spo[31]_INST_0_i_33_n_0\
    );
\spo[31]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00000000FFFF"
    )
        port map (
      I0 => a(0),
      I1 => a(1),
      I2 => a(4),
      I3 => a(5),
      I4 => a(8),
      I5 => a(9),
      O => \spo[31]_INST_0_i_34_n_0\
    );
\spo[31]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010101C8C8C8C8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[31]_INST_0_i_35_n_0\
    );
\spo[31]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1FF"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(9),
      I3 => a(5),
      O => \spo[31]_INST_0_i_36_n_0\
    );
\spo[31]_INST_0_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      O => \spo[31]_INST_0_i_37_n_0\
    );
\spo[31]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF13373377"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[31]_INST_0_i_38_n_0\
    );
\spo[31]_INST_0_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AAAA"
    )
        port map (
      I0 => a(7),
      I1 => a(4),
      I2 => a(5),
      I3 => a(8),
      I4 => a(9),
      O => \spo[31]_INST_0_i_39_n_0\
    );
\spo[31]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[31]_INST_0_i_11_n_0\,
      I1 => \spo[31]_INST_0_i_12_n_0\,
      O => \spo[31]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[31]_INST_0_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC34"
    )
        port map (
      I0 => a(4),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      O => \spo[31]_INST_0_i_40_n_0\
    );
\spo[31]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAAA7FBFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(9),
      O => \spo[31]_INST_0_i_41_n_0\
    );
\spo[31]_INST_0_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7751"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(5),
      O => \spo[31]_INST_0_i_42_n_0\
    );
\spo[31]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFF4A0AAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[31]_INST_0_i_43_n_0\
    );
\spo[31]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5555555FFFFFFFF"
    )
        port map (
      I0 => a(9),
      I1 => a(5),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(8),
      O => \spo[31]_INST_0_i_44_n_0\
    );
\spo[31]_INST_0_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      O => \spo[31]_INST_0_i_45_n_0\
    );
\spo[31]_INST_0_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C18"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      O => \spo[31]_INST_0_i_46_n_0\
    );
\spo[31]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFFD5FFFFFFFF"
    )
        port map (
      I0 => a(9),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(5),
      I5 => a(8),
      O => \spo[31]_INST_0_i_47_n_0\
    );
\spo[31]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF800055EA00"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[31]_INST_0_i_48_n_0\
    );
\spo[31]_INST_0_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FFFF00"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(8),
      I3 => a(7),
      I4 => a(9),
      O => \spo[31]_INST_0_i_49_n_0\
    );
\spo[31]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_13_n_0\,
      I1 => \spo[31]_INST_0_i_14_n_0\,
      O => \spo[31]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA55AAAAFF40AA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(5),
      I4 => a(9),
      I5 => a(4),
      O => \spo[31]_INST_0_i_50_n_0\
    );
\spo[31]_INST_0_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => a(5),
      I1 => a(4),
      I2 => a(9),
      O => \spo[31]_INST_0_i_51_n_0\
    );
\spo[31]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_15_n_0\,
      I1 => \spo[31]_INST_0_i_16_n_0\,
      O => \spo[31]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_17_n_0\,
      I1 => \spo[31]_INST_0_i_18_n_0\,
      O => \spo[31]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_19_n_0\,
      I1 => \spo[31]_INST_0_i_20_n_0\,
      O => \spo[31]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[31]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[31]_INST_0_i_21_n_0\,
      I1 => \spo[31]_INST_0_i_22_n_0\,
      O => \spo[31]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_1_n_0\,
      I1 => \spo[3]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[3]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[3]_INST_0_i_4_n_0\,
      O => spo(3)
    );
\spo[3]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_5_n_0\,
      I1 => \spo[3]_INST_0_i_6_n_0\,
      O => \spo[3]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[3]_INST_0_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_28_n_0\,
      I1 => \spo[3]_INST_0_i_29_n_0\,
      O => \spo[3]_INST_0_i_10_n_0\,
      S => a(10)
    );
\spo[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_30_n_0\,
      I1 => \spo[3]_INST_0_i_31_n_0\,
      O => \spo[3]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_32_n_0\,
      I1 => \spo[3]_INST_0_i_33_n_0\,
      O => \spo[3]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_34_n_0\,
      I1 => \spo[3]_INST_0_i_35_n_0\,
      O => \spo[3]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_36_n_0\,
      I1 => \spo[3]_INST_0_i_37_n_0\,
      O => \spo[3]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_29_n_0\,
      I1 => \spo[3]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_39_n_0\,
      O => \spo[3]_INST_0_i_15_n_0\
    );
\spo[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_40_n_0\,
      I1 => \spo[3]_INST_0_i_41_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_42_n_0\,
      O => \spo[3]_INST_0_i_16_n_0\
    );
\spo[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_43_n_0\,
      I1 => \spo[7]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_39_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_44_n_0\,
      O => \spo[3]_INST_0_i_17_n_0\
    );
\spo[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_31_n_0\,
      I1 => \spo[3]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_43_n_0\,
      O => \spo[3]_INST_0_i_18_n_0\
    );
\spo[3]_INST_0_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_47_n_0\,
      I1 => \spo[3]_INST_0_i_48_n_0\,
      O => \spo[3]_INST_0_i_19_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_7_n_0\,
      I1 => \spo[3]_INST_0_i_8_n_0\,
      I2 => a(11),
      I3 => \spo[3]_INST_0_i_9_n_0\,
      I4 => a(6),
      I5 => \spo[3]_INST_0_i_10_n_0\,
      O => \spo[3]_INST_0_i_2_n_0\
    );
\spo[3]_INST_0_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_49_n_0\,
      I1 => \spo[3]_INST_0_i_50_n_0\,
      O => \spo[3]_INST_0_i_20_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFEFEFC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_21_n_0\
    );
\spo[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0F0E0F0E0F0E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[3]_INST_0_i_22_n_0\
    );
\spo[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F9F7FFF7AAAAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_23_n_0\
    );
\spo[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEECC88013377FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_24_n_0\
    );
\spo[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BFFBFF7FF77F777"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => \spo[3]_INST_0_i_25_n_0\
    );
\spo[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444422299955555"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_26_n_0\
    );
\spo[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70E1F3F7F1E3F3F7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[3]_INST_0_i_27_n_0\
    );
\spo[3]_INST_0_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_51_n_0\,
      I1 => \spo[3]_INST_0_i_52_n_0\,
      O => \spo[3]_INST_0_i_28_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_53_n_0\,
      I1 => \spo[3]_INST_0_i_54_n_0\,
      O => \spo[3]_INST_0_i_29_n_0\,
      S => a(7)
    );
\spo[3]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_11_n_0\,
      I1 => \spo[3]_INST_0_i_12_n_0\,
      O => \spo[3]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_55_n_0\,
      I1 => \spo[3]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_58_n_0\,
      O => \spo[3]_INST_0_i_30_n_0\
    );
\spo[3]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_59_n_0\,
      I1 => \spo[3]_INST_0_i_58_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_59_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_60_n_0\,
      O => \spo[3]_INST_0_i_31_n_0\
    );
\spo[3]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_61_n_0\,
      I1 => \spo[3]_INST_0_i_62_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_49_n_0\,
      O => \spo[3]_INST_0_i_32_n_0\
    );
\spo[3]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[3]_INST_0_i_64_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_66_n_0\,
      O => \spo[3]_INST_0_i_33_n_0\
    );
\spo[3]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_67_n_0\,
      I1 => \spo[3]_INST_0_i_68_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_69_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_69_n_0\,
      O => \spo[3]_INST_0_i_34_n_0\
    );
\spo[3]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_70_n_0\,
      I1 => \spo[7]_INST_0_i_72_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_71_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_73_n_0\,
      O => \spo[3]_INST_0_i_35_n_0\
    );
\spo[3]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_64_n_0\,
      I1 => \spo[7]_INST_0_i_74_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_72_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_76_n_0\,
      O => \spo[3]_INST_0_i_36_n_0\
    );
\spo[3]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_77_n_0\,
      I1 => \spo[3]_INST_0_i_73_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_74_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_79_n_0\,
      O => \spo[3]_INST_0_i_37_n_0\
    );
\spo[3]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444422299D55555"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_38_n_0\
    );
\spo[3]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A1A7A0A1A3B7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[3]_INST_0_i_39_n_0\
    );
\spo[3]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_13_n_0\,
      I1 => \spo[3]_INST_0_i_14_n_0\,
      O => \spo[3]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[3]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2AAAAA00010107"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_40_n_0\
    );
\spo[3]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5555555AAAAAAA9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_41_n_0\
    );
\spo[3]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007001AE0008000"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_42_n_0\
    );
\spo[3]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCFCE81337173F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(9),
      O => \spo[3]_INST_0_i_43_n_0\
    );
\spo[3]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_44_n_0\
    );
\spo[3]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F0F0F0F0F0F1E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[3]_INST_0_i_45_n_0\
    );
\spo[3]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54545442B9959595"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(9),
      O => \spo[3]_INST_0_i_46_n_0\
    );
\spo[3]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888889"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_47_n_0\
    );
\spo[3]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAA55545656"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_48_n_0\
    );
\spo[3]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07177FFFF0808000"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_49_n_0\
    );
\spo[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_15_n_0\,
      I1 => \spo[3]_INST_0_i_16_n_0\,
      O => \spo[3]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F1E3C7F1E3C78F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[3]_INST_0_i_50_n_0\
    );
\spo[3]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFF7FF77FF777777"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_51_n_0\
    );
\spo[3]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00130137C8008000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[3]_INST_0_i_52_n_0\
    );
\spo[3]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25A5A5A6A6A6B6B2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[3]_INST_0_i_53_n_0\
    );
\spo[3]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5555555EEEEAAA9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_54_n_0\
    );
\spo[3]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4442222A80155555"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_55_n_0\
    );
\spo[3]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBFFDF6A2AAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_56_n_0\
    );
\spo[3]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00010103"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(9),
      O => \spo[3]_INST_0_i_57_n_0\
    );
\spo[3]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA55555556"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_58_n_0\
    );
\spo[3]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F077F80000000"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(5),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[3]_INST_0_i_59_n_0\
    );
\spo[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[3]_INST_0_i_17_n_0\,
      I1 => \spo[3]_INST_0_i_18_n_0\,
      O => \spo[3]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[3]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFFBFFF7F777"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_60_n_0\
    );
\spo[3]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005071FF8E0E080"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_61_n_0\
    );
\spo[3]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECC98101137FFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_62_n_0\
    );
\spo[3]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAF9F9E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[3]_INST_0_i_63_n_0\
    );
\spo[3]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F1F1E3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[3]_INST_0_i_64_n_0\
    );
\spo[3]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAFBD5A4A6AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[3]_INST_0_i_65_n_0\
    );
\spo[3]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE80800085557FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(0),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_66_n_0\
    );
\spo[3]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1A5A1A5A1A6A2B6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[3]_INST_0_i_67_n_0\
    );
\spo[3]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA5A59497A796945"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[3]_INST_0_i_68_n_0\
    );
\spo[3]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4008080808888888"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(5),
      O => \spo[3]_INST_0_i_69_n_0\
    );
\spo[3]_INST_0_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[3]_INST_0_i_19_n_0\,
      I1 => \spo[3]_INST_0_i_20_n_0\,
      O => \spo[3]_INST_0_i_7_n_0\,
      S => a(10)
    );
\spo[3]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6440000800088888"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[3]_INST_0_i_70_n_0\
    );
\spo[3]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00130137"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[3]_INST_0_i_71_n_0\
    );
\spo[3]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E0800095555555"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_72_n_0\
    );
\spo[3]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E080001F7FFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[3]_INST_0_i_73_n_0\
    );
\spo[3]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DADA5A5A5A595949"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[3]_INST_0_i_74_n_0\
    );
\spo[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_21_n_0\,
      I1 => \spo[3]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_23_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_24_n_0\,
      O => \spo[3]_INST_0_i_8_n_0\
    );
\spo[3]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[3]_INST_0_i_25_n_0\,
      I1 => \spo[3]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[3]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_27_n_0\,
      O => \spo[3]_INST_0_i_9_n_0\
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[4]_INST_0_i_1_n_0\,
      I2 => a(3),
      I3 => \spo[4]_INST_0_i_2_n_0\,
      I4 => a(2),
      I5 => \spo[8]_INST_0_i_4_n_0\,
      O => spo(4)
    );
\spo[4]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_3_n_0\,
      I1 => \spo[4]_INST_0_i_4_n_0\,
      O => \spo[4]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_19_n_0\,
      I1 => \spo[4]_INST_0_i_20_n_0\,
      I2 => a(10),
      I3 => \spo[4]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_54_n_0\,
      O => \spo[4]_INST_0_i_10_n_0\
    );
\spo[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_55_n_0\,
      I1 => \spo[4]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[4]_INST_0_i_18_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_58_n_0\,
      O => \spo[4]_INST_0_i_11_n_0\
    );
\spo[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_59_n_0\,
      I1 => \spo[4]_INST_0_i_23_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[4]_INST_0_i_24_n_0\,
      O => \spo[4]_INST_0_i_12_n_0\
    );
\spo[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_25_n_0\,
      I1 => \spo[8]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[4]_INST_0_i_26_n_0\,
      O => \spo[4]_INST_0_i_13_n_0\
    );
\spo[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_19_n_0\,
      I1 => \spo[8]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[4]_INST_0_i_27_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_54_n_0\,
      O => \spo[4]_INST_0_i_14_n_0\
    );
\spo[4]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF30C0FF31CE7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[4]_INST_0_i_15_n_0\
    );
\spo[4]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA8A75F575758A0A"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_16_n_0\
    );
\spo[4]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D75EA8AEA8A75F5"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_17_n_0\
    );
\spo[4]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55AA55B5AA55BA6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[4]_INST_0_i_18_n_0\
    );
\spo[4]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DC0EAFF6ABFD500"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_19_n_0\
    );
\spo[4]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[4]_INST_0_i_5_n_0\,
      I1 => \spo[4]_INST_0_i_6_n_0\,
      O => \spo[4]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[4]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD624AD56A95D5AA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_20_n_0\
    );
\spo[4]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FF1F00FF30C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[4]_INST_0_i_21_n_0\
    );
\spo[4]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3F17801500EAFF"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_22_n_0\
    );
\spo[4]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C33CC33D"
    )
        port map (
      I0 => a(5),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      O => \spo[4]_INST_0_i_23_n_0\
    );
\spo[4]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA5D755575BA0A"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_24_n_0\
    );
\spo[4]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB46569D469DBD2A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_25_n_0\
    );
\spo[4]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A55A5AA5A55B"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[4]_INST_0_i_26_n_0\
    );
\spo[4]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01CCFE3FEE3F1780"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[4]_INST_0_i_27_n_0\
    );
\spo[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_7_n_0\,
      I1 => \spo[4]_INST_0_i_8_n_0\,
      O => \spo[4]_INST_0_i_3_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_9_n_0\,
      I1 => \spo[4]_INST_0_i_10_n_0\,
      O => \spo[4]_INST_0_i_4_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_11_n_0\,
      I1 => \spo[4]_INST_0_i_12_n_0\,
      O => \spo[4]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[4]_INST_0_i_13_n_0\,
      I1 => \spo[4]_INST_0_i_14_n_0\,
      O => \spo[4]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_44_n_0\,
      I1 => \spo[4]_INST_0_i_15_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[4]_INST_0_i_16_n_0\,
      O => \spo[4]_INST_0_i_7_n_0\
    );
\spo[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_17_n_0\,
      I1 => \spo[8]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_48_n_0\,
      O => \spo[4]_INST_0_i_8_n_0\
    );
\spo[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[4]_INST_0_i_18_n_0\,
      I1 => \spo[8]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[4]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_22_n_0\,
      O => \spo[4]_INST_0_i_9_n_0\
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_1_n_0\,
      I1 => \spo[5]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[5]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[5]_INST_0_i_4_n_0\,
      O => spo(6)
    );
\spo[5]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_5_n_0\,
      I1 => \spo[5]_INST_0_i_6_n_0\,
      O => \spo[5]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_23_n_0\,
      I1 => \spo[5]_INST_0_i_24_n_0\,
      O => \spo[5]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_25_n_0\,
      I1 => \spo[5]_INST_0_i_26_n_0\,
      O => \spo[5]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_27_n_0\,
      I1 => \spo[5]_INST_0_i_28_n_0\,
      O => \spo[5]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_29_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_31_n_0\,
      O => \spo[5]_INST_0_i_13_n_0\
    );
\spo[5]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_32_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_29_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_14_n_0\
    );
\spo[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_33_n_0\,
      I1 => \spo[5]_INST_0_i_29_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_34_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_15_n_0\
    );
\spo[5]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_35_n_0\,
      I1 => \spo[5]_INST_0_i_36_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_33_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_29_n_0\,
      O => \spo[5]_INST_0_i_16_n_0\
    );
\spo[5]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[5]_INST_0_i_37_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_38_n_0\,
      O => \spo[5]_INST_0_i_17_n_0\
    );
\spo[5]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_39_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_40_n_0\,
      O => \spo[5]_INST_0_i_18_n_0\
    );
\spo[5]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_41_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_42_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_19_n_0\
    );
\spo[5]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_7_n_0\,
      I1 => \spo[5]_INST_0_i_8_n_0\,
      O => \spo[5]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_33_n_0\,
      I1 => \spo[5]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_44_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_20_n_0\
    );
\spo[5]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_30_n_0\,
      I1 => \spo[5]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_47_n_0\,
      O => \spo[5]_INST_0_i_21_n_0\
    );
\spo[5]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[5]_INST_0_i_48_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_49_n_0\,
      O => \spo[5]_INST_0_i_22_n_0\
    );
\spo[5]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \spo[5]_INST_0_i_50_n_0\,
      I1 => a(7),
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_23_n_0\
    );
\spo[5]_INST_0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \spo[5]_INST_0_i_33_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_51_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_30_n_0\,
      O => \spo[5]_INST_0_i_24_n_0\
    );
\spo[5]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_46_n_0\,
      I1 => \spo[5]_INST_0_i_52_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_53_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_47_n_0\,
      O => \spo[5]_INST_0_i_25_n_0\
    );
\spo[5]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_30_n_0\,
      I1 => \spo[5]_INST_0_i_54_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_52_n_0\,
      O => \spo[5]_INST_0_i_26_n_0\
    );
\spo[5]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \spo[5]_INST_0_i_46_n_0\,
      I1 => a(10),
      I2 => \spo[5]_INST_0_i_30_n_0\,
      I3 => a(7),
      I4 => \spo[5]_INST_0_i_55_n_0\,
      O => \spo[5]_INST_0_i_27_n_0\
    );
\spo[5]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[5]_INST_0_i_56_n_0\,
      I1 => \spo[5]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[5]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[5]_INST_0_i_46_n_0\,
      O => \spo[5]_INST_0_i_28_n_0\
    );
\spo[5]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C294294394294396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_29_n_0\
    );
\spo[5]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_9_n_0\,
      I1 => \spo[5]_INST_0_i_10_n_0\,
      O => \spo[5]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C69C33C69C396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_30_n_0\
    );
\spo[5]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C69C63C69C294"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_31_n_0\
    );
\spo[5]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C6969C6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[5]_INST_0_i_32_n_0\
    );
\spo[5]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C6969C3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_33_n_0\
    );
\spo[5]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C6B69C2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[5]_INST_0_i_34_n_0\
    );
\spo[5]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4396963C3C6969C3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_35_n_0\
    );
\spo[5]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C6969D2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[5]_INST_0_i_36_n_0\
    );
\spo[5]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C6BC23C6BD294"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_37_n_0\
    );
\spo[5]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9C6969434396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_38_n_0\
    );
\spo[5]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D69C69439C694396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_39_n_0\
    );
\spo[5]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[5]_INST_0_i_11_n_0\,
      I1 => \spo[5]_INST_0_i_12_n_0\,
      O => \spo[5]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[5]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963D3D6B6BD6C294"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_40_n_0\
    );
\spo[5]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C6969C2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[5]_INST_0_i_41_n_0\
    );
\spo[5]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2BC6943BC69C396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_42_n_0\
    );
\spo[5]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2B46943B469C396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_43_n_0\
    );
\spo[5]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396963C3C696BC2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[5]_INST_0_i_44_n_0\
    );
\spo[5]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94292943639696BC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_45_n_0\
    );
\spo[5]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C69C23C69C294"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_46_n_0\
    );
\spo[5]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C6969C3C396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_47_n_0\
    );
\spo[5]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C69C33C69C394"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_48_n_0\
    );
\spo[5]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9429294363D6D6BC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_49_n_0\
    );
\spo[5]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_13_n_0\,
      I1 => \spo[5]_INST_0_i_14_n_0\,
      O => \spo[5]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2942D4B94294B96"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_50_n_0\
    );
\spo[5]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2942D6394296396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_51_n_0\
    );
\spo[5]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC6969C3C396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_52_n_0\
    );
\spo[5]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"943929434396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_53_n_0\
    );
\spo[5]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"942D2D434396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_54_n_0\
    );
\spo[5]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"962D294B4396963C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[5]_INST_0_i_55_n_0\
    );
\spo[5]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396294396294396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_56_n_0\
    );
\spo[5]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"963C69C3BC69C396"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[5]_INST_0_i_57_n_0\
    );
\spo[5]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_15_n_0\,
      I1 => \spo[5]_INST_0_i_16_n_0\,
      O => \spo[5]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_17_n_0\,
      I1 => \spo[5]_INST_0_i_18_n_0\,
      O => \spo[5]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_19_n_0\,
      I1 => \spo[5]_INST_0_i_20_n_0\,
      O => \spo[5]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[5]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[5]_INST_0_i_21_n_0\,
      I1 => \spo[5]_INST_0_i_22_n_0\,
      O => \spo[5]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_1_n_0\,
      I1 => \spo[6]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[6]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[6]_INST_0_i_4_n_0\,
      O => spo(7)
    );
\spo[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_5_n_0\,
      I1 => \spo[6]_INST_0_i_6_n_0\,
      I2 => a(11),
      I3 => \spo[6]_INST_0_i_7_n_0\,
      I4 => a(6),
      I5 => \spo[6]_INST_0_i_8_n_0\,
      O => \spo[6]_INST_0_i_1_n_0\
    );
\spo[6]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_33_n_0\,
      I1 => \spo[6]_INST_0_i_34_n_0\,
      O => \spo[6]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_35_n_0\,
      I1 => \spo[6]_INST_0_i_36_n_0\,
      O => \spo[6]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_37_n_0\,
      I1 => \spo[6]_INST_0_i_38_n_0\,
      O => \spo[6]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_39_n_0\,
      I1 => \spo[6]_INST_0_i_40_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_41_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_42_n_0\,
      O => \spo[6]_INST_0_i_13_n_0\
    );
\spo[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_22_n_0\,
      I1 => \spo[6]_INST_0_i_43_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_44_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_45_n_0\,
      O => \spo[6]_INST_0_i_14_n_0\
    );
\spo[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_46_n_0\,
      I1 => \spo[6]_INST_0_i_47_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_29_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_48_n_0\,
      O => \spo[6]_INST_0_i_15_n_0\
    );
\spo[6]_INST_0_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_49_n_0\,
      I1 => \spo[6]_INST_0_i_50_n_0\,
      O => \spo[6]_INST_0_i_16_n_0\,
      S => a(10)
    );
\spo[6]_INST_0_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_51_n_0\,
      I1 => \spo[6]_INST_0_i_52_n_0\,
      O => \spo[6]_INST_0_i_17_n_0\,
      S => a(7)
    );
\spo[6]_INST_0_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_53_n_0\,
      I1 => \spo[6]_INST_0_i_54_n_0\,
      O => \spo[6]_INST_0_i_18_n_0\,
      S => a(7)
    );
\spo[6]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3C1E781E783CF0"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_19_n_0\
    );
\spo[6]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_9_n_0\,
      I1 => \spo[6]_INST_0_i_10_n_0\,
      O => \spo[6]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[6]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E1C38601C2870E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_20_n_0\
    );
\spo[6]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E9E9C141078506"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_21_n_0\
    );
\spo[6]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187C30FC30F871E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_22_n_0\
    );
\spo[6]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCC8C84040010127"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_23_n_0\
    );
\spo[6]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C905412741270536"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_24_n_0\
    );
\spo[6]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"377EECC8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      O => \spo[6]_INST_0_i_25_n_0\
    );
\spo[6]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFFFFEEECCDC88"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_26_n_0\
    );
\spo[6]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2236BED836BADCC9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_27_n_0\
    );
\spo[6]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36BEFAD8BEFAD8C9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_28_n_0\
    );
\spo[6]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80130137"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      O => \spo[6]_INST_0_i_29_n_0\
    );
\spo[6]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_11_n_0\,
      I1 => \spo[6]_INST_0_i_12_n_0\,
      O => \spo[6]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[6]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C840012740012337"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[6]_INST_0_i_30_n_0\
    );
\spo[6]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_55_n_0\,
      I1 => \spo[6]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_58_n_0\,
      O => \spo[6]_INST_0_i_31_n_0\
    );
\spo[6]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_59_n_0\,
      I1 => \spo[6]_INST_0_i_28_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_29_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_60_n_0\,
      O => \spo[6]_INST_0_i_32_n_0\
    );
\spo[6]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_61_n_0\,
      I1 => \spo[6]_INST_0_i_62_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_40_n_0\,
      O => \spo[6]_INST_0_i_33_n_0\
    );
\spo[6]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_19_n_0\,
      I1 => \spo[6]_INST_0_i_64_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_66_n_0\,
      O => \spo[6]_INST_0_i_34_n_0\
    );
\spo[6]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_67_n_0\,
      I1 => \spo[6]_INST_0_i_68_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_29_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_69_n_0\,
      O => \spo[6]_INST_0_i_35_n_0\
    );
\spo[6]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_70_n_0\,
      I1 => \spo[6]_INST_0_i_24_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_71_n_0\,
      O => \spo[6]_INST_0_i_36_n_0\
    );
\spo[6]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_72_n_0\,
      I1 => \spo[6]_INST_0_i_73_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_74_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_22_n_0\,
      O => \spo[6]_INST_0_i_37_n_0\
    );
\spo[6]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_37_n_0\,
      I1 => \spo[6]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_75_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_76_n_0\,
      O => \spo[6]_INST_0_i_38_n_0\
    );
\spo[6]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1E38701E3870E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[6]_INST_0_i_39_n_0\
    );
\spo[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_13_n_0\,
      I1 => \spo[6]_INST_0_i_14_n_0\,
      I2 => a(11),
      I3 => \spo[6]_INST_0_i_15_n_0\,
      I4 => a(6),
      I5 => \spo[6]_INST_0_i_16_n_0\,
      O => \spo[6]_INST_0_i_4_n_0\
    );
\spo[6]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E3C78F03C78F0E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_40_n_0\
    );
\spo[6]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C905C12741270536"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_41_n_0\
    );
\spo[6]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E9C3C38787060614"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_42_n_0\
    );
\spo[6]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1C3C397871E0E1C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_43_n_0\
    );
\spo[6]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"163E7AF83E7AF8E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_44_n_0\
    );
\spo[6]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E3C387870E1E1C3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_45_n_0\
    );
\spo[6]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37BFBFFEFEDCDCC8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_46_n_0\
    );
\spo[6]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36BEBED8D8C9C941"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_47_n_0\
    );
\spo[6]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80012377012377FF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_48_n_0\
    );
\spo[6]_INST_0_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_77_n_0\,
      I1 => \spo[6]_INST_0_i_78_n_0\,
      O => \spo[6]_INST_0_i_49_n_0\,
      S => a(7)
    );
\spo[6]_INST_0_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[6]_INST_0_i_17_n_0\,
      I1 => \spo[6]_INST_0_i_18_n_0\,
      O => \spo[6]_INST_0_i_5_n_0\,
      S => a(10)
    );
\spo[6]_INST_0_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_79_n_0\,
      I1 => \spo[6]_INST_0_i_80_n_0\,
      O => \spo[6]_INST_0_i_50_n_0\,
      S => a(7)
    );
\spo[6]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06143878143878E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_51_n_0\
    );
\spo[6]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27BE36FA36FABED8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_52_n_0\
    );
\spo[6]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E1E1C3C387871E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_53_n_0\
    );
\spo[6]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70E1C387E1C3870F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_54_n_0\
    );
\spo[6]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C901412741230536"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_55_n_0\
    );
\spo[6]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C941410707362636"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_56_n_0\
    );
\spo[6]_INST_0_i_57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFEECC8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      O => \spo[6]_INST_0_i_57_n_0\
    );
\spo[6]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FDCFEC8FEC8DC40"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_58_n_0\
    );
\spo[6]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"373F3FFEFEDCDCC8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_59_n_0\
    );
\spo[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_19_n_0\,
      I1 => \spo[6]_INST_0_i_20_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_22_n_0\,
      O => \spo[6]_INST_0_i_6_n_0\
    );
\spo[6]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8801133701033377"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_60_n_0\
    );
\spo[6]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E1E1C3C387870E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_61_n_0\
    );
\spo[6]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187C31FC30F971E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_62_n_0\
    );
\spo[6]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"163EFAF83E7AF8E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_63_n_0\
    );
\spo[6]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E3C78F03C7870E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_64_n_0\
    );
\spo[6]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D8C9C94141050726"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[6]_INST_0_i_65_n_0\
    );
\spo[6]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E987C307C3078716"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_66_n_0\
    );
\spo[6]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36BEFED8BEFADCC9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_67_n_0\
    );
\spo[6]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36BABAF8F8E9C9C1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_68_n_0\
    );
\spo[6]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40012337012337BF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_69_n_0\
    );
\spo[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_23_n_0\,
      I1 => \spo[6]_INST_0_i_24_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_25_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_26_n_0\,
      O => \spo[6]_INST_0_i_7_n_0\
    );
\spo[6]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C840012340012337"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[6]_INST_0_i_70_n_0\
    );
\spo[6]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FCFEC8FEC8DC80"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_71_n_0\
    );
\spo[6]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E1C3C781C3878E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_72_n_0\
    );
\spo[6]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E3C78E03C68F0E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_73_n_0\
    );
\spo[6]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E985C107C1078516"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_74_n_0\
    );
\spo[6]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2636BEF836BAF8C9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_75_n_0\
    );
\spo[6]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"163C78F83C78F8E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[6]_INST_0_i_76_n_0\
    );
\spo[6]_INST_0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFDCFEC8FEC8DC40"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_77_n_0\
    );
\spo[6]_INST_0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77CCFE88EE88CC00"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[6]_INST_0_i_78_n_0\
    );
\spo[6]_INST_0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C1050507271636BE"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_79_n_0\
    );
\spo[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[6]_INST_0_i_27_n_0\,
      I1 => \spo[6]_INST_0_i_28_n_0\,
      I2 => a(10),
      I3 => \spo[6]_INST_0_i_29_n_0\,
      I4 => a(7),
      I5 => \spo[6]_INST_0_i_30_n_0\,
      O => \spo[6]_INST_0_i_8_n_0\
    );
\spo[6]_INST_0_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C941410501262236"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[6]_INST_0_i_80_n_0\
    );
\spo[6]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[6]_INST_0_i_31_n_0\,
      I1 => \spo[6]_INST_0_i_32_n_0\,
      O => \spo[6]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_1_n_0\,
      I1 => \spo[7]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[7]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[7]_INST_0_i_4_n_0\,
      O => spo(8)
    );
\spo[7]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_5_n_0\,
      I1 => \spo[7]_INST_0_i_6_n_0\,
      O => \spo[7]_INST_0_i_1_n_0\,
      S => a(11)
    );
\spo[7]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_23_n_0\,
      I1 => \spo[7]_INST_0_i_24_n_0\,
      O => \spo[7]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_25_n_0\,
      I1 => \spo[7]_INST_0_i_26_n_0\,
      O => \spo[7]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_27_n_0\,
      I1 => \spo[7]_INST_0_i_28_n_0\,
      O => \spo[7]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_29_n_0\,
      I1 => \spo[7]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_32_n_0\,
      O => \spo[7]_INST_0_i_13_n_0\
    );
\spo[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_33_n_0\,
      I1 => \spo[7]_INST_0_i_34_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_35_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_36_n_0\,
      O => \spo[7]_INST_0_i_14_n_0\
    );
\spo[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_37_n_0\,
      I1 => \spo[7]_INST_0_i_38_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_39_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_40_n_0\,
      O => \spo[7]_INST_0_i_15_n_0\
    );
\spo[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[31]_INST_0_i_31_n_0\,
      I1 => \spo[7]_INST_0_i_41_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_42_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_43_n_0\,
      O => \spo[7]_INST_0_i_16_n_0\
    );
\spo[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_44_n_0\,
      I1 => \spo[7]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_47_n_0\,
      O => \spo[7]_INST_0_i_17_n_0\
    );
\spo[7]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_48_n_0\,
      I1 => \spo[7]_INST_0_i_30_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_31_n_0\,
      I4 => a(7),
      I5 => \spo[3]_INST_0_i_27_n_0\,
      O => \spo[7]_INST_0_i_18_n_0\
    );
\spo[7]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_49_n_0\,
      I1 => \spo[3]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_50_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_51_n_0\,
      O => \spo[7]_INST_0_i_19_n_0\
    );
\spo[7]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_7_n_0\,
      I1 => \spo[7]_INST_0_i_8_n_0\,
      O => \spo[7]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[7]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_37_n_0\,
      I1 => \spo[7]_INST_0_i_52_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_53_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_54_n_0\,
      O => \spo[7]_INST_0_i_20_n_0\
    );
\spo[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_55_n_0\,
      I1 => \spo[7]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_58_n_0\,
      O => \spo[7]_INST_0_i_21_n_0\
    );
\spo[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_59_n_0\,
      I1 => \spo[7]_INST_0_i_60_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_46_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_61_n_0\,
      O => \spo[7]_INST_0_i_22_n_0\
    );
\spo[7]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_62_n_0\,
      I1 => \spo[7]_INST_0_i_63_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_64_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_41_n_0\,
      O => \spo[7]_INST_0_i_23_n_0\
    );
\spo[7]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F50CFCF5F50C0C0"
    )
        port map (
      I0 => a(9),
      I1 => \spo[7]_INST_0_i_40_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_66_n_0\,
      O => \spo[7]_INST_0_i_24_n_0\
    );
\spo[7]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_67_n_0\,
      I1 => \spo[7]_INST_0_i_68_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_69_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_70_n_0\,
      O => \spo[7]_INST_0_i_25_n_0\
    );
\spo[7]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_71_n_0\,
      I1 => \spo[7]_INST_0_i_72_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_73_n_0\,
      O => \spo[7]_INST_0_i_26_n_0\
    );
\spo[7]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_40_n_0\,
      I1 => \spo[7]_INST_0_i_74_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_75_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_76_n_0\,
      O => \spo[7]_INST_0_i_27_n_0\
    );
\spo[7]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[7]_INST_0_i_77_n_0\,
      I1 => \spo[7]_INST_0_i_51_n_0\,
      I2 => a(10),
      I3 => \spo[7]_INST_0_i_78_n_0\,
      I4 => a(7),
      I5 => \spo[7]_INST_0_i_79_n_0\,
      O => \spo[7]_INST_0_i_28_n_0\
    );
\spo[7]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBDBBDD26EE6AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_29_n_0\
    );
\spo[7]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_9_n_0\,
      I1 => \spo[7]_INST_0_i_10_n_0\,
      O => \spo[7]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[7]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5040020A85155555"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_30_n_0\
    );
\spo[7]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FEFCFCE8"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(9),
      O => \spo[7]_INST_0_i_31_n_0\
    );
\spo[7]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20A0A1A7A0A1A3B7"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[7]_INST_0_i_32_n_0\
    );
\spo[7]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAA00010107"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(0),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_33_n_0\
    );
\spo[7]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA5A5A585A5A5849"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_34_n_0\
    );
\spo[7]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCFCE83F7F7FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(9),
      O => \spo[7]_INST_0_i_35_n_0\
    );
\spo[7]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007001A80000000"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(5),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_36_n_0\
    );
\spo[7]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E1C387E1C3870F"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_37_n_0\
    );
\spo[7]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0112367EECC88000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_38_n_0\
    );
\spo[7]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000880055555756"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_39_n_0\
    );
\spo[7]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[7]_INST_0_i_11_n_0\,
      I1 => \spo[7]_INST_0_i_12_n_0\,
      O => \spo[7]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[7]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E1"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_40_n_0\
    );
\spo[7]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0F1E"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[7]_INST_0_i_41_n_0\
    );
\spo[7]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5849410549410525"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_42_n_0\
    );
\spo[7]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0137137F64884888"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_43_n_0\
    );
\spo[7]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DE5A5E585E5A5C49"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_44_n_0\
    );
\spo[7]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25A5A5A7A7B6A6B6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_45_n_0\
    );
\spo[7]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0013013780000000"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[7]_INST_0_i_46_n_0\
    );
\spo[7]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFF7FF77F777"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(5),
      O => \spo[7]_INST_0_i_47_n_0\
    );
\spo[7]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BFFBFFFFFF7FF77"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => \spo[7]_INST_0_i_48_n_0\
    );
\spo[7]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_49_n_0\
    );
\spo[7]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_13_n_0\,
      I1 => \spo[7]_INST_0_i_14_n_0\,
      O => \spo[7]_INST_0_i_5_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1FF7FFF7EAAAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_50_n_0\
    );
\spo[7]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E08000071F7FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_51_n_0\
    );
\spo[7]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015F7FFFFE808000"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_52_n_0\
    );
\spo[7]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222AAAAA55555576"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_53_n_0\
    );
\spo[7]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8F8F8E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_54_n_0\
    );
\spo[7]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440022280155555"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(0),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_55_n_0\
    );
\spo[7]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFFFDF6AAAAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(4),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_56_n_0\
    );
\spo[7]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00130137"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(9),
      O => \spo[7]_INST_0_i_57_n_0\
    );
\spo[7]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5C5E485E485C40"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[7]_INST_0_i_58_n_0\
    );
\spo[7]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF5F5F5E5E5C5C48"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[7]_INST_0_i_59_n_0\
    );
\spo[7]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_15_n_0\,
      I1 => \spo[7]_INST_0_i_16_n_0\,
      O => \spo[7]_INST_0_i_6_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25A5A5A7A5A7A5B6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[7]_INST_0_i_60_n_0\
    );
\spo[7]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFBFFF7F777"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(5),
      O => \spo[7]_INST_0_i_61_n_0\
    );
\spo[7]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0137137FECC8C880"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_62_n_0\
    );
\spo[7]_INST_0_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECC9810113377FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_63_n_0\
    );
\spo[7]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAF8FAFAF8E9"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_64_n_0\
    );
\spo[7]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBFBBFD66EA6AAA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(9),
      O => \spo[7]_INST_0_i_65_n_0\
    );
\spo[7]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E0800085157FFF"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_66_n_0\
    );
\spo[7]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"21A5A1A5A1A6A2B6"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_67_n_0\
    );
\spo[7]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DA7A5A7858694941"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_68_n_0\
    );
\spo[7]_INST_0_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8E0807FFFFFFF"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(5),
      I3 => a(0),
      I4 => a(1),
      I5 => a(9),
      O => \spo[7]_INST_0_i_69_n_0\
    );
\spo[7]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_17_n_0\,
      I1 => \spo[7]_INST_0_i_18_n_0\,
      O => \spo[7]_INST_0_i_7_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000808080888"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(1),
      I3 => a(4),
      I4 => a(0),
      I5 => a(5),
      O => \spo[7]_INST_0_i_70_n_0\
    );
\spo[7]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6440000000000888"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      I4 => a(1),
      I5 => a(5),
      O => \spo[7]_INST_0_i_71_n_0\
    );
\spo[7]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFDFD557EAAAAAA"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(4),
      I3 => a(1),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_72_n_0\
    );
\spo[7]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F1C1E081E081C00"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[7]_INST_0_i_73_n_0\
    );
\spo[7]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1F0F1F0F1E0E1C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_74_n_0\
    );
\spo[7]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8E0800085155555"
    )
        port map (
      I0 => a(8),
      I1 => a(0),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_75_n_0\
    );
\spo[7]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"071F7FFFF0A08000"
    )
        port map (
      I0 => a(8),
      I1 => a(4),
      I2 => a(1),
      I3 => a(0),
      I4 => a(5),
      I5 => a(9),
      O => \spo[7]_INST_0_i_76_n_0\
    );
\spo[7]_INST_0_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F381E701E7038F0"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(4),
      I5 => a(0),
      O => \spo[7]_INST_0_i_77_n_0\
    );
\spo[7]_INST_0_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DADA5A585A5A5849"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(1),
      I5 => a(0),
      O => \spo[7]_INST_0_i_78_n_0\
    );
\spo[7]_INST_0_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707070707060614"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(4),
      I4 => a(0),
      I5 => a(1),
      O => \spo[7]_INST_0_i_79_n_0\
    );
\spo[7]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_19_n_0\,
      I1 => \spo[7]_INST_0_i_20_n_0\,
      O => \spo[7]_INST_0_i_8_n_0\,
      S => a(6)
    );
\spo[7]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[7]_INST_0_i_21_n_0\,
      I1 => \spo[7]_INST_0_i_22_n_0\,
      O => \spo[7]_INST_0_i_9_n_0\,
      S => a(6)
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_1_n_0\,
      I1 => \spo[8]_INST_0_i_2_n_0\,
      I2 => a(3),
      I3 => \spo[8]_INST_0_i_3_n_0\,
      I4 => a(2),
      I5 => \spo[8]_INST_0_i_4_n_0\,
      O => spo(5)
    );
\spo[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_5_n_0\,
      I1 => \spo[8]_INST_0_i_6_n_0\,
      I2 => a(11),
      I3 => \spo[8]_INST_0_i_7_n_0\,
      I4 => a(6),
      I5 => \spo[8]_INST_0_i_8_n_0\,
      O => \spo[8]_INST_0_i_1_n_0\
    );
\spo[8]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_30_n_0\,
      I1 => \spo[8]_INST_0_i_31_n_0\,
      O => \spo[8]_INST_0_i_10_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_32_n_0\,
      I1 => \spo[8]_INST_0_i_33_n_0\,
      O => \spo[8]_INST_0_i_11_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_34_n_0\,
      I1 => \spo[8]_INST_0_i_35_n_0\,
      O => \spo[8]_INST_0_i_12_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_36_n_0\,
      I1 => \spo[8]_INST_0_i_37_n_0\,
      O => \spo[8]_INST_0_i_13_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_38_n_0\,
      I1 => \spo[8]_INST_0_i_39_n_0\,
      O => \spo[8]_INST_0_i_14_n_0\,
      S => a(6)
    );
\spo[8]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"700F0FF00FF0F00F"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(8),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_15_n_0\
    );
\spo[8]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55AA55A5AA55AB4"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_16_n_0\
    );
\spo[8]_INST_0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => a(9),
      I1 => a(0),
      I2 => a(4),
      O => \spo[8]_INST_0_i_17_n_0\
    );
\spo[8]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9C2421D421D9522"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_18_n_0\
    );
\spo[8]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      O => \spo[8]_INST_0_i_19_n_0\
    );
\spo[8]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_9_n_0\,
      I1 => \spo[8]_INST_0_i_10_n_0\,
      O => \spo[8]_INST_0_i_2_n_0\,
      S => a(11)
    );
\spo[8]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A94242954395842A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_20_n_0\
    );
\spo[8]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FD02FD250AF50AC"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_21_n_0\
    );
\spo[8]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      O => \spo[8]_INST_0_i_22_n_0\
    );
\spo[8]_INST_0_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_40_n_0\,
      I1 => \spo[8]_INST_0_i_41_n_0\,
      O => \spo[8]_INST_0_i_23_n_0\,
      S => a(7)
    );
\spo[8]_INST_0_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_42_n_0\,
      I1 => \spo[8]_INST_0_i_43_n_0\,
      O => \spo[8]_INST_0_i_24_n_0\,
      S => a(7)
    );
\spo[8]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0184E83BE83F1700"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_25_n_0\
    );
\spo[8]_INST_0_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a(9),
      I1 => a(0),
      I2 => a(4),
      O => \spo[8]_INST_0_i_26_n_0\
    );
\spo[8]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F50A0AF4F40D09E2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[8]_INST_0_i_27_n_0\
    );
\spo[8]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_44_n_0\,
      I1 => \spo[8]_INST_0_i_45_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_46_n_0\,
      O => \spo[8]_INST_0_i_28_n_0\
    );
\spo[8]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_47_n_0\,
      I1 => \spo[8]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_48_n_0\,
      O => \spo[8]_INST_0_i_29_n_0\
    );
\spo[8]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_11_n_0\,
      I1 => \spo[8]_INST_0_i_12_n_0\,
      O => \spo[8]_INST_0_i_3_n_0\,
      S => a(11)
    );
\spo[8]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_49_n_0\,
      I1 => \spo[8]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_51_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_22_n_0\,
      O => \spo[8]_INST_0_i_30_n_0\
    );
\spo[8]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_19_n_0\,
      I1 => \spo[8]_INST_0_i_52_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_53_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_54_n_0\,
      O => \spo[8]_INST_0_i_31_n_0\
    );
\spo[8]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_55_n_0\,
      I1 => \spo[8]_INST_0_i_56_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_58_n_0\,
      O => \spo[8]_INST_0_i_32_n_0\
    );
\spo[8]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_59_n_0\,
      I1 => \spo[8]_INST_0_i_60_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_19_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_61_n_0\,
      O => \spo[8]_INST_0_i_33_n_0\
    );
\spo[8]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_62_n_0\,
      I1 => \spo[8]_INST_0_i_50_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_64_n_0\,
      O => \spo[8]_INST_0_i_34_n_0\
    );
\spo[8]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_19_n_0\,
      I1 => \spo[8]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_65_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_54_n_0\,
      O => \spo[8]_INST_0_i_35_n_0\
    );
\spo[8]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_66_n_0\,
      I1 => \spo[8]_INST_0_i_67_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_68_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_58_n_0\,
      O => \spo[8]_INST_0_i_36_n_0\
    );
\spo[8]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_69_n_0\,
      I1 => \spo[8]_INST_0_i_70_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_57_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_71_n_0\,
      O => \spo[8]_INST_0_i_37_n_0\
    );
\spo[8]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_22_n_0\,
      I1 => \spo[8]_INST_0_i_72_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_63_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_73_n_0\,
      O => \spo[8]_INST_0_i_38_n_0\
    );
\spo[8]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_74_n_0\,
      I1 => \spo[8]_INST_0_i_22_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_75_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_76_n_0\,
      O => \spo[8]_INST_0_i_39_n_0\
    );
\spo[8]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_13_n_0\,
      I1 => \spo[8]_INST_0_i_14_n_0\,
      O => \spo[8]_INST_0_i_4_n_0\,
      S => a(11)
    );
\spo[8]_INST_0_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A55A4AB5"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      O => \spo[8]_INST_0_i_40_n_0\
    );
\spo[8]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5495A92AA92A4255"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_41_n_0\
    );
\spo[8]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0000FF00FFFF00"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(8),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_42_n_0\
    );
\spo[8]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AF50AF4F50AF40D"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_43_n_0\
    );
\spo[8]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F3000CF00FFFF00"
    )
        port map (
      I0 => a(1),
      I1 => a(8),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_44_n_0\
    );
\spo[8]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF20C0FF21CE3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_45_n_0\
    );
\spo[8]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA8A557555758A0A"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_46_n_0\
    );
\spo[8]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D55EA8AEA8A5575"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_47_n_0\
    );
\spo[8]_INST_0_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A65B594B5DB6A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_48_n_0\
    );
\spo[8]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55AA55A5AA55AA4"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_49_n_0\
    );
\spo[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_15_n_0\,
      I1 => \spo[8]_INST_0_i_16_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_17_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_18_n_0\,
      O => \spo[8]_INST_0_i_5_n_0\
    );
\spo[8]_INST_0_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA5B54A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      O => \spo[8]_INST_0_i_50_n_0\
    );
\spo[8]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DC0EABF6ABFD500"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_51_n_0\
    );
\spo[8]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD424A956A95D52A"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_52_n_0\
    );
\spo[8]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FF0F00FF20C"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_53_n_0\
    );
\spo[8]_INST_0_i_54\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34CBCB34"
    )
        port map (
      I0 => a(5),
      I1 => a(8),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      O => \spo[8]_INST_0_i_54_n_0\
    );
\spo[8]_INST_0_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F40B0FF0"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      O => \spo[8]_INST_0_i_55_n_0\
    );
\spo[8]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA3F17001500AAFF"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_56_n_0\
    );
\spo[8]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A55A5AA4A45959A2"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[8]_INST_0_i_57_n_0\
    );
\spo[8]_INST_0_i_58\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(0),
      I3 => a(4),
      O => \spo[8]_INST_0_i_58_n_0\
    );
\spo[8]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70FF0F000F00F0FF"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(9),
      I3 => a(8),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_59_n_0\
    );
\spo[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_19_n_0\,
      I1 => \spo[8]_INST_0_i_20_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_21_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_22_n_0\,
      O => \spo[8]_INST_0_i_6_n_0\
    );
\spo[8]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00F0FF0F00D0DE3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[8]_INST_0_i_60_n_0\
    );
\spo[8]_INST_0_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA55755575BA0A"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_61_n_0\
    );
\spo[8]_INST_0_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A946429D429D952A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_62_n_0\
    );
\spo[8]_INST_0_i_63\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => a(0),
      I3 => a(4),
      O => \spo[8]_INST_0_i_63_n_0\
    );
\spo[8]_INST_0_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA5A55A5AA5A54B"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(4),
      I5 => a(1),
      O => \spo[8]_INST_0_i_64_n_0\
    );
\spo[8]_INST_0_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C4EA3FEA3F1700"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_65_n_0\
    );
\spo[8]_INST_0_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F40BF4080FF00CE3"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_66_n_0\
    );
\spo[8]_INST_0_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFF00CF0030FF"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(8),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_67_n_0\
    );
\spo[8]_INST_0_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A92A4255525595AA"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(1),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_68_n_0\
    );
\spo[8]_INST_0_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => a(0),
      I3 => a(4),
      O => \spo[8]_INST_0_i_69_n_0\
    );
\spo[8]_INST_0_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \spo[8]_INST_0_i_23_n_0\,
      I1 => \spo[8]_INST_0_i_24_n_0\,
      O => \spo[8]_INST_0_i_7_n_0\,
      S => a(10)
    );
\spo[8]_INST_0_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E83F1740174080FF"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_70_n_0\
    );
\spo[8]_INST_0_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC0CC3F3C3F33C0C"
    )
        port map (
      I0 => a(1),
      I1 => a(8),
      I2 => a(9),
      I3 => a(5),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_71_n_0\
    );
\spo[8]_INST_0_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA55AA4B54AB449"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_72_n_0\
    );
\spo[8]_INST_0_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"429D952A956A2AD5"
    )
        port map (
      I0 => a(8),
      I1 => a(1),
      I2 => a(5),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_73_n_0\
    );
\spo[8]_INST_0_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5924B254B25925A"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(1),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_74_n_0\
    );
\spo[8]_INST_0_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0000FF80FFFF00"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(8),
      I3 => a(9),
      I4 => a(0),
      I5 => a(4),
      O => \spo[8]_INST_0_i_75_n_0\
    );
\spo[8]_INST_0_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52AD52ACAD52AC41"
    )
        port map (
      I0 => a(8),
      I1 => a(5),
      I2 => a(9),
      I3 => a(0),
      I4 => a(1),
      I5 => a(4),
      O => \spo[8]_INST_0_i_76_n_0\
    );
\spo[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \spo[8]_INST_0_i_25_n_0\,
      I1 => \spo[8]_INST_0_i_26_n_0\,
      I2 => a(10),
      I3 => \spo[8]_INST_0_i_15_n_0\,
      I4 => a(7),
      I5 => \spo[8]_INST_0_i_27_n_0\,
      O => \spo[8]_INST_0_i_8_n_0\
    );
\spo[8]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \spo[8]_INST_0_i_28_n_0\,
      I1 => \spo[8]_INST_0_i_29_n_0\,
      O => \spo[8]_INST_0_i_9_n_0\,
      S => a(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_ph_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 12 downto 0 );
    a : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_ph_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end dist_mem_ph_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of dist_mem_ph_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.dist_mem_ph_rom
     port map (
      a(11 downto 0) => a(11 downto 0),
      spo(12 downto 0) => spo(12 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_ph_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 12;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 4096;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is "dist_mem_ph.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_ph_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end dist_mem_ph_dist_mem_gen_v8_0_13;

architecture STRUCTURE of dist_mem_ph_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
  spo(31 downto 28) <= \^spo\(31 downto 28);
  spo(27 downto 25) <= \^spo\(7 downto 5);
  spo(24 downto 21) <= \^spo\(8 downto 5);
  spo(20 downto 17) <= \^spo\(8 downto 5);
  spo(16 downto 13) <= \^spo\(8 downto 5);
  spo(12 downto 9) <= \^spo\(8 downto 5);
  spo(8 downto 0) <= \^spo\(8 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.dist_mem_ph_dist_mem_gen_v8_0_13_synth
     port map (
      a(11 downto 0) => a(11 downto 0),
      spo(12 downto 9) => \^spo\(31 downto 28),
      spo(8 downto 6) => \^spo\(7 downto 5),
      spo(5) => \^spo\(8),
      spo(4 downto 0) => \^spo\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_ph is
  port (
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dist_mem_ph : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dist_mem_ph : entity is "dist_mem_ph,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dist_mem_ph : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dist_mem_ph : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end dist_mem_ph;

architecture STRUCTURE of dist_mem_ph is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 12;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 4096;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "dist_mem_ph.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.dist_mem_ph_dist_mem_gen_v8_0_13
     port map (
      a(11 downto 0) => a(11 downto 0),
      clk => '0',
      d(31 downto 0) => B"00000000000000000000000000000000",
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(11 downto 0) => B"000000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => '0'
    );
end STRUCTURE;
