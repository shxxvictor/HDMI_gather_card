//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Sun Jun 26 14:58:35 2022
//Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=39,numReposBlks=34,numNonXlnxBlks=2,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (edid_scl,
    edid_sda,
    hdmi_in_clk,
    hdmi_in_data,
    hdmi_in_de,
    hdmi_in_hs,
    hdmi_in_i2c_scl_i,
    hdmi_in_i2c_scl_o,
    hdmi_in_i2c_scl_t,
    hdmi_in_i2c_sda_i,
    hdmi_in_i2c_sda_o,
    hdmi_in_i2c_sda_t,
    hdmi_in_rst_n,
    hdmi_in_vs,
    hdmi_out_clk,
    hdmi_out_data,
    hdmi_out_de,
    hdmi_out_hs,
    hdmi_out_i2c_scl_i,
    hdmi_out_i2c_scl_o,
    hdmi_out_i2c_scl_t,
    hdmi_out_i2c_sda_i,
    hdmi_out_i2c_sda_o,
    hdmi_out_i2c_sda_t,
    hdmi_out_vs,
    hpd,
    reset_n,
    sys_clk_clk_n,
    sys_clk_clk_p);
  inout edid_scl;
  inout edid_sda;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_IN_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_IN_CLK, CLK_DOMAIN design_1_hdmi_in_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input hdmi_in_clk;
  input [23:0]hdmi_in_data;
  input hdmi_in_de;
  input hdmi_in_hs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SCL_I" *) input hdmi_in_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SCL_O" *) output hdmi_in_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SCL_T" *) output hdmi_in_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SDA_I" *) input hdmi_in_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SDA_O" *) output hdmi_in_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_i2c SDA_T" *) output hdmi_in_i2c_sda_t;
  output hdmi_in_rst_n;
  input hdmi_in_vs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_OUT_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_OUT_CLK, CLK_DOMAIN design_1_hdmi_in_clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hdmi_out_clk;
  output [23:0]hdmi_out_data;
  output hdmi_out_de;
  output hdmi_out_hs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SCL_I" *) input hdmi_out_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SCL_O" *) output hdmi_out_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SCL_T" *) output hdmi_out_i2c_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SDA_I" *) input hdmi_out_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SDA_O" *) output hdmi_out_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_out_i2c SDA_T" *) output hdmi_out_i2c_sda_t;
  output hdmi_out_vs;
  output [0:0]hpd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_P" *) input sys_clk_clk_p;

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire Net;
  wire Net1;
  (* CONN_BUS_INFO = "YUV_2xy_scaler_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]YUV_2xy_scaler_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "YUV_2xy_scaler_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire YUV_2xy_scaler_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "YUV_2xy_scaler_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire YUV_2xy_scaler_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "YUV_2xy_scaler_0_m_axis xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire YUV_2xy_scaler_0_m_axis_TUSER;
  (* CONN_BUS_INFO = "YUV_2xy_scaler_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire YUV_2xy_scaler_0_m_axis_TVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [0:0]axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [0:0]axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [6:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [6:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [7:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [7:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [43:0]axi_register_slice_0_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_0_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_0_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_ARID;
  wire [7:0]axi_register_slice_0_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_0_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_0_M_AXI_ARQOS;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_0_M_AXI_ARSIZE;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [43:0]axi_register_slice_0_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_0_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_0_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_0_M_AXI_AWID;
  wire [7:0]axi_register_slice_0_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_0_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_0_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_0_M_AXI_AWQOS;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_0_M_AXI_AWSIZE;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire [5:0]axi_register_slice_0_M_AXI_BID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [127:0]axi_register_slice_0_M_AXI_RDATA;
  wire [5:0]axi_register_slice_0_M_AXI_RID;
  wire axi_register_slice_0_M_AXI_RLAST;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [127:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WLAST;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire [15:0]axi_register_slice_0_M_AXI_WSTRB;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [43:0]axi_register_slice_1_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_1_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_1_M_AXI_ARCACHE;
  wire [3:0]axi_register_slice_1_M_AXI_ARID;
  wire [7:0]axi_register_slice_1_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_1_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_1_M_AXI_ARQOS;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_1_M_AXI_ARSIZE;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [43:0]axi_register_slice_1_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_1_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_1_M_AXI_AWCACHE;
  wire [3:0]axi_register_slice_1_M_AXI_AWID;
  wire [7:0]axi_register_slice_1_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_1_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_1_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_1_M_AXI_AWQOS;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_1_M_AXI_AWSIZE;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire [5:0]axi_register_slice_1_M_AXI_BID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [127:0]axi_register_slice_1_M_AXI_RDATA;
  wire [5:0]axi_register_slice_1_M_AXI_RID;
  wire axi_register_slice_1_M_AXI_RLAST;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [127:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WLAST;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire [15:0]axi_register_slice_1_M_AXI_WSTRB;
  wire axi_register_slice_1_M_AXI_WVALID;
  wire [31:0]axi_register_slice_2_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_2_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_2_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_2_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_2_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_2_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_2_M_AXI_ARQOS;
  wire axi_register_slice_2_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_2_M_AXI_ARSIZE;
  wire axi_register_slice_2_M_AXI_ARVALID;
  wire [31:0]axi_register_slice_2_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_2_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_2_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_2_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_2_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_2_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_2_M_AXI_AWQOS;
  wire axi_register_slice_2_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_2_M_AXI_AWSIZE;
  wire axi_register_slice_2_M_AXI_AWVALID;
  wire axi_register_slice_2_M_AXI_BREADY;
  wire [1:0]axi_register_slice_2_M_AXI_BRESP;
  wire axi_register_slice_2_M_AXI_BVALID;
  wire [127:0]axi_register_slice_2_M_AXI_RDATA;
  wire axi_register_slice_2_M_AXI_RLAST;
  wire axi_register_slice_2_M_AXI_RREADY;
  wire [1:0]axi_register_slice_2_M_AXI_RRESP;
  wire axi_register_slice_2_M_AXI_RVALID;
  wire [127:0]axi_register_slice_2_M_AXI_WDATA;
  wire axi_register_slice_2_M_AXI_WLAST;
  wire axi_register_slice_2_M_AXI_WREADY;
  wire [15:0]axi_register_slice_2_M_AXI_WSTRB;
  wire axi_register_slice_2_M_AXI_WVALID;
  wire [43:0]axi_register_slice_4_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_4_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_4_M_AXI_ARCACHE;
  wire [2:0]axi_register_slice_4_M_AXI_ARID;
  wire [7:0]axi_register_slice_4_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_4_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_4_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_4_M_AXI_ARQOS;
  wire axi_register_slice_4_M_AXI_ARREADY;
  wire [2:0]axi_register_slice_4_M_AXI_ARSIZE;
  wire axi_register_slice_4_M_AXI_ARVALID;
  wire [43:0]axi_register_slice_4_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_4_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_4_M_AXI_AWCACHE;
  wire [2:0]axi_register_slice_4_M_AXI_AWID;
  wire [7:0]axi_register_slice_4_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_4_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_4_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_4_M_AXI_AWQOS;
  wire axi_register_slice_4_M_AXI_AWREADY;
  wire [2:0]axi_register_slice_4_M_AXI_AWSIZE;
  wire axi_register_slice_4_M_AXI_AWVALID;
  wire [5:0]axi_register_slice_4_M_AXI_BID;
  wire axi_register_slice_4_M_AXI_BREADY;
  wire [1:0]axi_register_slice_4_M_AXI_BRESP;
  wire axi_register_slice_4_M_AXI_BVALID;
  wire [31:0]axi_register_slice_4_M_AXI_RDATA;
  wire [5:0]axi_register_slice_4_M_AXI_RID;
  wire axi_register_slice_4_M_AXI_RLAST;
  wire axi_register_slice_4_M_AXI_RREADY;
  wire [1:0]axi_register_slice_4_M_AXI_RRESP;
  wire axi_register_slice_4_M_AXI_RVALID;
  wire [31:0]axi_register_slice_4_M_AXI_WDATA;
  wire axi_register_slice_4_M_AXI_WLAST;
  wire axi_register_slice_4_M_AXI_WREADY;
  wire [3:0]axi_register_slice_4_M_AXI_WSTRB;
  wire axi_register_slice_4_M_AXI_WVALID;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axis_data_fifo_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_data_fifo_0_M_AXIS_TUSER;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [31:0]axis_dwidth_converter_0_m_axis_tdata;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_dwidth_converter_0_m_axis_tlast;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axis_dwidth_converter_0_m_axis_tuser;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_dwidth_converter_0_m_axis_tvalid;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_1_clk_out1;
  wire clk_wiz_1_locked;
  wire hdmi_in_clk_1;
  wire [23:0]hdmi_in_data_1;
  wire hdmi_in_de_1;
  wire hdmi_in_hs_1;
  wire hdmi_in_vs_1;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire resetn_0_1;
  (* CONN_BUS_INFO = "rgb2YCbCr_0_interface_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]rgb2YCbCr_0_interface_axis_TDATA;
  (* CONN_BUS_INFO = "rgb2YCbCr_0_interface_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire rgb2YCbCr_0_interface_axis_TLAST;
  (* CONN_BUS_INFO = "rgb2YCbCr_0_interface_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire rgb2YCbCr_0_interface_axis_TREADY;
  (* CONN_BUS_INFO = "rgb2YCbCr_0_interface_axis xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire rgb2YCbCr_0_interface_axis_TUSER;
  (* CONN_BUS_INFO = "rgb2YCbCr_0_interface_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire rgb2YCbCr_0_interface_axis_TVALID;
  wire [0:0]rst_ps8_0_99M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_reset;
  wire [0:0]util_vector_logic_0_Res;
  wire v_frmbuf_wr_0_interrupt;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARBURST;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARCACHE;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_ARLEN;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_ARLOCK;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARPROT;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARQOS;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_ARREADY;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARREGION" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_ARREGION;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_ARSIZE;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_ARVALID;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]v_frmbuf_wr_0_m_axi_mm_video_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWBURST;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWCACHE;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]v_frmbuf_wr_0_m_axi_mm_video_AWLEN;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_AWLOCK;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWPROT;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWQOS;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_AWREADY;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWREGION" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]v_frmbuf_wr_0_m_axi_mm_video_AWREGION;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]v_frmbuf_wr_0_m_axi_mm_video_AWSIZE;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_AWVALID;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_BREADY;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_BRESP;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_BVALID;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]v_frmbuf_wr_0_m_axi_mm_video_RDATA;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_RLAST;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_RREADY;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]v_frmbuf_wr_0_m_axi_mm_video_RRESP;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_RVALID;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]v_frmbuf_wr_0_m_axi_mm_video_WDATA;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_WLAST;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_WREADY;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]v_frmbuf_wr_0_m_axi_mm_video_WSTRB;
  (* CONN_BUS_INFO = "v_frmbuf_wr_0_m_axi_mm_video xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_frmbuf_wr_0_m_axi_mm_video_WVALID;
  wire v_tpg_0_interrupt;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [47:0]v_tpg_0_m_axis_video_TDATA;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TDEST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_tpg_0_m_axis_video_TDEST;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_tpg_0_m_axis_video_TID;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]v_tpg_0_m_axis_video_TKEEP;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_tpg_0_m_axis_video_TLAST;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_tpg_0_m_axis_video_TREADY;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]v_tpg_0_m_axis_video_TSTRB;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]v_tpg_0_m_axis_video_TUSER;
  (* CONN_BUS_INFO = "v_tpg_0_m_axis_video xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_tpg_0_m_axis_video_TVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_tpg_0_s_axis_video_TREADY;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TLAST;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TREADY;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TUSER;
  (* CONN_BUS_INFO = "v_vid_in_axi4s_0_video_out xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire v_vid_in_axi4s_0_video_out_TVALID;
  wire [43:0]vcu_0_M_AXI_ENC0_ARADDR;
  wire [1:0]vcu_0_M_AXI_ENC0_ARBURST;
  wire [3:0]vcu_0_M_AXI_ENC0_ARCACHE;
  wire [3:0]vcu_0_M_AXI_ENC0_ARID;
  wire [7:0]vcu_0_M_AXI_ENC0_ARLEN;
  wire vcu_0_M_AXI_ENC0_ARLOCK;
  wire [2:0]vcu_0_M_AXI_ENC0_ARPROT;
  wire [3:0]vcu_0_M_AXI_ENC0_ARQOS;
  wire vcu_0_M_AXI_ENC0_ARREADY;
  wire [3:0]vcu_0_M_AXI_ENC0_ARREGION;
  wire [2:0]vcu_0_M_AXI_ENC0_ARSIZE;
  wire vcu_0_M_AXI_ENC0_ARVALID;
  wire [43:0]vcu_0_M_AXI_ENC0_AWADDR;
  wire [1:0]vcu_0_M_AXI_ENC0_AWBURST;
  wire [3:0]vcu_0_M_AXI_ENC0_AWCACHE;
  wire [3:0]vcu_0_M_AXI_ENC0_AWID;
  wire [7:0]vcu_0_M_AXI_ENC0_AWLEN;
  wire vcu_0_M_AXI_ENC0_AWLOCK;
  wire [2:0]vcu_0_M_AXI_ENC0_AWPROT;
  wire [3:0]vcu_0_M_AXI_ENC0_AWQOS;
  wire vcu_0_M_AXI_ENC0_AWREADY;
  wire [3:0]vcu_0_M_AXI_ENC0_AWREGION;
  wire [2:0]vcu_0_M_AXI_ENC0_AWSIZE;
  wire vcu_0_M_AXI_ENC0_AWVALID;
  wire [3:0]vcu_0_M_AXI_ENC0_BID;
  wire vcu_0_M_AXI_ENC0_BREADY;
  wire [1:0]vcu_0_M_AXI_ENC0_BRESP;
  wire vcu_0_M_AXI_ENC0_BVALID;
  wire [127:0]vcu_0_M_AXI_ENC0_RDATA;
  wire [3:0]vcu_0_M_AXI_ENC0_RID;
  wire vcu_0_M_AXI_ENC0_RLAST;
  wire vcu_0_M_AXI_ENC0_RREADY;
  wire [1:0]vcu_0_M_AXI_ENC0_RRESP;
  wire vcu_0_M_AXI_ENC0_RVALID;
  wire [127:0]vcu_0_M_AXI_ENC0_WDATA;
  wire vcu_0_M_AXI_ENC0_WLAST;
  wire vcu_0_M_AXI_ENC0_WREADY;
  wire [15:0]vcu_0_M_AXI_ENC0_WSTRB;
  wire vcu_0_M_AXI_ENC0_WVALID;
  wire [43:0]vcu_0_M_AXI_ENC1_ARADDR;
  wire [1:0]vcu_0_M_AXI_ENC1_ARBURST;
  wire [3:0]vcu_0_M_AXI_ENC1_ARCACHE;
  wire [3:0]vcu_0_M_AXI_ENC1_ARID;
  wire [7:0]vcu_0_M_AXI_ENC1_ARLEN;
  wire vcu_0_M_AXI_ENC1_ARLOCK;
  wire [2:0]vcu_0_M_AXI_ENC1_ARPROT;
  wire [3:0]vcu_0_M_AXI_ENC1_ARQOS;
  wire vcu_0_M_AXI_ENC1_ARREADY;
  wire [3:0]vcu_0_M_AXI_ENC1_ARREGION;
  wire [2:0]vcu_0_M_AXI_ENC1_ARSIZE;
  wire vcu_0_M_AXI_ENC1_ARVALID;
  wire [43:0]vcu_0_M_AXI_ENC1_AWADDR;
  wire [1:0]vcu_0_M_AXI_ENC1_AWBURST;
  wire [3:0]vcu_0_M_AXI_ENC1_AWCACHE;
  wire [3:0]vcu_0_M_AXI_ENC1_AWID;
  wire [7:0]vcu_0_M_AXI_ENC1_AWLEN;
  wire vcu_0_M_AXI_ENC1_AWLOCK;
  wire [2:0]vcu_0_M_AXI_ENC1_AWPROT;
  wire [3:0]vcu_0_M_AXI_ENC1_AWQOS;
  wire vcu_0_M_AXI_ENC1_AWREADY;
  wire [3:0]vcu_0_M_AXI_ENC1_AWREGION;
  wire [2:0]vcu_0_M_AXI_ENC1_AWSIZE;
  wire vcu_0_M_AXI_ENC1_AWVALID;
  wire [3:0]vcu_0_M_AXI_ENC1_BID;
  wire vcu_0_M_AXI_ENC1_BREADY;
  wire [1:0]vcu_0_M_AXI_ENC1_BRESP;
  wire vcu_0_M_AXI_ENC1_BVALID;
  wire [127:0]vcu_0_M_AXI_ENC1_RDATA;
  wire [3:0]vcu_0_M_AXI_ENC1_RID;
  wire vcu_0_M_AXI_ENC1_RLAST;
  wire vcu_0_M_AXI_ENC1_RREADY;
  wire [1:0]vcu_0_M_AXI_ENC1_RRESP;
  wire vcu_0_M_AXI_ENC1_RVALID;
  wire [127:0]vcu_0_M_AXI_ENC1_WDATA;
  wire vcu_0_M_AXI_ENC1_WLAST;
  wire vcu_0_M_AXI_ENC1_WREADY;
  wire [15:0]vcu_0_M_AXI_ENC1_WSTRB;
  wire vcu_0_M_AXI_ENC1_WVALID;
  wire [43:0]vcu_0_M_AXI_MCU_ARADDR;
  wire [1:0]vcu_0_M_AXI_MCU_ARBURST;
  wire [3:0]vcu_0_M_AXI_MCU_ARCACHE;
  wire [2:0]vcu_0_M_AXI_MCU_ARID;
  wire [7:0]vcu_0_M_AXI_MCU_ARLEN;
  wire vcu_0_M_AXI_MCU_ARLOCK;
  wire [2:0]vcu_0_M_AXI_MCU_ARPROT;
  wire [3:0]vcu_0_M_AXI_MCU_ARQOS;
  wire vcu_0_M_AXI_MCU_ARREADY;
  wire [2:0]vcu_0_M_AXI_MCU_ARSIZE;
  wire vcu_0_M_AXI_MCU_ARVALID;
  wire [43:0]vcu_0_M_AXI_MCU_AWADDR;
  wire [1:0]vcu_0_M_AXI_MCU_AWBURST;
  wire [3:0]vcu_0_M_AXI_MCU_AWCACHE;
  wire [2:0]vcu_0_M_AXI_MCU_AWID;
  wire [7:0]vcu_0_M_AXI_MCU_AWLEN;
  wire vcu_0_M_AXI_MCU_AWLOCK;
  wire [2:0]vcu_0_M_AXI_MCU_AWPROT;
  wire [3:0]vcu_0_M_AXI_MCU_AWQOS;
  wire vcu_0_M_AXI_MCU_AWREADY;
  wire [2:0]vcu_0_M_AXI_MCU_AWSIZE;
  wire vcu_0_M_AXI_MCU_AWVALID;
  wire [2:0]vcu_0_M_AXI_MCU_BID;
  wire vcu_0_M_AXI_MCU_BREADY;
  wire [1:0]vcu_0_M_AXI_MCU_BRESP;
  wire vcu_0_M_AXI_MCU_BVALID;
  wire [31:0]vcu_0_M_AXI_MCU_RDATA;
  wire [2:0]vcu_0_M_AXI_MCU_RID;
  wire vcu_0_M_AXI_MCU_RLAST;
  wire vcu_0_M_AXI_MCU_RREADY;
  wire [1:0]vcu_0_M_AXI_MCU_RRESP;
  wire vcu_0_M_AXI_MCU_RVALID;
  wire [31:0]vcu_0_M_AXI_MCU_WDATA;
  wire vcu_0_M_AXI_MCU_WLAST;
  wire vcu_0_M_AXI_MCU_WREADY;
  wire [3:0]vcu_0_M_AXI_MCU_WSTRB;
  wire vcu_0_M_AXI_MCU_WVALID;
  wire vcu_0_vcu_host_interrupt;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [2:0]xlconcat_0_dout;
  wire [47:0]xlconcat_1_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [15:0]xlconstant_2_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire zynq_ultra_ps_e_0_IIC_0_SCL_I;
  wire zynq_ultra_ps_e_0_IIC_0_SCL_O;
  wire zynq_ultra_ps_e_0_IIC_0_SCL_T;
  wire zynq_ultra_ps_e_0_IIC_0_SDA_I;
  wire zynq_ultra_ps_e_0_IIC_0_SDA_O;
  wire zynq_ultra_ps_e_0_IIC_0_SDA_T;
  wire zynq_ultra_ps_e_0_IIC_1_SCL_I;
  wire zynq_ultra_ps_e_0_IIC_1_SCL_O;
  wire zynq_ultra_ps_e_0_IIC_1_SCL_T;
  wire zynq_ultra_ps_e_0_IIC_1_SDA_I;
  wire zynq_ultra_ps_e_0_IIC_1_SDA_O;
  wire zynq_ultra_ps_e_0_IIC_1_SDA_T;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
  wire [94:0]zynq_ultra_ps_e_0_emio_gpio_o;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_clk1;
  wire [0:0]zynq_ultra_ps_e_0_pl_resetn0;
  wire zynq_ultra_ps_e_0_pl_resetn1;

  assign CLK_IN1_D_0_1_CLK_N = sys_clk_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = sys_clk_clk_p;
  assign hdmi_in_clk_1 = hdmi_in_clk;
  assign hdmi_in_data_1 = hdmi_in_data[23:0];
  assign hdmi_in_de_1 = hdmi_in_de;
  assign hdmi_in_hs_1 = hdmi_in_hs;
  assign hdmi_in_i2c_scl_o = zynq_ultra_ps_e_0_IIC_1_SCL_O;
  assign hdmi_in_i2c_scl_t = zynq_ultra_ps_e_0_IIC_1_SCL_T;
  assign hdmi_in_i2c_sda_o = zynq_ultra_ps_e_0_IIC_1_SDA_O;
  assign hdmi_in_i2c_sda_t = zynq_ultra_ps_e_0_IIC_1_SDA_T;
  assign hdmi_in_rst_n = clk_wiz_1_locked;
  assign hdmi_in_vs_1 = hdmi_in_vs;
  assign hdmi_out_clk = hdmi_in_clk_1;
  assign hdmi_out_data[23:0] = hdmi_in_data_1;
  assign hdmi_out_de = hdmi_in_de_1;
  assign hdmi_out_hs = hdmi_in_hs_1;
  assign hdmi_out_i2c_scl_o = zynq_ultra_ps_e_0_IIC_0_SCL_O;
  assign hdmi_out_i2c_scl_t = zynq_ultra_ps_e_0_IIC_0_SCL_T;
  assign hdmi_out_i2c_sda_o = zynq_ultra_ps_e_0_IIC_0_SDA_O;
  assign hdmi_out_i2c_sda_t = zynq_ultra_ps_e_0_IIC_0_SDA_T;
  assign hdmi_out_vs = hdmi_in_vs_1;
  assign hpd[0] = xlconstant_0_dout;
  assign resetn_0_1 = reset_n;
  assign zynq_ultra_ps_e_0_IIC_0_SCL_I = hdmi_out_i2c_scl_i;
  assign zynq_ultra_ps_e_0_IIC_0_SDA_I = hdmi_out_i2c_sda_i;
  assign zynq_ultra_ps_e_0_IIC_1_SCL_I = hdmi_in_i2c_scl_i;
  assign zynq_ultra_ps_e_0_IIC_1_SDA_I = hdmi_in_i2c_sda_i;
  design_1_EEPROM_8b_0_0 EEPROM_8b_0
       (.SampleClk(zynq_ultra_ps_e_0_pl_clk1),
        .aSCL(edid_scl),
        .aSDA(edid_sda),
        .sRst(util_vector_logic_0_Res));
  design_1_YUV_2xy_scaler_0_1 YUV_2xy_scaler_0
       (.clk_in(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(rgb2YCbCr_0_interface_axis_TDATA),
        .reset(rst_ps8_0_99M_peripheral_reset),
        .rlast(rgb2YCbCr_0_interface_axis_TLAST),
        .rready(rgb2YCbCr_0_interface_axis_TREADY),
        .ruser(rgb2YCbCr_0_interface_axis_TUSER),
        .rvalid(rgb2YCbCr_0_interface_axis_TVALID),
        .tdata(YUV_2xy_scaler_0_m_axis_TDATA),
        .tlast(YUV_2xy_scaler_0_m_axis_TLAST),
        .tready(YUV_2xy_scaler_0_m_axis_TREADY),
        .tuser(YUV_2xy_scaler_0_m_axis_TUSER),
        .tvalid(YUV_2xy_scaler_0_m_axis_TVALID));
  design_1_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out2),
        .M01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out2),
        .M02_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_interconnect_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  design_1_axi_register_slice_0_0 axi_register_slice_0
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_0_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_0_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_0_M_AXI_BID[3:0]),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_0_M_AXI_RID[3:0]),
        .m_axi_rlast(axi_register_slice_0_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_0_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(vcu_0_M_AXI_ENC0_ARADDR),
        .s_axi_arburst(vcu_0_M_AXI_ENC0_ARBURST),
        .s_axi_arcache(vcu_0_M_AXI_ENC0_ARCACHE),
        .s_axi_arid(vcu_0_M_AXI_ENC0_ARID),
        .s_axi_arlen(vcu_0_M_AXI_ENC0_ARLEN),
        .s_axi_arlock(vcu_0_M_AXI_ENC0_ARLOCK),
        .s_axi_arprot(vcu_0_M_AXI_ENC0_ARPROT),
        .s_axi_arqos(vcu_0_M_AXI_ENC0_ARQOS),
        .s_axi_arready(vcu_0_M_AXI_ENC0_ARREADY),
        .s_axi_arregion(vcu_0_M_AXI_ENC0_ARREGION),
        .s_axi_arsize(vcu_0_M_AXI_ENC0_ARSIZE),
        .s_axi_arvalid(vcu_0_M_AXI_ENC0_ARVALID),
        .s_axi_awaddr(vcu_0_M_AXI_ENC0_AWADDR),
        .s_axi_awburst(vcu_0_M_AXI_ENC0_AWBURST),
        .s_axi_awcache(vcu_0_M_AXI_ENC0_AWCACHE),
        .s_axi_awid(vcu_0_M_AXI_ENC0_AWID),
        .s_axi_awlen(vcu_0_M_AXI_ENC0_AWLEN),
        .s_axi_awlock(vcu_0_M_AXI_ENC0_AWLOCK),
        .s_axi_awprot(vcu_0_M_AXI_ENC0_AWPROT),
        .s_axi_awqos(vcu_0_M_AXI_ENC0_AWQOS),
        .s_axi_awready(vcu_0_M_AXI_ENC0_AWREADY),
        .s_axi_awregion(vcu_0_M_AXI_ENC0_AWREGION),
        .s_axi_awsize(vcu_0_M_AXI_ENC0_AWSIZE),
        .s_axi_awvalid(vcu_0_M_AXI_ENC0_AWVALID),
        .s_axi_bid(vcu_0_M_AXI_ENC0_BID),
        .s_axi_bready(vcu_0_M_AXI_ENC0_BREADY),
        .s_axi_bresp(vcu_0_M_AXI_ENC0_BRESP),
        .s_axi_bvalid(vcu_0_M_AXI_ENC0_BVALID),
        .s_axi_rdata(vcu_0_M_AXI_ENC0_RDATA),
        .s_axi_rid(vcu_0_M_AXI_ENC0_RID),
        .s_axi_rlast(vcu_0_M_AXI_ENC0_RLAST),
        .s_axi_rready(vcu_0_M_AXI_ENC0_RREADY),
        .s_axi_rresp(vcu_0_M_AXI_ENC0_RRESP),
        .s_axi_rvalid(vcu_0_M_AXI_ENC0_RVALID),
        .s_axi_wdata(vcu_0_M_AXI_ENC0_WDATA),
        .s_axi_wlast(vcu_0_M_AXI_ENC0_WLAST),
        .s_axi_wready(vcu_0_M_AXI_ENC0_WREADY),
        .s_axi_wstrb(vcu_0_M_AXI_ENC0_WSTRB),
        .s_axi_wvalid(vcu_0_M_AXI_ENC0_WVALID));
  design_1_axi_register_slice_0_1 axi_register_slice_1
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_1_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_1_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_1_M_AXI_BID[3:0]),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_1_M_AXI_RID[3:0]),
        .m_axi_rlast(axi_register_slice_1_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_1_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(vcu_0_M_AXI_ENC1_ARADDR),
        .s_axi_arburst(vcu_0_M_AXI_ENC1_ARBURST),
        .s_axi_arcache(vcu_0_M_AXI_ENC1_ARCACHE),
        .s_axi_arid(vcu_0_M_AXI_ENC1_ARID),
        .s_axi_arlen(vcu_0_M_AXI_ENC1_ARLEN),
        .s_axi_arlock(vcu_0_M_AXI_ENC1_ARLOCK),
        .s_axi_arprot(vcu_0_M_AXI_ENC1_ARPROT),
        .s_axi_arqos(vcu_0_M_AXI_ENC1_ARQOS),
        .s_axi_arready(vcu_0_M_AXI_ENC1_ARREADY),
        .s_axi_arregion(vcu_0_M_AXI_ENC1_ARREGION),
        .s_axi_arsize(vcu_0_M_AXI_ENC1_ARSIZE),
        .s_axi_arvalid(vcu_0_M_AXI_ENC1_ARVALID),
        .s_axi_awaddr(vcu_0_M_AXI_ENC1_AWADDR),
        .s_axi_awburst(vcu_0_M_AXI_ENC1_AWBURST),
        .s_axi_awcache(vcu_0_M_AXI_ENC1_AWCACHE),
        .s_axi_awid(vcu_0_M_AXI_ENC1_AWID),
        .s_axi_awlen(vcu_0_M_AXI_ENC1_AWLEN),
        .s_axi_awlock(vcu_0_M_AXI_ENC1_AWLOCK),
        .s_axi_awprot(vcu_0_M_AXI_ENC1_AWPROT),
        .s_axi_awqos(vcu_0_M_AXI_ENC1_AWQOS),
        .s_axi_awready(vcu_0_M_AXI_ENC1_AWREADY),
        .s_axi_awregion(vcu_0_M_AXI_ENC1_AWREGION),
        .s_axi_awsize(vcu_0_M_AXI_ENC1_AWSIZE),
        .s_axi_awvalid(vcu_0_M_AXI_ENC1_AWVALID),
        .s_axi_bid(vcu_0_M_AXI_ENC1_BID),
        .s_axi_bready(vcu_0_M_AXI_ENC1_BREADY),
        .s_axi_bresp(vcu_0_M_AXI_ENC1_BRESP),
        .s_axi_bvalid(vcu_0_M_AXI_ENC1_BVALID),
        .s_axi_rdata(vcu_0_M_AXI_ENC1_RDATA),
        .s_axi_rid(vcu_0_M_AXI_ENC1_RID),
        .s_axi_rlast(vcu_0_M_AXI_ENC1_RLAST),
        .s_axi_rready(vcu_0_M_AXI_ENC1_RREADY),
        .s_axi_rresp(vcu_0_M_AXI_ENC1_RRESP),
        .s_axi_rvalid(vcu_0_M_AXI_ENC1_RVALID),
        .s_axi_wdata(vcu_0_M_AXI_ENC1_WDATA),
        .s_axi_wlast(vcu_0_M_AXI_ENC1_WLAST),
        .s_axi_wready(vcu_0_M_AXI_ENC1_WREADY),
        .s_axi_wstrb(vcu_0_M_AXI_ENC1_WSTRB),
        .s_axi_wvalid(vcu_0_M_AXI_ENC1_WVALID));
  design_1_axi_register_slice_2_0 axi_register_slice_2
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_2_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_2_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_2_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_2_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_2_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_2_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .s_axi_araddr(v_frmbuf_wr_0_m_axi_mm_video_ARADDR),
        .s_axi_arburst(v_frmbuf_wr_0_m_axi_mm_video_ARBURST),
        .s_axi_arcache(v_frmbuf_wr_0_m_axi_mm_video_ARCACHE),
        .s_axi_arlen(v_frmbuf_wr_0_m_axi_mm_video_ARLEN),
        .s_axi_arlock(v_frmbuf_wr_0_m_axi_mm_video_ARLOCK[0]),
        .s_axi_arprot(v_frmbuf_wr_0_m_axi_mm_video_ARPROT),
        .s_axi_arqos(v_frmbuf_wr_0_m_axi_mm_video_ARQOS),
        .s_axi_arready(v_frmbuf_wr_0_m_axi_mm_video_ARREADY),
        .s_axi_arregion(v_frmbuf_wr_0_m_axi_mm_video_ARREGION),
        .s_axi_arsize(v_frmbuf_wr_0_m_axi_mm_video_ARSIZE),
        .s_axi_arvalid(v_frmbuf_wr_0_m_axi_mm_video_ARVALID),
        .s_axi_awaddr(v_frmbuf_wr_0_m_axi_mm_video_AWADDR),
        .s_axi_awburst(v_frmbuf_wr_0_m_axi_mm_video_AWBURST),
        .s_axi_awcache(v_frmbuf_wr_0_m_axi_mm_video_AWCACHE),
        .s_axi_awlen(v_frmbuf_wr_0_m_axi_mm_video_AWLEN),
        .s_axi_awlock(v_frmbuf_wr_0_m_axi_mm_video_AWLOCK[0]),
        .s_axi_awprot(v_frmbuf_wr_0_m_axi_mm_video_AWPROT),
        .s_axi_awqos(v_frmbuf_wr_0_m_axi_mm_video_AWQOS),
        .s_axi_awready(v_frmbuf_wr_0_m_axi_mm_video_AWREADY),
        .s_axi_awregion(v_frmbuf_wr_0_m_axi_mm_video_AWREGION),
        .s_axi_awsize(v_frmbuf_wr_0_m_axi_mm_video_AWSIZE),
        .s_axi_awvalid(v_frmbuf_wr_0_m_axi_mm_video_AWVALID),
        .s_axi_bready(v_frmbuf_wr_0_m_axi_mm_video_BREADY),
        .s_axi_bresp(v_frmbuf_wr_0_m_axi_mm_video_BRESP),
        .s_axi_bvalid(v_frmbuf_wr_0_m_axi_mm_video_BVALID),
        .s_axi_rdata(v_frmbuf_wr_0_m_axi_mm_video_RDATA),
        .s_axi_rlast(v_frmbuf_wr_0_m_axi_mm_video_RLAST),
        .s_axi_rready(v_frmbuf_wr_0_m_axi_mm_video_RREADY),
        .s_axi_rresp(v_frmbuf_wr_0_m_axi_mm_video_RRESP),
        .s_axi_rvalid(v_frmbuf_wr_0_m_axi_mm_video_RVALID),
        .s_axi_wdata(v_frmbuf_wr_0_m_axi_mm_video_WDATA),
        .s_axi_wlast(v_frmbuf_wr_0_m_axi_mm_video_WLAST),
        .s_axi_wready(v_frmbuf_wr_0_m_axi_mm_video_WREADY),
        .s_axi_wstrb(v_frmbuf_wr_0_m_axi_mm_video_WSTRB),
        .s_axi_wvalid(v_frmbuf_wr_0_m_axi_mm_video_WVALID));
  design_1_axi_register_slice_4_0 axi_register_slice_4
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_register_slice_4_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_4_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_4_M_AXI_ARCACHE),
        .m_axi_arid(axi_register_slice_4_M_AXI_ARID),
        .m_axi_arlen(axi_register_slice_4_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_4_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_4_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_4_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_4_M_AXI_ARREADY),
        .m_axi_arsize(axi_register_slice_4_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_4_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_4_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_4_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_4_M_AXI_AWCACHE),
        .m_axi_awid(axi_register_slice_4_M_AXI_AWID),
        .m_axi_awlen(axi_register_slice_4_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_4_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_4_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_4_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_4_M_AXI_AWREADY),
        .m_axi_awsize(axi_register_slice_4_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_4_M_AXI_AWVALID),
        .m_axi_bid(axi_register_slice_4_M_AXI_BID[2:0]),
        .m_axi_bready(axi_register_slice_4_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_4_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_4_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_4_M_AXI_RDATA),
        .m_axi_rid(axi_register_slice_4_M_AXI_RID[2:0]),
        .m_axi_rlast(axi_register_slice_4_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_4_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_4_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_4_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_4_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_4_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_4_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_4_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_4_M_AXI_WVALID),
        .s_axi_araddr(vcu_0_M_AXI_MCU_ARADDR),
        .s_axi_arburst(vcu_0_M_AXI_MCU_ARBURST),
        .s_axi_arcache(vcu_0_M_AXI_MCU_ARCACHE),
        .s_axi_arid(vcu_0_M_AXI_MCU_ARID),
        .s_axi_arlen(vcu_0_M_AXI_MCU_ARLEN),
        .s_axi_arlock(vcu_0_M_AXI_MCU_ARLOCK),
        .s_axi_arprot(vcu_0_M_AXI_MCU_ARPROT),
        .s_axi_arqos(vcu_0_M_AXI_MCU_ARQOS),
        .s_axi_arready(vcu_0_M_AXI_MCU_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(vcu_0_M_AXI_MCU_ARSIZE),
        .s_axi_arvalid(vcu_0_M_AXI_MCU_ARVALID),
        .s_axi_awaddr(vcu_0_M_AXI_MCU_AWADDR),
        .s_axi_awburst(vcu_0_M_AXI_MCU_AWBURST),
        .s_axi_awcache(vcu_0_M_AXI_MCU_AWCACHE),
        .s_axi_awid(vcu_0_M_AXI_MCU_AWID),
        .s_axi_awlen(vcu_0_M_AXI_MCU_AWLEN),
        .s_axi_awlock(vcu_0_M_AXI_MCU_AWLOCK),
        .s_axi_awprot(vcu_0_M_AXI_MCU_AWPROT),
        .s_axi_awqos(vcu_0_M_AXI_MCU_AWQOS),
        .s_axi_awready(vcu_0_M_AXI_MCU_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(vcu_0_M_AXI_MCU_AWSIZE),
        .s_axi_awvalid(vcu_0_M_AXI_MCU_AWVALID),
        .s_axi_bid(vcu_0_M_AXI_MCU_BID),
        .s_axi_bready(vcu_0_M_AXI_MCU_BREADY),
        .s_axi_bresp(vcu_0_M_AXI_MCU_BRESP),
        .s_axi_bvalid(vcu_0_M_AXI_MCU_BVALID),
        .s_axi_rdata(vcu_0_M_AXI_MCU_RDATA),
        .s_axi_rid(vcu_0_M_AXI_MCU_RID),
        .s_axi_rlast(vcu_0_M_AXI_MCU_RLAST),
        .s_axi_rready(vcu_0_M_AXI_MCU_RREADY),
        .s_axi_rresp(vcu_0_M_AXI_MCU_RRESP),
        .s_axi_rvalid(vcu_0_M_AXI_MCU_RVALID),
        .s_axi_wdata(vcu_0_M_AXI_MCU_WDATA),
        .s_axi_wlast(vcu_0_M_AXI_MCU_WLAST),
        .s_axi_wready(vcu_0_M_AXI_MCU_WREADY),
        .s_axi_wstrb(vcu_0_M_AXI_MCU_WSTRB),
        .s_axi_wvalid(vcu_0_M_AXI_MCU_WVALID));
  design_1_axis_data_fifo_0_1 axis_data_fifo_0
       (.m_axis_aclk(clk_wiz_0_clk_out2),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axis_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axis_tdata(YUV_2xy_scaler_0_m_axis_TDATA),
        .s_axis_tlast(YUV_2xy_scaler_0_m_axis_TLAST),
        .s_axis_tready(YUV_2xy_scaler_0_m_axis_TREADY),
        .s_axis_tuser(YUV_2xy_scaler_0_m_axis_TUSER),
        .s_axis_tvalid(YUV_2xy_scaler_0_m_axis_TVALID));
  design_1_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_0_m_axis_tdata),
        .m_axis_tlast(axis_dwidth_converter_0_m_axis_tlast),
        .m_axis_tready(v_tpg_0_s_axis_video_TREADY),
        .m_axis_tuser(axis_dwidth_converter_0_m_axis_tuser),
        .m_axis_tvalid(axis_dwidth_converter_0_m_axis_tvalid),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axis_data_fifo_0_M_AXIS_TUSER}),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  design_1_clk_wiz_1_0 clk_wiz_1
       (.clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_out1(clk_wiz_1_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .clk_out3(zynq_ultra_ps_e_0_pl_clk0),
        .locked(clk_wiz_1_locked),
        .resetn(resetn_0_1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  design_1_rgb2YCbCr_0_0 rgb2YCbCr_0
       (.clk_in(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(v_vid_in_axi4s_0_video_out_TDATA),
        .reset(rst_ps8_0_99M_peripheral_reset),
        .rlast(v_vid_in_axi4s_0_video_out_TLAST),
        .rready(v_vid_in_axi4s_0_video_out_TREADY),
        .ruser(v_vid_in_axi4s_0_video_out_TUSER),
        .rvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .tdata(rgb2YCbCr_0_interface_axis_TDATA),
        .tlast(rgb2YCbCr_0_interface_axis_TLAST),
        .tready(rgb2YCbCr_0_interface_axis_TREADY),
        .tuser(rgb2YCbCr_0_interface_axis_TUSER),
        .tvalid(rgb2YCbCr_0_interface_axis_TVALID));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_99M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .peripheral_reset(rst_ps8_0_99M_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .SLOT_0_AXIS_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .SLOT_0_AXIS_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .SLOT_0_AXIS_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .SLOT_0_AXIS_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .SLOT_1_AXIS_tdata(rgb2YCbCr_0_interface_axis_TDATA),
        .SLOT_1_AXIS_tlast(rgb2YCbCr_0_interface_axis_TLAST),
        .SLOT_1_AXIS_tready(rgb2YCbCr_0_interface_axis_TREADY),
        .SLOT_1_AXIS_tuser(rgb2YCbCr_0_interface_axis_TUSER),
        .SLOT_1_AXIS_tvalid(rgb2YCbCr_0_interface_axis_TVALID),
        .SLOT_2_AXIS_tdata(YUV_2xy_scaler_0_m_axis_TDATA),
        .SLOT_2_AXIS_tlast(YUV_2xy_scaler_0_m_axis_TLAST),
        .SLOT_2_AXIS_tready(YUV_2xy_scaler_0_m_axis_TREADY),
        .SLOT_2_AXIS_tuser(YUV_2xy_scaler_0_m_axis_TUSER),
        .SLOT_2_AXIS_tvalid(YUV_2xy_scaler_0_m_axis_TVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_1_system_ila_1_0 system_ila_1
       (.SLOT_0_AXI_araddr(v_frmbuf_wr_0_m_axi_mm_video_ARADDR),
        .SLOT_0_AXI_arcache(v_frmbuf_wr_0_m_axi_mm_video_ARCACHE),
        .SLOT_0_AXI_arlen(v_frmbuf_wr_0_m_axi_mm_video_ARLEN),
        .SLOT_0_AXI_arlock(v_frmbuf_wr_0_m_axi_mm_video_ARLOCK[0]),
        .SLOT_0_AXI_arprot(v_frmbuf_wr_0_m_axi_mm_video_ARPROT),
        .SLOT_0_AXI_arqos(v_frmbuf_wr_0_m_axi_mm_video_ARQOS),
        .SLOT_0_AXI_arready(v_frmbuf_wr_0_m_axi_mm_video_ARREADY),
        .SLOT_0_AXI_arregion(v_frmbuf_wr_0_m_axi_mm_video_ARREGION),
        .SLOT_0_AXI_arsize(v_frmbuf_wr_0_m_axi_mm_video_ARSIZE),
        .SLOT_0_AXI_arvalid(v_frmbuf_wr_0_m_axi_mm_video_ARVALID),
        .SLOT_0_AXI_awaddr(v_frmbuf_wr_0_m_axi_mm_video_AWADDR),
        .SLOT_0_AXI_awcache(v_frmbuf_wr_0_m_axi_mm_video_AWCACHE),
        .SLOT_0_AXI_awlen(v_frmbuf_wr_0_m_axi_mm_video_AWLEN),
        .SLOT_0_AXI_awlock(v_frmbuf_wr_0_m_axi_mm_video_AWLOCK[0]),
        .SLOT_0_AXI_awprot(v_frmbuf_wr_0_m_axi_mm_video_AWPROT),
        .SLOT_0_AXI_awqos(v_frmbuf_wr_0_m_axi_mm_video_AWQOS),
        .SLOT_0_AXI_awready(v_frmbuf_wr_0_m_axi_mm_video_AWREADY),
        .SLOT_0_AXI_awregion(v_frmbuf_wr_0_m_axi_mm_video_AWREGION),
        .SLOT_0_AXI_awsize(v_frmbuf_wr_0_m_axi_mm_video_AWSIZE),
        .SLOT_0_AXI_awvalid(v_frmbuf_wr_0_m_axi_mm_video_AWVALID),
        .SLOT_0_AXI_bready(v_frmbuf_wr_0_m_axi_mm_video_BREADY),
        .SLOT_0_AXI_bresp(v_frmbuf_wr_0_m_axi_mm_video_BRESP),
        .SLOT_0_AXI_bvalid(v_frmbuf_wr_0_m_axi_mm_video_BVALID),
        .SLOT_0_AXI_rdata(v_frmbuf_wr_0_m_axi_mm_video_RDATA),
        .SLOT_0_AXI_rlast(v_frmbuf_wr_0_m_axi_mm_video_RLAST),
        .SLOT_0_AXI_rready(v_frmbuf_wr_0_m_axi_mm_video_RREADY),
        .SLOT_0_AXI_rresp(v_frmbuf_wr_0_m_axi_mm_video_RRESP),
        .SLOT_0_AXI_rvalid(v_frmbuf_wr_0_m_axi_mm_video_RVALID),
        .SLOT_0_AXI_wdata(v_frmbuf_wr_0_m_axi_mm_video_WDATA),
        .SLOT_0_AXI_wlast(v_frmbuf_wr_0_m_axi_mm_video_WLAST),
        .SLOT_0_AXI_wready(v_frmbuf_wr_0_m_axi_mm_video_WREADY),
        .SLOT_0_AXI_wstrb(v_frmbuf_wr_0_m_axi_mm_video_WSTRB),
        .SLOT_0_AXI_wvalid(v_frmbuf_wr_0_m_axi_mm_video_WVALID),
        .SLOT_1_AXIS_tdata(v_tpg_0_m_axis_video_TDATA),
        .SLOT_1_AXIS_tdest(v_tpg_0_m_axis_video_TDEST),
        .SLOT_1_AXIS_tid(v_tpg_0_m_axis_video_TID),
        .SLOT_1_AXIS_tkeep(v_tpg_0_m_axis_video_TKEEP),
        .SLOT_1_AXIS_tlast(v_tpg_0_m_axis_video_TLAST),
        .SLOT_1_AXIS_tready(v_tpg_0_m_axis_video_TREADY),
        .SLOT_1_AXIS_tstrb(v_tpg_0_m_axis_video_TSTRB),
        .SLOT_1_AXIS_tuser(v_tpg_0_m_axis_video_TUSER),
        .SLOT_1_AXIS_tvalid(v_tpg_0_m_axis_video_TVALID),
        .SLOT_2_AXIS_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .SLOT_2_AXIS_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .SLOT_2_AXIS_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .SLOT_2_AXIS_tuser(axis_data_fifo_0_M_AXIS_TUSER),
        .SLOT_2_AXIS_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .clk(clk_wiz_0_clk_out2),
        .probe0(axis_dwidth_converter_0_m_axis_tlast),
        .probe1(axis_dwidth_converter_0_m_axis_tuser),
        .probe2(axis_dwidth_converter_0_m_axis_tvalid),
        .probe3(v_tpg_0_s_axis_video_TREADY),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk_wiz_1_locked),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(zynq_ultra_ps_e_0_pl_resetn1),
        .Op2(vio_0_probe_out0),
        .Res(zynq_ultra_ps_e_0_pl_resetn0));
  design_1_v_frmbuf_wr_0_0 v_frmbuf_wr_0
       (.ap_clk(clk_wiz_0_clk_out2),
        .ap_rst_n(xlslice_1_Dout),
        .interrupt(v_frmbuf_wr_0_interrupt),
        .m_axi_mm_video_ARADDR(v_frmbuf_wr_0_m_axi_mm_video_ARADDR),
        .m_axi_mm_video_ARBURST(v_frmbuf_wr_0_m_axi_mm_video_ARBURST),
        .m_axi_mm_video_ARCACHE(v_frmbuf_wr_0_m_axi_mm_video_ARCACHE),
        .m_axi_mm_video_ARLEN(v_frmbuf_wr_0_m_axi_mm_video_ARLEN),
        .m_axi_mm_video_ARLOCK(v_frmbuf_wr_0_m_axi_mm_video_ARLOCK),
        .m_axi_mm_video_ARPROT(v_frmbuf_wr_0_m_axi_mm_video_ARPROT),
        .m_axi_mm_video_ARQOS(v_frmbuf_wr_0_m_axi_mm_video_ARQOS),
        .m_axi_mm_video_ARREADY(v_frmbuf_wr_0_m_axi_mm_video_ARREADY),
        .m_axi_mm_video_ARREGION(v_frmbuf_wr_0_m_axi_mm_video_ARREGION),
        .m_axi_mm_video_ARSIZE(v_frmbuf_wr_0_m_axi_mm_video_ARSIZE),
        .m_axi_mm_video_ARVALID(v_frmbuf_wr_0_m_axi_mm_video_ARVALID),
        .m_axi_mm_video_AWADDR(v_frmbuf_wr_0_m_axi_mm_video_AWADDR),
        .m_axi_mm_video_AWBURST(v_frmbuf_wr_0_m_axi_mm_video_AWBURST),
        .m_axi_mm_video_AWCACHE(v_frmbuf_wr_0_m_axi_mm_video_AWCACHE),
        .m_axi_mm_video_AWLEN(v_frmbuf_wr_0_m_axi_mm_video_AWLEN),
        .m_axi_mm_video_AWLOCK(v_frmbuf_wr_0_m_axi_mm_video_AWLOCK),
        .m_axi_mm_video_AWPROT(v_frmbuf_wr_0_m_axi_mm_video_AWPROT),
        .m_axi_mm_video_AWQOS(v_frmbuf_wr_0_m_axi_mm_video_AWQOS),
        .m_axi_mm_video_AWREADY(v_frmbuf_wr_0_m_axi_mm_video_AWREADY),
        .m_axi_mm_video_AWREGION(v_frmbuf_wr_0_m_axi_mm_video_AWREGION),
        .m_axi_mm_video_AWSIZE(v_frmbuf_wr_0_m_axi_mm_video_AWSIZE),
        .m_axi_mm_video_AWVALID(v_frmbuf_wr_0_m_axi_mm_video_AWVALID),
        .m_axi_mm_video_BREADY(v_frmbuf_wr_0_m_axi_mm_video_BREADY),
        .m_axi_mm_video_BRESP(v_frmbuf_wr_0_m_axi_mm_video_BRESP),
        .m_axi_mm_video_BVALID(v_frmbuf_wr_0_m_axi_mm_video_BVALID),
        .m_axi_mm_video_RDATA(v_frmbuf_wr_0_m_axi_mm_video_RDATA),
        .m_axi_mm_video_RLAST(v_frmbuf_wr_0_m_axi_mm_video_RLAST),
        .m_axi_mm_video_RREADY(v_frmbuf_wr_0_m_axi_mm_video_RREADY),
        .m_axi_mm_video_RRESP(v_frmbuf_wr_0_m_axi_mm_video_RRESP),
        .m_axi_mm_video_RVALID(v_frmbuf_wr_0_m_axi_mm_video_RVALID),
        .m_axi_mm_video_WDATA(v_frmbuf_wr_0_m_axi_mm_video_WDATA),
        .m_axi_mm_video_WLAST(v_frmbuf_wr_0_m_axi_mm_video_WLAST),
        .m_axi_mm_video_WREADY(v_frmbuf_wr_0_m_axi_mm_video_WREADY),
        .m_axi_mm_video_WSTRB(v_frmbuf_wr_0_m_axi_mm_video_WSTRB),
        .m_axi_mm_video_WVALID(v_frmbuf_wr_0_m_axi_mm_video_WVALID),
        .s_axi_CTRL_ARADDR(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_CTRL_BREADY(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_CTRL_BRESP(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_CTRL_BVALID(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_CTRL_RDATA(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_CTRL_RREADY(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_CTRL_RRESP(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_CTRL_RVALID(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_CTRL_WDATA(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_CTRL_WREADY(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_CTRL_WSTRB(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_CTRL_WVALID(axi_interconnect_0_M01_AXI_WVALID),
        .s_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .s_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .s_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .s_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .s_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .s_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .s_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .s_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .s_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID));
  design_1_v_tpg_0_0 v_tpg_0
       (.ap_clk(clk_wiz_0_clk_out2),
        .ap_rst_n(xlslice_2_Dout),
        .fid_in(1'b1),
        .interrupt(v_tpg_0_interrupt),
        .m_axis_video_TDATA(v_tpg_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(v_tpg_0_m_axis_video_TDEST),
        .m_axis_video_TID(v_tpg_0_m_axis_video_TID),
        .m_axis_video_TKEEP(v_tpg_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(v_tpg_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(v_tpg_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(v_tpg_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(v_tpg_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(v_tpg_0_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(axi_interconnect_0_M02_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(axi_interconnect_0_M02_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_CTRL_BREADY(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_CTRL_BRESP(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_CTRL_BVALID(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_CTRL_RDATA(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_CTRL_RREADY(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_CTRL_RRESP(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_CTRL_RVALID(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_CTRL_WDATA(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_CTRL_WREADY(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_CTRL_WSTRB(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_CTRL_WVALID(axi_interconnect_0_M02_AXI_WVALID),
        .s_axis_video_TDATA(xlconcat_1_dout),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TLAST(axis_dwidth_converter_0_m_axis_tlast),
        .s_axis_video_TREADY(v_tpg_0_s_axis_video_TREADY),
        .s_axis_video_TSTRB({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_video_TUSER(axis_dwidth_converter_0_m_axis_tuser[0]),
        .s_axis_video_TVALID(axis_dwidth_converter_0_m_axis_tvalid));
  design_1_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aclken(xlconstant_1_dout),
        .aresetn(xlconstant_1_dout),
        .axis_enable(vio_0_probe_out1),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(hdmi_in_de_1),
        .vid_data(hdmi_in_data_1),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(hdmi_in_hs_1),
        .vid_io_in_ce(xlconstant_1_dout),
        .vid_io_in_clk(hdmi_in_clk_1),
        .vid_io_in_reset(1'b0),
        .vid_vblank(1'b0),
        .vid_vsync(hdmi_in_vs_1));
  design_1_vcu_0_0 vcu_0
       (.m_axi_enc_aclk(clk_wiz_0_clk_out2),
        .m_axi_mcu_aclk(clk_wiz_0_clk_out2),
        .pl_vcu_araddr_axi_lite_apb(axi_interconnect_0_M00_AXI_ARADDR[19:0]),
        .pl_vcu_arprot_axi_lite_apb(axi_interconnect_0_M00_AXI_ARPROT),
        .pl_vcu_arvalid_axi_lite_apb(axi_interconnect_0_M00_AXI_ARVALID),
        .pl_vcu_awaddr_axi_lite_apb(axi_interconnect_0_M00_AXI_AWADDR[19:0]),
        .pl_vcu_awprot_axi_lite_apb(axi_interconnect_0_M00_AXI_AWPROT),
        .pl_vcu_awvalid_axi_lite_apb(axi_interconnect_0_M00_AXI_AWVALID),
        .pl_vcu_bready_axi_lite_apb(axi_interconnect_0_M00_AXI_BREADY),
        .pl_vcu_enc_arready0(vcu_0_M_AXI_ENC0_ARREADY),
        .pl_vcu_enc_arready1(vcu_0_M_AXI_ENC1_ARREADY),
        .pl_vcu_enc_awready0(vcu_0_M_AXI_ENC0_AWREADY),
        .pl_vcu_enc_awready1(vcu_0_M_AXI_ENC1_AWREADY),
        .pl_vcu_enc_bid0(vcu_0_M_AXI_ENC0_BID),
        .pl_vcu_enc_bid1(vcu_0_M_AXI_ENC1_BID),
        .pl_vcu_enc_bresp0(vcu_0_M_AXI_ENC0_BRESP),
        .pl_vcu_enc_bresp1(vcu_0_M_AXI_ENC1_BRESP),
        .pl_vcu_enc_bvalid0(vcu_0_M_AXI_ENC0_BVALID),
        .pl_vcu_enc_bvalid1(vcu_0_M_AXI_ENC1_BVALID),
        .pl_vcu_enc_rdata0(vcu_0_M_AXI_ENC0_RDATA),
        .pl_vcu_enc_rdata1(vcu_0_M_AXI_ENC1_RDATA),
        .pl_vcu_enc_rid0(vcu_0_M_AXI_ENC0_RID),
        .pl_vcu_enc_rid1(vcu_0_M_AXI_ENC1_RID),
        .pl_vcu_enc_rlast0(vcu_0_M_AXI_ENC0_RLAST),
        .pl_vcu_enc_rlast1(vcu_0_M_AXI_ENC1_RLAST),
        .pl_vcu_enc_rresp0(vcu_0_M_AXI_ENC0_RRESP),
        .pl_vcu_enc_rresp1(vcu_0_M_AXI_ENC1_RRESP),
        .pl_vcu_enc_rvalid0(vcu_0_M_AXI_ENC0_RVALID),
        .pl_vcu_enc_rvalid1(vcu_0_M_AXI_ENC1_RVALID),
        .pl_vcu_enc_wready0(vcu_0_M_AXI_ENC0_WREADY),
        .pl_vcu_enc_wready1(vcu_0_M_AXI_ENC1_WREADY),
        .pl_vcu_mcu_m_axi_ic_dc_arready(vcu_0_M_AXI_MCU_ARREADY),
        .pl_vcu_mcu_m_axi_ic_dc_awready(vcu_0_M_AXI_MCU_AWREADY),
        .pl_vcu_mcu_m_axi_ic_dc_bid(vcu_0_M_AXI_MCU_BID),
        .pl_vcu_mcu_m_axi_ic_dc_bresp(vcu_0_M_AXI_MCU_BRESP),
        .pl_vcu_mcu_m_axi_ic_dc_bvalid(vcu_0_M_AXI_MCU_BVALID),
        .pl_vcu_mcu_m_axi_ic_dc_rdata(vcu_0_M_AXI_MCU_RDATA),
        .pl_vcu_mcu_m_axi_ic_dc_rid(vcu_0_M_AXI_MCU_RID),
        .pl_vcu_mcu_m_axi_ic_dc_rlast(vcu_0_M_AXI_MCU_RLAST),
        .pl_vcu_mcu_m_axi_ic_dc_rresp(vcu_0_M_AXI_MCU_RRESP),
        .pl_vcu_mcu_m_axi_ic_dc_rvalid(vcu_0_M_AXI_MCU_RVALID),
        .pl_vcu_mcu_m_axi_ic_dc_wready(vcu_0_M_AXI_MCU_WREADY),
        .pl_vcu_rready_axi_lite_apb(axi_interconnect_0_M00_AXI_RREADY),
        .pl_vcu_wdata_axi_lite_apb(axi_interconnect_0_M00_AXI_WDATA),
        .pl_vcu_wstrb_axi_lite_apb(axi_interconnect_0_M00_AXI_WSTRB),
        .pl_vcu_wvalid_axi_lite_apb(axi_interconnect_0_M00_AXI_WVALID),
        .pll_ref_clk(clk_wiz_1_clk_out1),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .vcu_host_interrupt(vcu_0_vcu_host_interrupt),
        .vcu_pl_arready_axi_lite_apb(axi_interconnect_0_M00_AXI_ARREADY),
        .vcu_pl_awready_axi_lite_apb(axi_interconnect_0_M00_AXI_AWREADY),
        .vcu_pl_bresp_axi_lite_apb(axi_interconnect_0_M00_AXI_BRESP),
        .vcu_pl_bvalid_axi_lite_apb(axi_interconnect_0_M00_AXI_BVALID),
        .vcu_pl_enc_araddr0(vcu_0_M_AXI_ENC0_ARADDR),
        .vcu_pl_enc_araddr1(vcu_0_M_AXI_ENC1_ARADDR),
        .vcu_pl_enc_arburst0(vcu_0_M_AXI_ENC0_ARBURST),
        .vcu_pl_enc_arburst1(vcu_0_M_AXI_ENC1_ARBURST),
        .vcu_pl_enc_arcache0(vcu_0_M_AXI_ENC0_ARCACHE),
        .vcu_pl_enc_arcache1(vcu_0_M_AXI_ENC1_ARCACHE),
        .vcu_pl_enc_arid0(vcu_0_M_AXI_ENC0_ARID),
        .vcu_pl_enc_arid1(vcu_0_M_AXI_ENC1_ARID),
        .vcu_pl_enc_arlen0(vcu_0_M_AXI_ENC0_ARLEN),
        .vcu_pl_enc_arlen1(vcu_0_M_AXI_ENC1_ARLEN),
        .vcu_pl_enc_arlock0(vcu_0_M_AXI_ENC0_ARLOCK),
        .vcu_pl_enc_arlock1(vcu_0_M_AXI_ENC1_ARLOCK),
        .vcu_pl_enc_arprot0(vcu_0_M_AXI_ENC0_ARPROT),
        .vcu_pl_enc_arprot1(vcu_0_M_AXI_ENC1_ARPROT),
        .vcu_pl_enc_arqos0(vcu_0_M_AXI_ENC0_ARQOS),
        .vcu_pl_enc_arqos1(vcu_0_M_AXI_ENC1_ARQOS),
        .vcu_pl_enc_arregion0(vcu_0_M_AXI_ENC0_ARREGION),
        .vcu_pl_enc_arregion1(vcu_0_M_AXI_ENC1_ARREGION),
        .vcu_pl_enc_arsize0(vcu_0_M_AXI_ENC0_ARSIZE),
        .vcu_pl_enc_arsize1(vcu_0_M_AXI_ENC1_ARSIZE),
        .vcu_pl_enc_arvalid0(vcu_0_M_AXI_ENC0_ARVALID),
        .vcu_pl_enc_arvalid1(vcu_0_M_AXI_ENC1_ARVALID),
        .vcu_pl_enc_awaddr0(vcu_0_M_AXI_ENC0_AWADDR),
        .vcu_pl_enc_awaddr1(vcu_0_M_AXI_ENC1_AWADDR),
        .vcu_pl_enc_awburst0(vcu_0_M_AXI_ENC0_AWBURST),
        .vcu_pl_enc_awburst1(vcu_0_M_AXI_ENC1_AWBURST),
        .vcu_pl_enc_awcache0(vcu_0_M_AXI_ENC0_AWCACHE),
        .vcu_pl_enc_awcache1(vcu_0_M_AXI_ENC1_AWCACHE),
        .vcu_pl_enc_awid0(vcu_0_M_AXI_ENC0_AWID),
        .vcu_pl_enc_awid1(vcu_0_M_AXI_ENC1_AWID),
        .vcu_pl_enc_awlen0(vcu_0_M_AXI_ENC0_AWLEN),
        .vcu_pl_enc_awlen1(vcu_0_M_AXI_ENC1_AWLEN),
        .vcu_pl_enc_awlock0(vcu_0_M_AXI_ENC0_AWLOCK),
        .vcu_pl_enc_awlock1(vcu_0_M_AXI_ENC1_AWLOCK),
        .vcu_pl_enc_awprot0(vcu_0_M_AXI_ENC0_AWPROT),
        .vcu_pl_enc_awprot1(vcu_0_M_AXI_ENC1_AWPROT),
        .vcu_pl_enc_awqos0(vcu_0_M_AXI_ENC0_AWQOS),
        .vcu_pl_enc_awqos1(vcu_0_M_AXI_ENC1_AWQOS),
        .vcu_pl_enc_awregion0(vcu_0_M_AXI_ENC0_AWREGION),
        .vcu_pl_enc_awregion1(vcu_0_M_AXI_ENC1_AWREGION),
        .vcu_pl_enc_awsize0(vcu_0_M_AXI_ENC0_AWSIZE),
        .vcu_pl_enc_awsize1(vcu_0_M_AXI_ENC1_AWSIZE),
        .vcu_pl_enc_awvalid0(vcu_0_M_AXI_ENC0_AWVALID),
        .vcu_pl_enc_awvalid1(vcu_0_M_AXI_ENC1_AWVALID),
        .vcu_pl_enc_bready0(vcu_0_M_AXI_ENC0_BREADY),
        .vcu_pl_enc_bready1(vcu_0_M_AXI_ENC1_BREADY),
        .vcu_pl_enc_rready0(vcu_0_M_AXI_ENC0_RREADY),
        .vcu_pl_enc_rready1(vcu_0_M_AXI_ENC1_RREADY),
        .vcu_pl_enc_wdata0(vcu_0_M_AXI_ENC0_WDATA),
        .vcu_pl_enc_wdata1(vcu_0_M_AXI_ENC1_WDATA),
        .vcu_pl_enc_wlast0(vcu_0_M_AXI_ENC0_WLAST),
        .vcu_pl_enc_wlast1(vcu_0_M_AXI_ENC1_WLAST),
        .vcu_pl_enc_wstrb0(vcu_0_M_AXI_ENC0_WSTRB),
        .vcu_pl_enc_wstrb1(vcu_0_M_AXI_ENC1_WSTRB),
        .vcu_pl_enc_wvalid0(vcu_0_M_AXI_ENC0_WVALID),
        .vcu_pl_enc_wvalid1(vcu_0_M_AXI_ENC1_WVALID),
        .vcu_pl_mcu_m_axi_ic_dc_araddr(vcu_0_M_AXI_MCU_ARADDR),
        .vcu_pl_mcu_m_axi_ic_dc_arburst(vcu_0_M_AXI_MCU_ARBURST),
        .vcu_pl_mcu_m_axi_ic_dc_arcache(vcu_0_M_AXI_MCU_ARCACHE),
        .vcu_pl_mcu_m_axi_ic_dc_arid(vcu_0_M_AXI_MCU_ARID),
        .vcu_pl_mcu_m_axi_ic_dc_arlen(vcu_0_M_AXI_MCU_ARLEN),
        .vcu_pl_mcu_m_axi_ic_dc_arlock(vcu_0_M_AXI_MCU_ARLOCK),
        .vcu_pl_mcu_m_axi_ic_dc_arprot(vcu_0_M_AXI_MCU_ARPROT),
        .vcu_pl_mcu_m_axi_ic_dc_arqos(vcu_0_M_AXI_MCU_ARQOS),
        .vcu_pl_mcu_m_axi_ic_dc_arsize(vcu_0_M_AXI_MCU_ARSIZE),
        .vcu_pl_mcu_m_axi_ic_dc_arvalid(vcu_0_M_AXI_MCU_ARVALID),
        .vcu_pl_mcu_m_axi_ic_dc_awaddr(vcu_0_M_AXI_MCU_AWADDR),
        .vcu_pl_mcu_m_axi_ic_dc_awburst(vcu_0_M_AXI_MCU_AWBURST),
        .vcu_pl_mcu_m_axi_ic_dc_awcache(vcu_0_M_AXI_MCU_AWCACHE),
        .vcu_pl_mcu_m_axi_ic_dc_awid(vcu_0_M_AXI_MCU_AWID),
        .vcu_pl_mcu_m_axi_ic_dc_awlen(vcu_0_M_AXI_MCU_AWLEN),
        .vcu_pl_mcu_m_axi_ic_dc_awlock(vcu_0_M_AXI_MCU_AWLOCK),
        .vcu_pl_mcu_m_axi_ic_dc_awprot(vcu_0_M_AXI_MCU_AWPROT),
        .vcu_pl_mcu_m_axi_ic_dc_awqos(vcu_0_M_AXI_MCU_AWQOS),
        .vcu_pl_mcu_m_axi_ic_dc_awsize(vcu_0_M_AXI_MCU_AWSIZE),
        .vcu_pl_mcu_m_axi_ic_dc_awvalid(vcu_0_M_AXI_MCU_AWVALID),
        .vcu_pl_mcu_m_axi_ic_dc_bready(vcu_0_M_AXI_MCU_BREADY),
        .vcu_pl_mcu_m_axi_ic_dc_rready(vcu_0_M_AXI_MCU_RREADY),
        .vcu_pl_mcu_m_axi_ic_dc_wdata(vcu_0_M_AXI_MCU_WDATA),
        .vcu_pl_mcu_m_axi_ic_dc_wlast(vcu_0_M_AXI_MCU_WLAST),
        .vcu_pl_mcu_m_axi_ic_dc_wstrb(vcu_0_M_AXI_MCU_WSTRB),
        .vcu_pl_mcu_m_axi_ic_dc_wvalid(vcu_0_M_AXI_MCU_WVALID),
        .vcu_pl_rdata_axi_lite_apb(axi_interconnect_0_M00_AXI_RDATA),
        .vcu_pl_rresp_axi_lite_apb(axi_interconnect_0_M00_AXI_RRESP),
        .vcu_pl_rvalid_axi_lite_apb(axi_interconnect_0_M00_AXI_RVALID),
        .vcu_pl_wready_axi_lite_apb(axi_interconnect_0_M00_AXI_WREADY),
        .vcu_resetn(xlslice_0_Dout));
  design_1_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_0_pl_clk1),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(vcu_0_vcu_host_interrupt),
        .In1(v_frmbuf_wr_0_interrupt),
        .In2(v_tpg_0_interrupt),
        .dout(xlconcat_0_dout));
  design_1_xlconcat_1_1 xlconcat_1
       (.In0(axis_dwidth_converter_0_m_axis_tdata),
        .In1(xlconstant_2_dout),
        .dout(xlconcat_1_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_1 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(zynq_ultra_ps_e_0_emio_gpio_o),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_1_0 xlslice_1
       (.Din(zynq_ultra_ps_e_0_emio_gpio_o),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_2_0 xlslice_2
       (.Din(zynq_ultra_ps_e_0_emio_gpio_o),
        .Dout(xlslice_2_Dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_gpio_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .emio_gpio_o(zynq_ultra_ps_e_0_emio_gpio_o),
        .emio_i2c0_scl_i(zynq_ultra_ps_e_0_IIC_0_SCL_I),
        .emio_i2c0_scl_o(zynq_ultra_ps_e_0_IIC_0_SCL_O),
        .emio_i2c0_scl_t(zynq_ultra_ps_e_0_IIC_0_SCL_T),
        .emio_i2c0_sda_i(zynq_ultra_ps_e_0_IIC_0_SDA_I),
        .emio_i2c0_sda_o(zynq_ultra_ps_e_0_IIC_0_SDA_O),
        .emio_i2c0_sda_t(zynq_ultra_ps_e_0_IIC_0_SDA_T),
        .emio_i2c1_scl_i(zynq_ultra_ps_e_0_IIC_1_SCL_I),
        .emio_i2c1_scl_o(zynq_ultra_ps_e_0_IIC_1_SCL_O),
        .emio_i2c1_scl_t(zynq_ultra_ps_e_0_IIC_1_SCL_T),
        .emio_i2c1_sda_i(zynq_ultra_ps_e_0_IIC_1_SDA_I),
        .emio_i2c1_sda_o(zynq_ultra_ps_e_0_IIC_1_SDA_O),
        .emio_i2c1_sda_t(zynq_ultra_ps_e_0_IIC_1_SDA_T),
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk1),
        .pl_ps_irq0(xlconcat_0_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn1),
        .saxigp0_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_4_M_AXI_ARADDR}),
        .saxigp0_arburst(axi_register_slice_4_M_AXI_ARBURST),
        .saxigp0_arcache(axi_register_slice_4_M_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,axi_register_slice_4_M_AXI_ARID}),
        .saxigp0_arlen(axi_register_slice_4_M_AXI_ARLEN),
        .saxigp0_arlock(axi_register_slice_4_M_AXI_ARLOCK),
        .saxigp0_arprot(axi_register_slice_4_M_AXI_ARPROT),
        .saxigp0_arqos(axi_register_slice_4_M_AXI_ARQOS),
        .saxigp0_arready(axi_register_slice_4_M_AXI_ARREADY),
        .saxigp0_arsize(axi_register_slice_4_M_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_register_slice_4_M_AXI_ARVALID),
        .saxigp0_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_4_M_AXI_AWADDR}),
        .saxigp0_awburst(axi_register_slice_4_M_AXI_AWBURST),
        .saxigp0_awcache(axi_register_slice_4_M_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,axi_register_slice_4_M_AXI_AWID}),
        .saxigp0_awlen(axi_register_slice_4_M_AXI_AWLEN),
        .saxigp0_awlock(axi_register_slice_4_M_AXI_AWLOCK),
        .saxigp0_awprot(axi_register_slice_4_M_AXI_AWPROT),
        .saxigp0_awqos(axi_register_slice_4_M_AXI_AWQOS),
        .saxigp0_awready(axi_register_slice_4_M_AXI_AWREADY),
        .saxigp0_awsize(axi_register_slice_4_M_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_register_slice_4_M_AXI_AWVALID),
        .saxigp0_bid(axi_register_slice_4_M_AXI_BID),
        .saxigp0_bready(axi_register_slice_4_M_AXI_BREADY),
        .saxigp0_bresp(axi_register_slice_4_M_AXI_BRESP),
        .saxigp0_bvalid(axi_register_slice_4_M_AXI_BVALID),
        .saxigp0_rdata(axi_register_slice_4_M_AXI_RDATA),
        .saxigp0_rid(axi_register_slice_4_M_AXI_RID),
        .saxigp0_rlast(axi_register_slice_4_M_AXI_RLAST),
        .saxigp0_rready(axi_register_slice_4_M_AXI_RREADY),
        .saxigp0_rresp(axi_register_slice_4_M_AXI_RRESP),
        .saxigp0_rvalid(axi_register_slice_4_M_AXI_RVALID),
        .saxigp0_wdata(axi_register_slice_4_M_AXI_WDATA),
        .saxigp0_wlast(axi_register_slice_4_M_AXI_WLAST),
        .saxigp0_wready(axi_register_slice_4_M_AXI_WREADY),
        .saxigp0_wstrb(axi_register_slice_4_M_AXI_WSTRB),
        .saxigp0_wvalid(axi_register_slice_4_M_AXI_WVALID),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_0_M_AXI_ARADDR}),
        .saxigp2_arburst(axi_register_slice_0_M_AXI_ARBURST),
        .saxigp2_arcache(axi_register_slice_0_M_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,axi_register_slice_0_M_AXI_ARID}),
        .saxigp2_arlen(axi_register_slice_0_M_AXI_ARLEN),
        .saxigp2_arlock(axi_register_slice_0_M_AXI_ARLOCK),
        .saxigp2_arprot(axi_register_slice_0_M_AXI_ARPROT),
        .saxigp2_arqos(axi_register_slice_0_M_AXI_ARQOS),
        .saxigp2_arready(axi_register_slice_0_M_AXI_ARREADY),
        .saxigp2_arsize(axi_register_slice_0_M_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_0_M_AXI_AWADDR}),
        .saxigp2_awburst(axi_register_slice_0_M_AXI_AWBURST),
        .saxigp2_awcache(axi_register_slice_0_M_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,axi_register_slice_0_M_AXI_AWID}),
        .saxigp2_awlen(axi_register_slice_0_M_AXI_AWLEN),
        .saxigp2_awlock(axi_register_slice_0_M_AXI_AWLOCK),
        .saxigp2_awprot(axi_register_slice_0_M_AXI_AWPROT),
        .saxigp2_awqos(axi_register_slice_0_M_AXI_AWQOS),
        .saxigp2_awready(axi_register_slice_0_M_AXI_AWREADY),
        .saxigp2_awsize(axi_register_slice_0_M_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .saxigp2_bid(axi_register_slice_0_M_AXI_BID),
        .saxigp2_bready(axi_register_slice_0_M_AXI_BREADY),
        .saxigp2_bresp(axi_register_slice_0_M_AXI_BRESP),
        .saxigp2_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .saxigp2_rdata(axi_register_slice_0_M_AXI_RDATA),
        .saxigp2_rid(axi_register_slice_0_M_AXI_RID),
        .saxigp2_rlast(axi_register_slice_0_M_AXI_RLAST),
        .saxigp2_rready(axi_register_slice_0_M_AXI_RREADY),
        .saxigp2_rresp(axi_register_slice_0_M_AXI_RRESP),
        .saxigp2_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .saxigp2_wdata(axi_register_slice_0_M_AXI_WDATA),
        .saxigp2_wlast(axi_register_slice_0_M_AXI_WLAST),
        .saxigp2_wready(axi_register_slice_0_M_AXI_WREADY),
        .saxigp2_wstrb(axi_register_slice_0_M_AXI_WSTRB),
        .saxigp2_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .saxigp3_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_1_M_AXI_ARADDR}),
        .saxigp3_arburst(axi_register_slice_1_M_AXI_ARBURST),
        .saxigp3_arcache(axi_register_slice_1_M_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,axi_register_slice_1_M_AXI_ARID}),
        .saxigp3_arlen(axi_register_slice_1_M_AXI_ARLEN),
        .saxigp3_arlock(axi_register_slice_1_M_AXI_ARLOCK),
        .saxigp3_arprot(axi_register_slice_1_M_AXI_ARPROT),
        .saxigp3_arqos(axi_register_slice_1_M_AXI_ARQOS),
        .saxigp3_arready(axi_register_slice_1_M_AXI_ARREADY),
        .saxigp3_arsize(axi_register_slice_1_M_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .saxigp3_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_1_M_AXI_AWADDR}),
        .saxigp3_awburst(axi_register_slice_1_M_AXI_AWBURST),
        .saxigp3_awcache(axi_register_slice_1_M_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,axi_register_slice_1_M_AXI_AWID}),
        .saxigp3_awlen(axi_register_slice_1_M_AXI_AWLEN),
        .saxigp3_awlock(axi_register_slice_1_M_AXI_AWLOCK),
        .saxigp3_awprot(axi_register_slice_1_M_AXI_AWPROT),
        .saxigp3_awqos(axi_register_slice_1_M_AXI_AWQOS),
        .saxigp3_awready(axi_register_slice_1_M_AXI_AWREADY),
        .saxigp3_awsize(axi_register_slice_1_M_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .saxigp3_bid(axi_register_slice_1_M_AXI_BID),
        .saxigp3_bready(axi_register_slice_1_M_AXI_BREADY),
        .saxigp3_bresp(axi_register_slice_1_M_AXI_BRESP),
        .saxigp3_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .saxigp3_rdata(axi_register_slice_1_M_AXI_RDATA),
        .saxigp3_rid(axi_register_slice_1_M_AXI_RID),
        .saxigp3_rlast(axi_register_slice_1_M_AXI_RLAST),
        .saxigp3_rready(axi_register_slice_1_M_AXI_RREADY),
        .saxigp3_rresp(axi_register_slice_1_M_AXI_RRESP),
        .saxigp3_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .saxigp3_wdata(axi_register_slice_1_M_AXI_WDATA),
        .saxigp3_wlast(axi_register_slice_1_M_AXI_WLAST),
        .saxigp3_wready(axi_register_slice_1_M_AXI_WREADY),
        .saxigp3_wstrb(axi_register_slice_1_M_AXI_WSTRB),
        .saxigp3_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .saxigp4_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_2_M_AXI_ARADDR}),
        .saxigp4_arburst(axi_register_slice_2_M_AXI_ARBURST),
        .saxigp4_arcache(axi_register_slice_2_M_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen(axi_register_slice_2_M_AXI_ARLEN),
        .saxigp4_arlock(axi_register_slice_2_M_AXI_ARLOCK),
        .saxigp4_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .saxigp4_arqos(axi_register_slice_2_M_AXI_ARQOS),
        .saxigp4_arready(axi_register_slice_2_M_AXI_ARREADY),
        .saxigp4_arsize(axi_register_slice_2_M_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .saxigp4_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_register_slice_2_M_AXI_AWADDR}),
        .saxigp4_awburst(axi_register_slice_2_M_AXI_AWBURST),
        .saxigp4_awcache(axi_register_slice_2_M_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(axi_register_slice_2_M_AXI_AWLEN),
        .saxigp4_awlock(axi_register_slice_2_M_AXI_AWLOCK),
        .saxigp4_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .saxigp4_awqos(axi_register_slice_2_M_AXI_AWQOS),
        .saxigp4_awready(axi_register_slice_2_M_AXI_AWREADY),
        .saxigp4_awsize(axi_register_slice_2_M_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .saxigp4_bready(axi_register_slice_2_M_AXI_BREADY),
        .saxigp4_bresp(axi_register_slice_2_M_AXI_BRESP),
        .saxigp4_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .saxigp4_rdata(axi_register_slice_2_M_AXI_RDATA),
        .saxigp4_rlast(axi_register_slice_2_M_AXI_RLAST),
        .saxigp4_rready(axi_register_slice_2_M_AXI_RREADY),
        .saxigp4_rresp(axi_register_slice_2_M_AXI_RRESP),
        .saxigp4_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .saxigp4_wdata(axi_register_slice_2_M_AXI_WDATA),
        .saxigp4_wlast(axi_register_slice_2_M_AXI_WLAST),
        .saxigp4_wready(axi_register_slice_2_M_AXI_WREADY),
        .saxigp4_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .saxigp4_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .saxihp0_fpd_aclk(clk_wiz_0_clk_out2),
        .saxihp1_fpd_aclk(clk_wiz_0_clk_out2),
        .saxihp2_fpd_aclk(clk_wiz_0_clk_out2),
        .saxihpc0_fpd_aclk(clk_wiz_0_clk_out2));
endmodule

module design_1_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [6:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [7:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [7:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [39:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [15:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [15:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m00_couplers_to_axi_interconnect_0_WVALID;
  wire [6:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [6:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [7:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [7:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[6:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[6:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[7:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[7:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  m00_couplers_imp_1CA5Z32 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_I4GRPB m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1BOGR4T m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_O7FAN0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_1CA5Z32
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_I4GRPB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m01_couplers_ARADDR;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [6:0]auto_cc_to_m01_couplers_AWADDR;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m02_couplers_imp_1BOGR4T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [7:0]auto_cc_to_m02_couplers_ARADDR;
  wire auto_cc_to_m02_couplers_ARREADY;
  wire auto_cc_to_m02_couplers_ARVALID;
  wire [7:0]auto_cc_to_m02_couplers_AWADDR;
  wire auto_cc_to_m02_couplers_AWREADY;
  wire auto_cc_to_m02_couplers_AWVALID;
  wire auto_cc_to_m02_couplers_BREADY;
  wire [1:0]auto_cc_to_m02_couplers_BRESP;
  wire auto_cc_to_m02_couplers_BVALID;
  wire [31:0]auto_cc_to_m02_couplers_RDATA;
  wire auto_cc_to_m02_couplers_RREADY;
  wire [1:0]auto_cc_to_m02_couplers_RRESP;
  wire auto_cc_to_m02_couplers_RVALID;
  wire [31:0]auto_cc_to_m02_couplers_WDATA;
  wire auto_cc_to_m02_couplers_WREADY;
  wire [3:0]auto_cc_to_m02_couplers_WSTRB;
  wire auto_cc_to_m02_couplers_WVALID;
  wire [39:0]m02_couplers_to_auto_cc_ARADDR;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [39:0]m02_couplers_to_auto_cc_AWADDR;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [31:0]m02_couplers_to_auto_cc_RDATA;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [31:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [3:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = auto_cc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_cc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = auto_cc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_cc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  design_1_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m02_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arready(auto_cc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_cc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[7:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[7:0]),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
endmodule

module s00_couplers_imp_O7FAN0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
