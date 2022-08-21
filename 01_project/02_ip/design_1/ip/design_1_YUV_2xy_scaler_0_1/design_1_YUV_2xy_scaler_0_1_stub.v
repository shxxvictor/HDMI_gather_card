// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Thu Jun 23 11:27:58 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /vic_work/vic_projects/scaler_aa/02_ip/design_1/ip/design_1_YUV_2xy_scaler_0_1/design_1_YUV_2xy_scaler_0_1_stub.v
// Design      : design_1_YUV_2xy_scaler_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "YUV_2xy_scaler,Vivado 2021.2" *)
module design_1_YUV_2xy_scaler_0_1(clk_in, reset, rdata, rlast, rready, ruser, rvalid, 
  tdata, tlast, tready, tuser, tvalid)
/* synthesis syn_black_box black_box_pad_pin="clk_in,reset,rdata[23:0],rlast,rready,ruser,rvalid,tdata[63:0],tlast,tready,tuser,tvalid" */;
  input clk_in;
  input reset;
  input [23:0]rdata;
  input rlast;
  output rready;
  input ruser;
  input rvalid;
  output [63:0]tdata;
  output tlast;
  input tready;
  output tuser;
  output tvalid;
endmodule
