-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sat Jun 11 13:19:46 2022
-- Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_vcu_0_0/design_1_vcu_0_0_stub.vhdl
-- Design      : design_1_vcu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu4ev-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vcu_0_0 is
  Port ( 
    s_axi_lite_aclk : in STD_LOGIC;
    vcu_resetn : in STD_LOGIC;
    pll_ref_clk : in STD_LOGIC;
    pl_vcu_awaddr_axi_lite_apb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    pl_vcu_awprot_axi_lite_apb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_vcu_awvalid_axi_lite_apb : in STD_LOGIC_VECTOR ( 0 to 0 );
    vcu_pl_awready_axi_lite_apb : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_vcu_wdata_axi_lite_apb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pl_vcu_wstrb_axi_lite_apb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_wvalid_axi_lite_apb : in STD_LOGIC_VECTOR ( 0 to 0 );
    vcu_pl_wready_axi_lite_apb : out STD_LOGIC_VECTOR ( 0 to 0 );
    vcu_pl_bresp_axi_lite_apb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_bvalid_axi_lite_apb : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_vcu_bready_axi_lite_apb : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_vcu_araddr_axi_lite_apb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    pl_vcu_arprot_axi_lite_apb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_vcu_arvalid_axi_lite_apb : in STD_LOGIC_VECTOR ( 0 to 0 );
    vcu_pl_arready_axi_lite_apb : out STD_LOGIC_VECTOR ( 0 to 0 );
    vcu_pl_rdata_axi_lite_apb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vcu_pl_rresp_axi_lite_apb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_rvalid_axi_lite_apb : out STD_LOGIC_VECTOR ( 0 to 0 );
    pl_vcu_rready_axi_lite_apb : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_mcu_aclk : in STD_LOGIC;
    m_axi_enc_aclk : in STD_LOGIC;
    vcu_host_interrupt : out STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_araddr : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arlock : out STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_arready : in STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_arvalid : out STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_awaddr : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awlock : out STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_awready : in STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_awvalid : out STD_LOGIC;
    pl_vcu_mcu_m_axi_ic_dc_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_bready : out STD_LOGIC;
    pl_vcu_mcu_m_axi_ic_dc_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_bvalid : in STD_LOGIC;
    pl_vcu_mcu_m_axi_ic_dc_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_rlast : in STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_rready : out STD_LOGIC;
    pl_vcu_mcu_m_axi_ic_dc_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_mcu_m_axi_ic_dc_rvalid : in STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_wlast : out STD_LOGIC;
    pl_vcu_mcu_m_axi_ic_dc_wready : in STD_LOGIC;
    vcu_pl_mcu_m_axi_ic_dc_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_mcu_m_axi_ic_dc_wvalid : out STD_LOGIC;
    vcu_pl_enc_wstrb1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vcu_pl_enc_wstrb0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vcu_pl_enc_awregion1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awregion0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arregion1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arregion0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awlock1 : out STD_LOGIC;
    vcu_pl_enc_awlock0 : out STD_LOGIC;
    vcu_pl_enc_arlock1 : out STD_LOGIC;
    vcu_pl_enc_arlock0 : out STD_LOGIC;
    vcu_pl_enc_araddr0 : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_enc_arburst0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_enc_arid0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arlen0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pl_vcu_enc_arready0 : in STD_LOGIC;
    vcu_pl_enc_arsize0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_arvalid0 : out STD_LOGIC;
    vcu_pl_enc_awaddr0 : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_enc_awburst0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_enc_awid0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awlen0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pl_vcu_enc_awready0 : in STD_LOGIC;
    vcu_pl_enc_awsize0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_awvalid0 : out STD_LOGIC;
    vcu_pl_enc_bready0 : out STD_LOGIC;
    pl_vcu_enc_bvalid0 : in STD_LOGIC;
    pl_vcu_enc_bid0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_enc_rdata0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    pl_vcu_enc_rid0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_enc_rlast0 : in STD_LOGIC;
    vcu_pl_enc_rready0 : out STD_LOGIC;
    pl_vcu_enc_rvalid0 : in STD_LOGIC;
    vcu_pl_enc_wdata0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    vcu_pl_enc_wlast0 : out STD_LOGIC;
    pl_vcu_enc_bresp0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_enc_rresp0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_enc_wready0 : in STD_LOGIC;
    vcu_pl_enc_wvalid0 : out STD_LOGIC;
    vcu_pl_enc_awprot0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_arprot0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_awcache0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arcache0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awqos0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arqos0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_araddr1 : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_enc_arburst1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_enc_arid1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arlen1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pl_vcu_enc_arready1 : in STD_LOGIC;
    vcu_pl_enc_arsize1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_arvalid1 : out STD_LOGIC;
    vcu_pl_enc_awaddr1 : out STD_LOGIC_VECTOR ( 43 downto 0 );
    vcu_pl_enc_awburst1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vcu_pl_enc_awid1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awlen1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pl_vcu_enc_awready1 : in STD_LOGIC;
    vcu_pl_enc_awsize1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_awvalid1 : out STD_LOGIC;
    vcu_pl_enc_bready1 : out STD_LOGIC;
    pl_vcu_enc_bvalid1 : in STD_LOGIC;
    pl_vcu_enc_bid1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_enc_rdata1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    pl_vcu_enc_rid1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_vcu_enc_rlast1 : in STD_LOGIC;
    vcu_pl_enc_rready1 : out STD_LOGIC;
    pl_vcu_enc_rvalid1 : in STD_LOGIC;
    vcu_pl_enc_wdata1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    vcu_pl_enc_wlast1 : out STD_LOGIC;
    pl_vcu_enc_bresp1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_enc_rresp1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_vcu_enc_wready1 : in STD_LOGIC;
    vcu_pl_enc_wvalid1 : out STD_LOGIC;
    vcu_pl_enc_awprot1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_arprot1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vcu_pl_enc_awcache1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arcache1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_awqos1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vcu_pl_enc_arqos1 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_vcu_0_0;

architecture stub of design_1_vcu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_lite_aclk,vcu_resetn,pll_ref_clk,pl_vcu_awaddr_axi_lite_apb[19:0],pl_vcu_awprot_axi_lite_apb[2:0],pl_vcu_awvalid_axi_lite_apb[0:0],vcu_pl_awready_axi_lite_apb[0:0],pl_vcu_wdata_axi_lite_apb[31:0],pl_vcu_wstrb_axi_lite_apb[3:0],pl_vcu_wvalid_axi_lite_apb[0:0],vcu_pl_wready_axi_lite_apb[0:0],vcu_pl_bresp_axi_lite_apb[1:0],vcu_pl_bvalid_axi_lite_apb[0:0],pl_vcu_bready_axi_lite_apb[0:0],pl_vcu_araddr_axi_lite_apb[19:0],pl_vcu_arprot_axi_lite_apb[2:0],pl_vcu_arvalid_axi_lite_apb[0:0],vcu_pl_arready_axi_lite_apb[0:0],vcu_pl_rdata_axi_lite_apb[31:0],vcu_pl_rresp_axi_lite_apb[1:0],vcu_pl_rvalid_axi_lite_apb[0:0],pl_vcu_rready_axi_lite_apb[0:0],m_axi_mcu_aclk,m_axi_enc_aclk,vcu_host_interrupt,vcu_pl_mcu_m_axi_ic_dc_araddr[43:0],vcu_pl_mcu_m_axi_ic_dc_arburst[1:0],vcu_pl_mcu_m_axi_ic_dc_arcache[3:0],vcu_pl_mcu_m_axi_ic_dc_arid[2:0],vcu_pl_mcu_m_axi_ic_dc_arlen[7:0],vcu_pl_mcu_m_axi_ic_dc_arlock,vcu_pl_mcu_m_axi_ic_dc_arprot[2:0],vcu_pl_mcu_m_axi_ic_dc_arqos[3:0],pl_vcu_mcu_m_axi_ic_dc_arready,vcu_pl_mcu_m_axi_ic_dc_arsize[2:0],vcu_pl_mcu_m_axi_ic_dc_arvalid,vcu_pl_mcu_m_axi_ic_dc_awaddr[43:0],vcu_pl_mcu_m_axi_ic_dc_awburst[1:0],vcu_pl_mcu_m_axi_ic_dc_awcache[3:0],vcu_pl_mcu_m_axi_ic_dc_awid[2:0],vcu_pl_mcu_m_axi_ic_dc_awlen[7:0],vcu_pl_mcu_m_axi_ic_dc_awlock,vcu_pl_mcu_m_axi_ic_dc_awprot[2:0],vcu_pl_mcu_m_axi_ic_dc_awqos[3:0],pl_vcu_mcu_m_axi_ic_dc_awready,vcu_pl_mcu_m_axi_ic_dc_awsize[2:0],vcu_pl_mcu_m_axi_ic_dc_awvalid,pl_vcu_mcu_m_axi_ic_dc_bid[2:0],vcu_pl_mcu_m_axi_ic_dc_bready,pl_vcu_mcu_m_axi_ic_dc_bresp[1:0],pl_vcu_mcu_m_axi_ic_dc_bvalid,pl_vcu_mcu_m_axi_ic_dc_rdata[31:0],pl_vcu_mcu_m_axi_ic_dc_rid[2:0],pl_vcu_mcu_m_axi_ic_dc_rlast,vcu_pl_mcu_m_axi_ic_dc_rready,pl_vcu_mcu_m_axi_ic_dc_rresp[1:0],pl_vcu_mcu_m_axi_ic_dc_rvalid,vcu_pl_mcu_m_axi_ic_dc_wdata[31:0],vcu_pl_mcu_m_axi_ic_dc_wlast,pl_vcu_mcu_m_axi_ic_dc_wready,vcu_pl_mcu_m_axi_ic_dc_wstrb[3:0],vcu_pl_mcu_m_axi_ic_dc_wvalid,vcu_pl_enc_wstrb1[15:0],vcu_pl_enc_wstrb0[15:0],vcu_pl_enc_awregion1[3:0],vcu_pl_enc_awregion0[3:0],vcu_pl_enc_arregion1[3:0],vcu_pl_enc_arregion0[3:0],vcu_pl_enc_awlock1,vcu_pl_enc_awlock0,vcu_pl_enc_arlock1,vcu_pl_enc_arlock0,vcu_pl_enc_araddr0[43:0],vcu_pl_enc_arburst0[1:0],vcu_pl_enc_arid0[3:0],vcu_pl_enc_arlen0[7:0],pl_vcu_enc_arready0,vcu_pl_enc_arsize0[2:0],vcu_pl_enc_arvalid0,vcu_pl_enc_awaddr0[43:0],vcu_pl_enc_awburst0[1:0],vcu_pl_enc_awid0[3:0],vcu_pl_enc_awlen0[7:0],pl_vcu_enc_awready0,vcu_pl_enc_awsize0[2:0],vcu_pl_enc_awvalid0,vcu_pl_enc_bready0,pl_vcu_enc_bvalid0,pl_vcu_enc_bid0[3:0],pl_vcu_enc_rdata0[127:0],pl_vcu_enc_rid0[3:0],pl_vcu_enc_rlast0,vcu_pl_enc_rready0,pl_vcu_enc_rvalid0,vcu_pl_enc_wdata0[127:0],vcu_pl_enc_wlast0,pl_vcu_enc_bresp0[1:0],pl_vcu_enc_rresp0[1:0],pl_vcu_enc_wready0,vcu_pl_enc_wvalid0,vcu_pl_enc_awprot0[2:0],vcu_pl_enc_arprot0[2:0],vcu_pl_enc_awcache0[3:0],vcu_pl_enc_arcache0[3:0],vcu_pl_enc_awqos0[3:0],vcu_pl_enc_arqos0[3:0],vcu_pl_enc_araddr1[43:0],vcu_pl_enc_arburst1[1:0],vcu_pl_enc_arid1[3:0],vcu_pl_enc_arlen1[7:0],pl_vcu_enc_arready1,vcu_pl_enc_arsize1[2:0],vcu_pl_enc_arvalid1,vcu_pl_enc_awaddr1[43:0],vcu_pl_enc_awburst1[1:0],vcu_pl_enc_awid1[3:0],vcu_pl_enc_awlen1[7:0],pl_vcu_enc_awready1,vcu_pl_enc_awsize1[2:0],vcu_pl_enc_awvalid1,vcu_pl_enc_bready1,pl_vcu_enc_bvalid1,pl_vcu_enc_bid1[3:0],pl_vcu_enc_rdata1[127:0],pl_vcu_enc_rid1[3:0],pl_vcu_enc_rlast1,vcu_pl_enc_rready1,pl_vcu_enc_rvalid1,vcu_pl_enc_wdata1[127:0],vcu_pl_enc_wlast1,pl_vcu_enc_bresp1[1:0],pl_vcu_enc_rresp1[1:0],pl_vcu_enc_wready1,vcu_pl_enc_wvalid1,vcu_pl_enc_awprot1[2:0],vcu_pl_enc_arprot1[2:0],vcu_pl_enc_awcache1[3:0],vcu_pl_enc_arcache1[3:0],vcu_pl_enc_awqos1[3:0],vcu_pl_enc_arqos1[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vcu_v1_2_6_vcu,Vivado 2021.2";
begin
end;
