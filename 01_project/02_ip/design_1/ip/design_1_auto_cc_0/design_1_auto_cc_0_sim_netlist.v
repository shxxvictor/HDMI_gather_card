// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Jun 11 13:20:26 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_auto_cc_0 -prefix
//               design_1_auto_cc_0_ design_1_auto_cc_0_sim_netlist.v
// Design      : design_1_auto_cc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ARADDR_RIGHT = "3" *) (* C_ARADDR_WIDTH = "7" *) (* C_ARBURST_RIGHT = "3" *) 
(* C_ARBURST_WIDTH = "0" *) (* C_ARCACHE_RIGHT = "3" *) (* C_ARCACHE_WIDTH = "0" *) 
(* C_ARID_RIGHT = "10" *) (* C_ARID_WIDTH = "0" *) (* C_ARLEN_RIGHT = "3" *) 
(* C_ARLEN_WIDTH = "0" *) (* C_ARLOCK_RIGHT = "3" *) (* C_ARLOCK_WIDTH = "0" *) 
(* C_ARPROT_RIGHT = "0" *) (* C_ARPROT_WIDTH = "3" *) (* C_ARQOS_RIGHT = "0" *) 
(* C_ARQOS_WIDTH = "0" *) (* C_ARREGION_RIGHT = "0" *) (* C_ARREGION_WIDTH = "0" *) 
(* C_ARSIZE_RIGHT = "3" *) (* C_ARSIZE_WIDTH = "0" *) (* C_ARUSER_RIGHT = "0" *) 
(* C_ARUSER_WIDTH = "0" *) (* C_AR_WIDTH = "10" *) (* C_AWADDR_RIGHT = "3" *) 
(* C_AWADDR_WIDTH = "7" *) (* C_AWBURST_RIGHT = "3" *) (* C_AWBURST_WIDTH = "0" *) 
(* C_AWCACHE_RIGHT = "3" *) (* C_AWCACHE_WIDTH = "0" *) (* C_AWID_RIGHT = "10" *) 
(* C_AWID_WIDTH = "0" *) (* C_AWLEN_RIGHT = "3" *) (* C_AWLEN_WIDTH = "0" *) 
(* C_AWLOCK_RIGHT = "3" *) (* C_AWLOCK_WIDTH = "0" *) (* C_AWPROT_RIGHT = "0" *) 
(* C_AWPROT_WIDTH = "3" *) (* C_AWQOS_RIGHT = "0" *) (* C_AWQOS_WIDTH = "0" *) 
(* C_AWREGION_RIGHT = "0" *) (* C_AWREGION_WIDTH = "0" *) (* C_AWSIZE_RIGHT = "3" *) 
(* C_AWSIZE_WIDTH = "0" *) (* C_AWUSER_RIGHT = "0" *) (* C_AWUSER_WIDTH = "0" *) 
(* C_AW_WIDTH = "10" *) (* C_AXI_ADDR_WIDTH = "7" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_BID_RIGHT = "2" *) 
(* C_BID_WIDTH = "0" *) (* C_BRESP_RIGHT = "0" *) (* C_BRESP_WIDTH = "2" *) 
(* C_BUSER_RIGHT = "0" *) (* C_BUSER_WIDTH = "0" *) (* C_B_WIDTH = "2" *) 
(* C_FAMILY = "zynquplus" *) (* C_FIFO_AR_WIDTH = "10" *) (* C_FIFO_AW_WIDTH = "10" *) 
(* C_FIFO_B_WIDTH = "2" *) (* C_FIFO_R_WIDTH = "34" *) (* C_FIFO_W_WIDTH = "36" *) 
(* C_M_AXI_ACLK_RATIO = "2" *) (* C_RDATA_RIGHT = "2" *) (* C_RDATA_WIDTH = "32" *) 
(* C_RID_RIGHT = "34" *) (* C_RID_WIDTH = "0" *) (* C_RLAST_RIGHT = "0" *) 
(* C_RLAST_WIDTH = "0" *) (* C_RRESP_RIGHT = "0" *) (* C_RRESP_WIDTH = "2" *) 
(* C_RUSER_RIGHT = "0" *) (* C_RUSER_WIDTH = "0" *) (* C_R_WIDTH = "34" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_WDATA_RIGHT = "4" *) 
(* C_WDATA_WIDTH = "32" *) (* C_WID_RIGHT = "36" *) (* C_WID_WIDTH = "0" *) 
(* C_WLAST_RIGHT = "0" *) (* C_WLAST_WIDTH = "0" *) (* C_WSTRB_RIGHT = "0" *) 
(* C_WSTRB_WIDTH = "4" *) (* C_WUSER_RIGHT = "0" *) (* C_WUSER_WIDTH = "0" *) 
(* C_W_WIDTH = "36" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ACLK_RATIO = "2" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_FULLY_REG = "1" *) (* P_LIGHT_WT = "0" *) (* P_LUTRAM_ASYNC = "12" *) 
(* P_ROUNDING_OFFSET = "0" *) (* P_SI_LT_MI = "1'b1" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axi_clock_converter
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [6:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [6:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [0:0]m_axi_awid;
  output [6:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [6:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ;
  wire \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2 ;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire [1:1]\gen_sync_clock_converter.state_reg ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [6:0]m_axi_araddr;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [6:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire posedge_finder_first;
  wire posedge_finder_second;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire slow_aclk_div2;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio \gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst 
       (.\FSM_onehot_gen_sync_clock_converter.state_reg[0] (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ),
        .Q({\gen_sync_clock_converter.state_reg ,\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3 }),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sample_cycle.posedge_finder_second_reg_0 (m_axi_aclk),
        .\gen_sync_clock_converter.s_tready_r_reg (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ),
        .out(s_axi_aclk),
        .posedge_finder_first(posedge_finder_first),
        .posedge_finder_second(posedge_finder_second),
        .slow_aclk_div2(slow_aclk_div2));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter 
       (.D({s_axi_araddr,s_axi_arprot}),
        .Q({m_axi_araddr,m_axi_arprot}),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.m_tvalid_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6 ),
        .\gen_sync_clock_converter.s_areset_r (\gen_sync_clock_converter.s_areset_r ),
        .\gen_sync_clock_converter.s_aresetn_r (\gen_sync_clock_converter.s_aresetn_r ),
        .\gen_sync_clock_converter.s_tready_r_reg_0 (s_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .out(m_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2 ));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2 \gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter 
       (.D({m_axi_rdata,m_axi_rresp}),
        .\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 (s_axi_aclk),
        .Q({\gen_sync_clock_converter.state_reg ,\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.r_sync_clock_converter_n_3 }),
        .\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 ({s_axi_rdata,s_axi_rresp}),
        .\gen_sync_clock_converter.m_tvalid_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ),
        .\gen_sync_clock_converter.s_tready_r_reg_0 (\gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst_n_4 ),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(m_axi_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter 
       (.D({s_axi_awaddr,s_axi_awprot}),
        .Q({m_axi_awaddr,m_axi_awprot}),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.m_aresetn_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5 ),
        .\gen_sync_clock_converter.m_aresetn_r_reg_1 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_6 ),
        .\gen_sync_clock_converter.m_aresetn_r_reg_2 (s_axi_aresetn),
        .\gen_sync_clock_converter.m_aresetn_r_reg_3 (m_axi_aresetn),
        .\gen_sync_clock_converter.m_tvalid_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2 ),
        .\gen_sync_clock_converter.m_tvalid_r_reg_1 (\gen_clock_conv.gen_sync_conv.gen_conv_read_ch.ar_sync_clock_converter_n_2 ),
        .\gen_sync_clock_converter.s_areset_r (\gen_sync_clock_converter.s_areset_r ),
        .\gen_sync_clock_converter.s_aresetn_r (\gen_sync_clock_converter.s_aresetn_r ),
        .\gen_sync_clock_converter.s_aresetn_r_reg_0 (s_axi_aclk),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(m_axi_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter 
       (.\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 (s_axi_aclk),
        .\gen_sync_clock_converter.m_aresetn_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_1 ),
        .\gen_sync_clock_converter.s_aresetn_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.b_sync_clock_converter_n_0 ),
        .\gen_sync_clock_converter.s_aresetn_r_reg_1 (m_axi_aresetn),
        .\gen_sync_clock_converter.s_aresetn_r_reg_2 (s_axi_aresetn),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(m_axi_aclk),
        .posedge_finder_first(posedge_finder_first),
        .posedge_finder_second(posedge_finder_second),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .slow_aclk_div2(slow_aclk_div2));
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0 \gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter 
       (.D({s_axi_wdata,s_axi_wstrb}),
        .Q({m_axi_wdata,m_axi_wstrb}),
        .\gen_clock_conv.sample_cycle (\gen_clock_conv.sample_cycle ),
        .\gen_sync_clock_converter.m_aresetn_r (\gen_sync_clock_converter.m_aresetn_r ),
        .\gen_sync_clock_converter.m_tvalid_r_reg_0 (\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.aw_sync_clock_converter_n_5 ),
        .\gen_sync_clock_converter.s_areset_r (\gen_sync_clock_converter.s_areset_r ),
        .\gen_sync_clock_converter.s_aresetn_r (\gen_sync_clock_converter.s_aresetn_r ),
        .\gen_sync_clock_converter.s_tready_r_reg_0 (s_axi_aclk),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out(m_axi_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(\gen_clock_conv.gen_sync_conv.gen_conv_write_ch.w_sync_clock_converter_n_2 ));
endmodule

module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sample_cycle_ratio
   (slow_aclk_div2,
    posedge_finder_second,
    posedge_finder_first,
    \gen_clock_conv.sample_cycle ,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] ,
    out,
    \gen_sample_cycle.posedge_finder_second_reg_0 ,
    Q,
    \gen_sync_clock_converter.s_tready_r_reg );
  output slow_aclk_div2;
  output posedge_finder_second;
  output posedge_finder_first;
  output \gen_clock_conv.sample_cycle ;
  output \FSM_onehot_gen_sync_clock_converter.state_reg[0] ;
  input out;
  input \gen_sample_cycle.posedge_finder_second_reg_0 ;
  input [1:0]Q;
  input \gen_sync_clock_converter.s_tready_r_reg ;

  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0] ;
  wire [1:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_clock_conv.sample_cycle_early ;
  wire \gen_sample_cycle.posedge_finder_second_reg_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg ;
  wire out;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire slow_aclk_div2;
  wire slow_aclk_div20;

  LUT3 #(
    .INIT(8'h53)) 
    any_edge
       (.I0(posedge_finder_first),
        .I1(posedge_finder_second),
        .I2(slow_aclk_div2),
        .O(\gen_clock_conv.sample_cycle_early ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.posedge_finder_first_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(slow_aclk_div2),
        .Q(posedge_finder_first),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.posedge_finder_second_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(posedge_finder_second),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.sample_cycle_r_reg 
       (.C(\gen_sample_cycle.posedge_finder_second_reg_0 ),
        .CE(1'b1),
        .D(\gen_clock_conv.sample_cycle_early ),
        .Q(\gen_clock_conv.sample_cycle ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_sample_cycle.slow_aclk_div2_i_1 
       (.I0(slow_aclk_div2),
        .O(slow_aclk_div20));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sample_cycle.slow_aclk_div2_reg 
       (.C(out),
        .CE(1'b1),
        .D(slow_aclk_div20),
        .Q(slow_aclk_div2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0404004400000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(posedge_finder_first),
        .I3(posedge_finder_second),
        .I4(slow_aclk_div2),
        .I5(\gen_sync_clock_converter.s_tready_r_reg ),
        .O(\FSM_onehot_gen_sync_clock_converter.state_reg[0] ));
endmodule

module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter
   (s_axi_arready,
    m_axi_arvalid,
    s_axi_arvalid_0,
    Q,
    out,
    \gen_sync_clock_converter.s_tready_r_reg_0 ,
    \gen_sync_clock_converter.m_tvalid_r_reg_0 ,
    s_axi_arvalid,
    m_axi_arready,
    \gen_sync_clock_converter.m_aresetn_r ,
    \gen_clock_conv.sample_cycle ,
    \gen_sync_clock_converter.s_aresetn_r ,
    \gen_sync_clock_converter.s_areset_r ,
    D);
  output s_axi_arready;
  output m_axi_arvalid;
  output s_axi_arvalid_0;
  output [9:0]Q;
  input out;
  input \gen_sync_clock_converter.s_tready_r_reg_0 ;
  input \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  input s_axi_arvalid;
  input m_axi_arready;
  input \gen_sync_clock_converter.m_aresetn_r ;
  input \gen_clock_conv.sample_cycle ;
  input \gen_sync_clock_converter.s_aresetn_r ;
  input \gen_sync_clock_converter.s_areset_r ;
  input [9:0]D;

  wire [9:0]D;
  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0 ;
  wire [9:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.m_tready_hold ;
  wire \gen_sync_clock_converter.m_tready_hold_i_1__1_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire out;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;

  LUT5 #(
    .INIT(32'h0E0E0FFF)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_arready),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(s_axi_arvalid),
        .I4(\gen_sync_clock_converter.state [1]),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h08080838)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1__0 
       (.I0(s_axi_arvalid),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.m_tready_hold ),
        .I4(m_axi_arready),
        .O(s_axi_arvalid_0));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__1_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(s_axi_arvalid_0),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_tpayload_r[9]_i_1__0 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_arready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_sync_clock_converter.m_tready_hold_i_1__1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_arready),
        .I2(\gen_sync_clock_converter.m_aresetn_r ),
        .I3(\gen_clock_conv.sample_cycle ),
        .O(\gen_sync_clock_converter.m_tready_hold_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tready_hold_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tready_hold_i_1__1_n_0 ),
        .Q(\gen_sync_clock_converter.m_tready_hold ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .Q(m_axi_arvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111FFF300000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__3 
       (.I0(s_axi_arvalid),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(\gen_sync_clock_converter.m_tready_hold ),
        .I3(m_axi_arready),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__3_n_0 ),
        .Q(s_axi_arready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_24_axic_sync_clock_converter" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter_0
   (\gen_sync_clock_converter.m_aresetn_r ,
    \gen_sync_clock_converter.s_aresetn_r ,
    s_axi_awready,
    m_axi_awvalid,
    \gen_sync_clock_converter.s_areset_r ,
    \gen_sync_clock_converter.m_aresetn_r_reg_0 ,
    \gen_sync_clock_converter.m_aresetn_r_reg_1 ,
    Q,
    out,
    \gen_sync_clock_converter.s_aresetn_r_reg_0 ,
    s_axi_awvalid,
    m_axi_awready,
    \gen_clock_conv.sample_cycle ,
    m_axi_wready,
    m_axi_wvalid,
    \gen_sync_clock_converter.m_tvalid_r_reg_0 ,
    m_axi_arready,
    m_axi_arvalid,
    \gen_sync_clock_converter.m_tvalid_r_reg_1 ,
    \gen_sync_clock_converter.m_aresetn_r_reg_2 ,
    \gen_sync_clock_converter.m_aresetn_r_reg_3 ,
    D);
  output \gen_sync_clock_converter.m_aresetn_r ;
  output \gen_sync_clock_converter.s_aresetn_r ;
  output s_axi_awready;
  output m_axi_awvalid;
  output \gen_sync_clock_converter.s_areset_r ;
  output \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  output \gen_sync_clock_converter.m_aresetn_r_reg_1 ;
  output [9:0]Q;
  input out;
  input \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  input s_axi_awvalid;
  input m_axi_awready;
  input \gen_clock_conv.sample_cycle ;
  input m_axi_wready;
  input m_axi_wvalid;
  input \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  input m_axi_arready;
  input m_axi_arvalid;
  input \gen_sync_clock_converter.m_tvalid_r_reg_1 ;
  input \gen_sync_clock_converter.m_aresetn_r_reg_2 ;
  input \gen_sync_clock_converter.m_aresetn_r_reg_3 ;
  input [9:0]D;

  wire [9:0]D;
  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0 ;
  wire [9:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_1 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_2 ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_3 ;
  wire \gen_sync_clock_converter.m_tready_hold ;
  wire \gen_sync_clock_converter.m_tready_hold_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_reg_1 ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__1_n_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire out;
  wire s_axi_awready;
  wire s_axi_awvalid;

  LUT5 #(
    .INIT(32'h0E0E0FFF)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_awready),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(s_axi_awvalid),
        .I4(\gen_sync_clock_converter.state [1]),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1__1 
       (.I0(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.s_areset_r ));
  LUT5 #(
    .INIT(32'h08080838)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.m_tready_hold ),
        .I4(m_axi_awready),
        .O(\FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0 ),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_sync_clock_converter.m_aresetn_r_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r_reg_2 ),
        .I1(\gen_sync_clock_converter.m_aresetn_r_reg_3 ),
        .O(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_aresetn_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_aresetn_r ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_tpayload_r[9]_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_awready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_sync_clock_converter.m_tready_hold_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_awready),
        .I2(\gen_sync_clock_converter.m_aresetn_r ),
        .I3(\gen_clock_conv.sample_cycle ),
        .O(\gen_sync_clock_converter.m_tready_hold_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tready_hold_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tready_hold_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_tready_hold ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA20002000200020)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(m_axi_awready),
        .I2(m_axi_awvalid),
        .I3(\gen_clock_conv.sample_cycle ),
        .I4(\FSM_sequential_gen_sync_clock_converter.state[1]_i_2_n_0 ),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA20002000200020)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__0 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(m_axi_wready),
        .I2(m_axi_wvalid),
        .I3(\gen_clock_conv.sample_cycle ),
        .I4(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.m_aresetn_r_reg_0 ));
  LUT6 #(
    .INIT(64'hAA20002000200020)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r ),
        .I1(m_axi_arready),
        .I2(m_axi_arvalid),
        .I3(\gen_clock_conv.sample_cycle ),
        .I4(\gen_sync_clock_converter.m_tvalid_r_reg_1 ),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.m_aresetn_r_reg_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1_n_0 ),
        .Q(m_axi_awvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_aresetn_r_reg 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_aresetn_r ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111FFF300000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__1 
       (.I0(s_axi_awvalid),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(\gen_sync_clock_converter.m_tready_hold ),
        .I3(m_axi_awready),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__1_n_0 ),
        .Q(s_axi_awready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_24_axic_sync_clock_converter" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized0
   (s_axi_wready,
    m_axi_wvalid,
    s_axi_wvalid_0,
    Q,
    out,
    \gen_sync_clock_converter.s_tready_r_reg_0 ,
    \gen_sync_clock_converter.m_tvalid_r_reg_0 ,
    s_axi_wvalid,
    m_axi_wready,
    \gen_sync_clock_converter.m_aresetn_r ,
    \gen_clock_conv.sample_cycle ,
    \gen_sync_clock_converter.s_aresetn_r ,
    \gen_sync_clock_converter.s_areset_r ,
    D);
  output s_axi_wready;
  output m_axi_wvalid;
  output s_axi_wvalid_0;
  output [35:0]Q;
  input out;
  input \gen_sync_clock_converter.s_tready_r_reg_0 ;
  input \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  input s_axi_wvalid;
  input m_axi_wready;
  input \gen_sync_clock_converter.m_aresetn_r ;
  input \gen_clock_conv.sample_cycle ;
  input \gen_sync_clock_converter.s_aresetn_r ;
  input \gen_sync_clock_converter.s_areset_r ;
  input [35:0]D;

  wire [35:0]D;
  wire \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ;
  wire [35:0]Q;
  wire \gen_clock_conv.sample_cycle ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r ;
  wire \gen_sync_clock_converter.m_tready_hold ;
  wire \gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  wire \gen_sync_clock_converter.s_areset_r ;
  wire \gen_sync_clock_converter.s_aresetn_r ;
  wire \gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg_0 ;
  wire [1:0]\gen_sync_clock_converter.state ;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire out;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire s_axi_wvalid_0;

  LUT5 #(
    .INIT(32'h0E0E0FFF)) 
    \FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_wready),
        .I2(\gen_sync_clock_converter.state [0]),
        .I3(s_axi_wvalid),
        .I4(\gen_sync_clock_converter.state [1]),
        .O(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h08080838)) 
    \FSM_sequential_gen_sync_clock_converter.state[1]_i_1 
       (.I0(s_axi_wvalid),
        .I1(\gen_sync_clock_converter.state [0]),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.m_tready_hold ),
        .I4(m_axi_wready),
        .O(s_axi_wvalid_0));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[0] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(\FSM_sequential_gen_sync_clock_converter.state[0]_i_1__0_n_0 ),
        .Q(\gen_sync_clock_converter.state [0]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  (* FSM_ENCODED_STATES = "INIT:00,ONE:11,TWO:10,ZERO:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_sync_clock_converter.state_reg[1] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(s_axi_wvalid_0),
        .Q(\gen_sync_clock_converter.state [1]),
        .R(\gen_sync_clock_converter.s_areset_r ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \gen_sync_clock_converter.m_tpayload_r[35]_i_1 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_wready),
        .I2(\gen_sync_clock_converter.state [1]),
        .I3(\gen_sync_clock_converter.state [0]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[34] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[35] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_sync_clock_converter.m_tready_hold_i_1__0 
       (.I0(\gen_sync_clock_converter.m_tready_hold ),
        .I1(m_axi_wready),
        .I2(\gen_sync_clock_converter.m_aresetn_r ),
        .I3(\gen_clock_conv.sample_cycle ),
        .O(\gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tready_hold_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tready_hold_i_1__0_n_0 ),
        .Q(\gen_sync_clock_converter.m_tready_hold ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .Q(m_axi_wvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111FFF300000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1__2 
       (.I0(s_axi_wvalid),
        .I1(\gen_sync_clock_converter.state [1]),
        .I2(\gen_sync_clock_converter.m_tready_hold ),
        .I3(m_axi_wready),
        .I4(\gen_sync_clock_converter.state [0]),
        .I5(\gen_sync_clock_converter.s_aresetn_r ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1__2_n_0 ),
        .Q(s_axi_wready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_24_axic_sync_clock_converter" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized1
   (\gen_sync_clock_converter.s_aresetn_r_reg_0 ,
    \gen_sync_clock_converter.m_aresetn_r_reg_0 ,
    m_axi_bready,
    s_axi_bvalid,
    s_axi_bresp,
    out,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ,
    s_axi_bready,
    posedge_finder_first,
    posedge_finder_second,
    slow_aclk_div2,
    m_axi_bvalid,
    \gen_sync_clock_converter.s_aresetn_r_reg_1 ,
    \gen_sync_clock_converter.s_aresetn_r_reg_2 ,
    m_axi_bresp);
  output \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  output \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  output m_axi_bready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input out;
  input \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  input s_axi_bready;
  input posedge_finder_first;
  input posedge_finder_second;
  input slow_aclk_div2;
  input m_axi_bvalid;
  input \gen_sync_clock_converter.s_aresetn_r_reg_1 ;
  input \gen_sync_clock_converter.s_aresetn_r_reg_2 ;
  input [1:0]m_axi_bresp;

  wire \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire \gen_sync_clock_converter.m_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_0 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_1 ;
  wire \gen_sync_clock_converter.s_aresetn_r_reg_2 ;
  wire \gen_sync_clock_converter.s_tready_r_i_1_n_0 ;
  wire [1:1]\gen_sync_clock_converter.state_reg ;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire out;
  wire posedge_finder_first;
  wire posedge_finder_second;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire slow_aclk_div2;

  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .I1(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I3(\gen_sync_clock_converter.state_reg ),
        .O(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A202020)) 
    \FSM_onehot_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .I1(m_axi_bvalid),
        .I2(\gen_sync_clock_converter.state_reg ),
        .I3(s_axi_bready),
        .I4(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I5(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444040000000400)) 
    \FSM_onehot_gen_sync_clock_converter.state[2]_i_1 
       (.I0(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I1(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .I2(s_axi_bready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.state_reg ),
        .I5(m_axi_bvalid),
        .O(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.state_reg ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_aresetn_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sync_clock_converter.m_tpayload_r[1]_i_1 
       (.I0(s_axi_bready),
        .I1(\gen_sync_clock_converter.state_reg ),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(m_axi_bresp[0]),
        .Q(s_axi_bresp[0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(m_axi_bresp[1]),
        .Q(s_axi_bresp[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F880000)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__2 
       (.I0(m_axi_bvalid),
        .I1(\gen_sync_clock_converter.state_reg ),
        .I2(s_axi_bready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.m_aresetn_r_reg_0 ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__2_n_0 ),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_sync_clock_converter.s_aresetn_r_i_1 
       (.I0(\gen_sync_clock_converter.s_aresetn_r_reg_1 ),
        .I1(\gen_sync_clock_converter.s_aresetn_r_reg_2 ),
        .O(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_aresetn_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_aresetn_r_i_1_n_0 ),
        .Q(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0404004400000000)) 
    \gen_sync_clock_converter.s_tready_r_i_1 
       (.I0(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[0] ),
        .I1(\gen_sync_clock_converter.state_reg ),
        .I2(posedge_finder_first),
        .I3(posedge_finder_second),
        .I4(slow_aclk_div2),
        .I5(\gen_sync_clock_converter.s_aresetn_r_reg_0 ),
        .O(\gen_sync_clock_converter.s_tready_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_i_1_n_0 ),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_clock_converter_v2_1_24_axic_sync_clock_converter" *) 
module design_1_auto_cc_0_axi_clock_converter_v2_1_24_axic_sync_clock_converter__parameterized2
   (m_axi_rready,
    s_axi_rvalid,
    Q,
    \gen_sync_clock_converter.m_tpayload_r_reg[33]_0 ,
    \gen_sync_clock_converter.s_tready_r_reg_0 ,
    out,
    \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ,
    s_axi_rready,
    m_axi_rvalid,
    \gen_sync_clock_converter.m_tvalid_r_reg_0 ,
    D);
  output m_axi_rready;
  output s_axi_rvalid;
  output [1:0]Q;
  output [33:0]\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 ;
  input \gen_sync_clock_converter.s_tready_r_reg_0 ;
  input out;
  input \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  input s_axi_rready;
  input m_axi_rvalid;
  input \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  input [33:0]D;

  wire [33:0]D;
  wire \FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ;
  wire \FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire \gen_sync_clock_converter.load_tpayload ;
  wire [33:0]\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ;
  wire \gen_sync_clock_converter.m_tvalid_r_reg_0 ;
  wire \gen_sync_clock_converter.s_tready_r_reg_0 ;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire out;
  wire s_axi_rready;
  wire s_axi_rvalid;

  LUT4 #(
    .INIT(16'h5557)) 
    \FSM_onehot_gen_sync_clock_converter.state[0]_i_1 
       (.I0(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .I1(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A202020)) 
    \FSM_onehot_gen_sync_clock_converter.state[1]_i_1 
       (.I0(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .I1(m_axi_rvalid),
        .I2(Q[1]),
        .I3(s_axi_rready),
        .I4(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444040000000400)) 
    \FSM_onehot_gen_sync_clock_converter.state[2]_i_1 
       (.I0(Q[0]),
        .I1(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(m_axi_rvalid),
        .O(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "INIT:001,ONE:11,TWO:100,ZERO:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_sync_clock_converter.state_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\FSM_onehot_gen_sync_clock_converter.state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_sync_clock_converter.m_tpayload_r[33]_i_1 
       (.I0(s_axi_rready),
        .I1(Q[1]),
        .O(\gen_sync_clock_converter.load_tpayload ));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[0] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[0]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [0]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[10] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[10]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [10]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[11] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[11]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [11]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[12] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[12]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [12]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[13] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[13]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [13]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[14] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[14]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [14]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[15] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[15]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [15]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[16] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[16]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [16]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[17] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[17]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [17]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[18] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[18]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [18]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[19] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[19]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [19]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[1] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[1]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [1]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[20] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[20]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [20]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[21] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[21]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [21]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[22] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[22]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [22]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[23] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[23]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [23]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[24] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[24]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [24]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[25] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[25]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [25]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[26] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[26]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [26]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[27] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[27]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [27]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[28] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[28]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [28]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[29] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[29]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [29]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[2] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[2]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [2]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[30] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[30]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [30]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[31] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[31]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [31]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[32] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[32]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [32]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[33] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[33]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [33]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[3] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[3]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [3]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[4] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[4]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [4]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[5] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[5]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [5]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[6] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[6]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [6]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[7] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[7]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [7]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[8] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[8]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [8]),
        .R(1'b0));
  FDRE \gen_sync_clock_converter.m_tpayload_r_reg[9] 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(\gen_sync_clock_converter.load_tpayload ),
        .D(D[9]),
        .Q(\gen_sync_clock_converter.m_tpayload_r_reg[33]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F880000)) 
    \gen_sync_clock_converter.m_tvalid_r_i_1__3 
       (.I0(m_axi_rvalid),
        .I1(Q[1]),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_gen_sync_clock_converter.state_reg_n_0_[2] ),
        .I4(\gen_sync_clock_converter.m_tvalid_r_reg_0 ),
        .O(\gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.m_tvalid_r_reg 
       (.C(\FSM_onehot_gen_sync_clock_converter.state_reg[0]_0 ),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.m_tvalid_r_i_1__3_n_0 ),
        .Q(s_axi_rvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_sync_clock_converter.s_tready_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_sync_clock_converter.s_tready_r_reg_0 ),
        .Q(m_axi_rready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_auto_cc_0,axi_clock_converter_v2_1_24_axi_clock_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_clock_converter_v2_1_24_axi_clock_converter,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 150446428, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [6:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [6:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 150446428, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 MI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_CLK, FREQ_HZ 300892857, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, INSERT_VIP 0" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 MI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [6:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [6:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300892857, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire m_axi_aclk;
  wire [6:0]m_axi_araddr;
  wire m_axi_aresetn;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [6:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_ARADDR_RIGHT = "3" *) 
  (* C_ARADDR_WIDTH = "7" *) 
  (* C_ARBURST_RIGHT = "3" *) 
  (* C_ARBURST_WIDTH = "0" *) 
  (* C_ARCACHE_RIGHT = "3" *) 
  (* C_ARCACHE_WIDTH = "0" *) 
  (* C_ARID_RIGHT = "10" *) 
  (* C_ARID_WIDTH = "0" *) 
  (* C_ARLEN_RIGHT = "3" *) 
  (* C_ARLEN_WIDTH = "0" *) 
  (* C_ARLOCK_RIGHT = "3" *) 
  (* C_ARLOCK_WIDTH = "0" *) 
  (* C_ARPROT_RIGHT = "0" *) 
  (* C_ARPROT_WIDTH = "3" *) 
  (* C_ARQOS_RIGHT = "0" *) 
  (* C_ARQOS_WIDTH = "0" *) 
  (* C_ARREGION_RIGHT = "0" *) 
  (* C_ARREGION_WIDTH = "0" *) 
  (* C_ARSIZE_RIGHT = "3" *) 
  (* C_ARSIZE_WIDTH = "0" *) 
  (* C_ARUSER_RIGHT = "0" *) 
  (* C_ARUSER_WIDTH = "0" *) 
  (* C_AR_WIDTH = "10" *) 
  (* C_AWADDR_RIGHT = "3" *) 
  (* C_AWADDR_WIDTH = "7" *) 
  (* C_AWBURST_RIGHT = "3" *) 
  (* C_AWBURST_WIDTH = "0" *) 
  (* C_AWCACHE_RIGHT = "3" *) 
  (* C_AWCACHE_WIDTH = "0" *) 
  (* C_AWID_RIGHT = "10" *) 
  (* C_AWID_WIDTH = "0" *) 
  (* C_AWLEN_RIGHT = "3" *) 
  (* C_AWLEN_WIDTH = "0" *) 
  (* C_AWLOCK_RIGHT = "3" *) 
  (* C_AWLOCK_WIDTH = "0" *) 
  (* C_AWPROT_RIGHT = "0" *) 
  (* C_AWPROT_WIDTH = "3" *) 
  (* C_AWQOS_RIGHT = "0" *) 
  (* C_AWQOS_WIDTH = "0" *) 
  (* C_AWREGION_RIGHT = "0" *) 
  (* C_AWREGION_WIDTH = "0" *) 
  (* C_AWSIZE_RIGHT = "3" *) 
  (* C_AWSIZE_WIDTH = "0" *) 
  (* C_AWUSER_RIGHT = "0" *) 
  (* C_AWUSER_WIDTH = "0" *) 
  (* C_AW_WIDTH = "10" *) 
  (* C_AXI_ADDR_WIDTH = "7" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BID_RIGHT = "2" *) 
  (* C_BID_WIDTH = "0" *) 
  (* C_BRESP_RIGHT = "0" *) 
  (* C_BRESP_WIDTH = "2" *) 
  (* C_BUSER_RIGHT = "0" *) 
  (* C_BUSER_WIDTH = "0" *) 
  (* C_B_WIDTH = "2" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FIFO_AR_WIDTH = "10" *) 
  (* C_FIFO_AW_WIDTH = "10" *) 
  (* C_FIFO_B_WIDTH = "2" *) 
  (* C_FIFO_R_WIDTH = "34" *) 
  (* C_FIFO_W_WIDTH = "36" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_RDATA_RIGHT = "2" *) 
  (* C_RDATA_WIDTH = "32" *) 
  (* C_RID_RIGHT = "34" *) 
  (* C_RID_WIDTH = "0" *) 
  (* C_RLAST_RIGHT = "0" *) 
  (* C_RLAST_WIDTH = "0" *) 
  (* C_RRESP_RIGHT = "0" *) 
  (* C_RRESP_WIDTH = "2" *) 
  (* C_RUSER_RIGHT = "0" *) 
  (* C_RUSER_WIDTH = "0" *) 
  (* C_R_WIDTH = "34" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_WDATA_RIGHT = "4" *) 
  (* C_WDATA_WIDTH = "32" *) 
  (* C_WID_RIGHT = "36" *) 
  (* C_WID_WIDTH = "0" *) 
  (* C_WLAST_RIGHT = "0" *) 
  (* C_WLAST_WIDTH = "0" *) 
  (* C_WSTRB_RIGHT = "0" *) 
  (* C_WSTRB_WIDTH = "4" *) 
  (* C_WUSER_RIGHT = "0" *) 
  (* C_WUSER_WIDTH = "0" *) 
  (* C_W_WIDTH = "36" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ACLK_RATIO = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_FULLY_REG = "1" *) 
  (* P_LIGHT_WT = "0" *) 
  (* P_LUTRAM_ASYNC = "12" *) 
  (* P_ROUNDING_OFFSET = "0" *) 
  (* P_SI_LT_MI = "1'b1" *) 
  design_1_auto_cc_0_axi_clock_converter_v2_1_24_axi_clock_converter inst
       (.m_axi_aclk(m_axi_aclk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
