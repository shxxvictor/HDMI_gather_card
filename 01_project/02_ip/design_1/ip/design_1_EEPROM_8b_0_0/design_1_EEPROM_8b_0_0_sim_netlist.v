// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Jun 11 13:35:00 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /vic_work/vic_projects/scaler_default/02_ip/design_1/ip/design_1_EEPROM_8b_0_0/design_1_EEPROM_8b_0_0_sim_netlist.v
// Design      : design_1_EEPROM_8b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_EEPROM_8b_0_0,EEPROM_8b,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "EEPROM_8b,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_EEPROM_8b_0_0
   (SampleClk,
    sRst,
    aSDA,
    aSCL);
  input SampleClk;
  input sRst;
  inout aSDA;
  inout aSCL;

  wire SampleClk;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire aSCL;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire aSDA;
  wire sRst;

  design_1_EEPROM_8b_0_0_EEPROM_8b inst
       (.SampleClk(SampleClk),
        .aSCL(aSCL),
        .aSDA(aSDA),
        .sRst(sRst));
endmodule

(* ORIG_REF_NAME = "EEPROM_8b" *) 
module design_1_EEPROM_8b_0_0_EEPROM_8b
   (aSDA,
    aSCL,
    SampleClk,
    sRst);
  inout aSDA;
  inout aSCL;
  input SampleClk;
  input sRst;

  wire I2C_SlaveController_n_1;
  wire I2C_SlaveController_n_2;
  wire I2C_SlaveController_n_3;
  wire I2C_SlaveController_n_4;
  wire I2C_SlaveController_n_5;
  wire I2C_SlaveController_n_6;
  wire I2C_SlaveController_n_7;
  wire I2C_SlaveController_n_8;
  wire I2C_SlaveController_n_9;
  wire SampleClk;
  wire aSCL;
  wire aSCL_I;
  wire aSDA;
  wire aSDA_I;
  wire aSDA_T;
  wire [6:0]sAddr;
  wire \sAddr[3]_i_2_n_0 ;
  wire \sAddr[4]_i_2_n_0 ;
  wire \sAddr[6]_i_3_n_0 ;
  wire [7:0]sI2C_DataOut;
  wire \sI2C_DataOut[0]_i_2_n_0 ;
  wire \sI2C_DataOut[0]_i_3_n_0 ;
  wire \sI2C_DataOut[1]_i_2_n_0 ;
  wire \sI2C_DataOut[1]_i_3_n_0 ;
  wire \sI2C_DataOut[2]_i_2_n_0 ;
  wire \sI2C_DataOut[2]_i_3_n_0 ;
  wire \sI2C_DataOut[3]_i_2_n_0 ;
  wire \sI2C_DataOut[3]_i_3_n_0 ;
  wire \sI2C_DataOut[4]_i_2_n_0 ;
  wire \sI2C_DataOut[4]_i_3_n_0 ;
  wire \sI2C_DataOut[5]_i_2_n_0 ;
  wire \sI2C_DataOut[5]_i_3_n_0 ;
  wire \sI2C_DataOut[6]_i_2_n_0 ;
  wire \sI2C_DataOut[6]_i_3_n_0 ;
  wire \sI2C_DataOut[7]_i_2_n_0 ;
  wire \sI2C_DataOut[7]_i_3_n_0 ;
  wire \sI2C_DataOut_reg[0]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[1]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[2]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[3]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[4]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[5]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[6]_i_1_n_0 ;
  wire \sI2C_DataOut_reg[7]_i_1_n_0 ;
  wire [1:0]sNstate;
  wire sRst;
  wire [1:0]sState;

  design_1_EEPROM_8b_0_0_TWI_SlaveCtl I2C_SlaveController
       (.D({I2C_SlaveController_n_2,I2C_SlaveController_n_3,I2C_SlaveController_n_4,I2C_SlaveController_n_5,I2C_SlaveController_n_6,I2C_SlaveController_n_7,I2C_SlaveController_n_8}),
        .E(I2C_SlaveController_n_1),
        .END_O_reg_0(I2C_SlaveController_n_9),
        .END_O_reg_1(sNstate),
        .Q(sI2C_DataOut),
        .SampleClk(SampleClk),
        .aSDA_T(aSDA_T),
        .\oSyncStages_reg[0] (aSDA_I),
        .\oSyncStages_reg[0]_0 (aSCL_I),
        .\sAddr_reg[3] (\sAddr[3]_i_2_n_0 ),
        .\sAddr_reg[4] (\sAddr[4]_i_2_n_0 ),
        .\sAddr_reg[6] (sAddr),
        .\sAddr_reg[6]_0 (\sAddr[6]_i_3_n_0 ),
        .sRst(sRst),
        .\sState_reg[0] (sState));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    SCL_IOBUF_inst
       (.I(1'b0),
        .IO(aSCL),
        .O(aSCL_I),
        .T(1'b1));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    SDA_IOBUF_inst
       (.I(1'b0),
        .IO(aSDA),
        .O(aSDA_I),
        .T(aSDA_T));
  LUT2 #(
    .INIT(4'h8)) 
    \sAddr[3]_i_2 
       (.I0(sState[0]),
        .I1(sState[1]),
        .O(\sAddr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sAddr[4]_i_2 
       (.I0(sAddr[3]),
        .I1(sAddr[1]),
        .I2(sAddr[0]),
        .I3(sAddr[2]),
        .O(\sAddr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sAddr[6]_i_3 
       (.I0(sAddr[4]),
        .I1(sAddr[2]),
        .I2(sAddr[0]),
        .I3(sAddr[1]),
        .I4(sAddr[3]),
        .O(\sAddr[6]_i_3_n_0 ));
  FDRE \sAddr_reg[0] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_8),
        .Q(sAddr[0]),
        .R(1'b0));
  FDRE \sAddr_reg[1] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_7),
        .Q(sAddr[1]),
        .R(1'b0));
  FDRE \sAddr_reg[2] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_6),
        .Q(sAddr[2]),
        .R(1'b0));
  FDRE \sAddr_reg[3] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_5),
        .Q(sAddr[3]),
        .R(1'b0));
  FDRE \sAddr_reg[4] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_4),
        .Q(sAddr[4]),
        .R(1'b0));
  FDRE \sAddr_reg[5] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_3),
        .Q(sAddr[5]),
        .R(1'b0));
  FDRE \sAddr_reg[6] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_1),
        .D(I2C_SlaveController_n_2),
        .Q(sAddr[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0191505554755126)) 
    \sI2C_DataOut[0]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[4]),
        .I3(sAddr[5]),
        .I4(sAddr[1]),
        .I5(sAddr[2]),
        .O(\sI2C_DataOut[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h841A101014110A10)) 
    \sI2C_DataOut[0]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[4]),
        .I4(sAddr[1]),
        .I5(sAddr[2]),
        .O(\sI2C_DataOut[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h520C040519050514)) 
    \sI2C_DataOut[1]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004498100)) 
    \sI2C_DataOut[1]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[2]),
        .I3(sAddr[1]),
        .I4(sAddr[4]),
        .I5(sAddr[5]),
        .O(\sI2C_DataOut[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h030A0A0809150716)) 
    \sI2C_DataOut[2]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5015202000122010)) 
    \sI2C_DataOut[2]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[5]),
        .I2(sAddr[0]),
        .I3(sAddr[1]),
        .I4(sAddr[4]),
        .I5(sAddr[2]),
        .O(\sI2C_DataOut[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D08000E091D1554)) 
    \sI2C_DataOut[3]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD110414712000804)) 
    \sI2C_DataOut[3]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[1]),
        .I4(sAddr[2]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h47000604190D0704)) 
    \sI2C_DataOut[4]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1151094880080011)) 
    \sI2C_DataOut[4]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h440A070A114D0704)) 
    \sI2C_DataOut[5]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h411050004A0248E4)) 
    \sI2C_DataOut[5]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[4]),
        .I3(sAddr[1]),
        .I4(sAddr[2]),
        .I5(sAddr[5]),
        .O(\sI2C_DataOut[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E0A0A0A01150746)) 
    \sI2C_DataOut[6]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10454A4810040854)) 
    \sI2C_DataOut[6]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[1]),
        .I4(sAddr[4]),
        .I5(sAddr[2]),
        .O(\sI2C_DataOut[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010011070504)) 
    \sI2C_DataOut[7]_i_2 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[2]),
        .I4(sAddr[1]),
        .I5(sAddr[4]),
        .O(\sI2C_DataOut[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0150005004581454)) 
    \sI2C_DataOut[7]_i_3 
       (.I0(sAddr[6]),
        .I1(sAddr[0]),
        .I2(sAddr[5]),
        .I3(sAddr[4]),
        .I4(sAddr[1]),
        .I5(sAddr[2]),
        .O(\sI2C_DataOut[7]_i_3_n_0 ));
  FDRE \sI2C_DataOut_reg[0] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[0]_i_1_n_0 ),
        .Q(sI2C_DataOut[0]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[0]_i_1 
       (.I0(\sI2C_DataOut[0]_i_2_n_0 ),
        .I1(\sI2C_DataOut[0]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[0]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[1] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[1]_i_1_n_0 ),
        .Q(sI2C_DataOut[1]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[1]_i_1 
       (.I0(\sI2C_DataOut[1]_i_2_n_0 ),
        .I1(\sI2C_DataOut[1]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[1]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[2] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[2]_i_1_n_0 ),
        .Q(sI2C_DataOut[2]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[2]_i_1 
       (.I0(\sI2C_DataOut[2]_i_2_n_0 ),
        .I1(\sI2C_DataOut[2]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[2]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[3] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[3]_i_1_n_0 ),
        .Q(sI2C_DataOut[3]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[3]_i_1 
       (.I0(\sI2C_DataOut[3]_i_2_n_0 ),
        .I1(\sI2C_DataOut[3]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[3]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[4] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[4]_i_1_n_0 ),
        .Q(sI2C_DataOut[4]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[4]_i_1 
       (.I0(\sI2C_DataOut[4]_i_2_n_0 ),
        .I1(\sI2C_DataOut[4]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[4]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[5] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[5]_i_1_n_0 ),
        .Q(sI2C_DataOut[5]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[5]_i_1 
       (.I0(\sI2C_DataOut[5]_i_2_n_0 ),
        .I1(\sI2C_DataOut[5]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[5]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[6] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[6]_i_1_n_0 ),
        .Q(sI2C_DataOut[6]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[6]_i_1 
       (.I0(\sI2C_DataOut[6]_i_2_n_0 ),
        .I1(\sI2C_DataOut[6]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[6]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sI2C_DataOut_reg[7] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\sI2C_DataOut_reg[7]_i_1_n_0 ),
        .Q(sI2C_DataOut[7]),
        .R(1'b0));
  MUXF7 \sI2C_DataOut_reg[7]_i_1 
       (.I0(\sI2C_DataOut[7]_i_2_n_0 ),
        .I1(\sI2C_DataOut[7]_i_3_n_0 ),
        .O(\sI2C_DataOut_reg[7]_i_1_n_0 ),
        .S(sAddr[3]));
  FDRE \sState_reg[0] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_9),
        .D(sNstate[0]),
        .Q(sState[0]),
        .R(sRst));
  FDRE \sState_reg[1] 
       (.C(SampleClk),
        .CE(I2C_SlaveController_n_9),
        .D(sNstate[1]),
        .Q(sState[1]),
        .R(sRst));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_EEPROM_8b_0_0_GlitchFilter
   (\Filter.sOut_reg_0 ,
    out,
    SampleClk,
    sRst);
  output \Filter.sOut_reg_0 ;
  input [0:0]out;
  input SampleClk;
  input sRst;

  wire \Filter.cntPeriods[1]_i_1__0_n_0 ;
  wire \Filter.cntPeriods[2]_i_1__0_n_0 ;
  wire \Filter.cntPeriods[2]_i_2__0_n_0 ;
  wire \Filter.cntPeriods[2]_i_3__0_n_0 ;
  wire \Filter.cntPeriods_reg_n_0_[0] ;
  wire \Filter.cntPeriods_reg_n_0_[1] ;
  wire \Filter.cntPeriods_reg_n_0_[2] ;
  wire \Filter.sIn_q_reg_n_0 ;
  wire \Filter.sOut_i_1__0_n_0 ;
  wire \Filter.sOut_reg_0 ;
  wire SampleClk;
  wire cntPeriods0_n_0;
  wire [0:0]out;
  wire sRst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Filter.cntPeriods[1]_i_1__0 
       (.I0(\Filter.cntPeriods_reg_n_0_[0] ),
        .I1(\Filter.cntPeriods_reg_n_0_[1] ),
        .O(\Filter.cntPeriods[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \Filter.cntPeriods[2]_i_1__0 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(out),
        .I2(sRst),
        .O(\Filter.cntPeriods[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \Filter.cntPeriods[2]_i_2__0 
       (.I0(\Filter.cntPeriods_reg_n_0_[1] ),
        .I1(\Filter.cntPeriods_reg_n_0_[0] ),
        .I2(\Filter.cntPeriods_reg_n_0_[2] ),
        .O(\Filter.cntPeriods[2]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \Filter.cntPeriods[2]_i_3__0 
       (.I0(\Filter.cntPeriods_reg_n_0_[1] ),
        .I1(\Filter.cntPeriods_reg_n_0_[0] ),
        .I2(\Filter.cntPeriods_reg_n_0_[2] ),
        .O(\Filter.cntPeriods[2]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[0] 
       (.C(SampleClk),
        .CE(\Filter.cntPeriods[2]_i_2__0_n_0 ),
        .D(cntPeriods0_n_0),
        .Q(\Filter.cntPeriods_reg_n_0_[0] ),
        .R(\Filter.cntPeriods[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[1] 
       (.C(SampleClk),
        .CE(\Filter.cntPeriods[2]_i_2__0_n_0 ),
        .D(\Filter.cntPeriods[1]_i_1__0_n_0 ),
        .Q(\Filter.cntPeriods_reg_n_0_[1] ),
        .R(\Filter.cntPeriods[2]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[2] 
       (.C(SampleClk),
        .CE(\Filter.cntPeriods[2]_i_2__0_n_0 ),
        .D(\Filter.cntPeriods[2]_i_3__0_n_0 ),
        .Q(\Filter.cntPeriods_reg_n_0_[2] ),
        .S(\Filter.cntPeriods[2]_i_1__0_n_0 ));
  FDRE \Filter.sIn_q_reg 
       (.C(SampleClk),
        .CE(1'b1),
        .D(out),
        .Q(\Filter.sIn_q_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Filter.sOut_i_1__0 
       (.I0(\Filter.sIn_q_reg_n_0 ),
        .I1(\Filter.cntPeriods_reg_n_0_[2] ),
        .I2(\Filter.cntPeriods_reg_n_0_[0] ),
        .I3(\Filter.cntPeriods_reg_n_0_[1] ),
        .I4(\Filter.sOut_reg_0 ),
        .O(\Filter.sOut_i_1__0_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1__0_n_0 ),
        .Q(\Filter.sOut_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cntPeriods0
       (.I0(\Filter.cntPeriods_reg_n_0_[0] ),
        .O(cntPeriods0_n_0));
endmodule

(* ORIG_REF_NAME = "GlitchFilter" *) 
module design_1_EEPROM_8b_0_0_GlitchFilter_0
   (sOut,
    out,
    SampleClk,
    sRst);
  output sOut;
  input [0:0]out;
  input SampleClk;
  input sRst;

  wire \Filter.cntPeriods[1]_i_1_n_0 ;
  wire \Filter.cntPeriods[2]_i_1_n_0 ;
  wire \Filter.cntPeriods[2]_i_3_n_0 ;
  wire \Filter.sOut_i_1_n_0 ;
  wire SampleClk;
  wire [2:0]cntPeriods;
  wire [0:0]cntPeriods0__0;
  wire [0:0]out;
  wire p_1_in;
  wire sIn_q;
  wire sOut;
  wire sRst;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Filter.cntPeriods[1]_i_1 
       (.I0(cntPeriods[0]),
        .I1(cntPeriods[1]),
        .O(\Filter.cntPeriods[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \Filter.cntPeriods[2]_i_1 
       (.I0(sIn_q),
        .I1(out),
        .I2(sRst),
        .O(\Filter.cntPeriods[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \Filter.cntPeriods[2]_i_2 
       (.I0(cntPeriods[1]),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[2]),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hE1)) 
    \Filter.cntPeriods[2]_i_3 
       (.I0(cntPeriods[1]),
        .I1(cntPeriods[0]),
        .I2(cntPeriods[2]),
        .O(\Filter.cntPeriods[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[0] 
       (.C(SampleClk),
        .CE(p_1_in),
        .D(cntPeriods0__0),
        .Q(cntPeriods[0]),
        .R(\Filter.cntPeriods[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Filter.cntPeriods_reg[1] 
       (.C(SampleClk),
        .CE(p_1_in),
        .D(\Filter.cntPeriods[1]_i_1_n_0 ),
        .Q(cntPeriods[1]),
        .R(\Filter.cntPeriods[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Filter.cntPeriods_reg[2] 
       (.C(SampleClk),
        .CE(p_1_in),
        .D(\Filter.cntPeriods[2]_i_3_n_0 ),
        .Q(cntPeriods[2]),
        .S(\Filter.cntPeriods[2]_i_1_n_0 ));
  FDRE \Filter.sIn_q_reg 
       (.C(SampleClk),
        .CE(1'b1),
        .D(out),
        .Q(sIn_q),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \Filter.sOut_i_1 
       (.I0(sIn_q),
        .I1(cntPeriods[2]),
        .I2(cntPeriods[0]),
        .I3(cntPeriods[1]),
        .I4(sOut),
        .O(\Filter.sOut_i_1_n_0 ));
  FDRE \Filter.sOut_reg 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\Filter.sOut_i_1_n_0 ),
        .Q(sOut),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cntPeriods0
       (.I0(cntPeriods[0]),
        .O(cntPeriods0__0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_EEPROM_8b_0_0_SyncAsync
   (out,
    SampleClk,
    \oSyncStages_reg[0]_0 );
  output [0:0]out;
  input SampleClk;
  input [0:0]\oSyncStages_reg[0]_0 ;

  wire SampleClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[0]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\oSyncStages_reg[0]_0 ),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module design_1_EEPROM_8b_0_0_SyncAsync_1
   (out,
    SampleClk,
    \oSyncStages_reg[0]_0 );
  output [0:0]out;
  input SampleClk;
  input [0:0]\oSyncStages_reg[0]_0 ;

  wire SampleClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[0]_0 ;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(\oSyncStages_reg[0]_0 ),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(SampleClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TWI_SlaveCtl" *) 
module design_1_EEPROM_8b_0_0_TWI_SlaveCtl
   (aSDA_T,
    E,
    D,
    END_O_reg_0,
    END_O_reg_1,
    SampleClk,
    Q,
    \sState_reg[0] ,
    \sAddr_reg[6] ,
    \sAddr_reg[3] ,
    \sAddr_reg[6]_0 ,
    \sAddr_reg[4] ,
    \oSyncStages_reg[0] ,
    \oSyncStages_reg[0]_0 ,
    sRst);
  output aSDA_T;
  output [0:0]E;
  output [6:0]D;
  output [0:0]END_O_reg_0;
  output [1:0]END_O_reg_1;
  input SampleClk;
  input [7:0]Q;
  input [1:0]\sState_reg[0] ;
  input [6:0]\sAddr_reg[6] ;
  input \sAddr_reg[3] ;
  input \sAddr_reg[6]_0 ;
  input \sAddr_reg[4] ;
  input [0:0]\oSyncStages_reg[0] ;
  input [0:0]\oSyncStages_reg[0]_0 ;
  input sRst;

  wire [6:0]D;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire [0:0]E;
  wire END_O_i_3_n_0;
  wire [0:0]END_O_reg_0;
  wire [1:0]END_O_reg_1;
  wire \FSM_gray_state[1]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_3_n_0 ;
  wire \FSM_gray_state[1]_i_4_n_0 ;
  wire \FSM_gray_state[1]_i_6_n_0 ;
  wire \FSM_gray_state[2]_i_11_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_3_n_0 ;
  wire \FSM_gray_state[2]_i_4_n_0 ;
  wire \FSM_gray_state[2]_i_5_n_0 ;
  wire \FSM_gray_state[2]_i_6_n_0 ;
  wire \FSM_gray_state[2]_i_7_n_0 ;
  wire GlitchF_SCL_n_0;
  wire [7:0]Q;
  wire SampleClk;
  wire aSDA_T;
  wire \bitCount[0]_i_1_n_0 ;
  wire \bitCount[1]_i_1_n_0 ;
  wire \bitCount[2]_i_1_n_0 ;
  wire \bitCount[2]_i_2_n_0 ;
  wire \bitCount[2]_i_3_n_0 ;
  wire bitCount__1;
  wire [2:0]bitCount_reg;
  wire dScl;
  wire dSda;
  wire \dataByte[0]_i_1_n_0 ;
  wire \dataByte[1]_i_1_n_0 ;
  wire \dataByte[2]_i_1_n_0 ;
  wire \dataByte[3]_i_1_n_0 ;
  wire \dataByte[4]_i_1_n_0 ;
  wire \dataByte[5]_i_1_n_0 ;
  wire \dataByte[6]_i_1_n_0 ;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_2_n_0 ;
  wire \dataByte[7]_i_3_n_0 ;
  wire \dataByte[7]_i_4_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire \dataByte_reg_n_0_[1] ;
  wire \dataByte_reg_n_0_[2] ;
  wire \dataByte_reg_n_0_[3] ;
  wire \dataByte_reg_n_0_[4] ;
  wire \dataByte_reg_n_0_[5] ;
  wire \dataByte_reg_n_0_[6] ;
  wire \dataByte_reg_n_0_[7] ;
  wire ddScl;
  wire ddSda;
  wire fStart__1;
  wire fStop__1;
  wire iDone;
  wire iEnd;
  wire [2:0]nstate__0;
  wire [0:0]\oSyncStages_reg[0] ;
  wire [0:0]\oSyncStages_reg[0]_0 ;
  wire p_14_in;
  wire p_15_in;
  wire rd_wrn_i_1_n_0;
  wire rd_wrn_reg_n_0;
  wire \sAddr_reg[3] ;
  wire \sAddr_reg[4] ;
  wire [6:0]\sAddr_reg[6] ;
  wire \sAddr_reg[6]_0 ;
  wire sI2C_Done;
  wire sI2C_End;
  wire sOut;
  wire sRst;
  wire sScl;
  wire sSda;
  wire [1:0]\sState_reg[0] ;
  wire [2:0]state;

  LUT6 #(
    .INIT(64'hFCCCECCCCCCCCCCC)) 
    DONE_O_i_1
       (.I0(\FSM_gray_state[2]_i_7_n_0 ),
        .I1(DONE_O_i_2_n_0),
        .I2(DONE_O_i_3_n_0),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(iDone));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    DONE_O_i_2
       (.I0(ddScl),
        .I1(dScl),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(bitCount__1),
        .O(DONE_O_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    DONE_O_i_3
       (.I0(bitCount_reg[2]),
        .I1(bitCount_reg[1]),
        .I2(bitCount_reg[0]),
        .I3(ddScl),
        .I4(dScl),
        .O(DONE_O_i_3_n_0));
  FDRE DONE_O_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(iDone),
        .Q(sI2C_Done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    END_O_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(p_14_in),
        .I4(ddSda),
        .I5(END_O_i_3_n_0),
        .O(iEnd));
  LUT2 #(
    .INIT(4'h2)) 
    END_O_i_2
       (.I0(dScl),
        .I1(ddScl),
        .O(p_14_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h48)) 
    END_O_i_3
       (.I0(ddSda),
        .I1(dScl),
        .I2(dSda),
        .O(END_O_i_3_n_0));
  FDRE END_O_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(iEnd),
        .Q(sI2C_End),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5D155D1504005D7F)) 
    \FSM_gray_state[0]_i_1 
       (.I0(state[1]),
        .I1(dScl),
        .I2(dSda),
        .I3(ddSda),
        .I4(state[0]),
        .I5(state[2]),
        .O(nstate__0[0]));
  LUT6 #(
    .INIT(64'h80808080DFDFD0DA)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state[1]_i_2_n_0 ),
        .I1(\FSM_gray_state[1]_i_3_n_0 ),
        .I2(\FSM_gray_state[1]_i_4_n_0 ),
        .I3(rd_wrn_reg_n_0),
        .I4(fStart__1),
        .I5(fStop__1),
        .O(nstate__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_gray_state[1]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\FSM_gray_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000FFC0AAFFFF)) 
    \FSM_gray_state[1]_i_3 
       (.I0(fStart__1),
        .I1(\FSM_gray_state[1]_i_6_n_0 ),
        .I2(\FSM_gray_state[2]_i_11_n_0 ),
        .I3(state[0]),
        .I4(state[1]),
        .I5(fStop__1),
        .O(\FSM_gray_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_gray_state[1]_i_4 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_gray_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_gray_state[1]_i_5 
       (.I0(dSda),
        .I1(dScl),
        .I2(ddSda),
        .O(fStart__1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_gray_state[1]_i_6 
       (.I0(\dataByte_reg_n_0_[2] ),
        .I1(\dataByte_reg_n_0_[1] ),
        .I2(\dataByte_reg_n_0_[0] ),
        .O(\FSM_gray_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAFEEE)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[2]_i_3_n_0 ),
        .I1(\FSM_gray_state[2]_i_4_n_0 ),
        .I2(state[1]),
        .I3(\FSM_gray_state[2]_i_5_n_0 ),
        .I4(state[2]),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_gray_state[2]_i_10 
       (.I0(bitCount_reg[0]),
        .I1(bitCount_reg[1]),
        .I2(bitCount_reg[2]),
        .O(bitCount__1));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_gray_state[2]_i_11 
       (.I0(\dataByte_reg_n_0_[5] ),
        .I1(\dataByte_reg_n_0_[6] ),
        .I2(\dataByte_reg_n_0_[3] ),
        .I3(\dataByte_reg_n_0_[4] ),
        .O(\FSM_gray_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    \FSM_gray_state[2]_i_2 
       (.I0(\FSM_gray_state[2]_i_6_n_0 ),
        .I1(\FSM_gray_state[2]_i_7_n_0 ),
        .I2(fStop__1),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(nstate__0[2]));
  LUT6 #(
    .INIT(64'h3F203F2F3F203F20)) 
    \FSM_gray_state[2]_i_3 
       (.I0(DONE_O_i_3_n_0),
        .I1(\FSM_gray_state[1]_i_2_n_0 ),
        .I2(\FSM_gray_state[1]_i_4_n_0 ),
        .I3(END_O_i_3_n_0),
        .I4(dScl),
        .I5(ddScl),
        .O(\FSM_gray_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000F800)) 
    \FSM_gray_state[2]_i_4 
       (.I0(p_15_in),
        .I1(bitCount__1),
        .I2(fStop__1),
        .I3(state[0]),
        .I4(state[1]),
        .I5(fStart__1),
        .O(\FSM_gray_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2EE20C002EE2)) 
    \FSM_gray_state[2]_i_5 
       (.I0(ddScl),
        .I1(dScl),
        .I2(ddSda),
        .I3(dSda),
        .I4(state[0]),
        .I5(DONE_O_i_3_n_0),
        .O(\FSM_gray_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000550000FFFC)) 
    \FSM_gray_state[2]_i_6 
       (.I0(rd_wrn_reg_n_0),
        .I1(\sState_reg[0] [0]),
        .I2(\sState_reg[0] [1]),
        .I3(\FSM_gray_state[1]_i_4_n_0 ),
        .I4(END_O_i_3_n_0),
        .I5(\FSM_gray_state[1]_i_2_n_0 ),
        .O(\FSM_gray_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_gray_state[2]_i_7 
       (.I0(\FSM_gray_state[2]_i_11_n_0 ),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(\dataByte_reg_n_0_[1] ),
        .I3(\dataByte_reg_n_0_[2] ),
        .O(\FSM_gray_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_gray_state[2]_i_8 
       (.I0(dScl),
        .I1(dSda),
        .I2(ddSda),
        .O(fStop__1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_gray_state[2]_i_9 
       (.I0(ddScl),
        .I1(dScl),
        .O(p_15_in));
  (* FSM_ENCODED_STATES = "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011" *) 
  FDRE \FSM_gray_state_reg[0] 
       (.C(SampleClk),
        .CE(\FSM_gray_state[2]_i_1_n_0 ),
        .D(nstate__0[0]),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011" *) 
  FDRE \FSM_gray_state_reg[1] 
       (.C(SampleClk),
        .CE(\FSM_gray_state[2]_i_1_n_0 ),
        .D(nstate__0[1]),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stsack:100,stwrite:111,stturnaround:110,stread:001,stidle:000,stmack:010,staddress:011" *) 
  FDRE \FSM_gray_state_reg[2] 
       (.C(SampleClk),
        .CE(\FSM_gray_state[2]_i_1_n_0 ),
        .D(nstate__0[2]),
        .Q(state[2]),
        .R(1'b0));
  design_1_EEPROM_8b_0_0_GlitchFilter GlitchF_SCL
       (.\Filter.sOut_reg_0 (GlitchF_SCL_n_0),
        .SampleClk(SampleClk),
        .out(sScl),
        .sRst(sRst));
  design_1_EEPROM_8b_0_0_GlitchFilter_0 GlitchF_SDA
       (.SampleClk(SampleClk),
        .out(sSda),
        .sOut(sOut),
        .sRst(sRst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEFEB)) 
    SDA_IOBUF_inst_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\dataByte_reg_n_0_[7] ),
        .O(aSDA_T));
  design_1_EEPROM_8b_0_0_SyncAsync SyncSCL
       (.SampleClk(SampleClk),
        .\oSyncStages_reg[0]_0 (\oSyncStages_reg[0]_0 ),
        .out(sScl));
  design_1_EEPROM_8b_0_0_SyncAsync_1 SyncSDA
       (.SampleClk(SampleClk),
        .\oSyncStages_reg[0]_0 (\oSyncStages_reg[0] ),
        .out(sSda));
  LUT1 #(
    .INIT(2'h1)) 
    \bitCount[0]_i_1 
       (.I0(bitCount_reg[0]),
        .O(\bitCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bitCount[1]_i_1 
       (.I0(bitCount_reg[0]),
        .I1(bitCount_reg[1]),
        .O(\bitCount[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \bitCount[2]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(fStart__1),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\bitCount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44020000)) 
    \bitCount[2]_i_2 
       (.I0(ddScl),
        .I1(dScl),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bitCount[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \bitCount[2]_i_3 
       (.I0(bitCount_reg[0]),
        .I1(bitCount_reg[1]),
        .I2(bitCount_reg[2]),
        .O(\bitCount[2]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(SampleClk),
        .CE(\bitCount[2]_i_2_n_0 ),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(bitCount_reg[0]),
        .S(\bitCount[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(SampleClk),
        .CE(\bitCount[2]_i_2_n_0 ),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(bitCount_reg[1]),
        .S(\bitCount[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(SampleClk),
        .CE(\bitCount[2]_i_2_n_0 ),
        .D(\bitCount[2]_i_3_n_0 ),
        .Q(bitCount_reg[2]),
        .S(\bitCount[2]_i_1_n_0 ));
  FDRE dScl_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(GlitchF_SCL_n_0),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(sOut),
        .Q(dSda),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[0]_i_1 
       (.I0(Q[0]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(dSda),
        .O(\dataByte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[1]_i_1 
       (.I0(Q[1]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[0] ),
        .O(\dataByte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[2]_i_1 
       (.I0(Q[2]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[1] ),
        .O(\dataByte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[3]_i_1 
       (.I0(Q[3]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[2] ),
        .O(\dataByte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[4]_i_1 
       (.I0(Q[4]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[3] ),
        .O(\dataByte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[5]_i_1 
       (.I0(Q[5]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[4] ),
        .O(\dataByte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[6]_i_1 
       (.I0(Q[6]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[5] ),
        .O(\dataByte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \dataByte[7]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(fStart__1),
        .I4(\dataByte[7]_i_3_n_0 ),
        .I5(\bitCount[2]_i_2_n_0 ),
        .O(\dataByte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABABABAAA8A8A8AA)) 
    \dataByte[7]_i_2 
       (.I0(Q[7]),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(fStart__1),
        .I3(\dataByte[7]_i_4_n_0 ),
        .I4(state[2]),
        .I5(\dataByte_reg_n_0_[6] ),
        .O(\dataByte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0304000000040000)) 
    \dataByte[7]_i_3 
       (.I0(ddSda),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(p_15_in),
        .I5(rd_wrn_reg_n_0),
        .O(\dataByte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dataByte[7]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\dataByte[7]_i_4_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[0]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[1]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[2]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[3]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[4]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[5]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[6]_i_1_n_0 ),
        .Q(\dataByte_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(SampleClk),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(\dataByte[7]_i_2_n_0 ),
        .Q(\dataByte_reg_n_0_[7] ),
        .R(1'b0));
  FDRE ddScl_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(dScl),
        .Q(ddScl),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(dSda),
        .Q(ddSda),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    rd_wrn_i_1
       (.I0(dSda),
        .I1(DONE_O_i_3_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(rd_wrn_reg_n_0),
        .O(rd_wrn_i_1_n_0));
  FDRE rd_wrn_reg
       (.C(SampleClk),
        .CE(1'b1),
        .D(rd_wrn_i_1_n_0),
        .Q(rd_wrn_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sAddr[0]_i_1 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(\sState_reg[0] [1]),
        .I2(\sAddr_reg[6] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF606)) 
    \sAddr[1]_i_1 
       (.I0(\sAddr_reg[6] [1]),
        .I1(\sAddr_reg[6] [0]),
        .I2(\sState_reg[0] [1]),
        .I3(\dataByte_reg_n_0_[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \sAddr[2]_i_1 
       (.I0(\sAddr_reg[6] [2]),
        .I1(\sAddr_reg[6] [1]),
        .I2(\sAddr_reg[6] [0]),
        .I3(\sState_reg[0] [1]),
        .I4(\dataByte_reg_n_0_[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF6AAA00006AAA)) 
    \sAddr[3]_i_1 
       (.I0(\sAddr_reg[6] [3]),
        .I1(\sAddr_reg[6] [1]),
        .I2(\sAddr_reg[6] [0]),
        .I3(\sAddr_reg[6] [2]),
        .I4(\sAddr_reg[3] ),
        .I5(\dataByte_reg_n_0_[3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hF606)) 
    \sAddr[4]_i_1 
       (.I0(\sAddr_reg[6] [4]),
        .I1(\sAddr_reg[4] ),
        .I2(\sState_reg[0] [1]),
        .I3(\dataByte_reg_n_0_[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hF606)) 
    \sAddr[5]_i_1 
       (.I0(\sAddr_reg[6] [5]),
        .I1(\sAddr_reg[6]_0 ),
        .I2(\sState_reg[0] [1]),
        .I3(\dataByte_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sAddr[6]_i_1 
       (.I0(sI2C_Done),
        .I1(\sState_reg[0] [0]),
        .O(E));
  LUT5 #(
    .INIT(32'hFF6A006A)) 
    \sAddr[6]_i_2 
       (.I0(\sAddr_reg[6] [6]),
        .I1(\sAddr_reg[6]_0 ),
        .I2(\sAddr_reg[6] [5]),
        .I3(\sState_reg[0] [1]),
        .I4(\dataByte_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \sState[0]_i_1 
       (.I0(\sState_reg[0] [0]),
        .I1(sI2C_End),
        .I2(\sState_reg[0] [1]),
        .O(END_O_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEEEC)) 
    \sState[1]_i_1 
       (.I0(sI2C_End),
        .I1(sI2C_Done),
        .I2(\sState_reg[0] [0]),
        .I3(\sState_reg[0] [1]),
        .O(END_O_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4447)) 
    \sState[1]_i_2 
       (.I0(sI2C_End),
        .I1(\sState_reg[0] [1]),
        .I2(rd_wrn_reg_n_0),
        .I3(\sState_reg[0] [0]),
        .O(END_O_reg_1[1]));
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
