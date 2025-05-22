-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Aug  2 21:44:55 2023
-- Host        : LAPTOP-59026BCA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top dist_mem_gen_Q -prefix
--               dist_mem_gen_Q_ dist_mem_gen_Q_stub.vhdl
-- Design      : dist_mem_gen_Q
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dist_mem_gen_Q is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 11 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end dist_mem_gen_Q;

architecture stub of dist_mem_gen_Q is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[11:0],spo[9:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2019.2";
begin
end;
