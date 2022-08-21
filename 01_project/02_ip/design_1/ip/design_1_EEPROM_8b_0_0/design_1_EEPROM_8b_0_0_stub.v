// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Jun 11 13:35:00 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_EEPROM_8b_0_0/design_1_EEPROM_8b_0_0_stub.v
// Design      : design_1_EEPROM_8b_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "EEPROM_8b,Vivado 2021.2" *)
module design_1_EEPROM_8b_0_0(SampleClk, sRst, aSDA, aSCL)
/* synthesis syn_black_box black_box_pad_pin="SampleClk,sRst,aSDA,aSCL" */;
  input SampleClk;
  input sRst;
  inout aSDA;
  inout aSCL;
endmodule
