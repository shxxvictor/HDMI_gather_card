-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Thu Jun 23 11:27:58 2022
-- Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /vic_work/vic_projects/scaler_aa/02_ip/design_1/ip/design_1_YUV_2xy_scaler_0_1/design_1_YUV_2xy_scaler_0_1_stub.vhdl
-- Design      : design_1_YUV_2xy_scaler_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_YUV_2xy_scaler_0_1 is
  Port ( 
    clk_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    rdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rlast : in STD_LOGIC;
    rready : out STD_LOGIC;
    ruser : in STD_LOGIC;
    rvalid : in STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    tlast : out STD_LOGIC;
    tready : in STD_LOGIC;
    tuser : out STD_LOGIC;
    tvalid : out STD_LOGIC
  );

end design_1_YUV_2xy_scaler_0_1;

architecture stub of design_1_YUV_2xy_scaler_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,reset,rdata[23:0],rlast,rready,ruser,rvalid,tdata[63:0],tlast,tready,tuser,tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "YUV_2xy_scaler,Vivado 2021.2";
begin
end;
