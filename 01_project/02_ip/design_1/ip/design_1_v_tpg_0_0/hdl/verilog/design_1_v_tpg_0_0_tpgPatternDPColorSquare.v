// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgPatternDPColorSquare (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        y,
        x,
        dpYUVCoef,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [15:0] y;
input  [15:0] x;
input  [7:0] dpYUVCoef;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] vBarSel_1;
reg   [5:0] yCount_V_1;
reg   [2:0] hBarSel_0_1;
reg   [9:0] xCount_V_5;
wire   [3:0] DPtpgBarArray_address0;
reg    DPtpgBarArray_ce0;
wire   [2:0] DPtpgBarArray_q0;
wire   [3:0] DPtpgBarArray_address1;
reg    DPtpgBarArray_ce1;
wire   [2:0] DPtpgBarArray_q1;
wire   [2:0] DPtpgBarSelYuv_601_y_address0;
reg    DPtpgBarSelYuv_601_y_ce0;
wire   [7:0] DPtpgBarSelYuv_601_y_q0;
wire   [2:0] DPtpgBarSelYuv_601_y_address1;
reg    DPtpgBarSelYuv_601_y_ce1;
wire   [7:0] DPtpgBarSelYuv_601_y_q1;
wire   [2:0] DPtpgBarSelYuv_601_u_address0;
reg    DPtpgBarSelYuv_601_u_ce0;
wire   [7:0] DPtpgBarSelYuv_601_u_q0;
wire   [2:0] DPtpgBarSelYuv_601_u_address1;
reg    DPtpgBarSelYuv_601_u_ce1;
wire   [7:0] DPtpgBarSelYuv_601_u_q1;
wire   [2:0] DPtpgBarSelYuv_601_v_address0;
reg    DPtpgBarSelYuv_601_v_ce0;
wire   [7:0] DPtpgBarSelYuv_601_v_q0;
wire   [2:0] DPtpgBarSelYuv_601_v_address1;
reg    DPtpgBarSelYuv_601_v_ce1;
wire   [7:0] DPtpgBarSelYuv_601_v_q1;
wire   [2:0] DPtpgBarSelYuv_709_y_address0;
reg    DPtpgBarSelYuv_709_y_ce0;
wire   [7:0] DPtpgBarSelYuv_709_y_q0;
wire   [2:0] DPtpgBarSelYuv_709_y_address1;
reg    DPtpgBarSelYuv_709_y_ce1;
wire   [7:0] DPtpgBarSelYuv_709_y_q1;
wire   [2:0] DPtpgBarSelYuv_709_u_address0;
reg    DPtpgBarSelYuv_709_u_ce0;
wire   [7:0] DPtpgBarSelYuv_709_u_q0;
wire   [2:0] DPtpgBarSelYuv_709_u_address1;
reg    DPtpgBarSelYuv_709_u_ce1;
wire   [7:0] DPtpgBarSelYuv_709_u_q1;
wire   [2:0] DPtpgBarSelYuv_709_v_address0;
reg    DPtpgBarSelYuv_709_v_ce0;
wire   [7:0] DPtpgBarSelYuv_709_v_q0;
wire   [2:0] DPtpgBarSelYuv_709_v_address1;
reg    DPtpgBarSelYuv_709_v_ce1;
wire   [7:0] DPtpgBarSelYuv_709_v_q1;
reg   [2:0] hBarSel_1_1;
reg   [9:0] xCount_V_4;
wire   [0:0] cmp106_fu_386_p2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8;
wire   [0:0] ap_phi_reg_pp0_iter0_vBarSel_3_loc_2_reg_265;
wire   [0:0] icmp_ln1701_1_fu_315_p2;
wire   [0:0] and_ln1706_fu_337_p2;
wire   [0:0] xor_ln1713_fu_349_p2;
wire   [0:0] icmp_ln1701_fu_303_p2;
reg   [2:0] ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6;
wire   [2:0] ap_phi_reg_pp0_iter0_hBarSel_0_5_loc_1_reg_279;
wire   [0:0] icmp_ln1072_3_fu_405_p2;
wire   [2:0] add_ln1730_fu_423_p2;
reg   [2:0] ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6;
wire   [2:0] ap_phi_reg_pp0_iter0_hBarSel_1_5_loc_1_reg_291;
wire   [0:0] icmp_ln1072_4_fu_502_p2;
wire   [2:0] add_ln1730_1_fu_520_p2;
wire   [63:0] zext_ln1754_fu_484_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1764_fu_581_p1;
wire   [63:0] zext_ln1754_1_fu_586_p1;
wire   [63:0] zext_ln1764_1_fu_596_p1;
wire   [5:0] add_ln885_fu_362_p2;
wire   [9:0] add_ln886_fu_411_p2;
wire   [9:0] zext_ln885_fu_442_p1;
wire   [9:0] add_ln886_1_fu_508_p2;
wire   [9:0] zext_ln885_1_fu_539_p1;
wire   [15:0] or_ln1701_fu_309_p2;
wire   [0:0] icmp_ln1072_fu_331_p2;
wire   [5:0] trunc_ln1718_fu_401_p1;
wire   [5:0] add_ln885_3_fu_436_p2;
wire   [3:0] or_ln_fu_464_p3;
wire   [7:0] zext_ln1733_fu_472_p1;
wire   [10:0] tmp_3_fu_476_p3;
wire   [5:0] trunc_ln1718_1_fu_498_p1;
wire   [5:0] add_ln885_4_fu_533_p2;
wire   [3:0] or_ln1733_1_fu_561_p3;
wire   [7:0] zext_ln1733_1_fu_569_p1;
wire   [10:0] tmp_4_fu_573_p3;
wire   [7:0] val_assign_24_fu_613_p3;
wire   [7:0] val_assign_23_fu_606_p3;
wire   [7:0] val_assign_25_fu_620_p3;
wire   [7:0] val_assign_32_fu_627_p3;
wire   [7:0] val_assign_33_fu_634_p3;
wire   [7:0] val_assign_34_fu_641_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_194;
reg    ap_condition_209;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 vBarSel_1 = 1'd0;
#0 yCount_V_1 = 6'd0;
#0 hBarSel_0_1 = 3'd0;
#0 xCount_V_5 = 10'd0;
#0 hBarSel_1_1 = 3'd0;
#0 xCount_V_4 = 10'd0;
end

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarArray_ROM_AUTO_1R #(
    .DataWidth( 3 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
DPtpgBarArray_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarArray_address0),
    .ce0(DPtpgBarArray_ce0),
    .q0(DPtpgBarArray_q0),
    .address1(DPtpgBarArray_address1),
    .ce1(DPtpgBarArray_ce1),
    .q1(DPtpgBarArray_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_601_y_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_601_y_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_601_y_address0),
    .ce0(DPtpgBarSelYuv_601_y_ce0),
    .q0(DPtpgBarSelYuv_601_y_q0),
    .address1(DPtpgBarSelYuv_601_y_address1),
    .ce1(DPtpgBarSelYuv_601_y_ce1),
    .q1(DPtpgBarSelYuv_601_y_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_601_u_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_601_u_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_601_u_address0),
    .ce0(DPtpgBarSelYuv_601_u_ce0),
    .q0(DPtpgBarSelYuv_601_u_q0),
    .address1(DPtpgBarSelYuv_601_u_address1),
    .ce1(DPtpgBarSelYuv_601_u_ce1),
    .q1(DPtpgBarSelYuv_601_u_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_601_v_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_601_v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_601_v_address0),
    .ce0(DPtpgBarSelYuv_601_v_ce0),
    .q0(DPtpgBarSelYuv_601_v_q0),
    .address1(DPtpgBarSelYuv_601_v_address1),
    .ce1(DPtpgBarSelYuv_601_v_ce1),
    .q1(DPtpgBarSelYuv_601_v_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_709_y_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_709_y_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_709_y_address0),
    .ce0(DPtpgBarSelYuv_709_y_ce0),
    .q0(DPtpgBarSelYuv_709_y_q0),
    .address1(DPtpgBarSelYuv_709_y_address1),
    .ce1(DPtpgBarSelYuv_709_y_ce1),
    .q1(DPtpgBarSelYuv_709_y_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_709_u_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_709_u_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_709_u_address0),
    .ce0(DPtpgBarSelYuv_709_u_ce0),
    .q0(DPtpgBarSelYuv_709_u_q0),
    .address1(DPtpgBarSelYuv_709_u_address1),
    .ce1(DPtpgBarSelYuv_709_u_ce1),
    .q1(DPtpgBarSelYuv_709_u_q1)
);

design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_709_v_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
DPtpgBarSelYuv_709_v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(DPtpgBarSelYuv_709_v_address0),
    .ce0(DPtpgBarSelYuv_709_v_ce0),
    .q0(DPtpgBarSelYuv_709_v_q0),
    .address1(DPtpgBarSelYuv_709_v_address1),
    .ce1(DPtpgBarSelYuv_709_v_ce1),
    .q1(DPtpgBarSelYuv_709_v_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
            hBarSel_0_1 <= 3'd0;
        end else if (((icmp_ln1072_3_fu_405_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            hBarSel_0_1 <= add_ln1730_fu_423_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
            hBarSel_1_1 <= 3'd0;
        end else if (((icmp_ln1072_4_fu_502_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            hBarSel_1_1 <= add_ln1730_1_fu_520_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_1_fu_315_p2 == 1'd1)) begin
            vBarSel_1 <= 1'd0;
        end else if ((1'b1 == ap_condition_209)) begin
            vBarSel_1 <= xor_ln1713_fu_349_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
            xCount_V_4 <= 10'd1;
        end else if (((icmp_ln1072_4_fu_502_p2 == 1'd1) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            xCount_V_4 <= zext_ln885_1_fu_539_p1;
        end else if (((icmp_ln1072_4_fu_502_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            xCount_V_4 <= add_ln886_1_fu_508_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
            xCount_V_5 <= 10'd0;
        end else if (((icmp_ln1072_3_fu_405_p2 == 1'd1) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            xCount_V_5 <= zext_ln885_fu_442_p1;
        end else if (((icmp_ln1072_3_fu_405_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
            xCount_V_5 <= add_ln886_fu_411_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_194)) begin
        if ((icmp_ln1701_1_fu_315_p2 == 1'd1)) begin
            yCount_V_1 <= 6'd0;
        end else if (((icmp_ln1701_1_fu_315_p2 == 1'd0) & (1'd1 == and_ln1706_fu_337_p2))) begin
            yCount_V_1 <= add_ln885_fu_362_p2;
        end else if ((1'b1 == ap_condition_209)) begin
            yCount_V_1 <= 6'd0;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarArray_ce0 = 1'b1;
    end else begin
        DPtpgBarArray_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarArray_ce1 = 1'b1;
    end else begin
        DPtpgBarArray_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_u_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_u_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_u_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_u_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_v_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_v_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_y_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_601_y_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_601_y_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_u_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_u_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_u_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_u_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_v_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_v_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_y_ce0 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DPtpgBarSelYuv_709_y_ce1 = 1'b1;
    end else begin
        DPtpgBarSelYuv_709_y_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1072_3_fu_405_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
        ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6 = add_ln1730_fu_423_p2;
    end else if (((icmp_ln1072_3_fu_405_p2 == 1'd1) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
        ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6 = hBarSel_0_1;
    end else if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
        ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6 = 3'd0;
    end else begin
        ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6 = ap_phi_reg_pp0_iter0_hBarSel_0_5_loc_1_reg_279;
    end
end

always @ (*) begin
    if (((icmp_ln1072_4_fu_502_p2 == 1'd0) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
        ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6 = add_ln1730_1_fu_520_p2;
    end else if (((icmp_ln1072_4_fu_502_p2 == 1'd1) & (icmp_ln1701_fu_303_p2 == 1'd0))) begin
        ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6 = hBarSel_1_1;
    end else if ((icmp_ln1701_fu_303_p2 == 1'd1)) begin
        ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6 = 3'd0;
    end else begin
        ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6 = ap_phi_reg_pp0_iter0_hBarSel_1_5_loc_1_reg_291;
    end
end

always @ (*) begin
    if (((1'd0 == and_ln1706_fu_337_p2) & (icmp_ln1701_fu_303_p2 == 1'd1) & (icmp_ln1701_1_fu_315_p2 == 1'd0))) begin
        ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8 = xor_ln1713_fu_349_p2;
    end else if ((((1'd0 == and_ln1706_fu_337_p2) & (icmp_ln1701_fu_303_p2 == 1'd0) & (icmp_ln1701_1_fu_315_p2 == 1'd0)) | ((icmp_ln1701_1_fu_315_p2 == 1'd0) & (1'd1 == and_ln1706_fu_337_p2)))) begin
        ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8 = vBarSel_1;
    end else if ((icmp_ln1701_1_fu_315_p2 == 1'd1)) begin
        ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8 = 1'd0;
    end else begin
        ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8 = ap_phi_reg_pp0_iter0_vBarSel_3_loc_2_reg_265;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign DPtpgBarArray_address0 = zext_ln1764_fu_581_p1;

assign DPtpgBarArray_address1 = zext_ln1754_fu_484_p1;

assign DPtpgBarSelYuv_601_u_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_601_u_address1 = zext_ln1754_1_fu_586_p1;

assign DPtpgBarSelYuv_601_v_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_601_v_address1 = zext_ln1754_1_fu_586_p1;

assign DPtpgBarSelYuv_601_y_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_601_y_address1 = zext_ln1754_1_fu_586_p1;

assign DPtpgBarSelYuv_709_u_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_709_u_address1 = zext_ln1754_1_fu_586_p1;

assign DPtpgBarSelYuv_709_v_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_709_v_address1 = zext_ln1754_1_fu_586_p1;

assign DPtpgBarSelYuv_709_y_address0 = zext_ln1764_1_fu_596_p1;

assign DPtpgBarSelYuv_709_y_address1 = zext_ln1754_1_fu_586_p1;

assign add_ln1730_1_fu_520_p2 = (hBarSel_1_1 + 3'd1);

assign add_ln1730_fu_423_p2 = (hBarSel_0_1 + 3'd1);

assign add_ln885_3_fu_436_p2 = (trunc_ln1718_fu_401_p1 + 6'd2);

assign add_ln885_4_fu_533_p2 = (trunc_ln1718_1_fu_498_p1 + 6'd2);

assign add_ln885_fu_362_p2 = (yCount_V_1 + 6'd1);

assign add_ln886_1_fu_508_p2 = ($signed(xCount_V_4) + $signed(10'd962));

assign add_ln886_fu_411_p2 = ($signed(xCount_V_5) + $signed(10'd962));

assign and_ln1706_fu_337_p2 = (icmp_ln1701_fu_303_p2 & icmp_ln1072_fu_331_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_194 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_209 = ((1'd0 == and_ln1706_fu_337_p2) & (icmp_ln1701_fu_303_p2 == 1'd1) & (icmp_ln1701_1_fu_315_p2 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_hBarSel_0_5_loc_1_reg_279 = 'bx;

assign ap_phi_reg_pp0_iter0_hBarSel_1_5_loc_1_reg_291 = 'bx;

assign ap_phi_reg_pp0_iter0_vBarSel_3_loc_2_reg_265 = 'bx;

assign ap_return_0 = val_assign_24_fu_613_p3;

assign ap_return_1 = val_assign_23_fu_606_p3;

assign ap_return_2 = val_assign_25_fu_620_p3;

assign ap_return_3 = val_assign_32_fu_627_p3;

assign ap_return_4 = val_assign_33_fu_634_p3;

assign ap_return_5 = val_assign_34_fu_641_p3;

assign cmp106_fu_386_p2 = ((dpYUVCoef == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1072_3_fu_405_p2 = ((xCount_V_5 < 10'd62) ? 1'b1 : 1'b0);

assign icmp_ln1072_4_fu_502_p2 = ((xCount_V_4 < 10'd62) ? 1'b1 : 1'b0);

assign icmp_ln1072_fu_331_p2 = ((yCount_V_1 != 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln1701_1_fu_315_p2 = ((or_ln1701_fu_309_p2 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1701_fu_303_p2 = ((x == 16'd0) ? 1'b1 : 1'b0);

assign or_ln1701_fu_309_p2 = (y | x);

assign or_ln1733_1_fu_561_p3 = {{ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8}, {ap_phi_mux_hBarSel_1_5_loc_1_phi_fu_294_p6}};

assign or_ln_fu_464_p3 = {{ap_phi_mux_vBarSel_3_loc_2_phi_fu_268_p8}, {ap_phi_mux_hBarSel_0_5_loc_1_phi_fu_282_p6}};

assign tmp_3_fu_476_p3 = {{3'd0}, {zext_ln1733_fu_472_p1}};

assign tmp_4_fu_573_p3 = {{3'd0}, {zext_ln1733_1_fu_569_p1}};

assign trunc_ln1718_1_fu_498_p1 = xCount_V_4[5:0];

assign trunc_ln1718_fu_401_p1 = xCount_V_5[5:0];

assign val_assign_23_fu_606_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_u_q1 : DPtpgBarSelYuv_709_u_q1);

assign val_assign_24_fu_613_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_y_q1 : DPtpgBarSelYuv_709_y_q1);

assign val_assign_25_fu_620_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_v_q1 : DPtpgBarSelYuv_709_v_q1);

assign val_assign_32_fu_627_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_y_q0 : DPtpgBarSelYuv_709_y_q0);

assign val_assign_33_fu_634_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_u_q0 : DPtpgBarSelYuv_709_u_q0);

assign val_assign_34_fu_641_p3 = ((cmp106_fu_386_p2[0:0] == 1'b1) ? DPtpgBarSelYuv_601_v_q0 : DPtpgBarSelYuv_709_v_q0);

assign xor_ln1713_fu_349_p2 = (vBarSel_1 ^ 1'd1);

assign zext_ln1733_1_fu_569_p1 = or_ln1733_1_fu_561_p3;

assign zext_ln1733_fu_472_p1 = or_ln_fu_464_p3;

assign zext_ln1754_1_fu_586_p1 = DPtpgBarArray_q1;

assign zext_ln1754_fu_484_p1 = tmp_3_fu_476_p3;

assign zext_ln1764_1_fu_596_p1 = DPtpgBarArray_q0;

assign zext_ln1764_fu_581_p1 = tmp_4_fu_573_p3;

assign zext_ln885_1_fu_539_p1 = add_ln885_4_fu_533_p2;

assign zext_ln885_fu_442_p1 = add_ln885_3_fu_436_p2;

endmodule //design_1_v_tpg_0_0_tpgPatternDPColorSquare
