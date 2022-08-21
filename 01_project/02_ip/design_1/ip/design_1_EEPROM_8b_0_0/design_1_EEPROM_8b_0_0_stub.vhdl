-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Jun 11 13:35:00 2022
-- Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_EEPROM_8b_0_0/design_1_EEPROM_8b_0_0_stub.vhdl
-- Design      : design_1_EEPROM_8b_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_EEPROM_8b_0_0 is
  Port ( 
    SampleClk : in STD_LOGIC;
    sRst : in STD_LOGIC;
    aSDA : inout STD_LOGIC;
    aSCL : inout STD_LOGIC
  );

end design_1_EEPROM_8b_0_0;

architecture stub of design_1_EEPROM_8b_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SampleClk,sRst,aSDA,aSCL";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "EEPROM_8b,Vivado 2021.2";
begin
end;
