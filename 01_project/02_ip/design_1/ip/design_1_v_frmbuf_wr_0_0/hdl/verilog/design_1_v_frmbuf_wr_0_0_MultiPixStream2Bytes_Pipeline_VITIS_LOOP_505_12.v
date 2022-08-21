// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_505_12 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        img_dout,
        img_empty_n,
        img_read,
        pix_val_V_19,
        pix_val_V_18,
        pix_val_V_17,
        pix_val_V_16,
        trunc_ln492_1,
        bytePlanes_01_din,
        bytePlanes_01_full_n,
        bytePlanes_01_write,
        icmp_ln495,
        cmp193_2,
        cmp193_1,
        sub191_cast200,
        cmp193,
        pix_val_V_45_out,
        pix_val_V_45_out_ap_vld,
        pix_val_V_44_out,
        pix_val_V_44_out_ap_vld,
        pix_val_V_43_out,
        pix_val_V_43_out_ap_vld,
        pix_val_V_42_out,
        pix_val_V_42_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [47:0] img_dout;
input   img_empty_n;
output   img_read;
input  [7:0] pix_val_V_19;
input  [7:0] pix_val_V_18;
input  [7:0] pix_val_V_17;
input  [7:0] pix_val_V_16;
input  [11:0] trunc_ln492_1;
output  [127:0] bytePlanes_01_din;
input   bytePlanes_01_full_n;
output   bytePlanes_01_write;
input  [0:0] icmp_ln495;
input  [0:0] cmp193_2;
input  [0:0] cmp193_1;
input  [11:0] sub191_cast200;
input  [0:0] cmp193;
output  [7:0] pix_val_V_45_out;
output   pix_val_V_45_out_ap_vld;
output  [7:0] pix_val_V_44_out;
output   pix_val_V_44_out_ap_vld;
output  [7:0] pix_val_V_43_out;
output   pix_val_V_43_out_ap_vld;
output  [7:0] pix_val_V_42_out;
output   pix_val_V_42_out_ap_vld;

reg ap_idle;
reg img_read;
reg bytePlanes_01_write;
reg pix_val_V_45_out_ap_vld;
reg pix_val_V_44_out_ap_vld;
reg pix_val_V_43_out_ap_vld;
reg pix_val_V_42_out_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
reg   [0:0] icmp_ln505_reg_617;
reg   [0:0] or_ln510_1_reg_652;
reg    ap_predicate_op59_read_state3;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] or_ln510_2_reg_656;
reg    ap_predicate_op70_read_state4;
reg    ap_block_state4_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_subdone;
reg    bytePlanes_01_blk_n;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
reg    img_blk_n;
reg   [0:0] or_ln510_reg_628;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg   [0:0] or_ln510_3_reg_660;
reg   [7:0] pix_val_V_97_reg_187;
reg   [7:0] pix_val_V_96_reg_197;
reg   [7:0] pix_val_V_95_reg_207;
reg   [7:0] pix_val_V_94_reg_217;
reg   [7:0] pix_val_V_149_reg_227;
reg   [7:0] pix_val_V_148_reg_238;
reg   [7:0] pix_val_V_147_reg_249;
reg   [7:0] pix_val_V_146_reg_260;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_predicate_op81_read_state5;
reg    ap_block_state5_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln505_fu_413_p2;
reg   [0:0] icmp_ln505_reg_617_pp0_iter1_reg;
wire   [0:0] cmp192_fu_429_p2;
reg   [0:0] cmp192_reg_621;
wire   [0:0] or_ln510_fu_435_p2;
wire   [7:0] pix_val_V_169_fu_446_p1;
reg    ap_predicate_op42_read_state2;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_state6_pp0_stage1_iter1;
reg    ap_block_pp0_stage1_11001;
wire   [0:0] or_ln510_1_fu_450_p2;
wire   [0:0] or_ln510_2_fu_454_p2;
wire   [0:0] or_ln510_3_fu_458_p2;
reg    ap_block_pp0_stage2_11001;
wire   [7:0] pix_val_V_173_fu_474_p1;
wire   [7:0] pix_val_V_175_fu_478_p1;
reg    ap_block_pp0_stage3_11001;
wire   [7:0] pix_val_V_181_fu_482_p1;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage1_subdone;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_97_reg_187;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_96_reg_197;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_95_reg_207;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_94_reg_217;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_149_reg_227;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_149_reg_227;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_148_reg_238;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_148_reg_238;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_147_reg_249;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_147_reg_249;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_146_reg_260;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_146_reg_260;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_180_reg_271;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_179_reg_281;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_178_reg_291;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_177_reg_301;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301;
reg   [7:0] ap_phi_mux_pix_val_V_186_phi_fu_314_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_186_reg_311;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_186_reg_311;
reg   [7:0] ap_phi_mux_pix_val_V_185_phi_fu_324_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_185_reg_321;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_185_reg_321;
reg   [7:0] ap_phi_mux_pix_val_V_184_phi_fu_334_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_184_reg_331;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_184_reg_331;
reg   [7:0] ap_phi_mux_pix_val_V_183_phi_fu_344_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_183_reg_341;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_183_reg_341;
reg   [11:0] x_3_fu_94;
wire   [11:0] x_6_fu_419_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_x;
reg   [7:0] pix_val_V_42_fu_98;
reg   [7:0] pix_val_V_43_fu_102;
reg   [7:0] pix_val_V_44_fu_106;
reg   [7:0] pix_val_V_45_fu_110;
reg    ap_block_pp0_stage1_01001;
wire   [12:0] zext_ln505_fu_425_p1;
wire  signed [12:0] sub191_cast200_cast_fu_381_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_535;
reg    ap_condition_538;
reg    ap_condition_275;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

design_1_v_frmbuf_wr_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_538)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_94_reg_217 <= pix_val_V_42_fu_98;
        end else if ((1'b1 == ap_condition_535)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_94_reg_217 <= pix_val_V_169_fu_446_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_538)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_95_reg_207 <= pix_val_V_43_fu_102;
        end else if ((1'b1 == ap_condition_535)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_95_reg_207 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_538)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_96_reg_197 <= pix_val_V_44_fu_106;
        end else if ((1'b1 == ap_condition_535)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_96_reg_197 <= {{img_dout[31:24]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_538)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_97_reg_187 <= pix_val_V_45_fu_110;
        end else if ((1'b1 == ap_condition_535)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_97_reg_187 <= {{img_dout[39:32]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if (((or_ln510_1_reg_652 == 1'd0) & (icmp_ln505_reg_617 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_146_reg_260 <= ap_phi_reg_pp0_iter0_pix_val_V_94_reg_217;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_146_reg_260 <= ap_phi_reg_pp0_iter0_pix_val_V_146_reg_260;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if (((or_ln510_1_reg_652 == 1'd0) & (icmp_ln505_reg_617 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_147_reg_249 <= ap_phi_reg_pp0_iter0_pix_val_V_95_reg_207;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_147_reg_249 <= ap_phi_reg_pp0_iter0_pix_val_V_147_reg_249;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if (((or_ln510_1_reg_652 == 1'd0) & (icmp_ln505_reg_617 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_148_reg_238 <= ap_phi_reg_pp0_iter0_pix_val_V_96_reg_197;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_148_reg_238 <= ap_phi_reg_pp0_iter0_pix_val_V_148_reg_238;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_275)) begin
        if (((or_ln510_1_reg_652 == 1'd0) & (icmp_ln505_reg_617 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_149_reg_227 <= ap_phi_reg_pp0_iter0_pix_val_V_97_reg_187;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_149_reg_227 <= ap_phi_reg_pp0_iter0_pix_val_V_149_reg_227;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln510_2_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301 <= ap_phi_reg_pp0_iter1_pix_val_V_146_reg_260;
    end else if (((or_ln510_2_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301 <= pix_val_V_175_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301 <= ap_phi_reg_pp0_iter0_pix_val_V_177_reg_301;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln510_2_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291 <= ap_phi_reg_pp0_iter1_pix_val_V_147_reg_249;
    end else if (((or_ln510_2_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291 <= {{img_dout[15:8]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291 <= ap_phi_reg_pp0_iter0_pix_val_V_178_reg_291;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln510_2_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281 <= ap_phi_reg_pp0_iter1_pix_val_V_148_reg_238;
    end else if (((or_ln510_2_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281 <= {{img_dout[31:24]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281 <= ap_phi_reg_pp0_iter0_pix_val_V_179_reg_281;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln510_2_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271 <= ap_phi_reg_pp0_iter1_pix_val_V_149_reg_227;
    end else if (((or_ln510_2_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271 <= {{img_dout[39:32]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271 <= ap_phi_reg_pp0_iter0_pix_val_V_180_reg_271;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln510_3_reg_660 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_183_reg_341 <= pix_val_V_181_fu_482_p1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_183_reg_341 <= ap_phi_reg_pp0_iter0_pix_val_V_183_reg_341;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln510_3_reg_660 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_184_reg_331 <= {{img_dout[15:8]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_184_reg_331 <= ap_phi_reg_pp0_iter0_pix_val_V_184_reg_331;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln510_3_reg_660 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_185_reg_321 <= {{img_dout[31:24]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_185_reg_321 <= ap_phi_reg_pp0_iter0_pix_val_V_185_reg_321;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln510_3_reg_660 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_186_reg_311 <= {{img_dout[39:32]}};
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter1_pix_val_V_186_reg_311 <= ap_phi_reg_pp0_iter0_pix_val_V_186_reg_311;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pix_val_V_42_fu_98 <= pix_val_V_16;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_42_fu_98 <= ap_phi_mux_pix_val_V_183_phi_fu_344_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pix_val_V_43_fu_102 <= pix_val_V_17;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_43_fu_102 <= ap_phi_mux_pix_val_V_184_phi_fu_334_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pix_val_V_44_fu_106 <= pix_val_V_18;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_44_fu_106 <= ap_phi_mux_pix_val_V_185_phi_fu_324_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pix_val_V_45_fu_110 <= pix_val_V_19;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_45_fu_110 <= ap_phi_mux_pix_val_V_186_phi_fu_314_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln505_fu_413_p2 == 1'd0))) begin
            x_3_fu_94 <= x_6_fu_419_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_3_fu_94 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (or_ln510_1_reg_652 == 1'd1) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter0_pix_val_V_146_reg_260 <= pix_val_V_173_fu_474_p1;
        ap_phi_reg_pp0_iter0_pix_val_V_147_reg_249 <= {{img_dout[15:8]}};
        ap_phi_reg_pp0_iter0_pix_val_V_148_reg_238 <= {{img_dout[31:24]}};
        ap_phi_reg_pp0_iter0_pix_val_V_149_reg_227 <= {{img_dout[39:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln505_fu_413_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cmp192_reg_621 <= cmp192_fu_429_p2;
        or_ln510_reg_628 <= or_ln510_fu_435_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln505_reg_617 <= icmp_ln505_fu_413_p2;
        icmp_ln505_reg_617_pp0_iter1_reg <= icmp_ln505_reg_617;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln505_reg_617 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln510_1_reg_652 <= or_ln510_1_fu_450_p2;
        or_ln510_2_reg_656 <= or_ln510_2_fu_454_p2;
        or_ln510_3_reg_660 <= or_ln510_3_fu_458_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pix_val_V_146_reg_260 <= ap_phi_reg_pp0_iter1_pix_val_V_146_reg_260;
        pix_val_V_147_reg_249 <= ap_phi_reg_pp0_iter1_pix_val_V_147_reg_249;
        pix_val_V_148_reg_238 <= ap_phi_reg_pp0_iter1_pix_val_V_148_reg_238;
        pix_val_V_149_reg_227 <= ap_phi_reg_pp0_iter1_pix_val_V_149_reg_227;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        pix_val_V_94_reg_217 <= ap_phi_reg_pp0_iter0_pix_val_V_94_reg_217;
        pix_val_V_95_reg_207 <= ap_phi_reg_pp0_iter0_pix_val_V_95_reg_207;
        pix_val_V_96_reg_197 <= ap_phi_reg_pp0_iter0_pix_val_V_96_reg_197;
        pix_val_V_97_reg_187 <= ap_phi_reg_pp0_iter0_pix_val_V_97_reg_187;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (icmp_ln505_reg_617 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln505_reg_617_pp0_iter1_reg == 1'd0) & (or_ln510_3_reg_660 == 1'd0))) begin
        ap_phi_mux_pix_val_V_183_phi_fu_344_p4 = ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301;
    end else begin
        ap_phi_mux_pix_val_V_183_phi_fu_344_p4 = ap_phi_reg_pp0_iter1_pix_val_V_183_reg_341;
    end
end

always @ (*) begin
    if (((icmp_ln505_reg_617_pp0_iter1_reg == 1'd0) & (or_ln510_3_reg_660 == 1'd0))) begin
        ap_phi_mux_pix_val_V_184_phi_fu_334_p4 = ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291;
    end else begin
        ap_phi_mux_pix_val_V_184_phi_fu_334_p4 = ap_phi_reg_pp0_iter1_pix_val_V_184_reg_331;
    end
end

always @ (*) begin
    if (((icmp_ln505_reg_617_pp0_iter1_reg == 1'd0) & (or_ln510_3_reg_660 == 1'd0))) begin
        ap_phi_mux_pix_val_V_185_phi_fu_324_p4 = ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281;
    end else begin
        ap_phi_mux_pix_val_V_185_phi_fu_324_p4 = ap_phi_reg_pp0_iter1_pix_val_V_185_reg_321;
    end
end

always @ (*) begin
    if (((icmp_ln505_reg_617_pp0_iter1_reg == 1'd0) & (or_ln510_3_reg_660 == 1'd0))) begin
        ap_phi_mux_pix_val_V_186_phi_fu_314_p4 = ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271;
    end else begin
        ap_phi_mux_pix_val_V_186_phi_fu_314_p4 = ap_phi_reg_pp0_iter1_pix_val_V_186_reg_311;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x = 12'd0;
    end else begin
        ap_sig_allocacmp_x = x_3_fu_94;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bytePlanes_01_blk_n = bytePlanes_01_full_n;
    end else begin
        bytePlanes_01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bytePlanes_01_write = 1'b1;
    end else begin
        bytePlanes_01_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op70_read_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln510_3_reg_660 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_predicate_op59_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (icmp_ln505_reg_617 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln510_reg_628 == 1'd1)))) begin
        img_blk_n = img_empty_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op70_read_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_predicate_op59_read_state3 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op42_read_state2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op81_read_state5 == 1'b1)))) begin
        img_read = 1'b1;
    end else begin
        img_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln505_reg_617 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pix_val_V_42_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_42_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln505_reg_617 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pix_val_V_43_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_43_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln505_reg_617 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pix_val_V_44_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_44_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln505_reg_617 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pix_val_V_45_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_45_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op81_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op81_read_state5 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = (((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op42_read_state2 == 1'b1)) | ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op42_read_state2 == 1'b1)) | ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op42_read_state2 == 1'b1)) | ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_predicate_op59_read_state3 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_predicate_op59_read_state3 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_predicate_op70_read_state4 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_predicate_op70_read_state4 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((img_empty_n == 1'b0) & (ap_predicate_op42_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((ap_predicate_op59_read_state3 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = ((ap_predicate_op70_read_state4 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((img_empty_n == 1'b0) & (ap_predicate_op81_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp0_stage1_iter1 = (bytePlanes_01_full_n == 1'b0);
end

always @ (*) begin
    ap_condition_275 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end

always @ (*) begin
    ap_condition_535 = ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (or_ln510_reg_628 == 1'd1));
end

always @ (*) begin
    ap_condition_538 = ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln510_reg_628 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;

assign ap_phi_reg_pp0_iter0_pix_val_V_177_reg_301 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_178_reg_291 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_179_reg_281 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_180_reg_271 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_183_reg_341 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_184_reg_331 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_185_reg_321 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_186_reg_311 = 'bx;

always @ (*) begin
    ap_predicate_op42_read_state2 = ((icmp_ln505_reg_617 == 1'd0) & (or_ln510_reg_628 == 1'd1));
end

always @ (*) begin
    ap_predicate_op59_read_state3 = ((or_ln510_1_reg_652 == 1'd1) & (icmp_ln505_reg_617 == 1'd0));
end

always @ (*) begin
    ap_predicate_op70_read_state4 = ((or_ln510_2_reg_656 == 1'd1) & (icmp_ln505_reg_617 == 1'd0));
end

always @ (*) begin
    ap_predicate_op81_read_state5 = ((icmp_ln505_reg_617 == 1'd0) & (or_ln510_3_reg_660 == 1'd1));
end

assign bytePlanes_01_din = {{{{{{{{{{{{{{{{ap_phi_mux_pix_val_V_185_phi_fu_324_p4}, {ap_phi_mux_pix_val_V_186_phi_fu_314_p4}}, {ap_phi_mux_pix_val_V_183_phi_fu_344_p4}}, {ap_phi_mux_pix_val_V_184_phi_fu_334_p4}}, {ap_phi_reg_pp0_iter1_pix_val_V_179_reg_281}}, {ap_phi_reg_pp0_iter1_pix_val_V_180_reg_271}}, {ap_phi_reg_pp0_iter1_pix_val_V_177_reg_301}}, {ap_phi_reg_pp0_iter1_pix_val_V_178_reg_291}}, {pix_val_V_148_reg_238}}, {pix_val_V_149_reg_227}}, {pix_val_V_146_reg_260}}, {pix_val_V_147_reg_249}}, {pix_val_V_96_reg_197}}, {pix_val_V_97_reg_187}}, {pix_val_V_94_reg_217}}, {pix_val_V_95_reg_207}};

assign cmp192_fu_429_p2 = (($signed(zext_ln505_fu_425_p1) < $signed(sub191_cast200_cast_fu_381_p1)) ? 1'b1 : 1'b0);

assign icmp_ln505_fu_413_p2 = ((ap_sig_allocacmp_x == trunc_ln492_1) ? 1'b1 : 1'b0);

assign or_ln510_1_fu_450_p2 = (cmp193_1 | cmp192_reg_621);

assign or_ln510_2_fu_454_p2 = (cmp193_2 | cmp192_reg_621);

assign or_ln510_3_fu_458_p2 = (icmp_ln495 | cmp192_reg_621);

assign or_ln510_fu_435_p2 = (cmp193 | cmp192_fu_429_p2);

assign pix_val_V_169_fu_446_p1 = img_dout[7:0];

assign pix_val_V_173_fu_474_p1 = img_dout[7:0];

assign pix_val_V_175_fu_478_p1 = img_dout[7:0];

assign pix_val_V_181_fu_482_p1 = img_dout[7:0];

assign pix_val_V_42_out = pix_val_V_42_fu_98;

assign pix_val_V_43_out = pix_val_V_43_fu_102;

assign pix_val_V_44_out = pix_val_V_44_fu_106;

assign pix_val_V_45_out = pix_val_V_45_fu_110;

assign sub191_cast200_cast_fu_381_p1 = $signed(sub191_cast200);

assign x_6_fu_419_p2 = (ap_sig_allocacmp_x + 12'd1);

assign zext_ln505_fu_425_p1 = ap_sig_allocacmp_x;

endmodule //design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_505_12
