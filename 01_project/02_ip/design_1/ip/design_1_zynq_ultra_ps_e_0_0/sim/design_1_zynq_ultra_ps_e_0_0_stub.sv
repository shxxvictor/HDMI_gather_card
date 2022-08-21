// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    design_1_zynq_ultra_ps_e_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (
  input bit_as_bool maxihpm0_lpd_aclk,
  output bit [15 : 0] maxigp2_awid,
  output bit [39 : 0] maxigp2_awaddr,
  output bit [7 : 0] maxigp2_awlen,
  output bit [2 : 0] maxigp2_awsize,
  output bit [1 : 0] maxigp2_awburst,
  output bit_as_bool maxigp2_awlock,
  output bit [3 : 0] maxigp2_awcache,
  output bit [2 : 0] maxigp2_awprot,
  output bit_as_bool maxigp2_awvalid,
  output bit [15 : 0] maxigp2_awuser,
  input bit_as_bool maxigp2_awready,
  output bit [31 : 0] maxigp2_wdata,
  output bit [3 : 0] maxigp2_wstrb,
  output bit_as_bool maxigp2_wlast,
  output bit_as_bool maxigp2_wvalid,
  input bit_as_bool maxigp2_wready,
  input bit [15 : 0] maxigp2_bid,
  input bit [1 : 0] maxigp2_bresp,
  input bit_as_bool maxigp2_bvalid,
  output bit_as_bool maxigp2_bready,
  output bit [15 : 0] maxigp2_arid,
  output bit [39 : 0] maxigp2_araddr,
  output bit [7 : 0] maxigp2_arlen,
  output bit [2 : 0] maxigp2_arsize,
  output bit [1 : 0] maxigp2_arburst,
  output bit_as_bool maxigp2_arlock,
  output bit [3 : 0] maxigp2_arcache,
  output bit [2 : 0] maxigp2_arprot,
  output bit_as_bool maxigp2_arvalid,
  output bit [15 : 0] maxigp2_aruser,
  input bit_as_bool maxigp2_arready,
  input bit [15 : 0] maxigp2_rid,
  input bit [31 : 0] maxigp2_rdata,
  input bit [1 : 0] maxigp2_rresp,
  input bit_as_bool maxigp2_rlast,
  input bit_as_bool maxigp2_rvalid,
  output bit_as_bool maxigp2_rready,
  output bit [3 : 0] maxigp2_awqos,
  output bit [3 : 0] maxigp2_arqos,
  input bit_as_bool saxihpc0_fpd_aclk,
  input bit_as_bool saxigp0_aruser,
  input bit_as_bool saxigp0_awuser,
  input bit [5 : 0] saxigp0_awid,
  input bit [48 : 0] saxigp0_awaddr,
  input bit [7 : 0] saxigp0_awlen,
  input bit [2 : 0] saxigp0_awsize,
  input bit [1 : 0] saxigp0_awburst,
  input bit_as_bool saxigp0_awlock,
  input bit [3 : 0] saxigp0_awcache,
  input bit [2 : 0] saxigp0_awprot,
  input bit_as_bool saxigp0_awvalid,
  output bit_as_bool saxigp0_awready,
  input bit [31 : 0] saxigp0_wdata,
  input bit [3 : 0] saxigp0_wstrb,
  input bit_as_bool saxigp0_wlast,
  input bit_as_bool saxigp0_wvalid,
  output bit_as_bool saxigp0_wready,
  output bit [5 : 0] saxigp0_bid,
  output bit [1 : 0] saxigp0_bresp,
  output bit_as_bool saxigp0_bvalid,
  input bit_as_bool saxigp0_bready,
  input bit [5 : 0] saxigp0_arid,
  input bit [48 : 0] saxigp0_araddr,
  input bit [7 : 0] saxigp0_arlen,
  input bit [2 : 0] saxigp0_arsize,
  input bit [1 : 0] saxigp0_arburst,
  input bit_as_bool saxigp0_arlock,
  input bit [3 : 0] saxigp0_arcache,
  input bit [2 : 0] saxigp0_arprot,
  input bit_as_bool saxigp0_arvalid,
  output bit_as_bool saxigp0_arready,
  output bit [5 : 0] saxigp0_rid,
  output bit [31 : 0] saxigp0_rdata,
  output bit [1 : 0] saxigp0_rresp,
  output bit_as_bool saxigp0_rlast,
  output bit_as_bool saxigp0_rvalid,
  input bit_as_bool saxigp0_rready,
  input bit [3 : 0] saxigp0_awqos,
  input bit [3 : 0] saxigp0_arqos,
  input bit_as_bool saxihp0_fpd_aclk,
  input bit_as_bool saxigp2_aruser,
  input bit_as_bool saxigp2_awuser,
  input bit [5 : 0] saxigp2_awid,
  input bit [48 : 0] saxigp2_awaddr,
  input bit [7 : 0] saxigp2_awlen,
  input bit [2 : 0] saxigp2_awsize,
  input bit [1 : 0] saxigp2_awburst,
  input bit_as_bool saxigp2_awlock,
  input bit [3 : 0] saxigp2_awcache,
  input bit [2 : 0] saxigp2_awprot,
  input bit_as_bool saxigp2_awvalid,
  output bit_as_bool saxigp2_awready,
  input bit [127 : 0] saxigp2_wdata,
  input bit [15 : 0] saxigp2_wstrb,
  input bit_as_bool saxigp2_wlast,
  input bit_as_bool saxigp2_wvalid,
  output bit_as_bool saxigp2_wready,
  output bit [5 : 0] saxigp2_bid,
  output bit [1 : 0] saxigp2_bresp,
  output bit_as_bool saxigp2_bvalid,
  input bit_as_bool saxigp2_bready,
  input bit [5 : 0] saxigp2_arid,
  input bit [48 : 0] saxigp2_araddr,
  input bit [7 : 0] saxigp2_arlen,
  input bit [2 : 0] saxigp2_arsize,
  input bit [1 : 0] saxigp2_arburst,
  input bit_as_bool saxigp2_arlock,
  input bit [3 : 0] saxigp2_arcache,
  input bit [2 : 0] saxigp2_arprot,
  input bit_as_bool saxigp2_arvalid,
  output bit_as_bool saxigp2_arready,
  output bit [5 : 0] saxigp2_rid,
  output bit [127 : 0] saxigp2_rdata,
  output bit [1 : 0] saxigp2_rresp,
  output bit_as_bool saxigp2_rlast,
  output bit_as_bool saxigp2_rvalid,
  input bit_as_bool saxigp2_rready,
  input bit [3 : 0] saxigp2_awqos,
  input bit [3 : 0] saxigp2_arqos,
  input bit_as_bool saxihp1_fpd_aclk,
  input bit_as_bool saxigp3_aruser,
  input bit_as_bool saxigp3_awuser,
  input bit [5 : 0] saxigp3_awid,
  input bit [48 : 0] saxigp3_awaddr,
  input bit [7 : 0] saxigp3_awlen,
  input bit [2 : 0] saxigp3_awsize,
  input bit [1 : 0] saxigp3_awburst,
  input bit_as_bool saxigp3_awlock,
  input bit [3 : 0] saxigp3_awcache,
  input bit [2 : 0] saxigp3_awprot,
  input bit_as_bool saxigp3_awvalid,
  output bit_as_bool saxigp3_awready,
  input bit [127 : 0] saxigp3_wdata,
  input bit [15 : 0] saxigp3_wstrb,
  input bit_as_bool saxigp3_wlast,
  input bit_as_bool saxigp3_wvalid,
  output bit_as_bool saxigp3_wready,
  output bit [5 : 0] saxigp3_bid,
  output bit [1 : 0] saxigp3_bresp,
  output bit_as_bool saxigp3_bvalid,
  input bit_as_bool saxigp3_bready,
  input bit [5 : 0] saxigp3_arid,
  input bit [48 : 0] saxigp3_araddr,
  input bit [7 : 0] saxigp3_arlen,
  input bit [2 : 0] saxigp3_arsize,
  input bit [1 : 0] saxigp3_arburst,
  input bit_as_bool saxigp3_arlock,
  input bit [3 : 0] saxigp3_arcache,
  input bit [2 : 0] saxigp3_arprot,
  input bit_as_bool saxigp3_arvalid,
  output bit_as_bool saxigp3_arready,
  output bit [5 : 0] saxigp3_rid,
  output bit [127 : 0] saxigp3_rdata,
  output bit [1 : 0] saxigp3_rresp,
  output bit_as_bool saxigp3_rlast,
  output bit_as_bool saxigp3_rvalid,
  input bit_as_bool saxigp3_rready,
  input bit [3 : 0] saxigp3_awqos,
  input bit [3 : 0] saxigp3_arqos,
  input bit_as_bool saxihp2_fpd_aclk,
  input bit_as_bool saxigp4_aruser,
  input bit_as_bool saxigp4_awuser,
  input bit [5 : 0] saxigp4_awid,
  input bit [48 : 0] saxigp4_awaddr,
  input bit [7 : 0] saxigp4_awlen,
  input bit [2 : 0] saxigp4_awsize,
  input bit [1 : 0] saxigp4_awburst,
  input bit_as_bool saxigp4_awlock,
  input bit [3 : 0] saxigp4_awcache,
  input bit [2 : 0] saxigp4_awprot,
  input bit_as_bool saxigp4_awvalid,
  output bit_as_bool saxigp4_awready,
  input bit [127 : 0] saxigp4_wdata,
  input bit [15 : 0] saxigp4_wstrb,
  input bit_as_bool saxigp4_wlast,
  input bit_as_bool saxigp4_wvalid,
  output bit_as_bool saxigp4_wready,
  output bit [5 : 0] saxigp4_bid,
  output bit [1 : 0] saxigp4_bresp,
  output bit_as_bool saxigp4_bvalid,
  input bit_as_bool saxigp4_bready,
  input bit [5 : 0] saxigp4_arid,
  input bit [48 : 0] saxigp4_araddr,
  input bit [7 : 0] saxigp4_arlen,
  input bit [2 : 0] saxigp4_arsize,
  input bit [1 : 0] saxigp4_arburst,
  input bit_as_bool saxigp4_arlock,
  input bit [3 : 0] saxigp4_arcache,
  input bit [2 : 0] saxigp4_arprot,
  input bit_as_bool saxigp4_arvalid,
  output bit_as_bool saxigp4_arready,
  output bit [5 : 0] saxigp4_rid,
  output bit [127 : 0] saxigp4_rdata,
  output bit [1 : 0] saxigp4_rresp,
  output bit_as_bool saxigp4_rlast,
  output bit_as_bool saxigp4_rvalid,
  input bit_as_bool saxigp4_rready,
  input bit [3 : 0] saxigp4_awqos,
  input bit [3 : 0] saxigp4_arqos,
  input bit [94 : 0] emio_gpio_i,
  output bit [94 : 0] emio_gpio_o,
  output bit [94 : 0] emio_gpio_t,
  input bit_as_bool emio_i2c0_scl_i,
  output bit_as_bool emio_i2c0_scl_o,
  output bit_as_bool emio_i2c0_scl_t,
  input bit_as_bool emio_i2c0_sda_i,
  output bit_as_bool emio_i2c0_sda_o,
  output bit_as_bool emio_i2c0_sda_t,
  input bit_as_bool emio_i2c1_scl_i,
  output bit_as_bool emio_i2c1_scl_o,
  output bit_as_bool emio_i2c1_scl_t,
  input bit_as_bool emio_i2c1_sda_i,
  output bit_as_bool emio_i2c1_sda_o,
  output bit_as_bool emio_i2c1_sda_t,
  input bit [2 : 0] pl_ps_irq0,
  output bit_as_bool pl_resetn0,
  output bit_as_bool pl_clk0
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (maxihpm0_lpd_aclk,maxigp2_awid,maxigp2_awaddr,maxigp2_awlen,maxigp2_awsize,maxigp2_awburst,maxigp2_awlock,maxigp2_awcache,maxigp2_awprot,maxigp2_awvalid,maxigp2_awuser,maxigp2_awready,maxigp2_wdata,maxigp2_wstrb,maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid,maxigp2_bresp,maxigp2_bvalid,maxigp2_bready,maxigp2_arid,maxigp2_araddr,maxigp2_arlen,maxigp2_arsize,maxigp2_arburst,maxigp2_arlock,maxigp2_arcache,maxigp2_arprot,maxigp2_arvalid,maxigp2_aruser,maxigp2_arready,maxigp2_rid,maxigp2_rdata,maxigp2_rresp,maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos,maxigp2_arqos,saxihpc0_fpd_aclk,saxigp0_aruser,saxigp0_awuser,saxigp0_awid,saxigp0_awaddr,saxigp0_awlen,saxigp0_awsize,saxigp0_awburst,saxigp0_awlock,saxigp0_awcache,saxigp0_awprot,saxigp0_awvalid,saxigp0_awready,saxigp0_wdata,saxigp0_wstrb,saxigp0_wlast,saxigp0_wvalid,saxigp0_wready,saxigp0_bid,saxigp0_bresp,saxigp0_bvalid,saxigp0_bready,saxigp0_arid,saxigp0_araddr,saxigp0_arlen,saxigp0_arsize,saxigp0_arburst,saxigp0_arlock,saxigp0_arcache,saxigp0_arprot,saxigp0_arvalid,saxigp0_arready,saxigp0_rid,saxigp0_rdata,saxigp0_rresp,saxigp0_rlast,saxigp0_rvalid,saxigp0_rready,saxigp0_awqos,saxigp0_arqos,saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid,saxigp2_awaddr,saxigp2_awlen,saxigp2_awsize,saxigp2_awburst,saxigp2_awlock,saxigp2_awcache,saxigp2_awprot,saxigp2_awvalid,saxigp2_awready,saxigp2_wdata,saxigp2_wstrb,saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid,saxigp2_bresp,saxigp2_bvalid,saxigp2_bready,saxigp2_arid,saxigp2_araddr,saxigp2_arlen,saxigp2_arsize,saxigp2_arburst,saxigp2_arlock,saxigp2_arcache,saxigp2_arprot,saxigp2_arvalid,saxigp2_arready,saxigp2_rid,saxigp2_rdata,saxigp2_rresp,saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos,saxigp2_arqos,saxihp1_fpd_aclk,saxigp3_aruser,saxigp3_awuser,saxigp3_awid,saxigp3_awaddr,saxigp3_awlen,saxigp3_awsize,saxigp3_awburst,saxigp3_awlock,saxigp3_awcache,saxigp3_awprot,saxigp3_awvalid,saxigp3_awready,saxigp3_wdata,saxigp3_wstrb,saxigp3_wlast,saxigp3_wvalid,saxigp3_wready,saxigp3_bid,saxigp3_bresp,saxigp3_bvalid,saxigp3_bready,saxigp3_arid,saxigp3_araddr,saxigp3_arlen,saxigp3_arsize,saxigp3_arburst,saxigp3_arlock,saxigp3_arcache,saxigp3_arprot,saxigp3_arvalid,saxigp3_arready,saxigp3_rid,saxigp3_rdata,saxigp3_rresp,saxigp3_rlast,saxigp3_rvalid,saxigp3_rready,saxigp3_awqos,saxigp3_arqos,saxihp2_fpd_aclk,saxigp4_aruser,saxigp4_awuser,saxigp4_awid,saxigp4_awaddr,saxigp4_awlen,saxigp4_awsize,saxigp4_awburst,saxigp4_awlock,saxigp4_awcache,saxigp4_awprot,saxigp4_awvalid,saxigp4_awready,saxigp4_wdata,saxigp4_wstrb,saxigp4_wlast,saxigp4_wvalid,saxigp4_wready,saxigp4_bid,saxigp4_bresp,saxigp4_bvalid,saxigp4_bready,saxigp4_arid,saxigp4_araddr,saxigp4_arlen,saxigp4_arsize,saxigp4_arburst,saxigp4_arlock,saxigp4_arcache,saxigp4_arprot,saxigp4_arvalid,saxigp4_arready,saxigp4_rid,saxigp4_rdata,saxigp4_rresp,saxigp4_rlast,saxigp4_rvalid,saxigp4_rready,saxigp4_awqos,saxigp4_arqos,emio_gpio_i,emio_gpio_o,emio_gpio_t,emio_i2c0_scl_i,emio_i2c0_scl_o,emio_i2c0_scl_t,emio_i2c0_sda_i,emio_i2c0_sda_o,emio_i2c0_sda_t,emio_i2c1_scl_i,emio_i2c1_scl_o,emio_i2c1_scl_t,emio_i2c1_sda_i,emio_i2c1_sda_o,emio_i2c1_sda_t,pl_ps_irq0,pl_resetn0,pl_clk0)
(* integer foreign = "SystemC";
*);
  input bit maxihpm0_lpd_aclk;
  output wire [15 : 0] maxigp2_awid;
  output wire [39 : 0] maxigp2_awaddr;
  output wire [7 : 0] maxigp2_awlen;
  output wire [2 : 0] maxigp2_awsize;
  output wire [1 : 0] maxigp2_awburst;
  output wire maxigp2_awlock;
  output wire [3 : 0] maxigp2_awcache;
  output wire [2 : 0] maxigp2_awprot;
  output wire maxigp2_awvalid;
  output wire [15 : 0] maxigp2_awuser;
  input bit maxigp2_awready;
  output wire [31 : 0] maxigp2_wdata;
  output wire [3 : 0] maxigp2_wstrb;
  output wire maxigp2_wlast;
  output wire maxigp2_wvalid;
  input bit maxigp2_wready;
  input bit [15 : 0] maxigp2_bid;
  input bit [1 : 0] maxigp2_bresp;
  input bit maxigp2_bvalid;
  output wire maxigp2_bready;
  output wire [15 : 0] maxigp2_arid;
  output wire [39 : 0] maxigp2_araddr;
  output wire [7 : 0] maxigp2_arlen;
  output wire [2 : 0] maxigp2_arsize;
  output wire [1 : 0] maxigp2_arburst;
  output wire maxigp2_arlock;
  output wire [3 : 0] maxigp2_arcache;
  output wire [2 : 0] maxigp2_arprot;
  output wire maxigp2_arvalid;
  output wire [15 : 0] maxigp2_aruser;
  input bit maxigp2_arready;
  input bit [15 : 0] maxigp2_rid;
  input bit [31 : 0] maxigp2_rdata;
  input bit [1 : 0] maxigp2_rresp;
  input bit maxigp2_rlast;
  input bit maxigp2_rvalid;
  output wire maxigp2_rready;
  output wire [3 : 0] maxigp2_awqos;
  output wire [3 : 0] maxigp2_arqos;
  input bit saxihpc0_fpd_aclk;
  input bit saxigp0_aruser;
  input bit saxigp0_awuser;
  input bit [5 : 0] saxigp0_awid;
  input bit [48 : 0] saxigp0_awaddr;
  input bit [7 : 0] saxigp0_awlen;
  input bit [2 : 0] saxigp0_awsize;
  input bit [1 : 0] saxigp0_awburst;
  input bit saxigp0_awlock;
  input bit [3 : 0] saxigp0_awcache;
  input bit [2 : 0] saxigp0_awprot;
  input bit saxigp0_awvalid;
  output wire saxigp0_awready;
  input bit [31 : 0] saxigp0_wdata;
  input bit [3 : 0] saxigp0_wstrb;
  input bit saxigp0_wlast;
  input bit saxigp0_wvalid;
  output wire saxigp0_wready;
  output wire [5 : 0] saxigp0_bid;
  output wire [1 : 0] saxigp0_bresp;
  output wire saxigp0_bvalid;
  input bit saxigp0_bready;
  input bit [5 : 0] saxigp0_arid;
  input bit [48 : 0] saxigp0_araddr;
  input bit [7 : 0] saxigp0_arlen;
  input bit [2 : 0] saxigp0_arsize;
  input bit [1 : 0] saxigp0_arburst;
  input bit saxigp0_arlock;
  input bit [3 : 0] saxigp0_arcache;
  input bit [2 : 0] saxigp0_arprot;
  input bit saxigp0_arvalid;
  output wire saxigp0_arready;
  output wire [5 : 0] saxigp0_rid;
  output wire [31 : 0] saxigp0_rdata;
  output wire [1 : 0] saxigp0_rresp;
  output wire saxigp0_rlast;
  output wire saxigp0_rvalid;
  input bit saxigp0_rready;
  input bit [3 : 0] saxigp0_awqos;
  input bit [3 : 0] saxigp0_arqos;
  input bit saxihp0_fpd_aclk;
  input bit saxigp2_aruser;
  input bit saxigp2_awuser;
  input bit [5 : 0] saxigp2_awid;
  input bit [48 : 0] saxigp2_awaddr;
  input bit [7 : 0] saxigp2_awlen;
  input bit [2 : 0] saxigp2_awsize;
  input bit [1 : 0] saxigp2_awburst;
  input bit saxigp2_awlock;
  input bit [3 : 0] saxigp2_awcache;
  input bit [2 : 0] saxigp2_awprot;
  input bit saxigp2_awvalid;
  output wire saxigp2_awready;
  input bit [127 : 0] saxigp2_wdata;
  input bit [15 : 0] saxigp2_wstrb;
  input bit saxigp2_wlast;
  input bit saxigp2_wvalid;
  output wire saxigp2_wready;
  output wire [5 : 0] saxigp2_bid;
  output wire [1 : 0] saxigp2_bresp;
  output wire saxigp2_bvalid;
  input bit saxigp2_bready;
  input bit [5 : 0] saxigp2_arid;
  input bit [48 : 0] saxigp2_araddr;
  input bit [7 : 0] saxigp2_arlen;
  input bit [2 : 0] saxigp2_arsize;
  input bit [1 : 0] saxigp2_arburst;
  input bit saxigp2_arlock;
  input bit [3 : 0] saxigp2_arcache;
  input bit [2 : 0] saxigp2_arprot;
  input bit saxigp2_arvalid;
  output wire saxigp2_arready;
  output wire [5 : 0] saxigp2_rid;
  output wire [127 : 0] saxigp2_rdata;
  output wire [1 : 0] saxigp2_rresp;
  output wire saxigp2_rlast;
  output wire saxigp2_rvalid;
  input bit saxigp2_rready;
  input bit [3 : 0] saxigp2_awqos;
  input bit [3 : 0] saxigp2_arqos;
  input bit saxihp1_fpd_aclk;
  input bit saxigp3_aruser;
  input bit saxigp3_awuser;
  input bit [5 : 0] saxigp3_awid;
  input bit [48 : 0] saxigp3_awaddr;
  input bit [7 : 0] saxigp3_awlen;
  input bit [2 : 0] saxigp3_awsize;
  input bit [1 : 0] saxigp3_awburst;
  input bit saxigp3_awlock;
  input bit [3 : 0] saxigp3_awcache;
  input bit [2 : 0] saxigp3_awprot;
  input bit saxigp3_awvalid;
  output wire saxigp3_awready;
  input bit [127 : 0] saxigp3_wdata;
  input bit [15 : 0] saxigp3_wstrb;
  input bit saxigp3_wlast;
  input bit saxigp3_wvalid;
  output wire saxigp3_wready;
  output wire [5 : 0] saxigp3_bid;
  output wire [1 : 0] saxigp3_bresp;
  output wire saxigp3_bvalid;
  input bit saxigp3_bready;
  input bit [5 : 0] saxigp3_arid;
  input bit [48 : 0] saxigp3_araddr;
  input bit [7 : 0] saxigp3_arlen;
  input bit [2 : 0] saxigp3_arsize;
  input bit [1 : 0] saxigp3_arburst;
  input bit saxigp3_arlock;
  input bit [3 : 0] saxigp3_arcache;
  input bit [2 : 0] saxigp3_arprot;
  input bit saxigp3_arvalid;
  output wire saxigp3_arready;
  output wire [5 : 0] saxigp3_rid;
  output wire [127 : 0] saxigp3_rdata;
  output wire [1 : 0] saxigp3_rresp;
  output wire saxigp3_rlast;
  output wire saxigp3_rvalid;
  input bit saxigp3_rready;
  input bit [3 : 0] saxigp3_awqos;
  input bit [3 : 0] saxigp3_arqos;
  input bit saxihp2_fpd_aclk;
  input bit saxigp4_aruser;
  input bit saxigp4_awuser;
  input bit [5 : 0] saxigp4_awid;
  input bit [48 : 0] saxigp4_awaddr;
  input bit [7 : 0] saxigp4_awlen;
  input bit [2 : 0] saxigp4_awsize;
  input bit [1 : 0] saxigp4_awburst;
  input bit saxigp4_awlock;
  input bit [3 : 0] saxigp4_awcache;
  input bit [2 : 0] saxigp4_awprot;
  input bit saxigp4_awvalid;
  output wire saxigp4_awready;
  input bit [127 : 0] saxigp4_wdata;
  input bit [15 : 0] saxigp4_wstrb;
  input bit saxigp4_wlast;
  input bit saxigp4_wvalid;
  output wire saxigp4_wready;
  output wire [5 : 0] saxigp4_bid;
  output wire [1 : 0] saxigp4_bresp;
  output wire saxigp4_bvalid;
  input bit saxigp4_bready;
  input bit [5 : 0] saxigp4_arid;
  input bit [48 : 0] saxigp4_araddr;
  input bit [7 : 0] saxigp4_arlen;
  input bit [2 : 0] saxigp4_arsize;
  input bit [1 : 0] saxigp4_arburst;
  input bit saxigp4_arlock;
  input bit [3 : 0] saxigp4_arcache;
  input bit [2 : 0] saxigp4_arprot;
  input bit saxigp4_arvalid;
  output wire saxigp4_arready;
  output wire [5 : 0] saxigp4_rid;
  output wire [127 : 0] saxigp4_rdata;
  output wire [1 : 0] saxigp4_rresp;
  output wire saxigp4_rlast;
  output wire saxigp4_rvalid;
  input bit saxigp4_rready;
  input bit [3 : 0] saxigp4_awqos;
  input bit [3 : 0] saxigp4_arqos;
  input bit [94 : 0] emio_gpio_i;
  output wire [94 : 0] emio_gpio_o;
  output wire [94 : 0] emio_gpio_t;
  input bit emio_i2c0_scl_i;
  output wire emio_i2c0_scl_o;
  output wire emio_i2c0_scl_t;
  input bit emio_i2c0_sda_i;
  output wire emio_i2c0_sda_o;
  output wire emio_i2c0_sda_t;
  input bit emio_i2c1_scl_i;
  output wire emio_i2c1_scl_o;
  output wire emio_i2c1_scl_t;
  input bit emio_i2c1_sda_i;
  output wire emio_i2c1_sda_o;
  output wire emio_i2c1_sda_t;
  input bit [2 : 0] pl_ps_irq0;
  output wire pl_resetn0;
  output wire pl_clk0;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (maxihpm0_lpd_aclk,maxigp2_awid,maxigp2_awaddr,maxigp2_awlen,maxigp2_awsize,maxigp2_awburst,maxigp2_awlock,maxigp2_awcache,maxigp2_awprot,maxigp2_awvalid,maxigp2_awuser,maxigp2_awready,maxigp2_wdata,maxigp2_wstrb,maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid,maxigp2_bresp,maxigp2_bvalid,maxigp2_bready,maxigp2_arid,maxigp2_araddr,maxigp2_arlen,maxigp2_arsize,maxigp2_arburst,maxigp2_arlock,maxigp2_arcache,maxigp2_arprot,maxigp2_arvalid,maxigp2_aruser,maxigp2_arready,maxigp2_rid,maxigp2_rdata,maxigp2_rresp,maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos,maxigp2_arqos,saxihpc0_fpd_aclk,saxigp0_aruser,saxigp0_awuser,saxigp0_awid,saxigp0_awaddr,saxigp0_awlen,saxigp0_awsize,saxigp0_awburst,saxigp0_awlock,saxigp0_awcache,saxigp0_awprot,saxigp0_awvalid,saxigp0_awready,saxigp0_wdata,saxigp0_wstrb,saxigp0_wlast,saxigp0_wvalid,saxigp0_wready,saxigp0_bid,saxigp0_bresp,saxigp0_bvalid,saxigp0_bready,saxigp0_arid,saxigp0_araddr,saxigp0_arlen,saxigp0_arsize,saxigp0_arburst,saxigp0_arlock,saxigp0_arcache,saxigp0_arprot,saxigp0_arvalid,saxigp0_arready,saxigp0_rid,saxigp0_rdata,saxigp0_rresp,saxigp0_rlast,saxigp0_rvalid,saxigp0_rready,saxigp0_awqos,saxigp0_arqos,saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid,saxigp2_awaddr,saxigp2_awlen,saxigp2_awsize,saxigp2_awburst,saxigp2_awlock,saxigp2_awcache,saxigp2_awprot,saxigp2_awvalid,saxigp2_awready,saxigp2_wdata,saxigp2_wstrb,saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid,saxigp2_bresp,saxigp2_bvalid,saxigp2_bready,saxigp2_arid,saxigp2_araddr,saxigp2_arlen,saxigp2_arsize,saxigp2_arburst,saxigp2_arlock,saxigp2_arcache,saxigp2_arprot,saxigp2_arvalid,saxigp2_arready,saxigp2_rid,saxigp2_rdata,saxigp2_rresp,saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos,saxigp2_arqos,saxihp1_fpd_aclk,saxigp3_aruser,saxigp3_awuser,saxigp3_awid,saxigp3_awaddr,saxigp3_awlen,saxigp3_awsize,saxigp3_awburst,saxigp3_awlock,saxigp3_awcache,saxigp3_awprot,saxigp3_awvalid,saxigp3_awready,saxigp3_wdata,saxigp3_wstrb,saxigp3_wlast,saxigp3_wvalid,saxigp3_wready,saxigp3_bid,saxigp3_bresp,saxigp3_bvalid,saxigp3_bready,saxigp3_arid,saxigp3_araddr,saxigp3_arlen,saxigp3_arsize,saxigp3_arburst,saxigp3_arlock,saxigp3_arcache,saxigp3_arprot,saxigp3_arvalid,saxigp3_arready,saxigp3_rid,saxigp3_rdata,saxigp3_rresp,saxigp3_rlast,saxigp3_rvalid,saxigp3_rready,saxigp3_awqos,saxigp3_arqos,saxihp2_fpd_aclk,saxigp4_aruser,saxigp4_awuser,saxigp4_awid,saxigp4_awaddr,saxigp4_awlen,saxigp4_awsize,saxigp4_awburst,saxigp4_awlock,saxigp4_awcache,saxigp4_awprot,saxigp4_awvalid,saxigp4_awready,saxigp4_wdata,saxigp4_wstrb,saxigp4_wlast,saxigp4_wvalid,saxigp4_wready,saxigp4_bid,saxigp4_bresp,saxigp4_bvalid,saxigp4_bready,saxigp4_arid,saxigp4_araddr,saxigp4_arlen,saxigp4_arsize,saxigp4_arburst,saxigp4_arlock,saxigp4_arcache,saxigp4_arprot,saxigp4_arvalid,saxigp4_arready,saxigp4_rid,saxigp4_rdata,saxigp4_rresp,saxigp4_rlast,saxigp4_rvalid,saxigp4_rready,saxigp4_awqos,saxigp4_arqos,emio_gpio_i,emio_gpio_o,emio_gpio_t,emio_i2c0_scl_i,emio_i2c0_scl_o,emio_i2c0_scl_t,emio_i2c0_sda_i,emio_i2c0_sda_o,emio_i2c0_sda_t,emio_i2c1_scl_i,emio_i2c1_scl_o,emio_i2c1_scl_t,emio_i2c1_sda_i,emio_i2c1_sda_o,emio_i2c1_sda_t,pl_ps_irq0,pl_resetn0,pl_clk0)
  input bit maxihpm0_lpd_aclk;
  output wire [15 : 0] maxigp2_awid;
  output wire [39 : 0] maxigp2_awaddr;
  output wire [7 : 0] maxigp2_awlen;
  output wire [2 : 0] maxigp2_awsize;
  output wire [1 : 0] maxigp2_awburst;
  output wire maxigp2_awlock;
  output wire [3 : 0] maxigp2_awcache;
  output wire [2 : 0] maxigp2_awprot;
  output wire maxigp2_awvalid;
  output wire [15 : 0] maxigp2_awuser;
  input bit maxigp2_awready;
  output wire [31 : 0] maxigp2_wdata;
  output wire [3 : 0] maxigp2_wstrb;
  output wire maxigp2_wlast;
  output wire maxigp2_wvalid;
  input bit maxigp2_wready;
  input bit [15 : 0] maxigp2_bid;
  input bit [1 : 0] maxigp2_bresp;
  input bit maxigp2_bvalid;
  output wire maxigp2_bready;
  output wire [15 : 0] maxigp2_arid;
  output wire [39 : 0] maxigp2_araddr;
  output wire [7 : 0] maxigp2_arlen;
  output wire [2 : 0] maxigp2_arsize;
  output wire [1 : 0] maxigp2_arburst;
  output wire maxigp2_arlock;
  output wire [3 : 0] maxigp2_arcache;
  output wire [2 : 0] maxigp2_arprot;
  output wire maxigp2_arvalid;
  output wire [15 : 0] maxigp2_aruser;
  input bit maxigp2_arready;
  input bit [15 : 0] maxigp2_rid;
  input bit [31 : 0] maxigp2_rdata;
  input bit [1 : 0] maxigp2_rresp;
  input bit maxigp2_rlast;
  input bit maxigp2_rvalid;
  output wire maxigp2_rready;
  output wire [3 : 0] maxigp2_awqos;
  output wire [3 : 0] maxigp2_arqos;
  input bit saxihpc0_fpd_aclk;
  input bit saxigp0_aruser;
  input bit saxigp0_awuser;
  input bit [5 : 0] saxigp0_awid;
  input bit [48 : 0] saxigp0_awaddr;
  input bit [7 : 0] saxigp0_awlen;
  input bit [2 : 0] saxigp0_awsize;
  input bit [1 : 0] saxigp0_awburst;
  input bit saxigp0_awlock;
  input bit [3 : 0] saxigp0_awcache;
  input bit [2 : 0] saxigp0_awprot;
  input bit saxigp0_awvalid;
  output wire saxigp0_awready;
  input bit [31 : 0] saxigp0_wdata;
  input bit [3 : 0] saxigp0_wstrb;
  input bit saxigp0_wlast;
  input bit saxigp0_wvalid;
  output wire saxigp0_wready;
  output wire [5 : 0] saxigp0_bid;
  output wire [1 : 0] saxigp0_bresp;
  output wire saxigp0_bvalid;
  input bit saxigp0_bready;
  input bit [5 : 0] saxigp0_arid;
  input bit [48 : 0] saxigp0_araddr;
  input bit [7 : 0] saxigp0_arlen;
  input bit [2 : 0] saxigp0_arsize;
  input bit [1 : 0] saxigp0_arburst;
  input bit saxigp0_arlock;
  input bit [3 : 0] saxigp0_arcache;
  input bit [2 : 0] saxigp0_arprot;
  input bit saxigp0_arvalid;
  output wire saxigp0_arready;
  output wire [5 : 0] saxigp0_rid;
  output wire [31 : 0] saxigp0_rdata;
  output wire [1 : 0] saxigp0_rresp;
  output wire saxigp0_rlast;
  output wire saxigp0_rvalid;
  input bit saxigp0_rready;
  input bit [3 : 0] saxigp0_awqos;
  input bit [3 : 0] saxigp0_arqos;
  input bit saxihp0_fpd_aclk;
  input bit saxigp2_aruser;
  input bit saxigp2_awuser;
  input bit [5 : 0] saxigp2_awid;
  input bit [48 : 0] saxigp2_awaddr;
  input bit [7 : 0] saxigp2_awlen;
  input bit [2 : 0] saxigp2_awsize;
  input bit [1 : 0] saxigp2_awburst;
  input bit saxigp2_awlock;
  input bit [3 : 0] saxigp2_awcache;
  input bit [2 : 0] saxigp2_awprot;
  input bit saxigp2_awvalid;
  output wire saxigp2_awready;
  input bit [127 : 0] saxigp2_wdata;
  input bit [15 : 0] saxigp2_wstrb;
  input bit saxigp2_wlast;
  input bit saxigp2_wvalid;
  output wire saxigp2_wready;
  output wire [5 : 0] saxigp2_bid;
  output wire [1 : 0] saxigp2_bresp;
  output wire saxigp2_bvalid;
  input bit saxigp2_bready;
  input bit [5 : 0] saxigp2_arid;
  input bit [48 : 0] saxigp2_araddr;
  input bit [7 : 0] saxigp2_arlen;
  input bit [2 : 0] saxigp2_arsize;
  input bit [1 : 0] saxigp2_arburst;
  input bit saxigp2_arlock;
  input bit [3 : 0] saxigp2_arcache;
  input bit [2 : 0] saxigp2_arprot;
  input bit saxigp2_arvalid;
  output wire saxigp2_arready;
  output wire [5 : 0] saxigp2_rid;
  output wire [127 : 0] saxigp2_rdata;
  output wire [1 : 0] saxigp2_rresp;
  output wire saxigp2_rlast;
  output wire saxigp2_rvalid;
  input bit saxigp2_rready;
  input bit [3 : 0] saxigp2_awqos;
  input bit [3 : 0] saxigp2_arqos;
  input bit saxihp1_fpd_aclk;
  input bit saxigp3_aruser;
  input bit saxigp3_awuser;
  input bit [5 : 0] saxigp3_awid;
  input bit [48 : 0] saxigp3_awaddr;
  input bit [7 : 0] saxigp3_awlen;
  input bit [2 : 0] saxigp3_awsize;
  input bit [1 : 0] saxigp3_awburst;
  input bit saxigp3_awlock;
  input bit [3 : 0] saxigp3_awcache;
  input bit [2 : 0] saxigp3_awprot;
  input bit saxigp3_awvalid;
  output wire saxigp3_awready;
  input bit [127 : 0] saxigp3_wdata;
  input bit [15 : 0] saxigp3_wstrb;
  input bit saxigp3_wlast;
  input bit saxigp3_wvalid;
  output wire saxigp3_wready;
  output wire [5 : 0] saxigp3_bid;
  output wire [1 : 0] saxigp3_bresp;
  output wire saxigp3_bvalid;
  input bit saxigp3_bready;
  input bit [5 : 0] saxigp3_arid;
  input bit [48 : 0] saxigp3_araddr;
  input bit [7 : 0] saxigp3_arlen;
  input bit [2 : 0] saxigp3_arsize;
  input bit [1 : 0] saxigp3_arburst;
  input bit saxigp3_arlock;
  input bit [3 : 0] saxigp3_arcache;
  input bit [2 : 0] saxigp3_arprot;
  input bit saxigp3_arvalid;
  output wire saxigp3_arready;
  output wire [5 : 0] saxigp3_rid;
  output wire [127 : 0] saxigp3_rdata;
  output wire [1 : 0] saxigp3_rresp;
  output wire saxigp3_rlast;
  output wire saxigp3_rvalid;
  input bit saxigp3_rready;
  input bit [3 : 0] saxigp3_awqos;
  input bit [3 : 0] saxigp3_arqos;
  input bit saxihp2_fpd_aclk;
  input bit saxigp4_aruser;
  input bit saxigp4_awuser;
  input bit [5 : 0] saxigp4_awid;
  input bit [48 : 0] saxigp4_awaddr;
  input bit [7 : 0] saxigp4_awlen;
  input bit [2 : 0] saxigp4_awsize;
  input bit [1 : 0] saxigp4_awburst;
  input bit saxigp4_awlock;
  input bit [3 : 0] saxigp4_awcache;
  input bit [2 : 0] saxigp4_awprot;
  input bit saxigp4_awvalid;
  output wire saxigp4_awready;
  input bit [127 : 0] saxigp4_wdata;
  input bit [15 : 0] saxigp4_wstrb;
  input bit saxigp4_wlast;
  input bit saxigp4_wvalid;
  output wire saxigp4_wready;
  output wire [5 : 0] saxigp4_bid;
  output wire [1 : 0] saxigp4_bresp;
  output wire saxigp4_bvalid;
  input bit saxigp4_bready;
  input bit [5 : 0] saxigp4_arid;
  input bit [48 : 0] saxigp4_araddr;
  input bit [7 : 0] saxigp4_arlen;
  input bit [2 : 0] saxigp4_arsize;
  input bit [1 : 0] saxigp4_arburst;
  input bit saxigp4_arlock;
  input bit [3 : 0] saxigp4_arcache;
  input bit [2 : 0] saxigp4_arprot;
  input bit saxigp4_arvalid;
  output wire saxigp4_arready;
  output wire [5 : 0] saxigp4_rid;
  output wire [127 : 0] saxigp4_rdata;
  output wire [1 : 0] saxigp4_rresp;
  output wire saxigp4_rlast;
  output wire saxigp4_rvalid;
  input bit saxigp4_rready;
  input bit [3 : 0] saxigp4_awqos;
  input bit [3 : 0] saxigp4_arqos;
  input bit [94 : 0] emio_gpio_i;
  output wire [94 : 0] emio_gpio_o;
  output wire [94 : 0] emio_gpio_t;
  input bit emio_i2c0_scl_i;
  output wire emio_i2c0_scl_o;
  output wire emio_i2c0_scl_t;
  input bit emio_i2c0_sda_i;
  output wire emio_i2c0_sda_o;
  output wire emio_i2c0_sda_t;
  input bit emio_i2c1_scl_i;
  output wire emio_i2c1_scl_o;
  output wire emio_i2c1_scl_t;
  input bit emio_i2c1_sda_i;
  output wire emio_i2c1_sda_o;
  output wire emio_i2c1_sda_t;
  input bit [2 : 0] pl_ps_irq0;
  output wire pl_resetn0;
  output wire pl_clk0;
endmodule
`endif
