-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Jun 11 13:35:00 2022
-- Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_EEPROM_8b_0_0/design_1_EEPROM_8b_0_0_sim_netlist.vhdl
-- Design      : design_1_EEPROM_8b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_GlitchFilter is
  port (
    \Filter.sOut_reg_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SampleClk : in STD_LOGIC;
    sRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_GlitchFilter : entity is "GlitchFilter";
end design_1_EEPROM_8b_0_0_GlitchFilter;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_GlitchFilter is
  signal \Filter.cntPeriods[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[0]\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[1]\ : STD_LOGIC;
  signal \Filter.cntPeriods_reg_n_0_[2]\ : STD_LOGIC;
  signal \Filter.sIn_q_reg_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1__0_n_0\ : STD_LOGIC;
  signal \^filter.sout_reg_0\ : STD_LOGIC;
  signal cntPeriods0_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cntPeriods0 : label is "soft_lutpair0";
begin
  \Filter.sOut_reg_0\ <= \^filter.sout_reg_0\;
\Filter.cntPeriods[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[0]\,
      I1 => \Filter.cntPeriods_reg_n_0_[1]\,
      O => \Filter.cntPeriods[1]_i_1__0_n_0\
    );
\Filter.cntPeriods[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => \out\(0),
      I2 => sRst,
      O => \Filter.cntPeriods[2]_i_1__0_n_0\
    );
\Filter.cntPeriods[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[1]\,
      I1 => \Filter.cntPeriods_reg_n_0_[0]\,
      I2 => \Filter.cntPeriods_reg_n_0_[2]\,
      O => \Filter.cntPeriods[2]_i_2__0_n_0\
    );
\Filter.cntPeriods[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[1]\,
      I1 => \Filter.cntPeriods_reg_n_0_[0]\,
      I2 => \Filter.cntPeriods_reg_n_0_[2]\,
      O => \Filter.cntPeriods[2]_i_3__0_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SampleClk,
      CE => \Filter.cntPeriods[2]_i_2__0_n_0\,
      D => cntPeriods0_n_0,
      Q => \Filter.cntPeriods_reg_n_0_[0]\,
      R => \Filter.cntPeriods[2]_i_1__0_n_0\
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SampleClk,
      CE => \Filter.cntPeriods[2]_i_2__0_n_0\,
      D => \Filter.cntPeriods[1]_i_1__0_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[1]\,
      R => \Filter.cntPeriods[2]_i_1__0_n_0\
    );
\Filter.cntPeriods_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => \Filter.cntPeriods[2]_i_2__0_n_0\,
      D => \Filter.cntPeriods[2]_i_3__0_n_0\,
      Q => \Filter.cntPeriods_reg_n_0_[2]\,
      S => \Filter.cntPeriods[2]_i_1__0_n_0\
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \out\(0),
      Q => \Filter.sIn_q_reg_n_0\,
      R => '0'
    );
\Filter.sOut_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => \Filter.sIn_q_reg_n_0\,
      I1 => \Filter.cntPeriods_reg_n_0_[2]\,
      I2 => \Filter.cntPeriods_reg_n_0_[0]\,
      I3 => \Filter.cntPeriods_reg_n_0_[1]\,
      I4 => \^filter.sout_reg_0\,
      O => \Filter.sOut_i_1__0_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \Filter.sOut_i_1__0_n_0\,
      Q => \^filter.sout_reg_0\,
      R => '0'
    );
cntPeriods0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Filter.cntPeriods_reg_n_0_[0]\,
      O => cntPeriods0_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_GlitchFilter_0 is
  port (
    sOut : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SampleClk : in STD_LOGIC;
    sRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_GlitchFilter_0 : entity is "GlitchFilter";
end design_1_EEPROM_8b_0_0_GlitchFilter_0;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_GlitchFilter_0 is
  signal \Filter.cntPeriods[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_1_n_0\ : STD_LOGIC;
  signal \Filter.cntPeriods[2]_i_3_n_0\ : STD_LOGIC;
  signal \Filter.sOut_i_1_n_0\ : STD_LOGIC;
  signal cntPeriods : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cntPeriods0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC;
  signal sIn_q : STD_LOGIC;
  signal \^sout\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter.cntPeriods[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of cntPeriods0 : label is "soft_lutpair1";
begin
  sOut <= \^sout\;
\Filter.cntPeriods[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cntPeriods(0),
      I1 => cntPeriods(1),
      O => \Filter.cntPeriods[1]_i_1_n_0\
    );
\Filter.cntPeriods[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => sIn_q,
      I1 => \out\(0),
      I2 => sRst,
      O => \Filter.cntPeriods[2]_i_1_n_0\
    );
\Filter.cntPeriods[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cntPeriods(1),
      I1 => cntPeriods(0),
      I2 => cntPeriods(2),
      O => p_1_in
    );
\Filter.cntPeriods[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => cntPeriods(1),
      I1 => cntPeriods(0),
      I2 => cntPeriods(2),
      O => \Filter.cntPeriods[2]_i_3_n_0\
    );
\Filter.cntPeriods_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SampleClk,
      CE => p_1_in,
      D => \cntPeriods0__0\(0),
      Q => cntPeriods(0),
      R => \Filter.cntPeriods[2]_i_1_n_0\
    );
\Filter.cntPeriods_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SampleClk,
      CE => p_1_in,
      D => \Filter.cntPeriods[1]_i_1_n_0\,
      Q => cntPeriods(1),
      R => \Filter.cntPeriods[2]_i_1_n_0\
    );
\Filter.cntPeriods_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => p_1_in,
      D => \Filter.cntPeriods[2]_i_3_n_0\,
      Q => cntPeriods(2),
      S => \Filter.cntPeriods[2]_i_1_n_0\
    );
\Filter.sIn_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \out\(0),
      Q => sIn_q,
      R => '0'
    );
\Filter.sOut_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => sIn_q,
      I1 => cntPeriods(2),
      I2 => cntPeriods(0),
      I3 => cntPeriods(1),
      I4 => \^sout\,
      O => \Filter.sOut_i_1_n_0\
    );
\Filter.sOut_reg\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \Filter.sOut_i_1_n_0\,
      Q => \^sout\,
      R => '0'
    );
cntPeriods0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntPeriods(0),
      O => \cntPeriods0__0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SampleClk : in STD_LOGIC;
    \oSyncStages_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_SyncAsync : entity is "SyncAsync";
end design_1_EEPROM_8b_0_0_SyncAsync;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => '1',
      D => \oSyncStages_reg[0]_0\(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_SyncAsync_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SampleClk : in STD_LOGIC;
    \oSyncStages_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_SyncAsync_1 : entity is "SyncAsync";
end design_1_EEPROM_8b_0_0_SyncAsync_1;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_SyncAsync_1 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => '1',
      D => \oSyncStages_reg[0]_0\(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_TWI_SlaveCtl is
  port (
    aSDA_T : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    END_O_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    END_O_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SampleClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sState_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sAddr_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \sAddr_reg[3]\ : in STD_LOGIC;
    \sAddr_reg[6]_0\ : in STD_LOGIC;
    \sAddr_reg[4]\ : in STD_LOGIC;
    \oSyncStages_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_TWI_SlaveCtl : entity is "TWI_SlaveCtl";
end design_1_EEPROM_8b_0_0_TWI_SlaveCtl;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_TWI_SlaveCtl is
  signal DONE_O_i_2_n_0 : STD_LOGIC;
  signal DONE_O_i_3_n_0 : STD_LOGIC;
  signal END_O_i_3_n_0 : STD_LOGIC;
  signal \FSM_gray_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_gray_state[2]_i_7_n_0\ : STD_LOGIC;
  signal GlitchF_SCL_n_0 : STD_LOGIC;
  signal \bitCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitCount[2]_i_3_n_0\ : STD_LOGIC;
  signal \bitCount__1\ : STD_LOGIC;
  signal bitCount_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal dScl : STD_LOGIC;
  signal dSda : STD_LOGIC;
  signal \dataByte[0]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[1]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[2]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[3]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[4]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[5]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[6]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_1_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_2_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_3_n_0\ : STD_LOGIC;
  signal \dataByte[7]_i_4_n_0\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataByte_reg_n_0_[7]\ : STD_LOGIC;
  signal ddScl : STD_LOGIC;
  signal ddSda : STD_LOGIC;
  signal \fStart__1\ : STD_LOGIC;
  signal \fStop__1\ : STD_LOGIC;
  signal iDone : STD_LOGIC;
  signal iEnd : STD_LOGIC;
  signal \nstate__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal rd_wrn_i_1_n_0 : STD_LOGIC;
  signal rd_wrn_reg_n_0 : STD_LOGIC;
  signal sI2C_Done : STD_LOGIC;
  signal sI2C_End : STD_LOGIC;
  signal sOut : STD_LOGIC;
  signal sScl : STD_LOGIC;
  signal sSda : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DONE_O_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of END_O_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_gray_state[1]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_gray_state[2]_i_9\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[0]\ : label is "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[1]\ : label is "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011";
  attribute FSM_ENCODED_STATES of \FSM_gray_state_reg[2]\ : label is "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011";
  attribute SOFT_HLUTNM of SDA_IOBUF_inst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitCount[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bitCount[2]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dataByte[7]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sAddr[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sAddr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sAddr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sState[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sState[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sState[1]_i_2\ : label is "soft_lutpair5";
begin
DONE_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCECCCCCCCCCCC"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_7_n_0\,
      I1 => DONE_O_i_2_n_0,
      I2 => DONE_O_i_3_n_0,
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => iDone
    );
DONE_O_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \bitCount__1\,
      O => DONE_O_i_2_n_0
    );
DONE_O_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => bitCount_reg(2),
      I1 => bitCount_reg(1),
      I2 => bitCount_reg(0),
      I3 => ddScl,
      I4 => dScl,
      O => DONE_O_i_3_n_0
    );
DONE_O_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => iDone,
      Q => sI2C_Done,
      R => '0'
    );
END_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => p_14_in,
      I4 => ddSda,
      I5 => END_O_i_3_n_0,
      O => iEnd
    );
END_O_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dScl,
      I1 => ddScl,
      O => p_14_in
    );
END_O_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => ddSda,
      I1 => dScl,
      I2 => dSda,
      O => END_O_i_3_n_0
    );
END_O_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => iEnd,
      Q => sI2C_End,
      R => '0'
    );
\FSM_gray_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D155D1504005D7F"
    )
        port map (
      I0 => state(1),
      I1 => dScl,
      I2 => dSda,
      I3 => ddSda,
      I4 => state(0),
      I5 => state(2),
      O => \nstate__0\(0)
    );
\FSM_gray_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080DFDFD0DA"
    )
        port map (
      I0 => \FSM_gray_state[1]_i_2_n_0\,
      I1 => \FSM_gray_state[1]_i_3_n_0\,
      I2 => \FSM_gray_state[1]_i_4_n_0\,
      I3 => rd_wrn_reg_n_0,
      I4 => \fStart__1\,
      I5 => \fStop__1\,
      O => \nstate__0\(1)
    );
\FSM_gray_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \FSM_gray_state[1]_i_2_n_0\
    );
\FSM_gray_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FFC0AAFFFF"
    )
        port map (
      I0 => \fStart__1\,
      I1 => \FSM_gray_state[1]_i_6_n_0\,
      I2 => \FSM_gray_state[2]_i_11_n_0\,
      I3 => state(0),
      I4 => state(1),
      I5 => \fStop__1\,
      O => \FSM_gray_state[1]_i_3_n_0\
    );
\FSM_gray_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_gray_state[1]_i_4_n_0\
    );
\FSM_gray_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => dSda,
      I1 => dScl,
      I2 => ddSda,
      O => \fStart__1\
    );
\FSM_gray_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \dataByte_reg_n_0_[2]\,
      I1 => \dataByte_reg_n_0_[1]\,
      I2 => \dataByte_reg_n_0_[0]\,
      O => \FSM_gray_state[1]_i_6_n_0\
    );
\FSM_gray_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFEEE"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_3_n_0\,
      I1 => \FSM_gray_state[2]_i_4_n_0\,
      I2 => state(1),
      I3 => \FSM_gray_state[2]_i_5_n_0\,
      I4 => state(2),
      O => \FSM_gray_state[2]_i_1_n_0\
    );
\FSM_gray_state[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bitCount_reg(0),
      I1 => bitCount_reg(1),
      I2 => bitCount_reg(2),
      O => \bitCount__1\
    );
\FSM_gray_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \dataByte_reg_n_0_[5]\,
      I1 => \dataByte_reg_n_0_[6]\,
      I2 => \dataByte_reg_n_0_[3]\,
      I3 => \dataByte_reg_n_0_[4]\,
      O => \FSM_gray_state[2]_i_11_n_0\
    );
\FSM_gray_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_6_n_0\,
      I1 => \FSM_gray_state[2]_i_7_n_0\,
      I2 => \fStop__1\,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \nstate__0\(2)
    );
\FSM_gray_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F203F2F3F203F20"
    )
        port map (
      I0 => DONE_O_i_3_n_0,
      I1 => \FSM_gray_state[1]_i_2_n_0\,
      I2 => \FSM_gray_state[1]_i_4_n_0\,
      I3 => END_O_i_3_n_0,
      I4 => dScl,
      I5 => ddScl,
      O => \FSM_gray_state[2]_i_3_n_0\
    );
\FSM_gray_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000F800"
    )
        port map (
      I0 => p_15_in,
      I1 => \bitCount__1\,
      I2 => \fStop__1\,
      I3 => state(0),
      I4 => state(1),
      I5 => \fStart__1\,
      O => \FSM_gray_state[2]_i_4_n_0\
    );
\FSM_gray_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2EE20C002EE2"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      I2 => ddSda,
      I3 => dSda,
      I4 => state(0),
      I5 => DONE_O_i_3_n_0,
      O => \FSM_gray_state[2]_i_5_n_0\
    );
\FSM_gray_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000550000FFFC"
    )
        port map (
      I0 => rd_wrn_reg_n_0,
      I1 => \sState_reg[0]\(0),
      I2 => \sState_reg[0]\(1),
      I3 => \FSM_gray_state[1]_i_4_n_0\,
      I4 => END_O_i_3_n_0,
      I5 => \FSM_gray_state[1]_i_2_n_0\,
      O => \FSM_gray_state[2]_i_6_n_0\
    );
\FSM_gray_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_gray_state[2]_i_11_n_0\,
      I1 => \dataByte_reg_n_0_[0]\,
      I2 => \dataByte_reg_n_0_[1]\,
      I3 => \dataByte_reg_n_0_[2]\,
      O => \FSM_gray_state[2]_i_7_n_0\
    );
\FSM_gray_state[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => dScl,
      I1 => dSda,
      I2 => ddSda,
      O => \fStop__1\
    );
\FSM_gray_state[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      O => p_15_in
    );
\FSM_gray_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \FSM_gray_state[2]_i_1_n_0\,
      D => \nstate__0\(0),
      Q => state(0),
      R => '0'
    );
\FSM_gray_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \FSM_gray_state[2]_i_1_n_0\,
      D => \nstate__0\(1),
      Q => state(1),
      R => '0'
    );
\FSM_gray_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \FSM_gray_state[2]_i_1_n_0\,
      D => \nstate__0\(2),
      Q => state(2),
      R => '0'
    );
GlitchF_SCL: entity work.design_1_EEPROM_8b_0_0_GlitchFilter
     port map (
      \Filter.sOut_reg_0\ => GlitchF_SCL_n_0,
      SampleClk => SampleClk,
      \out\(0) => sScl,
      sRst => sRst
    );
GlitchF_SDA: entity work.design_1_EEPROM_8b_0_0_GlitchFilter_0
     port map (
      SampleClk => SampleClk,
      \out\(0) => sSda,
      sOut => sOut,
      sRst => sRst
    );
SDA_IOBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEB"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \dataByte_reg_n_0_[7]\,
      O => aSDA_T
    );
SyncSCL: entity work.design_1_EEPROM_8b_0_0_SyncAsync
     port map (
      SampleClk => SampleClk,
      \oSyncStages_reg[0]_0\(0) => \oSyncStages_reg[0]_0\(0),
      \out\(0) => sScl
    );
SyncSDA: entity work.design_1_EEPROM_8b_0_0_SyncAsync_1
     port map (
      SampleClk => SampleClk,
      \oSyncStages_reg[0]_0\(0) => \oSyncStages_reg[0]\(0),
      \out\(0) => sSda
    );
\bitCount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitCount_reg(0),
      O => \bitCount[0]_i_1_n_0\
    );
\bitCount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => bitCount_reg(0),
      I1 => bitCount_reg(1),
      O => \bitCount[1]_i_1_n_0\
    );
\bitCount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEF"
    )
        port map (
      I0 => \dataByte[7]_i_3_n_0\,
      I1 => \fStart__1\,
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => \bitCount[2]_i_1_n_0\
    );
\bitCount[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44020000"
    )
        port map (
      I0 => ddScl,
      I1 => dScl,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => \bitCount[2]_i_2_n_0\
    );
\bitCount[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => bitCount_reg(0),
      I1 => bitCount_reg(1),
      I2 => bitCount_reg(2),
      O => \bitCount[2]_i_3_n_0\
    );
\bitCount_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => \bitCount[2]_i_2_n_0\,
      D => \bitCount[0]_i_1_n_0\,
      Q => bitCount_reg(0),
      S => \bitCount[2]_i_1_n_0\
    );
\bitCount_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => \bitCount[2]_i_2_n_0\,
      D => \bitCount[1]_i_1_n_0\,
      Q => bitCount_reg(1),
      S => \bitCount[2]_i_1_n_0\
    );
\bitCount_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SampleClk,
      CE => \bitCount[2]_i_2_n_0\,
      D => \bitCount[2]_i_3_n_0\,
      Q => bitCount_reg(2),
      S => \bitCount[2]_i_1_n_0\
    );
dScl_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => GlitchF_SCL_n_0,
      Q => dScl,
      R => '0'
    );
dSda_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => sOut,
      Q => dSda,
      R => '0'
    );
\dataByte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(0),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => dSda,
      O => \dataByte[0]_i_1_n_0\
    );
\dataByte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(1),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[0]\,
      O => \dataByte[1]_i_1_n_0\
    );
\dataByte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(2),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[1]\,
      O => \dataByte[2]_i_1_n_0\
    );
\dataByte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(3),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[2]\,
      O => \dataByte[3]_i_1_n_0\
    );
\dataByte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(4),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[3]\,
      O => \dataByte[4]_i_1_n_0\
    );
\dataByte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(5),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[4]\,
      O => \dataByte[5]_i_1_n_0\
    );
\dataByte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(6),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[5]\,
      O => \dataByte[6]_i_1_n_0\
    );
\dataByte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \fStart__1\,
      I4 => \dataByte[7]_i_3_n_0\,
      I5 => \bitCount[2]_i_2_n_0\,
      O => \dataByte[7]_i_1_n_0\
    );
\dataByte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABAAA8A8A8AA"
    )
        port map (
      I0 => Q(7),
      I1 => \dataByte[7]_i_3_n_0\,
      I2 => \fStart__1\,
      I3 => \dataByte[7]_i_4_n_0\,
      I4 => state(2),
      I5 => \dataByte_reg_n_0_[6]\,
      O => \dataByte[7]_i_2_n_0\
    );
\dataByte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0304000000040000"
    )
        port map (
      I0 => ddSda,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => p_15_in,
      I5 => rd_wrn_reg_n_0,
      O => \dataByte[7]_i_3_n_0\
    );
\dataByte[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \dataByte[7]_i_4_n_0\
    );
\dataByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[0]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[0]\,
      R => '0'
    );
\dataByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[1]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[1]\,
      R => '0'
    );
\dataByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[2]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[2]\,
      R => '0'
    );
\dataByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[3]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[3]\,
      R => '0'
    );
\dataByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[4]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[4]\,
      R => '0'
    );
\dataByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[5]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[5]\,
      R => '0'
    );
\dataByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[6]_i_1_n_0\,
      Q => \dataByte_reg_n_0_[6]\,
      R => '0'
    );
\dataByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => \dataByte[7]_i_1_n_0\,
      D => \dataByte[7]_i_2_n_0\,
      Q => \dataByte_reg_n_0_[7]\,
      R => '0'
    );
ddScl_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => dScl,
      Q => ddScl,
      R => '0'
    );
ddSda_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => dSda,
      Q => ddSda,
      R => '0'
    );
rd_wrn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => dSda,
      I1 => DONE_O_i_3_n_0,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => rd_wrn_reg_n_0,
      O => rd_wrn_i_1_n_0
    );
rd_wrn_reg: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => rd_wrn_i_1_n_0,
      Q => rd_wrn_reg_n_0,
      R => '0'
    );
\sAddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \dataByte_reg_n_0_[0]\,
      I1 => \sState_reg[0]\(1),
      I2 => \sAddr_reg[6]\(0),
      O => D(0)
    );
\sAddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \sAddr_reg[6]\(1),
      I1 => \sAddr_reg[6]\(0),
      I2 => \sState_reg[0]\(1),
      I3 => \dataByte_reg_n_0_[1]\,
      O => D(1)
    );
\sAddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => \sAddr_reg[6]\(2),
      I1 => \sAddr_reg[6]\(1),
      I2 => \sAddr_reg[6]\(0),
      I3 => \sState_reg[0]\(1),
      I4 => \dataByte_reg_n_0_[2]\,
      O => D(2)
    );
\sAddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6AAA00006AAA"
    )
        port map (
      I0 => \sAddr_reg[6]\(3),
      I1 => \sAddr_reg[6]\(1),
      I2 => \sAddr_reg[6]\(0),
      I3 => \sAddr_reg[6]\(2),
      I4 => \sAddr_reg[3]\,
      I5 => \dataByte_reg_n_0_[3]\,
      O => D(3)
    );
\sAddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \sAddr_reg[6]\(4),
      I1 => \sAddr_reg[4]\,
      I2 => \sState_reg[0]\(1),
      I3 => \dataByte_reg_n_0_[4]\,
      O => D(4)
    );
\sAddr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => \sAddr_reg[6]\(5),
      I1 => \sAddr_reg[6]_0\,
      I2 => \sState_reg[0]\(1),
      I3 => \dataByte_reg_n_0_[5]\,
      O => D(5)
    );
\sAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sI2C_Done,
      I1 => \sState_reg[0]\(0),
      O => E(0)
    );
\sAddr[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6A006A"
    )
        port map (
      I0 => \sAddr_reg[6]\(6),
      I1 => \sAddr_reg[6]_0\,
      I2 => \sAddr_reg[6]\(5),
      I3 => \sState_reg[0]\(1),
      I4 => \dataByte_reg_n_0_[6]\,
      O => D(6)
    );
\sState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \sState_reg[0]\(0),
      I1 => sI2C_End,
      I2 => \sState_reg[0]\(1),
      O => END_O_reg_1(0)
    );
\sState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEC"
    )
        port map (
      I0 => sI2C_End,
      I1 => sI2C_Done,
      I2 => \sState_reg[0]\(0),
      I3 => \sState_reg[0]\(1),
      O => END_O_reg_0(0)
    );
\sState[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4447"
    )
        port map (
      I0 => sI2C_End,
      I1 => \sState_reg[0]\(1),
      I2 => rd_wrn_reg_n_0,
      I3 => \sState_reg[0]\(0),
      O => END_O_reg_1(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0_EEPROM_8b is
  port (
    aSDA : inout STD_LOGIC;
    aSCL : inout STD_LOGIC;
    SampleClk : in STD_LOGIC;
    sRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_EEPROM_8b_0_0_EEPROM_8b : entity is "EEPROM_8b";
end design_1_EEPROM_8b_0_0_EEPROM_8b;

architecture STRUCTURE of design_1_EEPROM_8b_0_0_EEPROM_8b is
  signal I2C_SlaveController_n_1 : STD_LOGIC;
  signal I2C_SlaveController_n_2 : STD_LOGIC;
  signal I2C_SlaveController_n_3 : STD_LOGIC;
  signal I2C_SlaveController_n_4 : STD_LOGIC;
  signal I2C_SlaveController_n_5 : STD_LOGIC;
  signal I2C_SlaveController_n_6 : STD_LOGIC;
  signal I2C_SlaveController_n_7 : STD_LOGIC;
  signal I2C_SlaveController_n_8 : STD_LOGIC;
  signal I2C_SlaveController_n_9 : STD_LOGIC;
  signal aSCL_I : STD_LOGIC;
  signal aSDA_I : STD_LOGIC;
  signal aSDA_T : STD_LOGIC;
  signal sAddr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sAddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \sAddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sAddr[6]_i_3_n_0\ : STD_LOGIC;
  signal sI2C_DataOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sI2C_DataOut[0]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[0]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[1]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[2]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[3]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[4]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[5]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[6]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_2_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut[7]_i_3_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sI2C_DataOut_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal sNstate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sState : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of SCL_IOBUF_inst : label is "PRIMITIVE";
  attribute box_type of SDA_IOBUF_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sAddr[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sAddr[6]_i_3\ : label is "soft_lutpair12";
begin
I2C_SlaveController: entity work.design_1_EEPROM_8b_0_0_TWI_SlaveCtl
     port map (
      D(6) => I2C_SlaveController_n_2,
      D(5) => I2C_SlaveController_n_3,
      D(4) => I2C_SlaveController_n_4,
      D(3) => I2C_SlaveController_n_5,
      D(2) => I2C_SlaveController_n_6,
      D(1) => I2C_SlaveController_n_7,
      D(0) => I2C_SlaveController_n_8,
      E(0) => I2C_SlaveController_n_1,
      END_O_reg_0(0) => I2C_SlaveController_n_9,
      END_O_reg_1(1 downto 0) => sNstate(1 downto 0),
      Q(7 downto 0) => sI2C_DataOut(7 downto 0),
      SampleClk => SampleClk,
      aSDA_T => aSDA_T,
      \oSyncStages_reg[0]\(0) => aSDA_I,
      \oSyncStages_reg[0]_0\(0) => aSCL_I,
      \sAddr_reg[3]\ => \sAddr[3]_i_2_n_0\,
      \sAddr_reg[4]\ => \sAddr[4]_i_2_n_0\,
      \sAddr_reg[6]\(6 downto 0) => sAddr(6 downto 0),
      \sAddr_reg[6]_0\ => \sAddr[6]_i_3_n_0\,
      sRst => sRst,
      \sState_reg[0]\(1 downto 0) => sState(1 downto 0)
    );
SCL_IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      IO => aSCL,
      O => aSCL_I,
      T => '1'
    );
SDA_IOBUF_inst: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => '0',
      IO => aSDA,
      O => aSDA_I,
      T => aSDA_T
    );
\sAddr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sState(0),
      I1 => sState(1),
      O => \sAddr[3]_i_2_n_0\
    );
\sAddr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sAddr(3),
      I1 => sAddr(1),
      I2 => sAddr(0),
      I3 => sAddr(2),
      O => \sAddr[4]_i_2_n_0\
    );
\sAddr[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sAddr(4),
      I1 => sAddr(2),
      I2 => sAddr(0),
      I3 => sAddr(1),
      I4 => sAddr(3),
      O => \sAddr[6]_i_3_n_0\
    );
\sAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_8,
      Q => sAddr(0),
      R => '0'
    );
\sAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_7,
      Q => sAddr(1),
      R => '0'
    );
\sAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_6,
      Q => sAddr(2),
      R => '0'
    );
\sAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_5,
      Q => sAddr(3),
      R => '0'
    );
\sAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_4,
      Q => sAddr(4),
      R => '0'
    );
\sAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_3,
      Q => sAddr(5),
      R => '0'
    );
\sAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_1,
      D => I2C_SlaveController_n_2,
      Q => sAddr(6),
      R => '0'
    );
\sI2C_DataOut[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0191505554755126"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(4),
      I3 => sAddr(5),
      I4 => sAddr(1),
      I5 => sAddr(2),
      O => \sI2C_DataOut[0]_i_2_n_0\
    );
\sI2C_DataOut[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"841A101014110A10"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(4),
      I4 => sAddr(1),
      I5 => sAddr(2),
      O => \sI2C_DataOut[0]_i_3_n_0\
    );
\sI2C_DataOut[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"520C040519050514"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[1]_i_2_n_0\
    );
\sI2C_DataOut[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004498100"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(2),
      I3 => sAddr(1),
      I4 => sAddr(4),
      I5 => sAddr(5),
      O => \sI2C_DataOut[1]_i_3_n_0\
    );
\sI2C_DataOut[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030A0A0809150716"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[2]_i_2_n_0\
    );
\sI2C_DataOut[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5015202000122010"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(5),
      I2 => sAddr(0),
      I3 => sAddr(1),
      I4 => sAddr(4),
      I5 => sAddr(2),
      O => \sI2C_DataOut[2]_i_3_n_0\
    );
\sI2C_DataOut[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D08000E091D1554"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[3]_i_2_n_0\
    );
\sI2C_DataOut[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D110414712000804"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(1),
      I4 => sAddr(2),
      I5 => sAddr(4),
      O => \sI2C_DataOut[3]_i_3_n_0\
    );
\sI2C_DataOut[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47000604190D0704"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[4]_i_2_n_0\
    );
\sI2C_DataOut[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1151094880080011"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[4]_i_3_n_0\
    );
\sI2C_DataOut[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440A070A114D0704"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[5]_i_2_n_0\
    );
\sI2C_DataOut[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"411050004A0248E4"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(4),
      I3 => sAddr(1),
      I4 => sAddr(2),
      I5 => sAddr(5),
      O => \sI2C_DataOut[5]_i_3_n_0\
    );
\sI2C_DataOut[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0A0A0A01150746"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[6]_i_2_n_0\
    );
\sI2C_DataOut[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10454A4810040854"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(1),
      I4 => sAddr(4),
      I5 => sAddr(2),
      O => \sI2C_DataOut[6]_i_3_n_0\
    );
\sI2C_DataOut[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010011070504"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(2),
      I4 => sAddr(1),
      I5 => sAddr(4),
      O => \sI2C_DataOut[7]_i_2_n_0\
    );
\sI2C_DataOut[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0150005004581454"
    )
        port map (
      I0 => sAddr(6),
      I1 => sAddr(0),
      I2 => sAddr(5),
      I3 => sAddr(4),
      I4 => sAddr(1),
      I5 => sAddr(2),
      O => \sI2C_DataOut[7]_i_3_n_0\
    );
\sI2C_DataOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[0]_i_1_n_0\,
      Q => sI2C_DataOut(0),
      R => '0'
    );
\sI2C_DataOut_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[0]_i_2_n_0\,
      I1 => \sI2C_DataOut[0]_i_3_n_0\,
      O => \sI2C_DataOut_reg[0]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[1]_i_1_n_0\,
      Q => sI2C_DataOut(1),
      R => '0'
    );
\sI2C_DataOut_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[1]_i_2_n_0\,
      I1 => \sI2C_DataOut[1]_i_3_n_0\,
      O => \sI2C_DataOut_reg[1]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[2]_i_1_n_0\,
      Q => sI2C_DataOut(2),
      R => '0'
    );
\sI2C_DataOut_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[2]_i_2_n_0\,
      I1 => \sI2C_DataOut[2]_i_3_n_0\,
      O => \sI2C_DataOut_reg[2]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[3]_i_1_n_0\,
      Q => sI2C_DataOut(3),
      R => '0'
    );
\sI2C_DataOut_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[3]_i_2_n_0\,
      I1 => \sI2C_DataOut[3]_i_3_n_0\,
      O => \sI2C_DataOut_reg[3]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[4]_i_1_n_0\,
      Q => sI2C_DataOut(4),
      R => '0'
    );
\sI2C_DataOut_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[4]_i_2_n_0\,
      I1 => \sI2C_DataOut[4]_i_3_n_0\,
      O => \sI2C_DataOut_reg[4]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[5]_i_1_n_0\,
      Q => sI2C_DataOut(5),
      R => '0'
    );
\sI2C_DataOut_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[5]_i_2_n_0\,
      I1 => \sI2C_DataOut[5]_i_3_n_0\,
      O => \sI2C_DataOut_reg[5]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[6]_i_1_n_0\,
      Q => sI2C_DataOut(6),
      R => '0'
    );
\sI2C_DataOut_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[6]_i_2_n_0\,
      I1 => \sI2C_DataOut[6]_i_3_n_0\,
      O => \sI2C_DataOut_reg[6]_i_1_n_0\,
      S => sAddr(3)
    );
\sI2C_DataOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => '1',
      D => \sI2C_DataOut_reg[7]_i_1_n_0\,
      Q => sI2C_DataOut(7),
      R => '0'
    );
\sI2C_DataOut_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sI2C_DataOut[7]_i_2_n_0\,
      I1 => \sI2C_DataOut[7]_i_3_n_0\,
      O => \sI2C_DataOut_reg[7]_i_1_n_0\,
      S => sAddr(3)
    );
\sState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_9,
      D => sNstate(0),
      Q => sState(0),
      R => sRst
    );
\sState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SampleClk,
      CE => I2C_SlaveController_n_9,
      D => sNstate(1),
      Q => sState(1),
      R => sRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_EEPROM_8b_0_0 is
  port (
    SampleClk : in STD_LOGIC;
    sRst : in STD_LOGIC;
    aSDA : inout STD_LOGIC;
    aSCL : inout STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_EEPROM_8b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_EEPROM_8b_0_0 : entity is "design_1_EEPROM_8b_0_0,EEPROM_8b,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_EEPROM_8b_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_EEPROM_8b_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_EEPROM_8b_0_0 : entity is "EEPROM_8b,Vivado 2021.2";
end design_1_EEPROM_8b_0_0;

architecture STRUCTURE of design_1_EEPROM_8b_0_0 is
begin
inst: entity work.design_1_EEPROM_8b_0_0_EEPROM_8b
     port map (
      SampleClk => SampleClk,
      aSCL => aSCL,
      aSDA => aSDA,
      sRst => sRst
    );
end STRUCTURE;
