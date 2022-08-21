// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Jun 11 13:35:03 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_rgb2YCbCr_0_0/design_1_rgb2YCbCr_0_0_sim_netlist.v
// Design      : design_1_rgb2YCbCr_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2YCbCr_0_0,rgb2YCbCr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rgb2YCbCr,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_rgb2YCbCr_0_0
   (clk_in,
    reset,
    rdata,
    rlast,
    rready,
    ruser,
    rvalid,
    tdata,
    tlast,
    tready,
    tuser,
    tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_in CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_in, ASSOCIATED_BUSIF saxis:interface_axis, ASSOCIATED_RESET reset, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 saxis TDATA" *) input [23:0]rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 saxis TLAST" *) input rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 saxis TREADY" *) output rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 saxis TUSER" *) input ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 saxis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME saxis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0" *) input rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TDATA" *) output [23:0]tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TLAST" *) output tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TREADY" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TUSER" *) output tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output tvalid;

  wire clk_in;
  wire [23:0]rdata;
  wire reset;
  wire rlast;
  wire rready;
  wire ruser;
  wire rvalid;
  wire [23:0]tdata;
  wire tlast;
  wire tready;
  wire tuser;
  wire tvalid;

  (* USE_DSP = "yes" *) 
  (* data_width = "8" *) 
  (* para_0040_10b = "10'b0000001010" *) 
  (* para_0062_10b = "10'b0000010000" *) 
  (* para_0101_10b = "10'b0000011010" *) 
  (* para_0183_10b = "10'b0000101111" *) 
  (* para_0338_10b = "10'b0001010110" *) 
  (* para_0399_10b = "10'b0001100110" *) 
  (* para_0439_10b = "10'b0001110000" *) 
  (* para_0614_10b = "10'b0010011101" *) 
  (* para_128_18b = "18'b001000000000000000" *) 
  (* para_16_18b = "18'b000001000000000000" *) 
  (* pix_per_clock = "1" *) 
  design_1_rgb2YCbCr_0_0_rgb2YCbCr inst
       (.clk_in(clk_in),
        .rdata(rdata),
        .reset(reset),
        .rlast(rlast),
        .rready(rready),
        .ruser(ruser),
        .rvalid(rvalid),
        .tdata(tdata),
        .tlast(tlast),
        .tready(tready),
        .tuser(tuser),
        .tvalid(tvalid));
endmodule

(* ORIG_REF_NAME = "rgb2YCbCr" *) (* data_width = "8" *) (* para_0040_10b = "10'b0000001010" *) 
(* para_0062_10b = "10'b0000010000" *) (* para_0101_10b = "10'b0000011010" *) (* para_0183_10b = "10'b0000101111" *) 
(* para_0338_10b = "10'b0001010110" *) (* para_0399_10b = "10'b0001100110" *) (* para_0439_10b = "10'b0001110000" *) 
(* para_0614_10b = "10'b0010011101" *) (* para_128_18b = "18'b001000000000000000" *) (* para_16_18b = "18'b000001000000000000" *) 
(* pix_per_clock = "1" *) (* use_dsp = "yes" *) 
module design_1_rgb2YCbCr_0_0_rgb2YCbCr
   (clk_in,
    reset,
    rdata,
    rlast,
    rready,
    ruser,
    rvalid,
    tdata,
    tlast,
    tready,
    tuser,
    tvalid);
  input clk_in;
  input reset;
  input [23:0]rdata;
  input rlast;
  output rready;
  input ruser;
  input rvalid;
  output [23:0]tdata;
  output tlast;
  input tready;
  output tuser;
  output tvalid;

  wire RSTP;
  wire clk_in;
  wire \convert[0].A0_reg_n_100_[0] ;
  wire \convert[0].A0_reg_n_101_[0] ;
  wire \convert[0].A0_reg_n_102_[0] ;
  wire \convert[0].A0_reg_n_103_[0] ;
  wire \convert[0].A0_reg_n_104_[0] ;
  wire \convert[0].A0_reg_n_105_[0] ;
  wire \convert[0].A0_reg_n_106_[0] ;
  wire \convert[0].A0_reg_n_107_[0] ;
  wire \convert[0].A0_reg_n_108_[0] ;
  wire \convert[0].A0_reg_n_109_[0] ;
  wire \convert[0].A0_reg_n_110_[0] ;
  wire \convert[0].A0_reg_n_111_[0] ;
  wire \convert[0].A0_reg_n_112_[0] ;
  wire \convert[0].A0_reg_n_113_[0] ;
  wire \convert[0].A0_reg_n_114_[0] ;
  wire \convert[0].A0_reg_n_115_[0] ;
  wire \convert[0].A0_reg_n_116_[0] ;
  wire \convert[0].A0_reg_n_117_[0] ;
  wire \convert[0].A0_reg_n_118_[0] ;
  wire \convert[0].A0_reg_n_119_[0] ;
  wire \convert[0].A0_reg_n_120_[0] ;
  wire \convert[0].A0_reg_n_121_[0] ;
  wire \convert[0].A0_reg_n_122_[0] ;
  wire \convert[0].A0_reg_n_123_[0] ;
  wire \convert[0].A0_reg_n_124_[0] ;
  wire \convert[0].A0_reg_n_125_[0] ;
  wire \convert[0].A0_reg_n_126_[0] ;
  wire \convert[0].A0_reg_n_127_[0] ;
  wire \convert[0].A0_reg_n_128_[0] ;
  wire \convert[0].A0_reg_n_129_[0] ;
  wire \convert[0].A0_reg_n_130_[0] ;
  wire \convert[0].A0_reg_n_131_[0] ;
  wire \convert[0].A0_reg_n_132_[0] ;
  wire \convert[0].A0_reg_n_133_[0] ;
  wire \convert[0].A0_reg_n_134_[0] ;
  wire \convert[0].A0_reg_n_135_[0] ;
  wire \convert[0].A0_reg_n_136_[0] ;
  wire \convert[0].A0_reg_n_137_[0] ;
  wire \convert[0].A0_reg_n_138_[0] ;
  wire \convert[0].A0_reg_n_139_[0] ;
  wire \convert[0].A0_reg_n_140_[0] ;
  wire \convert[0].A0_reg_n_141_[0] ;
  wire \convert[0].A0_reg_n_142_[0] ;
  wire \convert[0].A0_reg_n_143_[0] ;
  wire \convert[0].A0_reg_n_144_[0] ;
  wire \convert[0].A0_reg_n_145_[0] ;
  wire \convert[0].A0_reg_n_146_[0] ;
  wire \convert[0].A0_reg_n_147_[0] ;
  wire \convert[0].A0_reg_n_148_[0] ;
  wire \convert[0].A0_reg_n_149_[0] ;
  wire \convert[0].A0_reg_n_150_[0] ;
  wire \convert[0].A0_reg_n_151_[0] ;
  wire \convert[0].A0_reg_n_152_[0] ;
  wire \convert[0].A0_reg_n_153_[0] ;
  wire \convert[0].A0_reg_n_90_[0] ;
  wire \convert[0].A0_reg_n_91_[0] ;
  wire \convert[0].A0_reg_n_92_[0] ;
  wire \convert[0].A0_reg_n_93_[0] ;
  wire \convert[0].A0_reg_n_94_[0] ;
  wire \convert[0].A0_reg_n_95_[0] ;
  wire \convert[0].A0_reg_n_96_[0] ;
  wire \convert[0].A0_reg_n_97_[0] ;
  wire \convert[0].A0_reg_n_98_[0] ;
  wire \convert[0].A0_reg_n_99_[0] ;
  wire \convert[0].A1_reg_n_100_[0] ;
  wire \convert[0].A1_reg_n_101_[0] ;
  wire \convert[0].A1_reg_n_102_[0] ;
  wire \convert[0].A1_reg_n_103_[0] ;
  wire \convert[0].A1_reg_n_104_[0] ;
  wire \convert[0].A1_reg_n_105_[0] ;
  wire \convert[0].A1_reg_n_92_[0] ;
  wire \convert[0].A1_reg_n_93_[0] ;
  wire \convert[0].A1_reg_n_94_[0] ;
  wire \convert[0].A1_reg_n_95_[0] ;
  wire \convert[0].A1_reg_n_96_[0] ;
  wire \convert[0].A1_reg_n_97_[0] ;
  wire \convert[0].A1_reg_n_98_[0] ;
  wire \convert[0].A1_reg_n_99_[0] ;
  wire [15:0]\convert[0].A2_reg[0]__0 ;
  wire \convert[0].A3_reg_n_100_[0] ;
  wire \convert[0].A3_reg_n_101_[0] ;
  wire \convert[0].A3_reg_n_102_[0] ;
  wire \convert[0].A3_reg_n_103_[0] ;
  wire \convert[0].A3_reg_n_104_[0] ;
  wire \convert[0].A3_reg_n_105_[0] ;
  wire \convert[0].A3_reg_n_90_[0] ;
  wire \convert[0].A3_reg_n_91_[0] ;
  wire \convert[0].A3_reg_n_92_[0] ;
  wire \convert[0].A3_reg_n_93_[0] ;
  wire \convert[0].A3_reg_n_94_[0] ;
  wire \convert[0].A3_reg_n_95_[0] ;
  wire \convert[0].A3_reg_n_96_[0] ;
  wire \convert[0].A3_reg_n_97_[0] ;
  wire \convert[0].A3_reg_n_98_[0] ;
  wire \convert[0].A3_reg_n_99_[0] ;
  wire [15:0]\convert[0].A4_reg[0]__0 ;
  wire \convert[0].A5_reg_n_100_[0] ;
  wire \convert[0].A5_reg_n_101_[0] ;
  wire \convert[0].A5_reg_n_102_[0] ;
  wire \convert[0].A5_reg_n_103_[0] ;
  wire \convert[0].A5_reg_n_104_[0] ;
  wire \convert[0].A5_reg_n_105_[0] ;
  wire \convert[0].A5_reg_n_90_[0] ;
  wire \convert[0].A5_reg_n_91_[0] ;
  wire \convert[0].A5_reg_n_92_[0] ;
  wire \convert[0].A5_reg_n_93_[0] ;
  wire \convert[0].A5_reg_n_94_[0] ;
  wire \convert[0].A5_reg_n_95_[0] ;
  wire \convert[0].A5_reg_n_96_[0] ;
  wire \convert[0].A5_reg_n_97_[0] ;
  wire \convert[0].A5_reg_n_98_[0] ;
  wire \convert[0].A5_reg_n_99_[0] ;
  wire [15:8]\convert[0].Cb_reg[0]__0 ;
  wire \convert[0].Cb_reg[0]_i_10_n_0 ;
  wire \convert[0].Cb_reg[0]_i_11_n_0 ;
  wire \convert[0].Cb_reg[0]_i_12_n_0 ;
  wire \convert[0].Cb_reg[0]_i_13_n_0 ;
  wire \convert[0].Cb_reg[0]_i_14_n_0 ;
  wire \convert[0].Cb_reg[0]_i_15_n_0 ;
  wire \convert[0].Cb_reg[0]_i_16_n_0 ;
  wire \convert[0].Cb_reg[0]_i_17_n_0 ;
  wire \convert[0].Cb_reg[0]_i_18_n_0 ;
  wire \convert[0].Cb_reg[0]_i_1_n_15 ;
  wire \convert[0].Cb_reg[0]_i_2_n_1 ;
  wire \convert[0].Cb_reg[0]_i_2_n_2 ;
  wire \convert[0].Cb_reg[0]_i_2_n_3 ;
  wire \convert[0].Cb_reg[0]_i_2_n_4 ;
  wire \convert[0].Cb_reg[0]_i_2_n_5 ;
  wire \convert[0].Cb_reg[0]_i_2_n_6 ;
  wire \convert[0].Cb_reg[0]_i_2_n_7 ;
  wire \convert[0].Cb_reg[0]_i_3_n_0 ;
  wire \convert[0].Cb_reg[0]_i_4_n_0 ;
  wire \convert[0].Cb_reg[0]_i_5_n_0 ;
  wire \convert[0].Cb_reg[0]_i_6_n_0 ;
  wire \convert[0].Cb_reg[0]_i_7_n_0 ;
  wire \convert[0].Cb_reg[0]_i_8_n_0 ;
  wire \convert[0].Cb_reg[0]_i_9_n_0 ;
  wire \convert[0].Cb_reg_n_100_[0] ;
  wire \convert[0].Cb_reg_n_101_[0] ;
  wire \convert[0].Cb_reg_n_102_[0] ;
  wire \convert[0].Cb_reg_n_103_[0] ;
  wire \convert[0].Cb_reg_n_104_[0] ;
  wire \convert[0].Cb_reg_n_105_[0] ;
  wire \convert[0].Cb_reg_n_88_[0] ;
  wire \convert[0].Cb_reg_n_89_[0] ;
  wire \convert[0].Cb_reg_n_98_[0] ;
  wire \convert[0].Cb_reg_n_99_[0] ;
  wire [15:8]\convert[0].Cr_reg[0]__0 ;
  wire \convert[0].Cr_reg[0]_i_10_n_0 ;
  wire \convert[0].Cr_reg[0]_i_11_n_0 ;
  wire \convert[0].Cr_reg[0]_i_12_n_0 ;
  wire \convert[0].Cr_reg[0]_i_13_n_0 ;
  wire \convert[0].Cr_reg[0]_i_14_n_0 ;
  wire \convert[0].Cr_reg[0]_i_15_n_0 ;
  wire \convert[0].Cr_reg[0]_i_16_n_0 ;
  wire \convert[0].Cr_reg[0]_i_17_n_0 ;
  wire \convert[0].Cr_reg[0]_i_18_n_0 ;
  wire \convert[0].Cr_reg[0]_i_2_n_1 ;
  wire \convert[0].Cr_reg[0]_i_2_n_2 ;
  wire \convert[0].Cr_reg[0]_i_2_n_3 ;
  wire \convert[0].Cr_reg[0]_i_2_n_4 ;
  wire \convert[0].Cr_reg[0]_i_2_n_5 ;
  wire \convert[0].Cr_reg[0]_i_2_n_6 ;
  wire \convert[0].Cr_reg[0]_i_2_n_7 ;
  wire \convert[0].Cr_reg[0]_i_3_n_0 ;
  wire \convert[0].Cr_reg[0]_i_4_n_0 ;
  wire \convert[0].Cr_reg[0]_i_5_n_0 ;
  wire \convert[0].Cr_reg[0]_i_6_n_0 ;
  wire \convert[0].Cr_reg[0]_i_7_n_0 ;
  wire \convert[0].Cr_reg[0]_i_8_n_0 ;
  wire \convert[0].Cr_reg[0]_i_9_n_0 ;
  wire \convert[0].Cr_reg_n_100_[0] ;
  wire \convert[0].Cr_reg_n_101_[0] ;
  wire \convert[0].Cr_reg_n_102_[0] ;
  wire \convert[0].Cr_reg_n_103_[0] ;
  wire \convert[0].Cr_reg_n_104_[0] ;
  wire \convert[0].Cr_reg_n_105_[0] ;
  wire \convert[0].Cr_reg_n_88_[0] ;
  wire \convert[0].Cr_reg_n_89_[0] ;
  wire \convert[0].Cr_reg_n_98_[0] ;
  wire \convert[0].Cr_reg_n_99_[0] ;
  wire \convert[0].M0_reg_n_100_[0] ;
  wire \convert[0].M0_reg_n_101_[0] ;
  wire \convert[0].M0_reg_n_102_[0] ;
  wire \convert[0].M0_reg_n_103_[0] ;
  wire \convert[0].M0_reg_n_104_[0] ;
  wire \convert[0].M0_reg_n_105_[0] ;
  wire \convert[0].M0_reg_n_106_[0] ;
  wire \convert[0].M0_reg_n_107_[0] ;
  wire \convert[0].M0_reg_n_108_[0] ;
  wire \convert[0].M0_reg_n_109_[0] ;
  wire \convert[0].M0_reg_n_110_[0] ;
  wire \convert[0].M0_reg_n_111_[0] ;
  wire \convert[0].M0_reg_n_112_[0] ;
  wire \convert[0].M0_reg_n_113_[0] ;
  wire \convert[0].M0_reg_n_114_[0] ;
  wire \convert[0].M0_reg_n_115_[0] ;
  wire \convert[0].M0_reg_n_116_[0] ;
  wire \convert[0].M0_reg_n_117_[0] ;
  wire \convert[0].M0_reg_n_118_[0] ;
  wire \convert[0].M0_reg_n_119_[0] ;
  wire \convert[0].M0_reg_n_120_[0] ;
  wire \convert[0].M0_reg_n_121_[0] ;
  wire \convert[0].M0_reg_n_122_[0] ;
  wire \convert[0].M0_reg_n_123_[0] ;
  wire \convert[0].M0_reg_n_124_[0] ;
  wire \convert[0].M0_reg_n_125_[0] ;
  wire \convert[0].M0_reg_n_126_[0] ;
  wire \convert[0].M0_reg_n_127_[0] ;
  wire \convert[0].M0_reg_n_128_[0] ;
  wire \convert[0].M0_reg_n_129_[0] ;
  wire \convert[0].M0_reg_n_130_[0] ;
  wire \convert[0].M0_reg_n_131_[0] ;
  wire \convert[0].M0_reg_n_132_[0] ;
  wire \convert[0].M0_reg_n_133_[0] ;
  wire \convert[0].M0_reg_n_134_[0] ;
  wire \convert[0].M0_reg_n_135_[0] ;
  wire \convert[0].M0_reg_n_136_[0] ;
  wire \convert[0].M0_reg_n_137_[0] ;
  wire \convert[0].M0_reg_n_138_[0] ;
  wire \convert[0].M0_reg_n_139_[0] ;
  wire \convert[0].M0_reg_n_140_[0] ;
  wire \convert[0].M0_reg_n_141_[0] ;
  wire \convert[0].M0_reg_n_142_[0] ;
  wire \convert[0].M0_reg_n_143_[0] ;
  wire \convert[0].M0_reg_n_144_[0] ;
  wire \convert[0].M0_reg_n_145_[0] ;
  wire \convert[0].M0_reg_n_146_[0] ;
  wire \convert[0].M0_reg_n_147_[0] ;
  wire \convert[0].M0_reg_n_148_[0] ;
  wire \convert[0].M0_reg_n_149_[0] ;
  wire \convert[0].M0_reg_n_150_[0] ;
  wire \convert[0].M0_reg_n_151_[0] ;
  wire \convert[0].M0_reg_n_152_[0] ;
  wire \convert[0].M0_reg_n_153_[0] ;
  wire \convert[0].M0_reg_n_92_[0] ;
  wire \convert[0].M0_reg_n_93_[0] ;
  wire \convert[0].M0_reg_n_94_[0] ;
  wire \convert[0].M0_reg_n_95_[0] ;
  wire \convert[0].M0_reg_n_96_[0] ;
  wire \convert[0].M0_reg_n_97_[0] ;
  wire \convert[0].M0_reg_n_98_[0] ;
  wire \convert[0].M0_reg_n_99_[0] ;
  wire \convert[0].M3_reg_n_100_[0] ;
  wire \convert[0].M3_reg_n_101_[0] ;
  wire \convert[0].M3_reg_n_102_[0] ;
  wire \convert[0].M3_reg_n_103_[0] ;
  wire \convert[0].M3_reg_n_104_[0] ;
  wire \convert[0].M3_reg_n_105_[0] ;
  wire \convert[0].M3_reg_n_106_[0] ;
  wire \convert[0].M3_reg_n_107_[0] ;
  wire \convert[0].M3_reg_n_108_[0] ;
  wire \convert[0].M3_reg_n_109_[0] ;
  wire \convert[0].M3_reg_n_110_[0] ;
  wire \convert[0].M3_reg_n_111_[0] ;
  wire \convert[0].M3_reg_n_112_[0] ;
  wire \convert[0].M3_reg_n_113_[0] ;
  wire \convert[0].M3_reg_n_114_[0] ;
  wire \convert[0].M3_reg_n_115_[0] ;
  wire \convert[0].M3_reg_n_116_[0] ;
  wire \convert[0].M3_reg_n_117_[0] ;
  wire \convert[0].M3_reg_n_118_[0] ;
  wire \convert[0].M3_reg_n_119_[0] ;
  wire \convert[0].M3_reg_n_120_[0] ;
  wire \convert[0].M3_reg_n_121_[0] ;
  wire \convert[0].M3_reg_n_122_[0] ;
  wire \convert[0].M3_reg_n_123_[0] ;
  wire \convert[0].M3_reg_n_124_[0] ;
  wire \convert[0].M3_reg_n_125_[0] ;
  wire \convert[0].M3_reg_n_126_[0] ;
  wire \convert[0].M3_reg_n_127_[0] ;
  wire \convert[0].M3_reg_n_128_[0] ;
  wire \convert[0].M3_reg_n_129_[0] ;
  wire \convert[0].M3_reg_n_130_[0] ;
  wire \convert[0].M3_reg_n_131_[0] ;
  wire \convert[0].M3_reg_n_132_[0] ;
  wire \convert[0].M3_reg_n_133_[0] ;
  wire \convert[0].M3_reg_n_134_[0] ;
  wire \convert[0].M3_reg_n_135_[0] ;
  wire \convert[0].M3_reg_n_136_[0] ;
  wire \convert[0].M3_reg_n_137_[0] ;
  wire \convert[0].M3_reg_n_138_[0] ;
  wire \convert[0].M3_reg_n_139_[0] ;
  wire \convert[0].M3_reg_n_140_[0] ;
  wire \convert[0].M3_reg_n_141_[0] ;
  wire \convert[0].M3_reg_n_142_[0] ;
  wire \convert[0].M3_reg_n_143_[0] ;
  wire \convert[0].M3_reg_n_144_[0] ;
  wire \convert[0].M3_reg_n_145_[0] ;
  wire \convert[0].M3_reg_n_146_[0] ;
  wire \convert[0].M3_reg_n_147_[0] ;
  wire \convert[0].M3_reg_n_148_[0] ;
  wire \convert[0].M3_reg_n_149_[0] ;
  wire \convert[0].M3_reg_n_150_[0] ;
  wire \convert[0].M3_reg_n_151_[0] ;
  wire \convert[0].M3_reg_n_152_[0] ;
  wire \convert[0].M3_reg_n_153_[0] ;
  wire \convert[0].M3_reg_n_93_[0] ;
  wire \convert[0].M3_reg_n_94_[0] ;
  wire \convert[0].M3_reg_n_95_[0] ;
  wire \convert[0].M3_reg_n_96_[0] ;
  wire \convert[0].M3_reg_n_97_[0] ;
  wire \convert[0].M3_reg_n_98_[0] ;
  wire \convert[0].M3_reg_n_99_[0] ;
  wire \convert[0].M7_reg_n_100_[0] ;
  wire \convert[0].M7_reg_n_101_[0] ;
  wire \convert[0].M7_reg_n_102_[0] ;
  wire \convert[0].M7_reg_n_103_[0] ;
  wire \convert[0].M7_reg_n_104_[0] ;
  wire \convert[0].M7_reg_n_105_[0] ;
  wire \convert[0].M7_reg_n_106_[0] ;
  wire \convert[0].M7_reg_n_107_[0] ;
  wire \convert[0].M7_reg_n_108_[0] ;
  wire \convert[0].M7_reg_n_109_[0] ;
  wire \convert[0].M7_reg_n_110_[0] ;
  wire \convert[0].M7_reg_n_111_[0] ;
  wire \convert[0].M7_reg_n_112_[0] ;
  wire \convert[0].M7_reg_n_113_[0] ;
  wire \convert[0].M7_reg_n_114_[0] ;
  wire \convert[0].M7_reg_n_115_[0] ;
  wire \convert[0].M7_reg_n_116_[0] ;
  wire \convert[0].M7_reg_n_117_[0] ;
  wire \convert[0].M7_reg_n_118_[0] ;
  wire \convert[0].M7_reg_n_119_[0] ;
  wire \convert[0].M7_reg_n_120_[0] ;
  wire \convert[0].M7_reg_n_121_[0] ;
  wire \convert[0].M7_reg_n_122_[0] ;
  wire \convert[0].M7_reg_n_123_[0] ;
  wire \convert[0].M7_reg_n_124_[0] ;
  wire \convert[0].M7_reg_n_125_[0] ;
  wire \convert[0].M7_reg_n_126_[0] ;
  wire \convert[0].M7_reg_n_127_[0] ;
  wire \convert[0].M7_reg_n_128_[0] ;
  wire \convert[0].M7_reg_n_129_[0] ;
  wire \convert[0].M7_reg_n_130_[0] ;
  wire \convert[0].M7_reg_n_131_[0] ;
  wire \convert[0].M7_reg_n_132_[0] ;
  wire \convert[0].M7_reg_n_133_[0] ;
  wire \convert[0].M7_reg_n_134_[0] ;
  wire \convert[0].M7_reg_n_135_[0] ;
  wire \convert[0].M7_reg_n_136_[0] ;
  wire \convert[0].M7_reg_n_137_[0] ;
  wire \convert[0].M7_reg_n_138_[0] ;
  wire \convert[0].M7_reg_n_139_[0] ;
  wire \convert[0].M7_reg_n_140_[0] ;
  wire \convert[0].M7_reg_n_141_[0] ;
  wire \convert[0].M7_reg_n_142_[0] ;
  wire \convert[0].M7_reg_n_143_[0] ;
  wire \convert[0].M7_reg_n_144_[0] ;
  wire \convert[0].M7_reg_n_145_[0] ;
  wire \convert[0].M7_reg_n_146_[0] ;
  wire \convert[0].M7_reg_n_147_[0] ;
  wire \convert[0].M7_reg_n_148_[0] ;
  wire \convert[0].M7_reg_n_149_[0] ;
  wire \convert[0].M7_reg_n_150_[0] ;
  wire \convert[0].M7_reg_n_151_[0] ;
  wire \convert[0].M7_reg_n_152_[0] ;
  wire \convert[0].M7_reg_n_153_[0] ;
  wire \convert[0].M7_reg_n_91_[0] ;
  wire \convert[0].M7_reg_n_92_[0] ;
  wire \convert[0].M7_reg_n_93_[0] ;
  wire \convert[0].M7_reg_n_94_[0] ;
  wire \convert[0].M7_reg_n_95_[0] ;
  wire \convert[0].M7_reg_n_96_[0] ;
  wire \convert[0].M7_reg_n_97_[0] ;
  wire \convert[0].M7_reg_n_98_[0] ;
  wire \convert[0].M7_reg_n_99_[0] ;
  wire \convert[0].Y_reg_n_100_[0] ;
  wire \convert[0].Y_reg_n_101_[0] ;
  wire \convert[0].Y_reg_n_102_[0] ;
  wire \convert[0].Y_reg_n_103_[0] ;
  wire \convert[0].Y_reg_n_104_[0] ;
  wire \convert[0].Y_reg_n_105_[0] ;
  wire \convert[0].Y_reg_n_90_[0] ;
  wire \convert[0].Y_reg_n_91_[0] ;
  wire \convert[0].Y_reg_n_92_[0] ;
  wire \convert[0].Y_reg_n_93_[0] ;
  wire \convert[0].Y_reg_n_94_[0] ;
  wire \convert[0].Y_reg_n_95_[0] ;
  wire \convert[0].Y_reg_n_96_[0] ;
  wire \convert[0].Y_reg_n_97_[0] ;
  wire \convert[0].Y_reg_n_98_[0] ;
  wire \convert[0].Y_reg_n_99_[0] ;
  wire [23:0]rdata;
  wire reset;
  wire rlast;
  wire rlast_dly1_reg__0_n_0;
  wire rlast_dly3_reg_srl2_n_0;
  wire rready;
  (* USE_DSP = "yes" *) (* async_reg = "true" *) wire rst_in_dly1;
  (* USE_DSP = "yes" *) (* async_reg = "true" *) wire rst_in_dly2;
  wire ruser;
  wire ruser_dly1_reg__0_n_0;
  wire ruser_dly3_reg_srl2_n_0;
  wire rvalid;
  wire rvalid_dly1_reg__0_n_0;
  wire rvalid_dly3_reg_srl2_n_0;
  wire sign_cb;
  wire sign_cr;
  wire [23:0]tdata;
  wire tlast;
  wire tready;
  wire tuser;
  wire tvalid;
  wire \NLW_convert[0].A0_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A0_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A0_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A0_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A0_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A0_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A0_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A0_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A0_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].A0_reg[0]_P_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A0_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A1_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A1_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A1_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A1_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:14]\NLW_convert[0].A1_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].A1_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A1_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A2_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A2_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A2_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A2_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].A2_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].A2_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A2_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A3_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A3_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A3_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A3_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].A3_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].A3_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A3_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A4_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A4_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A4_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A4_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].A4_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].A4_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A4_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].A5_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].A5_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].A5_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].A5_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].A5_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].A5_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].A5_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Cb_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].Cb_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].Cb_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].Cb_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:18]\NLW_convert[0].Cb_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].Cb_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cb_reg[0]_XOROUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cb_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_convert[0].Cb_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cb_reg[0]_i_2_O_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Cr_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].Cr_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].Cr_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].Cr_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:18]\NLW_convert[0].Cr_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].Cr_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cr_reg[0]_XOROUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cr_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_convert[0].Cr_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Cr_reg[0]_i_2_O_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M0_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].M0_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].M0_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].M0_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:14]\NLW_convert[0].M0_reg[0]_P_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].M0_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M3_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].M3_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].M3_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].M3_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:13]\NLW_convert[0].M3_reg[0]_P_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].M3_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].M7_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].M7_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].M7_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].M7_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:15]\NLW_convert[0].M7_reg[0]_P_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].M7_reg[0]_XOROUT_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_OVERFLOW_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_convert[0].Y_reg[0]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_convert[0].Y_reg[0]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_convert[0].Y_reg[0]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_convert[0].Y_reg[0]_CARRYOUT_UNCONNECTED ;
  wire [47:16]\NLW_convert[0].Y_reg[0]_P_UNCONNECTED ;
  wire [47:0]\NLW_convert[0].Y_reg[0]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_convert[0].Y_reg[0]_XOROUT_UNCONNECTED ;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A0_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A0_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[15:8]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A0_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A0_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A0_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A0_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].A0_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A0_reg[0]_P_UNCONNECTED [47:16],\convert[0].A0_reg_n_90_[0] ,\convert[0].A0_reg_n_91_[0] ,\convert[0].A0_reg_n_92_[0] ,\convert[0].A0_reg_n_93_[0] ,\convert[0].A0_reg_n_94_[0] ,\convert[0].A0_reg_n_95_[0] ,\convert[0].A0_reg_n_96_[0] ,\convert[0].A0_reg_n_97_[0] ,\convert[0].A0_reg_n_98_[0] ,\convert[0].A0_reg_n_99_[0] ,\convert[0].A0_reg_n_100_[0] ,\convert[0].A0_reg_n_101_[0] ,\convert[0].A0_reg_n_102_[0] ,\convert[0].A0_reg_n_103_[0] ,\convert[0].A0_reg_n_104_[0] ,\convert[0].A0_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].A0_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A0_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\convert[0].M0_reg_n_106_[0] ,\convert[0].M0_reg_n_107_[0] ,\convert[0].M0_reg_n_108_[0] ,\convert[0].M0_reg_n_109_[0] ,\convert[0].M0_reg_n_110_[0] ,\convert[0].M0_reg_n_111_[0] ,\convert[0].M0_reg_n_112_[0] ,\convert[0].M0_reg_n_113_[0] ,\convert[0].M0_reg_n_114_[0] ,\convert[0].M0_reg_n_115_[0] ,\convert[0].M0_reg_n_116_[0] ,\convert[0].M0_reg_n_117_[0] ,\convert[0].M0_reg_n_118_[0] ,\convert[0].M0_reg_n_119_[0] ,\convert[0].M0_reg_n_120_[0] ,\convert[0].M0_reg_n_121_[0] ,\convert[0].M0_reg_n_122_[0] ,\convert[0].M0_reg_n_123_[0] ,\convert[0].M0_reg_n_124_[0] ,\convert[0].M0_reg_n_125_[0] ,\convert[0].M0_reg_n_126_[0] ,\convert[0].M0_reg_n_127_[0] ,\convert[0].M0_reg_n_128_[0] ,\convert[0].M0_reg_n_129_[0] ,\convert[0].M0_reg_n_130_[0] ,\convert[0].M0_reg_n_131_[0] ,\convert[0].M0_reg_n_132_[0] ,\convert[0].M0_reg_n_133_[0] ,\convert[0].M0_reg_n_134_[0] ,\convert[0].M0_reg_n_135_[0] ,\convert[0].M0_reg_n_136_[0] ,\convert[0].M0_reg_n_137_[0] ,\convert[0].M0_reg_n_138_[0] ,\convert[0].M0_reg_n_139_[0] ,\convert[0].M0_reg_n_140_[0] ,\convert[0].M0_reg_n_141_[0] ,\convert[0].M0_reg_n_142_[0] ,\convert[0].M0_reg_n_143_[0] ,\convert[0].M0_reg_n_144_[0] ,\convert[0].M0_reg_n_145_[0] ,\convert[0].M0_reg_n_146_[0] ,\convert[0].M0_reg_n_147_[0] ,\convert[0].M0_reg_n_148_[0] ,\convert[0].M0_reg_n_149_[0] ,\convert[0].M0_reg_n_150_[0] ,\convert[0].M0_reg_n_151_[0] ,\convert[0].M0_reg_n_152_[0] ,\convert[0].M0_reg_n_153_[0] }),
        .PCOUT({\convert[0].A0_reg_n_106_[0] ,\convert[0].A0_reg_n_107_[0] ,\convert[0].A0_reg_n_108_[0] ,\convert[0].A0_reg_n_109_[0] ,\convert[0].A0_reg_n_110_[0] ,\convert[0].A0_reg_n_111_[0] ,\convert[0].A0_reg_n_112_[0] ,\convert[0].A0_reg_n_113_[0] ,\convert[0].A0_reg_n_114_[0] ,\convert[0].A0_reg_n_115_[0] ,\convert[0].A0_reg_n_116_[0] ,\convert[0].A0_reg_n_117_[0] ,\convert[0].A0_reg_n_118_[0] ,\convert[0].A0_reg_n_119_[0] ,\convert[0].A0_reg_n_120_[0] ,\convert[0].A0_reg_n_121_[0] ,\convert[0].A0_reg_n_122_[0] ,\convert[0].A0_reg_n_123_[0] ,\convert[0].A0_reg_n_124_[0] ,\convert[0].A0_reg_n_125_[0] ,\convert[0].A0_reg_n_126_[0] ,\convert[0].A0_reg_n_127_[0] ,\convert[0].A0_reg_n_128_[0] ,\convert[0].A0_reg_n_129_[0] ,\convert[0].A0_reg_n_130_[0] ,\convert[0].A0_reg_n_131_[0] ,\convert[0].A0_reg_n_132_[0] ,\convert[0].A0_reg_n_133_[0] ,\convert[0].A0_reg_n_134_[0] ,\convert[0].A0_reg_n_135_[0] ,\convert[0].A0_reg_n_136_[0] ,\convert[0].A0_reg_n_137_[0] ,\convert[0].A0_reg_n_138_[0] ,\convert[0].A0_reg_n_139_[0] ,\convert[0].A0_reg_n_140_[0] ,\convert[0].A0_reg_n_141_[0] ,\convert[0].A0_reg_n_142_[0] ,\convert[0].A0_reg_n_143_[0] ,\convert[0].A0_reg_n_144_[0] ,\convert[0].A0_reg_n_145_[0] ,\convert[0].A0_reg_n_146_[0] ,\convert[0].A0_reg_n_147_[0] ,\convert[0].A0_reg_n_148_[0] ,\convert[0].A0_reg_n_149_[0] ,\convert[0].A0_reg_n_150_[0] ,\convert[0].A0_reg_n_151_[0] ,\convert[0].A0_reg_n_152_[0] ,\convert[0].A0_reg_n_153_[0] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A0_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A0_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A1_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A1_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A1_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[7:0],1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A1_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A1_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b1),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A1_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_convert[0].A1_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A1_reg[0]_P_UNCONNECTED [47:14],\convert[0].A1_reg_n_92_[0] ,\convert[0].A1_reg_n_93_[0] ,\convert[0].A1_reg_n_94_[0] ,\convert[0].A1_reg_n_95_[0] ,\convert[0].A1_reg_n_96_[0] ,\convert[0].A1_reg_n_97_[0] ,\convert[0].A1_reg_n_98_[0] ,\convert[0].A1_reg_n_99_[0] ,\convert[0].A1_reg_n_100_[0] ,\convert[0].A1_reg_n_101_[0] ,\convert[0].A1_reg_n_102_[0] ,\convert[0].A1_reg_n_103_[0] ,\convert[0].A1_reg_n_104_[0] ,\convert[0].A1_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].A1_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A1_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_convert[0].A1_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A1_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A1_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A2_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[7:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A2_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A2_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A2_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A2_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A2_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].A2_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A2_reg[0]_P_UNCONNECTED [47:16],\convert[0].A2_reg[0]__0 }),
        .PATTERNBDETECT(\NLW_convert[0].A2_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A2_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_convert[0].A2_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A2_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A2_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A3_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[15:8]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A3_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A3_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A3_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A3_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A3_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].A3_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A3_reg[0]_P_UNCONNECTED [47:16],\convert[0].A3_reg_n_90_[0] ,\convert[0].A3_reg_n_91_[0] ,\convert[0].A3_reg_n_92_[0] ,\convert[0].A3_reg_n_93_[0] ,\convert[0].A3_reg_n_94_[0] ,\convert[0].A3_reg_n_95_[0] ,\convert[0].A3_reg_n_96_[0] ,\convert[0].A3_reg_n_97_[0] ,\convert[0].A3_reg_n_98_[0] ,\convert[0].A3_reg_n_99_[0] ,\convert[0].A3_reg_n_100_[0] ,\convert[0].A3_reg_n_101_[0] ,\convert[0].A3_reg_n_102_[0] ,\convert[0].A3_reg_n_103_[0] ,\convert[0].A3_reg_n_104_[0] ,\convert[0].A3_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].A3_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A3_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\convert[0].M3_reg_n_106_[0] ,\convert[0].M3_reg_n_107_[0] ,\convert[0].M3_reg_n_108_[0] ,\convert[0].M3_reg_n_109_[0] ,\convert[0].M3_reg_n_110_[0] ,\convert[0].M3_reg_n_111_[0] ,\convert[0].M3_reg_n_112_[0] ,\convert[0].M3_reg_n_113_[0] ,\convert[0].M3_reg_n_114_[0] ,\convert[0].M3_reg_n_115_[0] ,\convert[0].M3_reg_n_116_[0] ,\convert[0].M3_reg_n_117_[0] ,\convert[0].M3_reg_n_118_[0] ,\convert[0].M3_reg_n_119_[0] ,\convert[0].M3_reg_n_120_[0] ,\convert[0].M3_reg_n_121_[0] ,\convert[0].M3_reg_n_122_[0] ,\convert[0].M3_reg_n_123_[0] ,\convert[0].M3_reg_n_124_[0] ,\convert[0].M3_reg_n_125_[0] ,\convert[0].M3_reg_n_126_[0] ,\convert[0].M3_reg_n_127_[0] ,\convert[0].M3_reg_n_128_[0] ,\convert[0].M3_reg_n_129_[0] ,\convert[0].M3_reg_n_130_[0] ,\convert[0].M3_reg_n_131_[0] ,\convert[0].M3_reg_n_132_[0] ,\convert[0].M3_reg_n_133_[0] ,\convert[0].M3_reg_n_134_[0] ,\convert[0].M3_reg_n_135_[0] ,\convert[0].M3_reg_n_136_[0] ,\convert[0].M3_reg_n_137_[0] ,\convert[0].M3_reg_n_138_[0] ,\convert[0].M3_reg_n_139_[0] ,\convert[0].M3_reg_n_140_[0] ,\convert[0].M3_reg_n_141_[0] ,\convert[0].M3_reg_n_142_[0] ,\convert[0].M3_reg_n_143_[0] ,\convert[0].M3_reg_n_144_[0] ,\convert[0].M3_reg_n_145_[0] ,\convert[0].M3_reg_n_146_[0] ,\convert[0].M3_reg_n_147_[0] ,\convert[0].M3_reg_n_148_[0] ,\convert[0].M3_reg_n_149_[0] ,\convert[0].M3_reg_n_150_[0] ,\convert[0].M3_reg_n_151_[0] ,\convert[0].M3_reg_n_152_[0] ,\convert[0].M3_reg_n_153_[0] }),
        .PCOUT(\NLW_convert[0].A3_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A3_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A3_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A4_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A4_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A4_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A4_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A4_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A4_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].A4_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A4_reg[0]_P_UNCONNECTED [47:16],\convert[0].A4_reg[0]__0 }),
        .PATTERNBDETECT(\NLW_convert[0].A4_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A4_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_convert[0].A4_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A4_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A4_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].A5_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[7:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].A5_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].A5_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].A5_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].A5_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].A5_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].A5_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].A5_reg[0]_P_UNCONNECTED [47:16],\convert[0].A5_reg_n_90_[0] ,\convert[0].A5_reg_n_91_[0] ,\convert[0].A5_reg_n_92_[0] ,\convert[0].A5_reg_n_93_[0] ,\convert[0].A5_reg_n_94_[0] ,\convert[0].A5_reg_n_95_[0] ,\convert[0].A5_reg_n_96_[0] ,\convert[0].A5_reg_n_97_[0] ,\convert[0].A5_reg_n_98_[0] ,\convert[0].A5_reg_n_99_[0] ,\convert[0].A5_reg_n_100_[0] ,\convert[0].A5_reg_n_101_[0] ,\convert[0].A5_reg_n_102_[0] ,\convert[0].A5_reg_n_103_[0] ,\convert[0].A5_reg_n_104_[0] ,\convert[0].A5_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].A5_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].A5_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\convert[0].M7_reg_n_106_[0] ,\convert[0].M7_reg_n_107_[0] ,\convert[0].M7_reg_n_108_[0] ,\convert[0].M7_reg_n_109_[0] ,\convert[0].M7_reg_n_110_[0] ,\convert[0].M7_reg_n_111_[0] ,\convert[0].M7_reg_n_112_[0] ,\convert[0].M7_reg_n_113_[0] ,\convert[0].M7_reg_n_114_[0] ,\convert[0].M7_reg_n_115_[0] ,\convert[0].M7_reg_n_116_[0] ,\convert[0].M7_reg_n_117_[0] ,\convert[0].M7_reg_n_118_[0] ,\convert[0].M7_reg_n_119_[0] ,\convert[0].M7_reg_n_120_[0] ,\convert[0].M7_reg_n_121_[0] ,\convert[0].M7_reg_n_122_[0] ,\convert[0].M7_reg_n_123_[0] ,\convert[0].M7_reg_n_124_[0] ,\convert[0].M7_reg_n_125_[0] ,\convert[0].M7_reg_n_126_[0] ,\convert[0].M7_reg_n_127_[0] ,\convert[0].M7_reg_n_128_[0] ,\convert[0].M7_reg_n_129_[0] ,\convert[0].M7_reg_n_130_[0] ,\convert[0].M7_reg_n_131_[0] ,\convert[0].M7_reg_n_132_[0] ,\convert[0].M7_reg_n_133_[0] ,\convert[0].M7_reg_n_134_[0] ,\convert[0].M7_reg_n_135_[0] ,\convert[0].M7_reg_n_136_[0] ,\convert[0].M7_reg_n_137_[0] ,\convert[0].M7_reg_n_138_[0] ,\convert[0].M7_reg_n_139_[0] ,\convert[0].M7_reg_n_140_[0] ,\convert[0].M7_reg_n_141_[0] ,\convert[0].M7_reg_n_142_[0] ,\convert[0].M7_reg_n_143_[0] ,\convert[0].M7_reg_n_144_[0] ,\convert[0].M7_reg_n_145_[0] ,\convert[0].M7_reg_n_146_[0] ,\convert[0].M7_reg_n_147_[0] ,\convert[0].M7_reg_n_148_[0] ,\convert[0].M7_reg_n_149_[0] ,\convert[0].M7_reg_n_150_[0] ,\convert[0].M7_reg_n_151_[0] ,\convert[0].M7_reg_n_152_[0] ,\convert[0].M7_reg_n_153_[0] }),
        .PCOUT(\NLW_convert[0].A5_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].A5_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].A5_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].Cb_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].Cb_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,\convert[0].A3_reg_n_90_[0] ,\convert[0].A3_reg_n_91_[0] ,\convert[0].A3_reg_n_92_[0] ,\convert[0].A3_reg_n_93_[0] ,\convert[0].A3_reg_n_94_[0] ,\convert[0].A3_reg_n_95_[0] ,\convert[0].A3_reg_n_96_[0] ,\convert[0].A3_reg_n_97_[0] ,\convert[0].A3_reg_n_98_[0] ,\convert[0].A3_reg_n_99_[0] ,\convert[0].A3_reg_n_100_[0] ,\convert[0].A3_reg_n_101_[0] ,\convert[0].A3_reg_n_102_[0] ,\convert[0].A3_reg_n_103_[0] ,\convert[0].A3_reg_n_104_[0] ,\convert[0].A3_reg_n_105_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].Cb_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\convert[0].A2_reg[0]__0 }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].Cb_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].Cb_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].Cb_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_convert[0].Cb_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].Cb_reg[0]_P_UNCONNECTED [47:18],\convert[0].Cb_reg_n_88_[0] ,\convert[0].Cb_reg_n_89_[0] ,\convert[0].Cb_reg[0]__0 ,\convert[0].Cb_reg_n_98_[0] ,\convert[0].Cb_reg_n_99_[0] ,\convert[0].Cb_reg_n_100_[0] ,\convert[0].Cb_reg_n_101_[0] ,\convert[0].Cb_reg_n_102_[0] ,\convert[0].Cb_reg_n_103_[0] ,\convert[0].Cb_reg_n_104_[0] ,\convert[0].Cb_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].Cb_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].Cb_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_convert[0].Cb_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(\convert[0].Cb_reg[0]_i_1_n_15 ),
        .UNDERFLOW(\NLW_convert[0].Cb_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].Cb_reg[0]_XOROUT_UNCONNECTED [7:0]));
  CARRY8 \convert[0].Cb_reg[0]_i_1 
       (.CI(sign_cb),
        .CI_TOP(1'b0),
        .CO(\NLW_convert[0].Cb_reg[0]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_convert[0].Cb_reg[0]_i_1_O_UNCONNECTED [7:1],\convert[0].Cb_reg[0]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_10 
       (.I0(\convert[0].A2_reg[0]__0 [0]),
        .I1(\convert[0].A3_reg_n_105_[0] ),
        .I2(\convert[0].A3_reg_n_104_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [1]),
        .O(\convert[0].Cb_reg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_11 
       (.I0(\convert[0].A2_reg[0]__0 [14]),
        .I1(\convert[0].A3_reg_n_91_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [15]),
        .I3(\convert[0].A3_reg_n_90_[0] ),
        .O(\convert[0].Cb_reg[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_12 
       (.I0(\convert[0].A2_reg[0]__0 [12]),
        .I1(\convert[0].A3_reg_n_93_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [13]),
        .I3(\convert[0].A3_reg_n_92_[0] ),
        .O(\convert[0].Cb_reg[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_13 
       (.I0(\convert[0].A2_reg[0]__0 [10]),
        .I1(\convert[0].A3_reg_n_95_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [11]),
        .I3(\convert[0].A3_reg_n_94_[0] ),
        .O(\convert[0].Cb_reg[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_14 
       (.I0(\convert[0].A2_reg[0]__0 [8]),
        .I1(\convert[0].A3_reg_n_97_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [9]),
        .I3(\convert[0].A3_reg_n_96_[0] ),
        .O(\convert[0].Cb_reg[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_15 
       (.I0(\convert[0].A2_reg[0]__0 [6]),
        .I1(\convert[0].A3_reg_n_99_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [7]),
        .I3(\convert[0].A3_reg_n_98_[0] ),
        .O(\convert[0].Cb_reg[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_16 
       (.I0(\convert[0].A2_reg[0]__0 [4]),
        .I1(\convert[0].A3_reg_n_101_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [5]),
        .I3(\convert[0].A3_reg_n_100_[0] ),
        .O(\convert[0].Cb_reg[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_17 
       (.I0(\convert[0].A2_reg[0]__0 [2]),
        .I1(\convert[0].A3_reg_n_103_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [3]),
        .I3(\convert[0].A3_reg_n_102_[0] ),
        .O(\convert[0].Cb_reg[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cb_reg[0]_i_18 
       (.I0(\convert[0].A2_reg[0]__0 [0]),
        .I1(\convert[0].A3_reg_n_105_[0] ),
        .I2(\convert[0].A2_reg[0]__0 [1]),
        .I3(\convert[0].A3_reg_n_104_[0] ),
        .O(\convert[0].Cb_reg[0]_i_18_n_0 ));
  CARRY8 \convert[0].Cb_reg[0]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({sign_cb,\convert[0].Cb_reg[0]_i_2_n_1 ,\convert[0].Cb_reg[0]_i_2_n_2 ,\convert[0].Cb_reg[0]_i_2_n_3 ,\convert[0].Cb_reg[0]_i_2_n_4 ,\convert[0].Cb_reg[0]_i_2_n_5 ,\convert[0].Cb_reg[0]_i_2_n_6 ,\convert[0].Cb_reg[0]_i_2_n_7 }),
        .DI({\convert[0].Cb_reg[0]_i_3_n_0 ,\convert[0].Cb_reg[0]_i_4_n_0 ,\convert[0].Cb_reg[0]_i_5_n_0 ,\convert[0].Cb_reg[0]_i_6_n_0 ,\convert[0].Cb_reg[0]_i_7_n_0 ,\convert[0].Cb_reg[0]_i_8_n_0 ,\convert[0].Cb_reg[0]_i_9_n_0 ,\convert[0].Cb_reg[0]_i_10_n_0 }),
        .O(\NLW_convert[0].Cb_reg[0]_i_2_O_UNCONNECTED [7:0]),
        .S({\convert[0].Cb_reg[0]_i_11_n_0 ,\convert[0].Cb_reg[0]_i_12_n_0 ,\convert[0].Cb_reg[0]_i_13_n_0 ,\convert[0].Cb_reg[0]_i_14_n_0 ,\convert[0].Cb_reg[0]_i_15_n_0 ,\convert[0].Cb_reg[0]_i_16_n_0 ,\convert[0].Cb_reg[0]_i_17_n_0 ,\convert[0].Cb_reg[0]_i_18_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_3 
       (.I0(\convert[0].A2_reg[0]__0 [14]),
        .I1(\convert[0].A3_reg_n_91_[0] ),
        .I2(\convert[0].A3_reg_n_90_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [15]),
        .O(\convert[0].Cb_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_4 
       (.I0(\convert[0].A2_reg[0]__0 [12]),
        .I1(\convert[0].A3_reg_n_93_[0] ),
        .I2(\convert[0].A3_reg_n_92_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [13]),
        .O(\convert[0].Cb_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_5 
       (.I0(\convert[0].A2_reg[0]__0 [10]),
        .I1(\convert[0].A3_reg_n_95_[0] ),
        .I2(\convert[0].A3_reg_n_94_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [11]),
        .O(\convert[0].Cb_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_6 
       (.I0(\convert[0].A2_reg[0]__0 [8]),
        .I1(\convert[0].A3_reg_n_97_[0] ),
        .I2(\convert[0].A3_reg_n_96_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [9]),
        .O(\convert[0].Cb_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_7 
       (.I0(\convert[0].A2_reg[0]__0 [6]),
        .I1(\convert[0].A3_reg_n_99_[0] ),
        .I2(\convert[0].A3_reg_n_98_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [7]),
        .O(\convert[0].Cb_reg[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_8 
       (.I0(\convert[0].A2_reg[0]__0 [4]),
        .I1(\convert[0].A3_reg_n_101_[0] ),
        .I2(\convert[0].A3_reg_n_100_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [5]),
        .O(\convert[0].Cb_reg[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cb_reg[0]_i_9 
       (.I0(\convert[0].A2_reg[0]__0 [2]),
        .I1(\convert[0].A3_reg_n_103_[0] ),
        .I2(\convert[0].A3_reg_n_102_[0] ),
        .I3(\convert[0].A2_reg[0]__0 [3]),
        .O(\convert[0].Cb_reg[0]_i_9_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].Cr_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].Cr_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,\convert[0].A5_reg_n_90_[0] ,\convert[0].A5_reg_n_91_[0] ,\convert[0].A5_reg_n_92_[0] ,\convert[0].A5_reg_n_93_[0] ,\convert[0].A5_reg_n_94_[0] ,\convert[0].A5_reg_n_95_[0] ,\convert[0].A5_reg_n_96_[0] ,\convert[0].A5_reg_n_97_[0] ,\convert[0].A5_reg_n_98_[0] ,\convert[0].A5_reg_n_99_[0] ,\convert[0].A5_reg_n_100_[0] ,\convert[0].A5_reg_n_101_[0] ,\convert[0].A5_reg_n_102_[0] ,\convert[0].A5_reg_n_103_[0] ,\convert[0].A5_reg_n_104_[0] ,\convert[0].A5_reg_n_105_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].Cr_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\convert[0].A4_reg[0]__0 }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].Cr_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].Cr_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].Cr_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_convert[0].Cr_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].Cr_reg[0]_P_UNCONNECTED [47:18],\convert[0].Cr_reg_n_88_[0] ,\convert[0].Cr_reg_n_89_[0] ,\convert[0].Cr_reg[0]__0 ,\convert[0].Cr_reg_n_98_[0] ,\convert[0].Cr_reg_n_99_[0] ,\convert[0].Cr_reg_n_100_[0] ,\convert[0].Cr_reg_n_101_[0] ,\convert[0].Cr_reg_n_102_[0] ,\convert[0].Cr_reg_n_103_[0] ,\convert[0].Cr_reg_n_104_[0] ,\convert[0].Cr_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].Cr_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].Cr_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_convert[0].Cr_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(\NLW_convert[0].Cr_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].Cr_reg[0]_XOROUT_UNCONNECTED [7:0]));
  CARRY8 \convert[0].Cr_reg[0]_i_1 
       (.CI(sign_cr),
        .CI_TOP(1'b0),
        .CO(\NLW_convert[0].Cr_reg[0]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_convert[0].Cr_reg[0]_i_1_O_UNCONNECTED [7:1],RSTP}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_10 
       (.I0(\convert[0].A4_reg[0]__0 [0]),
        .I1(\convert[0].A5_reg_n_105_[0] ),
        .I2(\convert[0].A5_reg_n_104_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [1]),
        .O(\convert[0].Cr_reg[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_11 
       (.I0(\convert[0].A4_reg[0]__0 [14]),
        .I1(\convert[0].A5_reg_n_91_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [15]),
        .I3(\convert[0].A5_reg_n_90_[0] ),
        .O(\convert[0].Cr_reg[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_12 
       (.I0(\convert[0].A4_reg[0]__0 [12]),
        .I1(\convert[0].A5_reg_n_93_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [13]),
        .I3(\convert[0].A5_reg_n_92_[0] ),
        .O(\convert[0].Cr_reg[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_13 
       (.I0(\convert[0].A4_reg[0]__0 [10]),
        .I1(\convert[0].A5_reg_n_95_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [11]),
        .I3(\convert[0].A5_reg_n_94_[0] ),
        .O(\convert[0].Cr_reg[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_14 
       (.I0(\convert[0].A4_reg[0]__0 [8]),
        .I1(\convert[0].A5_reg_n_97_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [9]),
        .I3(\convert[0].A5_reg_n_96_[0] ),
        .O(\convert[0].Cr_reg[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_15 
       (.I0(\convert[0].A4_reg[0]__0 [6]),
        .I1(\convert[0].A5_reg_n_99_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [7]),
        .I3(\convert[0].A5_reg_n_98_[0] ),
        .O(\convert[0].Cr_reg[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_16 
       (.I0(\convert[0].A4_reg[0]__0 [4]),
        .I1(\convert[0].A5_reg_n_101_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [5]),
        .I3(\convert[0].A5_reg_n_100_[0] ),
        .O(\convert[0].Cr_reg[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_17 
       (.I0(\convert[0].A4_reg[0]__0 [2]),
        .I1(\convert[0].A5_reg_n_103_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [3]),
        .I3(\convert[0].A5_reg_n_102_[0] ),
        .O(\convert[0].Cr_reg[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \convert[0].Cr_reg[0]_i_18 
       (.I0(\convert[0].A4_reg[0]__0 [0]),
        .I1(\convert[0].A5_reg_n_105_[0] ),
        .I2(\convert[0].A4_reg[0]__0 [1]),
        .I3(\convert[0].A5_reg_n_104_[0] ),
        .O(\convert[0].Cr_reg[0]_i_18_n_0 ));
  CARRY8 \convert[0].Cr_reg[0]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({sign_cr,\convert[0].Cr_reg[0]_i_2_n_1 ,\convert[0].Cr_reg[0]_i_2_n_2 ,\convert[0].Cr_reg[0]_i_2_n_3 ,\convert[0].Cr_reg[0]_i_2_n_4 ,\convert[0].Cr_reg[0]_i_2_n_5 ,\convert[0].Cr_reg[0]_i_2_n_6 ,\convert[0].Cr_reg[0]_i_2_n_7 }),
        .DI({\convert[0].Cr_reg[0]_i_3_n_0 ,\convert[0].Cr_reg[0]_i_4_n_0 ,\convert[0].Cr_reg[0]_i_5_n_0 ,\convert[0].Cr_reg[0]_i_6_n_0 ,\convert[0].Cr_reg[0]_i_7_n_0 ,\convert[0].Cr_reg[0]_i_8_n_0 ,\convert[0].Cr_reg[0]_i_9_n_0 ,\convert[0].Cr_reg[0]_i_10_n_0 }),
        .O(\NLW_convert[0].Cr_reg[0]_i_2_O_UNCONNECTED [7:0]),
        .S({\convert[0].Cr_reg[0]_i_11_n_0 ,\convert[0].Cr_reg[0]_i_12_n_0 ,\convert[0].Cr_reg[0]_i_13_n_0 ,\convert[0].Cr_reg[0]_i_14_n_0 ,\convert[0].Cr_reg[0]_i_15_n_0 ,\convert[0].Cr_reg[0]_i_16_n_0 ,\convert[0].Cr_reg[0]_i_17_n_0 ,\convert[0].Cr_reg[0]_i_18_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_3 
       (.I0(\convert[0].A4_reg[0]__0 [14]),
        .I1(\convert[0].A5_reg_n_91_[0] ),
        .I2(\convert[0].A5_reg_n_90_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [15]),
        .O(\convert[0].Cr_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_4 
       (.I0(\convert[0].A4_reg[0]__0 [12]),
        .I1(\convert[0].A5_reg_n_93_[0] ),
        .I2(\convert[0].A5_reg_n_92_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [13]),
        .O(\convert[0].Cr_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_5 
       (.I0(\convert[0].A4_reg[0]__0 [10]),
        .I1(\convert[0].A5_reg_n_95_[0] ),
        .I2(\convert[0].A5_reg_n_94_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [11]),
        .O(\convert[0].Cr_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_6 
       (.I0(\convert[0].A4_reg[0]__0 [8]),
        .I1(\convert[0].A5_reg_n_97_[0] ),
        .I2(\convert[0].A5_reg_n_96_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [9]),
        .O(\convert[0].Cr_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_7 
       (.I0(\convert[0].A4_reg[0]__0 [6]),
        .I1(\convert[0].A5_reg_n_99_[0] ),
        .I2(\convert[0].A5_reg_n_98_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [7]),
        .O(\convert[0].Cr_reg[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_8 
       (.I0(\convert[0].A4_reg[0]__0 [4]),
        .I1(\convert[0].A5_reg_n_101_[0] ),
        .I2(\convert[0].A5_reg_n_100_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [5]),
        .O(\convert[0].Cr_reg[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \convert[0].Cr_reg[0]_i_9 
       (.I0(\convert[0].A4_reg[0]__0 [2]),
        .I1(\convert[0].A5_reg_n_103_[0] ),
        .I2(\convert[0].A5_reg_n_102_[0] ),
        .I3(\convert[0].A4_reg[0]__0 [3]),
        .O(\convert[0].Cr_reg[0]_i_9_n_0 ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].M0_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].M0_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].M0_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].M0_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].M0_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].M0_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].M0_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].M0_reg[0]_P_UNCONNECTED [47:14],\convert[0].M0_reg_n_92_[0] ,\convert[0].M0_reg_n_93_[0] ,\convert[0].M0_reg_n_94_[0] ,\convert[0].M0_reg_n_95_[0] ,\convert[0].M0_reg_n_96_[0] ,\convert[0].M0_reg_n_97_[0] ,\convert[0].M0_reg_n_98_[0] ,\convert[0].M0_reg_n_99_[0] ,\convert[0].M0_reg_n_100_[0] ,\convert[0].M0_reg_n_101_[0] ,\convert[0].M0_reg_n_102_[0] ,\convert[0].M0_reg_n_103_[0] ,\convert[0].M0_reg_n_104_[0] ,\convert[0].M0_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].M0_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].M0_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\convert[0].M0_reg_n_106_[0] ,\convert[0].M0_reg_n_107_[0] ,\convert[0].M0_reg_n_108_[0] ,\convert[0].M0_reg_n_109_[0] ,\convert[0].M0_reg_n_110_[0] ,\convert[0].M0_reg_n_111_[0] ,\convert[0].M0_reg_n_112_[0] ,\convert[0].M0_reg_n_113_[0] ,\convert[0].M0_reg_n_114_[0] ,\convert[0].M0_reg_n_115_[0] ,\convert[0].M0_reg_n_116_[0] ,\convert[0].M0_reg_n_117_[0] ,\convert[0].M0_reg_n_118_[0] ,\convert[0].M0_reg_n_119_[0] ,\convert[0].M0_reg_n_120_[0] ,\convert[0].M0_reg_n_121_[0] ,\convert[0].M0_reg_n_122_[0] ,\convert[0].M0_reg_n_123_[0] ,\convert[0].M0_reg_n_124_[0] ,\convert[0].M0_reg_n_125_[0] ,\convert[0].M0_reg_n_126_[0] ,\convert[0].M0_reg_n_127_[0] ,\convert[0].M0_reg_n_128_[0] ,\convert[0].M0_reg_n_129_[0] ,\convert[0].M0_reg_n_130_[0] ,\convert[0].M0_reg_n_131_[0] ,\convert[0].M0_reg_n_132_[0] ,\convert[0].M0_reg_n_133_[0] ,\convert[0].M0_reg_n_134_[0] ,\convert[0].M0_reg_n_135_[0] ,\convert[0].M0_reg_n_136_[0] ,\convert[0].M0_reg_n_137_[0] ,\convert[0].M0_reg_n_138_[0] ,\convert[0].M0_reg_n_139_[0] ,\convert[0].M0_reg_n_140_[0] ,\convert[0].M0_reg_n_141_[0] ,\convert[0].M0_reg_n_142_[0] ,\convert[0].M0_reg_n_143_[0] ,\convert[0].M0_reg_n_144_[0] ,\convert[0].M0_reg_n_145_[0] ,\convert[0].M0_reg_n_146_[0] ,\convert[0].M0_reg_n_147_[0] ,\convert[0].M0_reg_n_148_[0] ,\convert[0].M0_reg_n_149_[0] ,\convert[0].M0_reg_n_150_[0] ,\convert[0].M0_reg_n_151_[0] ,\convert[0].M0_reg_n_152_[0] ,\convert[0].M0_reg_n_153_[0] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].M0_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].M0_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].M3_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[23:16]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].M3_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].M3_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].M3_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].M3_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].M3_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].M3_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].M3_reg[0]_P_UNCONNECTED [47:13],\convert[0].M3_reg_n_93_[0] ,\convert[0].M3_reg_n_94_[0] ,\convert[0].M3_reg_n_95_[0] ,\convert[0].M3_reg_n_96_[0] ,\convert[0].M3_reg_n_97_[0] ,\convert[0].M3_reg_n_98_[0] ,\convert[0].M3_reg_n_99_[0] ,\convert[0].M3_reg_n_100_[0] ,\convert[0].M3_reg_n_101_[0] ,\convert[0].M3_reg_n_102_[0] ,\convert[0].M3_reg_n_103_[0] ,\convert[0].M3_reg_n_104_[0] ,\convert[0].M3_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].M3_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].M3_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\convert[0].M3_reg_n_106_[0] ,\convert[0].M3_reg_n_107_[0] ,\convert[0].M3_reg_n_108_[0] ,\convert[0].M3_reg_n_109_[0] ,\convert[0].M3_reg_n_110_[0] ,\convert[0].M3_reg_n_111_[0] ,\convert[0].M3_reg_n_112_[0] ,\convert[0].M3_reg_n_113_[0] ,\convert[0].M3_reg_n_114_[0] ,\convert[0].M3_reg_n_115_[0] ,\convert[0].M3_reg_n_116_[0] ,\convert[0].M3_reg_n_117_[0] ,\convert[0].M3_reg_n_118_[0] ,\convert[0].M3_reg_n_119_[0] ,\convert[0].M3_reg_n_120_[0] ,\convert[0].M3_reg_n_121_[0] ,\convert[0].M3_reg_n_122_[0] ,\convert[0].M3_reg_n_123_[0] ,\convert[0].M3_reg_n_124_[0] ,\convert[0].M3_reg_n_125_[0] ,\convert[0].M3_reg_n_126_[0] ,\convert[0].M3_reg_n_127_[0] ,\convert[0].M3_reg_n_128_[0] ,\convert[0].M3_reg_n_129_[0] ,\convert[0].M3_reg_n_130_[0] ,\convert[0].M3_reg_n_131_[0] ,\convert[0].M3_reg_n_132_[0] ,\convert[0].M3_reg_n_133_[0] ,\convert[0].M3_reg_n_134_[0] ,\convert[0].M3_reg_n_135_[0] ,\convert[0].M3_reg_n_136_[0] ,\convert[0].M3_reg_n_137_[0] ,\convert[0].M3_reg_n_138_[0] ,\convert[0].M3_reg_n_139_[0] ,\convert[0].M3_reg_n_140_[0] ,\convert[0].M3_reg_n_141_[0] ,\convert[0].M3_reg_n_142_[0] ,\convert[0].M3_reg_n_143_[0] ,\convert[0].M3_reg_n_144_[0] ,\convert[0].M3_reg_n_145_[0] ,\convert[0].M3_reg_n_146_[0] ,\convert[0].M3_reg_n_147_[0] ,\convert[0].M3_reg_n_148_[0] ,\convert[0].M3_reg_n_149_[0] ,\convert[0].M3_reg_n_150_[0] ,\convert[0].M3_reg_n_151_[0] ,\convert[0].M3_reg_n_152_[0] ,\convert[0].M3_reg_n_153_[0] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].M3_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].M3_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].M7_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,rdata[15:8]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].M7_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].M7_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].M7_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].M7_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].M7_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_convert[0].M7_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].M7_reg[0]_P_UNCONNECTED [47:15],\convert[0].M7_reg_n_91_[0] ,\convert[0].M7_reg_n_92_[0] ,\convert[0].M7_reg_n_93_[0] ,\convert[0].M7_reg_n_94_[0] ,\convert[0].M7_reg_n_95_[0] ,\convert[0].M7_reg_n_96_[0] ,\convert[0].M7_reg_n_97_[0] ,\convert[0].M7_reg_n_98_[0] ,\convert[0].M7_reg_n_99_[0] ,\convert[0].M7_reg_n_100_[0] ,\convert[0].M7_reg_n_101_[0] ,\convert[0].M7_reg_n_102_[0] ,\convert[0].M7_reg_n_103_[0] ,\convert[0].M7_reg_n_104_[0] ,\convert[0].M7_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].M7_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].M7_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\convert[0].M7_reg_n_106_[0] ,\convert[0].M7_reg_n_107_[0] ,\convert[0].M7_reg_n_108_[0] ,\convert[0].M7_reg_n_109_[0] ,\convert[0].M7_reg_n_110_[0] ,\convert[0].M7_reg_n_111_[0] ,\convert[0].M7_reg_n_112_[0] ,\convert[0].M7_reg_n_113_[0] ,\convert[0].M7_reg_n_114_[0] ,\convert[0].M7_reg_n_115_[0] ,\convert[0].M7_reg_n_116_[0] ,\convert[0].M7_reg_n_117_[0] ,\convert[0].M7_reg_n_118_[0] ,\convert[0].M7_reg_n_119_[0] ,\convert[0].M7_reg_n_120_[0] ,\convert[0].M7_reg_n_121_[0] ,\convert[0].M7_reg_n_122_[0] ,\convert[0].M7_reg_n_123_[0] ,\convert[0].M7_reg_n_124_[0] ,\convert[0].M7_reg_n_125_[0] ,\convert[0].M7_reg_n_126_[0] ,\convert[0].M7_reg_n_127_[0] ,\convert[0].M7_reg_n_128_[0] ,\convert[0].M7_reg_n_129_[0] ,\convert[0].M7_reg_n_130_[0] ,\convert[0].M7_reg_n_131_[0] ,\convert[0].M7_reg_n_132_[0] ,\convert[0].M7_reg_n_133_[0] ,\convert[0].M7_reg_n_134_[0] ,\convert[0].M7_reg_n_135_[0] ,\convert[0].M7_reg_n_136_[0] ,\convert[0].M7_reg_n_137_[0] ,\convert[0].M7_reg_n_138_[0] ,\convert[0].M7_reg_n_139_[0] ,\convert[0].M7_reg_n_140_[0] ,\convert[0].M7_reg_n_141_[0] ,\convert[0].M7_reg_n_142_[0] ,\convert[0].M7_reg_n_143_[0] ,\convert[0].M7_reg_n_144_[0] ,\convert[0].M7_reg_n_145_[0] ,\convert[0].M7_reg_n_146_[0] ,\convert[0].M7_reg_n_147_[0] ,\convert[0].M7_reg_n_148_[0] ,\convert[0].M7_reg_n_149_[0] ,\convert[0].M7_reg_n_150_[0] ,\convert[0].M7_reg_n_151_[0] ,\convert[0].M7_reg_n_152_[0] ,\convert[0].M7_reg_n_153_[0] }),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].M7_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].M7_reg[0]_XOROUT_UNCONNECTED [7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \convert[0].Y_reg[0] 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_convert[0].Y_reg[0]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,\convert[0].A1_reg_n_92_[0] ,\convert[0].A1_reg_n_93_[0] ,\convert[0].A1_reg_n_94_[0] ,\convert[0].A1_reg_n_95_[0] ,\convert[0].A1_reg_n_96_[0] ,\convert[0].A1_reg_n_97_[0] ,\convert[0].A1_reg_n_98_[0] ,\convert[0].A1_reg_n_99_[0] ,\convert[0].A1_reg_n_100_[0] ,\convert[0].A1_reg_n_101_[0] ,\convert[0].A1_reg_n_102_[0] ,\convert[0].A1_reg_n_103_[0] ,\convert[0].A1_reg_n_104_[0] ,\convert[0].A1_reg_n_105_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_convert[0].Y_reg[0]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_convert[0].Y_reg[0]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_convert[0].Y_reg[0]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_convert[0].Y_reg[0]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_convert[0].Y_reg[0]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_convert[0].Y_reg[0]_P_UNCONNECTED [47:16],\convert[0].Y_reg_n_90_[0] ,\convert[0].Y_reg_n_91_[0] ,\convert[0].Y_reg_n_92_[0] ,\convert[0].Y_reg_n_93_[0] ,\convert[0].Y_reg_n_94_[0] ,\convert[0].Y_reg_n_95_[0] ,\convert[0].Y_reg_n_96_[0] ,\convert[0].Y_reg_n_97_[0] ,\convert[0].Y_reg_n_98_[0] ,\convert[0].Y_reg_n_99_[0] ,\convert[0].Y_reg_n_100_[0] ,\convert[0].Y_reg_n_101_[0] ,\convert[0].Y_reg_n_102_[0] ,\convert[0].Y_reg_n_103_[0] ,\convert[0].Y_reg_n_104_[0] ,\convert[0].Y_reg_n_105_[0] }),
        .PATTERNBDETECT(\NLW_convert[0].Y_reg[0]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_convert[0].Y_reg[0]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({\convert[0].A0_reg_n_106_[0] ,\convert[0].A0_reg_n_107_[0] ,\convert[0].A0_reg_n_108_[0] ,\convert[0].A0_reg_n_109_[0] ,\convert[0].A0_reg_n_110_[0] ,\convert[0].A0_reg_n_111_[0] ,\convert[0].A0_reg_n_112_[0] ,\convert[0].A0_reg_n_113_[0] ,\convert[0].A0_reg_n_114_[0] ,\convert[0].A0_reg_n_115_[0] ,\convert[0].A0_reg_n_116_[0] ,\convert[0].A0_reg_n_117_[0] ,\convert[0].A0_reg_n_118_[0] ,\convert[0].A0_reg_n_119_[0] ,\convert[0].A0_reg_n_120_[0] ,\convert[0].A0_reg_n_121_[0] ,\convert[0].A0_reg_n_122_[0] ,\convert[0].A0_reg_n_123_[0] ,\convert[0].A0_reg_n_124_[0] ,\convert[0].A0_reg_n_125_[0] ,\convert[0].A0_reg_n_126_[0] ,\convert[0].A0_reg_n_127_[0] ,\convert[0].A0_reg_n_128_[0] ,\convert[0].A0_reg_n_129_[0] ,\convert[0].A0_reg_n_130_[0] ,\convert[0].A0_reg_n_131_[0] ,\convert[0].A0_reg_n_132_[0] ,\convert[0].A0_reg_n_133_[0] ,\convert[0].A0_reg_n_134_[0] ,\convert[0].A0_reg_n_135_[0] ,\convert[0].A0_reg_n_136_[0] ,\convert[0].A0_reg_n_137_[0] ,\convert[0].A0_reg_n_138_[0] ,\convert[0].A0_reg_n_139_[0] ,\convert[0].A0_reg_n_140_[0] ,\convert[0].A0_reg_n_141_[0] ,\convert[0].A0_reg_n_142_[0] ,\convert[0].A0_reg_n_143_[0] ,\convert[0].A0_reg_n_144_[0] ,\convert[0].A0_reg_n_145_[0] ,\convert[0].A0_reg_n_146_[0] ,\convert[0].A0_reg_n_147_[0] ,\convert[0].A0_reg_n_148_[0] ,\convert[0].A0_reg_n_149_[0] ,\convert[0].A0_reg_n_150_[0] ,\convert[0].A0_reg_n_151_[0] ,\convert[0].A0_reg_n_152_[0] ,\convert[0].A0_reg_n_153_[0] }),
        .PCOUT(\NLW_convert[0].Y_reg[0]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_convert[0].Y_reg[0]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_convert[0].Y_reg[0]_XOROUT_UNCONNECTED [7:0]));
  FDRE \genblk3[1].tdata_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_97_[0] ),
        .Q(tdata[0]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [10]),
        .Q(tdata[10]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [11]),
        .Q(tdata[11]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [12]),
        .Q(tdata[12]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [13]),
        .Q(tdata[13]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [14]),
        .Q(tdata[14]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [15]),
        .Q(tdata[15]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [8]),
        .Q(tdata[16]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [9]),
        .Q(tdata[17]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [10]),
        .Q(tdata[18]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [11]),
        .Q(tdata[19]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_96_[0] ),
        .Q(tdata[1]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [12]),
        .Q(tdata[20]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[21] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [13]),
        .Q(tdata[21]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [14]),
        .Q(tdata[22]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cr_reg[0]__0 [15]),
        .Q(tdata[23]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_95_[0] ),
        .Q(tdata[2]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_94_[0] ),
        .Q(tdata[3]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_93_[0] ),
        .Q(tdata[4]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_92_[0] ),
        .Q(tdata[5]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_91_[0] ),
        .Q(tdata[6]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Y_reg_n_90_[0] ),
        .Q(tdata[7]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [8]),
        .Q(tdata[8]),
        .R(1'b0));
  FDRE \genblk3[1].tdata_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\convert[0].Cb_reg[0]__0 [9]),
        .Q(tdata[9]),
        .R(1'b0));
  FDRE rlast_dly1_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(rlast),
        .Q(rlast_dly1_reg__0_n_0),
        .R(1'b0));
  (* srl_name = "inst/rlast_dly3_reg_srl2" *) 
  SRL16E rlast_dly3_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_in),
        .D(rlast_dly1_reg__0_n_0),
        .Q(rlast_dly3_reg_srl2_n_0));
  FDRE rready_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(tready),
        .Q(rready),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    rst_in_dly1_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(rst_in_dly1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    rst_in_dly2_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(rst_in_dly1),
        .Q(rst_in_dly2),
        .R(1'b0));
  FDRE ruser_dly1_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(ruser),
        .Q(ruser_dly1_reg__0_n_0),
        .R(1'b0));
  (* srl_name = "inst/ruser_dly3_reg_srl2" *) 
  SRL16E ruser_dly3_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_in),
        .D(ruser_dly1_reg__0_n_0),
        .Q(ruser_dly3_reg_srl2_n_0));
  FDRE rvalid_dly1_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(rvalid),
        .Q(rvalid_dly1_reg__0_n_0),
        .R(1'b0));
  (* srl_name = "inst/rvalid_dly3_reg_srl2" *) 
  SRL16E rvalid_dly3_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_in),
        .D(rvalid_dly1_reg__0_n_0),
        .Q(rvalid_dly3_reg_srl2_n_0));
  FDRE tlast_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(rlast_dly3_reg_srl2_n_0),
        .Q(tlast),
        .R(1'b0));
  FDRE tuser_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(ruser_dly3_reg_srl2_n_0),
        .Q(tuser),
        .R(1'b0));
  FDRE tvalid_reg__0
       (.C(clk_in),
        .CE(1'b1),
        .D(rvalid_dly3_reg_srl2_n_0),
        .Q(tvalid),
        .R(1'b0));
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
