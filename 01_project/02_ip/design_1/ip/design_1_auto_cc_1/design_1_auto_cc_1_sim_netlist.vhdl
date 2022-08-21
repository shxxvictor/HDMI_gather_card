-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Jun 11 13:20:27 2022
-- Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_auto_cc_1 -prefix
--               design_1_auto_cc_1_ design_1_auto_cc_1_sim_netlist.vhdl
-- Design      : design_1_auto_cc_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio is
  port (
    slow_aclk_div2 : out STD_LOGIC;
    posedge_finder_second : out STD_LOGIC;
    posedge_finder_first : out STD_LOGIC;
    \gen_clock_conv.sample_cycle\ : out STD_LOGIC;
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gen_sample_cycle.posedge_finder_second_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_sync_clock_converter.s_tready_r_reg\ : in STD_LOGIC
  );
end design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio;

architecture STRUCTURE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio is
  signal \gen_clock_conv.sample_cycle_early\ : STD_LOGIC;
  signal \^posedge_finder_first\ : STD_LOGIC;
  signal \^posedge_finder_second\ : STD_LOGIC;
  signal \^slow_aclk_div2\ : STD_LOGIC;
  signal slow_aclk_div20 : STD_LOGIC;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \gen_sample_cycle.sample_cycle_r_reg\ : label is "no";
begin
  posedge_finder_first <= \^posedge_finder_first\;
  posedge_finder_second <= \^posedge_finder_second\;
  slow_aclk_div2 <= \^slow_aclk_div2\;
any_edge: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \^posedge_finder_first\,
      I1 => \^posedge_finder_second\,
      I2 => \^slow_aclk_div2\,
      O => \gen_clock_conv.sample_cycle_early\
    );
\gen_sample_cycle.posedge_finder_first_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sample_cycle.posedge_finder_second_reg_0\,
      CE => '1',
      D => \^slow_aclk_div2\,
      Q => \^posedge_finder_first\,
      R => '0'
    );
\gen_sample_cycle.posedge_finder_second_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sample_cycle.posedge_finder_second_reg_0\,
      CE => '1',
      D => slow_aclk_div20,
      Q => \^posedge_finder_second\,
      R => '0'
    );
\gen_sample_cycle.sample_cycle_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sample_cycle.posedge_finder_second_reg_0\,
      CE => '1',
      D => \gen_clock_conv.sample_cycle_early\,
      Q => \gen_clock_conv.sample_cycle\,
      R => '0'
    );
\gen_sample_cycle.slow_aclk_div2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^slow_aclk_div2\,
      O => slow_aclk_div20
    );
\gen_sample_cycle.slow_aclk_div2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => slow_aclk_div20,
      Q => \^slow_aclk_div2\,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404004400000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^posedge_finder_first\,
      I3 => \^posedge_finder_second\,
      I4 => \^slow_aclk_div2\,
      I5 => \gen_sync_clock_converter.s_tready_r_reg\,
      O => \FSM_onehot_gen_sync_clock_converter.state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter is
  port (
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_tready_r_reg_0\ : in STD_LOGIC;
    \gen_sync_clock_converter.m_tvalid_r_reg_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r\ : in STD_LOGIC;
    \gen_clock_conv.sample_cycle\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_areset_r\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter;

architecture STRUCTURE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter is
  signal \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_tpayload\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_tready_r_i_1__3_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arvalid_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[0]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[1]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
begin
  s_axi_arvalid_0 <= \^s_axi_arvalid_0\;
\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0FFF"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_arready,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => s_axi_arvalid,
      I4 => \gen_sync_clock_converter.state\(1),
      O => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0\
    );
\FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080838"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_sync_clock_converter.state\(0),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.m_tready_hold\,
      I4 => m_axi_arready,
      O => \^s_axi_arvalid_0\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0\,
      Q => \gen_sync_clock_converter.state\(0),
      R => \gen_sync_clock_converter.s_areset_r\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \^s_axi_arvalid_0\,
      Q => \gen_sync_clock_converter.state\(1),
      R => \gen_sync_clock_converter.s_areset_r\
    );
\gen_sync_clock_converter.m_tpayload_r[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_arready,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      O => \gen_sync_clock_converter.load_tpayload\
    );
\gen_sync_clock_converter.m_tpayload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\gen_sync_clock_converter.m_tready_hold_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_arready,
      I2 => \gen_sync_clock_converter.m_aresetn_r\,
      I3 => \gen_clock_conv.sample_cycle\,
      O => \gen_sync_clock_converter.m_tready_hold_i_1__1_n_0\
    );
\gen_sync_clock_converter.m_tready_hold_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tready_hold_i_1__1_n_0\,
      Q => \gen_sync_clock_converter.m_tready_hold\,
      R => '0'
    );
\gen_sync_clock_converter.m_tvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      Q => m_axi_arvalid,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111FFF300000000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_sync_clock_converter.state\(1),
      I2 => \gen_sync_clock_converter.m_tready_hold\,
      I3 => m_axi_arready,
      I4 => \gen_sync_clock_converter.state\(0),
      I5 => \gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.s_tready_r_i_1__3_n_0\
    );
\gen_sync_clock_converter.s_tready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \gen_sync_clock_converter.s_tready_r_i_1__3_n_0\,
      Q => s_axi_arready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0 is
  port (
    \gen_sync_clock_converter.m_aresetn_r\ : out STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \gen_sync_clock_converter.s_areset_r\ : out STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r_reg_0\ : out STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r_reg_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \out\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r_reg_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \gen_clock_conv.sample_cycle\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : in STD_LOGIC;
    \gen_sync_clock_converter.m_tvalid_r_reg_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : in STD_LOGIC;
    \gen_sync_clock_converter.m_tvalid_r_reg_1\ : in STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r_reg_2\ : in STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r_reg_3\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0 : entity is "axi_clock_converter_v2_1_24_axic_sync_clock_converter";
end design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0;

architecture STRUCTURE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0 is
  signal \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_tpayload\ : STD_LOGIC;
  signal \^gen_sync_clock_converter.m_aresetn_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_aresetn_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tvalid_r_i_1_n_0\ : STD_LOGIC;
  signal \^gen_sync_clock_converter.s_areset_r\ : STD_LOGIC;
  signal \^gen_sync_clock_converter.s_aresetn_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_tready_r_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[0]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[1]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
begin
  \gen_sync_clock_converter.m_aresetn_r\ <= \^gen_sync_clock_converter.m_aresetn_r\;
  \gen_sync_clock_converter.s_areset_r\ <= \^gen_sync_clock_converter.s_areset_r\;
  \gen_sync_clock_converter.s_aresetn_r\ <= \^gen_sync_clock_converter.s_aresetn_r\;
  m_axi_awvalid <= \^m_axi_awvalid\;
\FSM_sequential_gen_sync_clock_converter.state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0FFF"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_awready,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => s_axi_awvalid,
      I4 => \gen_sync_clock_converter.state\(1),
      O => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0\
    );
\FSM_sequential_gen_sync_clock_converter.state[1]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_sync_clock_converter.s_aresetn_r\,
      O => \^gen_sync_clock_converter.s_areset_r\
    );
\FSM_sequential_gen_sync_clock_converter.state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080838"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_sync_clock_converter.state\(0),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.m_tready_hold\,
      I4 => m_axi_awready,
      O => \FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => '1',
      D => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0\,
      Q => \gen_sync_clock_converter.state\(0),
      R => \^gen_sync_clock_converter.s_areset_r\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => '1',
      D => \FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0\,
      Q => \gen_sync_clock_converter.state\(1),
      R => \^gen_sync_clock_converter.s_areset_r\
    );
\gen_sync_clock_converter.m_aresetn_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_aresetn_r_reg_2\,
      I1 => \gen_sync_clock_converter.m_aresetn_r_reg_3\,
      O => \gen_sync_clock_converter.m_aresetn_r_i_1_n_0\
    );
\gen_sync_clock_converter.m_aresetn_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_aresetn_r_i_1_n_0\,
      Q => \^gen_sync_clock_converter.m_aresetn_r\,
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_awready,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      O => \gen_sync_clock_converter.load_tpayload\
    );
\gen_sync_clock_converter.m_tpayload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\gen_sync_clock_converter.m_tready_hold_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_awready,
      I2 => \^gen_sync_clock_converter.m_aresetn_r\,
      I3 => \gen_clock_conv.sample_cycle\,
      O => \gen_sync_clock_converter.m_tready_hold_i_1_n_0\
    );
\gen_sync_clock_converter.m_tready_hold_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tready_hold_i_1_n_0\,
      Q => \gen_sync_clock_converter.m_tready_hold\,
      R => '0'
    );
\gen_sync_clock_converter.m_tvalid_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20002000200020"
    )
        port map (
      I0 => \^gen_sync_clock_converter.m_aresetn_r\,
      I1 => m_axi_awready,
      I2 => \^m_axi_awvalid\,
      I3 => \gen_clock_conv.sample_cycle\,
      I4 => \FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0\,
      I5 => \^gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.m_tvalid_r_i_1_n_0\
    );
\gen_sync_clock_converter.m_tvalid_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20002000200020"
    )
        port map (
      I0 => \^gen_sync_clock_converter.m_aresetn_r\,
      I1 => m_axi_wready,
      I2 => m_axi_wvalid,
      I3 => \gen_clock_conv.sample_cycle\,
      I4 => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      I5 => \^gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.m_aresetn_r_reg_0\
    );
\gen_sync_clock_converter.m_tvalid_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20002000200020"
    )
        port map (
      I0 => \^gen_sync_clock_converter.m_aresetn_r\,
      I1 => m_axi_arready,
      I2 => m_axi_arvalid,
      I3 => \gen_clock_conv.sample_cycle\,
      I4 => \gen_sync_clock_converter.m_tvalid_r_reg_1\,
      I5 => \^gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.m_aresetn_r_reg_1\
    );
\gen_sync_clock_converter.m_tvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tvalid_r_i_1_n_0\,
      Q => \^m_axi_awvalid\,
      R => '0'
    );
\gen_sync_clock_converter.s_aresetn_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => '1',
      D => \gen_sync_clock_converter.m_aresetn_r_i_1_n_0\,
      Q => \^gen_sync_clock_converter.s_aresetn_r\,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111FFF300000000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_sync_clock_converter.state\(1),
      I2 => \gen_sync_clock_converter.m_tready_hold\,
      I3 => m_axi_awready,
      I4 => \gen_sync_clock_converter.state\(0),
      I5 => \^gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.s_tready_r_i_1__1_n_0\
    );
\gen_sync_clock_converter.s_tready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_aresetn_r_reg_0\,
      CE => '1',
      D => \gen_sync_clock_converter.s_tready_r_i_1__1_n_0\,
      Q => s_axi_awready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0\ is
  port (
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \out\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_tready_r_reg_0\ : in STD_LOGIC;
    \gen_sync_clock_converter.m_tvalid_r_reg_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r\ : in STD_LOGIC;
    \gen_clock_conv.sample_cycle\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_areset_r\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0\ : entity is "axi_clock_converter_v2_1_24_axic_sync_clock_converter";
end \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0\;

architecture STRUCTURE of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0\ is
  signal \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_tpayload\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tready_hold_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_tready_r_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[0]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_sync_clock_converter.state_reg[1]\ : label is "INIT:00,ONE:11,TWO:10,ZERO:01";
begin
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0FFF"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_wready,
      I2 => \gen_sync_clock_converter.state\(0),
      I3 => s_axi_wvalid,
      I4 => \gen_sync_clock_converter.state\(1),
      O => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0\
    );
\FSM_sequential_gen_sync_clock_converter.state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080838"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \gen_sync_clock_converter.state\(0),
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.m_tready_hold\,
      I4 => m_axi_wready,
      O => \^s_axi_wvalid_0\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0\,
      Q => \gen_sync_clock_converter.state\(0),
      R => \gen_sync_clock_converter.s_areset_r\
    );
\FSM_sequential_gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \^s_axi_wvalid_0\,
      Q => \gen_sync_clock_converter.state\(1),
      R => \gen_sync_clock_converter.s_areset_r\
    );
\gen_sync_clock_converter.m_tpayload_r[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_wready,
      I2 => \gen_sync_clock_converter.state\(1),
      I3 => \gen_sync_clock_converter.state\(0),
      O => \gen_sync_clock_converter.load_tpayload\
    );
\gen_sync_clock_converter.m_tpayload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(28),
      Q => Q(28),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(29),
      Q => Q(29),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(30),
      Q => Q(30),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(31),
      Q => Q(31),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(32),
      Q => Q(32),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(33),
      Q => Q(33),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(34),
      Q => Q(34),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(35),
      Q => Q(35),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\gen_sync_clock_converter.m_tready_hold_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tready_hold\,
      I1 => m_axi_wready,
      I2 => \gen_sync_clock_converter.m_aresetn_r\,
      I3 => \gen_clock_conv.sample_cycle\,
      O => \gen_sync_clock_converter.m_tready_hold_i_1__0_n_0\
    );
\gen_sync_clock_converter.m_tready_hold_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tready_hold_i_1__0_n_0\,
      Q => \gen_sync_clock_converter.m_tready_hold\,
      R => '0'
    );
\gen_sync_clock_converter.m_tvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      Q => m_axi_wvalid,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111FFF300000000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \gen_sync_clock_converter.state\(1),
      I2 => \gen_sync_clock_converter.m_tready_hold\,
      I3 => m_axi_wready,
      I4 => \gen_sync_clock_converter.state\(0),
      I5 => \gen_sync_clock_converter.s_aresetn_r\,
      O => \gen_sync_clock_converter.s_tready_r_i_1__2_n_0\
    );
\gen_sync_clock_converter.s_tready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \gen_sync_clock_converter.s_tready_r_reg_0\,
      CE => '1',
      D => \gen_sync_clock_converter.s_tready_r_i_1__2_n_0\,
      Q => s_axi_wready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1\ is
  port (
    \gen_sync_clock_converter.s_aresetn_r_reg_0\ : out STD_LOGIC;
    \gen_sync_clock_converter.m_aresetn_r_reg_0\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    posedge_finder_first : in STD_LOGIC;
    posedge_finder_second : in STD_LOGIC;
    slow_aclk_div2 : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r_reg_1\ : in STD_LOGIC;
    \gen_sync_clock_converter.s_aresetn_r_reg_2\ : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1\ : entity is "axi_clock_converter_v2_1_24_axic_sync_clock_converter";
end \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1\;

architecture STRUCTURE of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1\ is
  signal \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_sync_clock_converter.load_tpayload\ : STD_LOGIC;
  signal \^gen_sync_clock_converter.m_aresetn_r_reg_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_aresetn_r_i_1_n_0\ : STD_LOGIC;
  signal \^gen_sync_clock_converter.s_aresetn_r_reg_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_tready_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state_reg\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[0]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[1]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[2]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
begin
  \gen_sync_clock_converter.m_aresetn_r_reg_0\ <= \^gen_sync_clock_converter.m_aresetn_r_reg_0\;
  \gen_sync_clock_converter.s_aresetn_r_reg_0\ <= \^gen_sync_clock_converter.s_aresetn_r_reg_0\;
\FSM_onehot_gen_sync_clock_converter.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => \^gen_sync_clock_converter.m_aresetn_r_reg_0\,
      I1 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\,
      I3 => \gen_sync_clock_converter.state_reg\(1),
      O => \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2A202020"
    )
        port map (
      I0 => \^gen_sync_clock_converter.m_aresetn_r_reg_0\,
      I1 => m_axi_bvalid,
      I2 => \gen_sync_clock_converter.state_reg\(1),
      I3 => s_axi_bready,
      I4 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I5 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\,
      O => \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444040000000400"
    )
        port map (
      I0 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\,
      I1 => \^gen_sync_clock_converter.m_aresetn_r_reg_0\,
      I2 => s_axi_bready,
      I3 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I4 => \gen_sync_clock_converter.state_reg\(1),
      I5 => m_axi_bvalid,
      O => \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\,
      Q => \gen_sync_clock_converter.state_reg\(1),
      R => '0'
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      R => '0'
    );
\gen_sync_clock_converter.m_aresetn_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \gen_sync_clock_converter.s_aresetn_r_i_1_n_0\,
      Q => \^gen_sync_clock_converter.m_aresetn_r_reg_0\,
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \gen_sync_clock_converter.state_reg\(1),
      O => \gen_sync_clock_converter.load_tpayload\
    );
\gen_sync_clock_converter.m_tpayload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => m_axi_bresp(0),
      Q => s_axi_bresp(0),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => m_axi_bresp(1),
      Q => s_axi_bresp(1),
      R => '0'
    );
\gen_sync_clock_converter.m_tvalid_r_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F880000"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \gen_sync_clock_converter.state_reg\(1),
      I2 => s_axi_bready,
      I3 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I4 => \^gen_sync_clock_converter.m_aresetn_r_reg_0\,
      O => \gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0\
    );
\gen_sync_clock_converter.m_tvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0\,
      Q => s_axi_bvalid,
      R => '0'
    );
\gen_sync_clock_converter.s_aresetn_r_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_sync_clock_converter.s_aresetn_r_reg_1\,
      I1 => \gen_sync_clock_converter.s_aresetn_r_reg_2\,
      O => \gen_sync_clock_converter.s_aresetn_r_i_1_n_0\
    );
\gen_sync_clock_converter.s_aresetn_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.s_aresetn_r_i_1_n_0\,
      Q => \^gen_sync_clock_converter.s_aresetn_r_reg_0\,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404004400000000"
    )
        port map (
      I0 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0]\,
      I1 => \gen_sync_clock_converter.state_reg\(1),
      I2 => posedge_finder_first,
      I3 => posedge_finder_second,
      I4 => slow_aclk_div2,
      I5 => \^gen_sync_clock_converter.s_aresetn_r_reg_0\,
      O => \gen_sync_clock_converter.s_tready_r_i_1_n_0\
    );
\gen_sync_clock_converter.s_tready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.s_tready_r_i_1_n_0\,
      Q => m_axi_bready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2\ is
  port (
    m_axi_rready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    \gen_sync_clock_converter.s_tready_r_reg_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \gen_sync_clock_converter.m_tvalid_r_reg_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2\ : entity is "axi_clock_converter_v2_1_24_axic_sync_clock_converter";
end \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2\;

architecture STRUCTURE of \design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2\ is
  signal \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_sync_clock_converter.load_tpayload\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[0]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[1]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_sync_clock_converter.state_reg[2]\ : label is "INIT:001,ONE:11,TWO:100,ZERO:010";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_gen_sync_clock_converter.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      I1 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2A202020"
    )
        port map (
      I0 => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      I1 => m_axi_rvalid,
      I2 => \^q\(1),
      I3 => s_axi_rready,
      I4 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444040000000400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      I2 => s_axi_rready,
      I3 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => m_axi_rvalid,
      O => \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\FSM_onehot_gen_sync_clock_converter.state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^q\(1),
      O => \gen_sync_clock_converter.load_tpayload\
    );
\gen_sync_clock_converter.m_tpayload_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(0),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(0),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(10),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(10),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(11),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(11),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(12),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(12),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(13),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(13),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(14),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(14),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(15),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(15),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(16),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(16),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(17),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(17),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(18),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(18),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(19),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(19),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(1),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(1),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(20),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(20),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(21),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(21),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(22),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(22),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(23),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(23),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(24),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(24),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(25),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(25),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(26),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(26),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(27),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(27),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(28),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(28),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(29),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(29),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(2),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(2),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(30),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(30),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(31),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(31),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(32),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(32),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(33),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(33),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(3),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(3),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(4),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(4),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(5),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(5),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(6),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(6),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(7),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(7),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(8),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(8),
      R => '0'
    );
\gen_sync_clock_converter.m_tpayload_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => \gen_sync_clock_converter.load_tpayload\,
      D => D(9),
      Q => \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(9),
      R => '0'
    );
\gen_sync_clock_converter.m_tvalid_r_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F880000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^q\(1),
      I2 => s_axi_rready,
      I3 => \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2]\,
      I4 => \gen_sync_clock_converter.m_tvalid_r_reg_0\,
      O => \gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0\
    );
\gen_sync_clock_converter.m_tvalid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\,
      CE => '1',
      D => \gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0\,
      Q => s_axi_rvalid,
      R => '0'
    );
\gen_sync_clock_converter.s_tready_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_sync_clock_converter.s_tready_r_reg_0\,
      Q => m_axi_rready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_ARADDR_RIGHT : integer;
  attribute C_ARADDR_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARADDR_WIDTH : integer;
  attribute C_ARADDR_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 8;
  attribute C_ARBURST_RIGHT : integer;
  attribute C_ARBURST_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARBURST_WIDTH : integer;
  attribute C_ARBURST_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARCACHE_RIGHT : integer;
  attribute C_ARCACHE_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARCACHE_WIDTH : integer;
  attribute C_ARCACHE_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARID_RIGHT : integer;
  attribute C_ARID_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_ARID_WIDTH : integer;
  attribute C_ARID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARLEN_RIGHT : integer;
  attribute C_ARLEN_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARLEN_WIDTH : integer;
  attribute C_ARLEN_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARLOCK_RIGHT : integer;
  attribute C_ARLOCK_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARLOCK_WIDTH : integer;
  attribute C_ARLOCK_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARPROT_RIGHT : integer;
  attribute C_ARPROT_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARPROT_WIDTH : integer;
  attribute C_ARPROT_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARQOS_RIGHT : integer;
  attribute C_ARQOS_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARQOS_WIDTH : integer;
  attribute C_ARQOS_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARREGION_RIGHT : integer;
  attribute C_ARREGION_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARREGION_WIDTH : integer;
  attribute C_ARREGION_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARSIZE_RIGHT : integer;
  attribute C_ARSIZE_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_ARSIZE_WIDTH : integer;
  attribute C_ARSIZE_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARUSER_RIGHT : integer;
  attribute C_ARUSER_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_ARUSER_WIDTH : integer;
  attribute C_ARUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AR_WIDTH : integer;
  attribute C_AR_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_AWADDR_RIGHT : integer;
  attribute C_AWADDR_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWADDR_WIDTH : integer;
  attribute C_AWADDR_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 8;
  attribute C_AWBURST_RIGHT : integer;
  attribute C_AWBURST_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWBURST_WIDTH : integer;
  attribute C_AWBURST_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWCACHE_RIGHT : integer;
  attribute C_AWCACHE_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWCACHE_WIDTH : integer;
  attribute C_AWCACHE_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWID_RIGHT : integer;
  attribute C_AWID_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_AWID_WIDTH : integer;
  attribute C_AWID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWLEN_RIGHT : integer;
  attribute C_AWLEN_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWLEN_WIDTH : integer;
  attribute C_AWLEN_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWLOCK_RIGHT : integer;
  attribute C_AWLOCK_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWLOCK_WIDTH : integer;
  attribute C_AWLOCK_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWPROT_RIGHT : integer;
  attribute C_AWPROT_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWPROT_WIDTH : integer;
  attribute C_AWPROT_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWQOS_RIGHT : integer;
  attribute C_AWQOS_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWQOS_WIDTH : integer;
  attribute C_AWQOS_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWREGION_RIGHT : integer;
  attribute C_AWREGION_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWREGION_WIDTH : integer;
  attribute C_AWREGION_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWSIZE_RIGHT : integer;
  attribute C_AWSIZE_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_AWSIZE_WIDTH : integer;
  attribute C_AWSIZE_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWUSER_RIGHT : integer;
  attribute C_AWUSER_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AWUSER_WIDTH : integer;
  attribute C_AWUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AW_WIDTH : integer;
  attribute C_AW_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 8;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_BID_RIGHT : integer;
  attribute C_BID_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_BID_WIDTH : integer;
  attribute C_BID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_BRESP_RIGHT : integer;
  attribute C_BRESP_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_BRESP_WIDTH : integer;
  attribute C_BRESP_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_BUSER_RIGHT : integer;
  attribute C_BUSER_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_BUSER_WIDTH : integer;
  attribute C_BUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is "zynquplus";
  attribute C_FIFO_AR_WIDTH : integer;
  attribute C_FIFO_AR_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_FIFO_AW_WIDTH : integer;
  attribute C_FIFO_AW_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 11;
  attribute C_FIFO_B_WIDTH : integer;
  attribute C_FIFO_B_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_FIFO_R_WIDTH : integer;
  attribute C_FIFO_R_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 34;
  attribute C_FIFO_W_WIDTH : integer;
  attribute C_FIFO_W_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 36;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_RDATA_RIGHT : integer;
  attribute C_RDATA_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_RDATA_WIDTH : integer;
  attribute C_RDATA_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 32;
  attribute C_RID_RIGHT : integer;
  attribute C_RID_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 34;
  attribute C_RID_WIDTH : integer;
  attribute C_RID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_RLAST_RIGHT : integer;
  attribute C_RLAST_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_RLAST_WIDTH : integer;
  attribute C_RLAST_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_RRESP_RIGHT : integer;
  attribute C_RRESP_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_RRESP_WIDTH : integer;
  attribute C_RRESP_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute C_RUSER_RIGHT : integer;
  attribute C_RUSER_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_RUSER_WIDTH : integer;
  attribute C_RUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_R_WIDTH : integer;
  attribute C_R_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 34;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute C_WDATA_RIGHT : integer;
  attribute C_WDATA_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 4;
  attribute C_WDATA_WIDTH : integer;
  attribute C_WDATA_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 32;
  attribute C_WID_RIGHT : integer;
  attribute C_WID_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 36;
  attribute C_WID_WIDTH : integer;
  attribute C_WID_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_WLAST_RIGHT : integer;
  attribute C_WLAST_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_WLAST_WIDTH : integer;
  attribute C_WLAST_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_WSTRB_RIGHT : integer;
  attribute C_WSTRB_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_WSTRB_WIDTH : integer;
  attribute C_WSTRB_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 4;
  attribute C_WUSER_RIGHT : integer;
  attribute C_WUSER_RIGHT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_WUSER_WIDTH : integer;
  attribute C_WUSER_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute C_W_WIDTH : integer;
  attribute C_W_WIDTH of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 36;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is "yes";
  attribute P_ACLK_RATIO : integer;
  attribute P_ACLK_RATIO of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 2;
  attribute P_FULLY_REG : integer;
  attribute P_FULLY_REG of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 1;
  attribute P_LIGHT_WT : integer;
  attribute P_LIGHT_WT of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute P_LUTRAM_ASYNC : integer;
  attribute P_LUTRAM_ASYNC of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 12;
  attribute P_ROUNDING_OFFSET : integer;
  attribute P_ROUNDING_OFFSET of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is 0;
  attribute P_SI_LT_MI : string;
  attribute P_SI_LT_MI of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter : entity is "1'b1";
end design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter;

architecture STRUCTURE of design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1\ : STD_LOGIC;
  signal \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2\ : STD_LOGIC;
  signal \gen_clock_conv.sample_cycle\ : STD_LOGIC;
  signal \gen_sync_clock_converter.m_aresetn_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_areset_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.s_aresetn_r\ : STD_LOGIC;
  signal \gen_sync_clock_converter.state_reg\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal posedge_finder_first : STD_LOGIC;
  signal posedge_finder_second : STD_LOGIC;
  signal slow_aclk_div2 : STD_LOGIC;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \^m_axi_wvalid\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst\: entity work.design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio
     port map (
      \FSM_onehot_gen_sync_clock_converter.state_reg[0]\ => \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4\,
      Q(1) => \gen_sync_clock_converter.state_reg\(1),
      Q(0) => \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3\,
      \gen_clock_conv.sample_cycle\ => \gen_clock_conv.sample_cycle\,
      \gen_sample_cycle.posedge_finder_second_reg_0\ => m_axi_aclk,
      \gen_sync_clock_converter.s_tready_r_reg\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0\,
      \out\ => s_axi_aclk,
      posedge_finder_first => posedge_finder_first,
      posedge_finder_second => posedge_finder_second,
      slow_aclk_div2 => slow_aclk_div2
    );
\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter\: entity work.design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter
     port map (
      D(10 downto 3) => s_axi_araddr(7 downto 0),
      D(2 downto 0) => s_axi_arprot(2 downto 0),
      Q(10 downto 3) => m_axi_araddr(7 downto 0),
      Q(2 downto 0) => m_axi_arprot(2 downto 0),
      \gen_clock_conv.sample_cycle\ => \gen_clock_conv.sample_cycle\,
      \gen_sync_clock_converter.m_aresetn_r\ => \gen_sync_clock_converter.m_aresetn_r\,
      \gen_sync_clock_converter.m_tvalid_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6\,
      \gen_sync_clock_converter.s_areset_r\ => \gen_sync_clock_converter.s_areset_r\,
      \gen_sync_clock_converter.s_aresetn_r\ => \gen_sync_clock_converter.s_aresetn_r\,
      \gen_sync_clock_converter.s_tready_r_reg_0\ => s_axi_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => \^m_axi_arvalid\,
      \out\ => m_axi_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2\
    );
\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter\: entity work.\design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2\
     port map (
      D(33 downto 2) => m_axi_rdata(31 downto 0),
      D(1 downto 0) => m_axi_rresp(1 downto 0),
      \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\ => s_axi_aclk,
      Q(1) => \gen_sync_clock_converter.state_reg\(1),
      Q(0) => \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3\,
      \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(33 downto 2) => s_axi_rdata(31 downto 0),
      \gen_sync_clock_converter.m_tpayload_r_reg[33]_0\(1 downto 0) => s_axi_rresp(1 downto 0),
      \gen_sync_clock_converter.m_tvalid_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1\,
      \gen_sync_clock_converter.s_tready_r_reg_0\ => \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4\,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => m_axi_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter\: entity work.design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0
     port map (
      D(10 downto 3) => s_axi_awaddr(7 downto 0),
      D(2 downto 0) => s_axi_awprot(2 downto 0),
      Q(10 downto 3) => m_axi_awaddr(7 downto 0),
      Q(2 downto 0) => m_axi_awprot(2 downto 0),
      \gen_clock_conv.sample_cycle\ => \gen_clock_conv.sample_cycle\,
      \gen_sync_clock_converter.m_aresetn_r\ => \gen_sync_clock_converter.m_aresetn_r\,
      \gen_sync_clock_converter.m_aresetn_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5\,
      \gen_sync_clock_converter.m_aresetn_r_reg_1\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6\,
      \gen_sync_clock_converter.m_aresetn_r_reg_2\ => s_axi_aresetn,
      \gen_sync_clock_converter.m_aresetn_r_reg_3\ => m_axi_aresetn,
      \gen_sync_clock_converter.m_tvalid_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2\,
      \gen_sync_clock_converter.m_tvalid_r_reg_1\ => \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2\,
      \gen_sync_clock_converter.s_areset_r\ => \gen_sync_clock_converter.s_areset_r\,
      \gen_sync_clock_converter.s_aresetn_r\ => \gen_sync_clock_converter.s_aresetn_r\,
      \gen_sync_clock_converter.s_aresetn_r_reg_0\ => s_axi_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => \^m_axi_arvalid\,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => \^m_axi_wvalid\,
      \out\ => m_axi_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter\: entity work.\design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1\
     port map (
      \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0\ => s_axi_aclk,
      \gen_sync_clock_converter.m_aresetn_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1\,
      \gen_sync_clock_converter.s_aresetn_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0\,
      \gen_sync_clock_converter.s_aresetn_r_reg_1\ => m_axi_aresetn,
      \gen_sync_clock_converter.s_aresetn_r_reg_2\ => s_axi_aresetn,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      \out\ => m_axi_aclk,
      posedge_finder_first => posedge_finder_first,
      posedge_finder_second => posedge_finder_second,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      slow_aclk_div2 => slow_aclk_div2
    );
\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter\: entity work.\design_1_auto_cc_1_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0\
     port map (
      D(35 downto 4) => s_axi_wdata(31 downto 0),
      D(3 downto 0) => s_axi_wstrb(3 downto 0),
      Q(35 downto 4) => m_axi_wdata(31 downto 0),
      Q(3 downto 0) => m_axi_wstrb(3 downto 0),
      \gen_clock_conv.sample_cycle\ => \gen_clock_conv.sample_cycle\,
      \gen_sync_clock_converter.m_aresetn_r\ => \gen_sync_clock_converter.m_aresetn_r\,
      \gen_sync_clock_converter.m_tvalid_r_reg_0\ => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5\,
      \gen_sync_clock_converter.s_areset_r\ => \gen_sync_clock_converter.s_areset_r\,
      \gen_sync_clock_converter.s_aresetn_r\ => \gen_sync_clock_converter.s_aresetn_r\,
      \gen_sync_clock_converter.s_tready_r_reg_0\ => s_axi_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => \^m_axi_wvalid\,
      \out\ => m_axi_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_auto_cc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_auto_cc_1 : entity is "design_1_auto_cc_1,axi_clock_converter_v2_1_24_axi_clock_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_auto_cc_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_auto_cc_1 : entity is "axi_clock_converter_v2_1_24_axi_clock_converter,Vivado 2021.2";
end design_1_auto_cc_1;

architecture STRUCTURE of design_1_auto_cc_1 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ARADDR_RIGHT : integer;
  attribute C_ARADDR_RIGHT of inst : label is 3;
  attribute C_ARADDR_WIDTH : integer;
  attribute C_ARADDR_WIDTH of inst : label is 8;
  attribute C_ARBURST_RIGHT : integer;
  attribute C_ARBURST_RIGHT of inst : label is 3;
  attribute C_ARBURST_WIDTH : integer;
  attribute C_ARBURST_WIDTH of inst : label is 0;
  attribute C_ARCACHE_RIGHT : integer;
  attribute C_ARCACHE_RIGHT of inst : label is 3;
  attribute C_ARCACHE_WIDTH : integer;
  attribute C_ARCACHE_WIDTH of inst : label is 0;
  attribute C_ARID_RIGHT : integer;
  attribute C_ARID_RIGHT of inst : label is 11;
  attribute C_ARID_WIDTH : integer;
  attribute C_ARID_WIDTH of inst : label is 0;
  attribute C_ARLEN_RIGHT : integer;
  attribute C_ARLEN_RIGHT of inst : label is 3;
  attribute C_ARLEN_WIDTH : integer;
  attribute C_ARLEN_WIDTH of inst : label is 0;
  attribute C_ARLOCK_RIGHT : integer;
  attribute C_ARLOCK_RIGHT of inst : label is 3;
  attribute C_ARLOCK_WIDTH : integer;
  attribute C_ARLOCK_WIDTH of inst : label is 0;
  attribute C_ARPROT_RIGHT : integer;
  attribute C_ARPROT_RIGHT of inst : label is 0;
  attribute C_ARPROT_WIDTH : integer;
  attribute C_ARPROT_WIDTH of inst : label is 3;
  attribute C_ARQOS_RIGHT : integer;
  attribute C_ARQOS_RIGHT of inst : label is 0;
  attribute C_ARQOS_WIDTH : integer;
  attribute C_ARQOS_WIDTH of inst : label is 0;
  attribute C_ARREGION_RIGHT : integer;
  attribute C_ARREGION_RIGHT of inst : label is 0;
  attribute C_ARREGION_WIDTH : integer;
  attribute C_ARREGION_WIDTH of inst : label is 0;
  attribute C_ARSIZE_RIGHT : integer;
  attribute C_ARSIZE_RIGHT of inst : label is 3;
  attribute C_ARSIZE_WIDTH : integer;
  attribute C_ARSIZE_WIDTH of inst : label is 0;
  attribute C_ARUSER_RIGHT : integer;
  attribute C_ARUSER_RIGHT of inst : label is 0;
  attribute C_ARUSER_WIDTH : integer;
  attribute C_ARUSER_WIDTH of inst : label is 0;
  attribute C_AR_WIDTH : integer;
  attribute C_AR_WIDTH of inst : label is 11;
  attribute C_AWADDR_RIGHT : integer;
  attribute C_AWADDR_RIGHT of inst : label is 3;
  attribute C_AWADDR_WIDTH : integer;
  attribute C_AWADDR_WIDTH of inst : label is 8;
  attribute C_AWBURST_RIGHT : integer;
  attribute C_AWBURST_RIGHT of inst : label is 3;
  attribute C_AWBURST_WIDTH : integer;
  attribute C_AWBURST_WIDTH of inst : label is 0;
  attribute C_AWCACHE_RIGHT : integer;
  attribute C_AWCACHE_RIGHT of inst : label is 3;
  attribute C_AWCACHE_WIDTH : integer;
  attribute C_AWCACHE_WIDTH of inst : label is 0;
  attribute C_AWID_RIGHT : integer;
  attribute C_AWID_RIGHT of inst : label is 11;
  attribute C_AWID_WIDTH : integer;
  attribute C_AWID_WIDTH of inst : label is 0;
  attribute C_AWLEN_RIGHT : integer;
  attribute C_AWLEN_RIGHT of inst : label is 3;
  attribute C_AWLEN_WIDTH : integer;
  attribute C_AWLEN_WIDTH of inst : label is 0;
  attribute C_AWLOCK_RIGHT : integer;
  attribute C_AWLOCK_RIGHT of inst : label is 3;
  attribute C_AWLOCK_WIDTH : integer;
  attribute C_AWLOCK_WIDTH of inst : label is 0;
  attribute C_AWPROT_RIGHT : integer;
  attribute C_AWPROT_RIGHT of inst : label is 0;
  attribute C_AWPROT_WIDTH : integer;
  attribute C_AWPROT_WIDTH of inst : label is 3;
  attribute C_AWQOS_RIGHT : integer;
  attribute C_AWQOS_RIGHT of inst : label is 0;
  attribute C_AWQOS_WIDTH : integer;
  attribute C_AWQOS_WIDTH of inst : label is 0;
  attribute C_AWREGION_RIGHT : integer;
  attribute C_AWREGION_RIGHT of inst : label is 0;
  attribute C_AWREGION_WIDTH : integer;
  attribute C_AWREGION_WIDTH of inst : label is 0;
  attribute C_AWSIZE_RIGHT : integer;
  attribute C_AWSIZE_RIGHT of inst : label is 3;
  attribute C_AWSIZE_WIDTH : integer;
  attribute C_AWSIZE_WIDTH of inst : label is 0;
  attribute C_AWUSER_RIGHT : integer;
  attribute C_AWUSER_RIGHT of inst : label is 0;
  attribute C_AWUSER_WIDTH : integer;
  attribute C_AWUSER_WIDTH of inst : label is 0;
  attribute C_AW_WIDTH : integer;
  attribute C_AW_WIDTH of inst : label is 11;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 8;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_BID_RIGHT : integer;
  attribute C_BID_RIGHT of inst : label is 2;
  attribute C_BID_WIDTH : integer;
  attribute C_BID_WIDTH of inst : label is 0;
  attribute C_BRESP_RIGHT : integer;
  attribute C_BRESP_RIGHT of inst : label is 0;
  attribute C_BRESP_WIDTH : integer;
  attribute C_BRESP_WIDTH of inst : label is 2;
  attribute C_BUSER_RIGHT : integer;
  attribute C_BUSER_RIGHT of inst : label is 0;
  attribute C_BUSER_WIDTH : integer;
  attribute C_BUSER_WIDTH of inst : label is 0;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of inst : label is 2;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_FIFO_AR_WIDTH : integer;
  attribute C_FIFO_AR_WIDTH of inst : label is 11;
  attribute C_FIFO_AW_WIDTH : integer;
  attribute C_FIFO_AW_WIDTH of inst : label is 11;
  attribute C_FIFO_B_WIDTH : integer;
  attribute C_FIFO_B_WIDTH of inst : label is 2;
  attribute C_FIFO_R_WIDTH : integer;
  attribute C_FIFO_R_WIDTH of inst : label is 34;
  attribute C_FIFO_W_WIDTH : integer;
  attribute C_FIFO_W_WIDTH of inst : label is 36;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_RDATA_RIGHT : integer;
  attribute C_RDATA_RIGHT of inst : label is 2;
  attribute C_RDATA_WIDTH : integer;
  attribute C_RDATA_WIDTH of inst : label is 32;
  attribute C_RID_RIGHT : integer;
  attribute C_RID_RIGHT of inst : label is 34;
  attribute C_RID_WIDTH : integer;
  attribute C_RID_WIDTH of inst : label is 0;
  attribute C_RLAST_RIGHT : integer;
  attribute C_RLAST_RIGHT of inst : label is 0;
  attribute C_RLAST_WIDTH : integer;
  attribute C_RLAST_WIDTH of inst : label is 0;
  attribute C_RRESP_RIGHT : integer;
  attribute C_RRESP_RIGHT of inst : label is 0;
  attribute C_RRESP_WIDTH : integer;
  attribute C_RRESP_WIDTH of inst : label is 2;
  attribute C_RUSER_RIGHT : integer;
  attribute C_RUSER_RIGHT of inst : label is 0;
  attribute C_RUSER_WIDTH : integer;
  attribute C_RUSER_WIDTH of inst : label is 0;
  attribute C_R_WIDTH : integer;
  attribute C_R_WIDTH of inst : label is 34;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_WDATA_RIGHT : integer;
  attribute C_WDATA_RIGHT of inst : label is 4;
  attribute C_WDATA_WIDTH : integer;
  attribute C_WDATA_WIDTH of inst : label is 32;
  attribute C_WID_RIGHT : integer;
  attribute C_WID_RIGHT of inst : label is 36;
  attribute C_WID_WIDTH : integer;
  attribute C_WID_WIDTH of inst : label is 0;
  attribute C_WLAST_RIGHT : integer;
  attribute C_WLAST_RIGHT of inst : label is 0;
  attribute C_WLAST_WIDTH : integer;
  attribute C_WLAST_WIDTH of inst : label is 0;
  attribute C_WSTRB_RIGHT : integer;
  attribute C_WSTRB_RIGHT of inst : label is 0;
  attribute C_WSTRB_WIDTH : integer;
  attribute C_WSTRB_WIDTH of inst : label is 4;
  attribute C_WUSER_RIGHT : integer;
  attribute C_WUSER_RIGHT of inst : label is 0;
  attribute C_WUSER_WIDTH : integer;
  attribute C_WUSER_WIDTH of inst : label is 0;
  attribute C_W_WIDTH : integer;
  attribute C_W_WIDTH of inst : label is 36;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ACLK_RATIO : integer;
  attribute P_ACLK_RATIO of inst : label is 2;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_FULLY_REG : integer;
  attribute P_FULLY_REG of inst : label is 1;
  attribute P_LIGHT_WT : integer;
  attribute P_LIGHT_WT of inst : label is 0;
  attribute P_LUTRAM_ASYNC : integer;
  attribute P_LUTRAM_ASYNC of inst : label is 12;
  attribute P_ROUNDING_OFFSET : integer;
  attribute P_ROUNDING_OFFSET of inst : label is 0;
  attribute P_SI_LT_MI : string;
  attribute P_SI_LT_MI of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 MI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_aclk : signal is "XIL_INTERFACENAME MI_CLK, FREQ_HZ 300892857, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 MI_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axi_aresetn : signal is "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300892857, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 150446428, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150446428, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.design_1_auto_cc_1_axi_clock_converter_v2_1_24_axi_clock_converter
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(7 downto 0) => m_axi_araddr(7 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(7 downto 0) => m_axi_awaddr(7 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(7 downto 0) => s_axi_araddr(7 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(7 downto 0) => s_axi_awaddr(7 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '1',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
