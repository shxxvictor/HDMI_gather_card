// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_398_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        img_dout,
        img_empty_n,
        img_read,
        pix_val_V_11,
        pix_val_V_10,
        pix_val_V_9,
        pix_val_V_8,
        pix_val_V_7,
        pix_val_V_6,
        trunc_ln385_1,
        bytePlanes_01_din,
        bytePlanes_01_full_n,
        bytePlanes_01_write,
        icmp_ln388,
        sub61_cast198,
        trunc_ln1,
        pix_val_V_37_out,
        pix_val_V_37_out_ap_vld,
        pix_val_V_36_out,
        pix_val_V_36_out_ap_vld,
        pix_val_V_35_out,
        pix_val_V_35_out_ap_vld,
        pix_val_V_34_out,
        pix_val_V_34_out_ap_vld,
        pix_val_V_33_out,
        pix_val_V_33_out_ap_vld,
        pix_val_V_32_out,
        pix_val_V_32_out_ap_vld,
        out_pix_V_22_out_i,
        out_pix_V_22_out_o,
        out_pix_V_22_out_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [47:0] img_dout;
input   img_empty_n;
output   img_read;
input  [7:0] pix_val_V_11;
input  [7:0] pix_val_V_10;
input  [7:0] pix_val_V_9;
input  [7:0] pix_val_V_8;
input  [7:0] pix_val_V_7;
input  [7:0] pix_val_V_6;
input  [11:0] trunc_ln385_1;
output  [127:0] bytePlanes_01_din;
input   bytePlanes_01_full_n;
output   bytePlanes_01_write;
input  [0:0] icmp_ln388;
input  [11:0] sub61_cast198;
input  [0:0] trunc_ln1;
output  [7:0] pix_val_V_37_out;
output   pix_val_V_37_out_ap_vld;
output  [7:0] pix_val_V_36_out;
output   pix_val_V_36_out_ap_vld;
output  [7:0] pix_val_V_35_out;
output   pix_val_V_35_out_ap_vld;
output  [7:0] pix_val_V_34_out;
output   pix_val_V_34_out_ap_vld;
output  [7:0] pix_val_V_33_out;
output   pix_val_V_33_out_ap_vld;
output  [7:0] pix_val_V_32_out;
output   pix_val_V_32_out_ap_vld;
input  [127:0] out_pix_V_22_out_i;
output  [127:0] out_pix_V_22_out_o;
output   out_pix_V_22_out_o_ap_vld;

reg ap_idle;
reg img_read;
reg bytePlanes_01_write;
reg pix_val_V_37_out_ap_vld;
reg pix_val_V_36_out_ap_vld;
reg pix_val_V_35_out_ap_vld;
reg pix_val_V_34_out_ap_vld;
reg pix_val_V_33_out_ap_vld;
reg pix_val_V_32_out_ap_vld;
reg[127:0] out_pix_V_22_out_o;
reg out_pix_V_22_out_o_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg   [0:0] icmp_ln398_reg_718;
reg   [0:0] or_ln403_reg_722;
reg    ap_predicate_op56_read_state2;
reg    ap_block_state2_pp0_stage1_iter0;
reg    ap_block_pp0_stage1_subdone;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
reg   [0:0] or_ln403_1_reg_726;
reg    ap_predicate_op71_read_state3;
reg    ap_block_state3_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_subdone;
reg    bytePlanes_01_blk_n;
wire    ap_block_pp0_stage0;
reg    img_blk_n;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg   [7:0] pix_val_V_81_reg_221;
reg   [7:0] pix_val_V_80_reg_231;
reg   [7:0] pix_val_V_79_reg_241;
reg   [7:0] pix_val_V_78_reg_251;
reg   [7:0] pix_val_V_77_reg_261;
reg   [7:0] pix_val_V_76_reg_271;
wire   [0:0] icmp_ln398_fu_433_p2;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] or_ln403_fu_461_p2;
wire   [0:0] or_ln403_1_fu_467_p2;
reg    ap_block_pp0_stage1_11001;
wire   [7:0] pix_val_V_207_fu_496_p1;
wire   [7:0] pix_val_V_209_fu_500_p1;
reg    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_81_reg_221;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_80_reg_231;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_79_reg_241;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_78_reg_251;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_77_reg_261;
reg   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_76_reg_271;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_133_reg_281;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_132_reg_291;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_131_reg_301;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_130_reg_311;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_129_reg_321;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321;
wire   [7:0] ap_phi_reg_pp0_iter0_pix_val_V_128_reg_331;
reg   [7:0] ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331;
wire   [127:0] p_Result_8_fu_584_p5;
reg   [11:0] x_1_fu_120;
wire   [11:0] x_8_fu_439_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_x;
reg   [7:0] pix_val_V_32_fu_124;
reg   [7:0] pix_val_V_33_fu_128;
reg   [7:0] pix_val_V_34_fu_132;
reg   [7:0] pix_val_V_35_fu_136;
reg   [7:0] pix_val_V_36_fu_140;
reg   [7:0] pix_val_V_37_fu_144;
reg    ap_block_pp0_stage0_01001;
wire   [12:0] zext_ln398_fu_445_p1;
wire  signed [12:0] sub61_cast198_cast_fu_391_p1;
wire   [0:0] or_ln403_2_fu_455_p2;
wire   [0:0] cmp62_fu_449_p2;
wire   [23:0] p_Result_9_fu_508_p4;
wire   [127:0] p_Result_10_fu_518_p5;
wire   [23:0] in_pix_V_1_fu_530_p4;
wire   [127:0] out_pix_V_1_fu_540_p5;
wire   [23:0] p_Result_s_fu_552_p4;
wire   [127:0] p_Result_6_fu_562_p5;
wire   [23:0] p_Result_7_fu_574_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_473;
reg    ap_condition_209;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_76_reg_271 <= pix_val_V_32_fu_124;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_76_reg_271 <= pix_val_V_207_fu_496_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_77_reg_261 <= pix_val_V_33_fu_128;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_77_reg_261 <= {{img_dout[15:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_78_reg_251 <= pix_val_V_34_fu_132;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_78_reg_251 <= {{img_dout[23:16]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_79_reg_241 <= pix_val_V_35_fu_136;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_79_reg_241 <= {{img_dout[31:24]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_80_reg_231 <= pix_val_V_36_fu_140;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_80_reg_231 <= {{img_dout[39:32]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_473)) begin
        if ((or_ln403_reg_722 == 1'd0)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_81_reg_221 <= pix_val_V_37_fu_144;
        end else if ((or_ln403_reg_722 == 1'd1)) begin
            ap_phi_reg_pp0_iter0_pix_val_V_81_reg_221 <= {{img_dout[47:40]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331 <= ap_phi_reg_pp0_iter0_pix_val_V_76_reg_271;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331 <= pix_val_V_209_fu_500_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331 <= ap_phi_reg_pp0_iter0_pix_val_V_128_reg_331;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321 <= ap_phi_reg_pp0_iter0_pix_val_V_77_reg_261;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321 <= {{img_dout[15:8]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321 <= ap_phi_reg_pp0_iter0_pix_val_V_129_reg_321;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311 <= ap_phi_reg_pp0_iter0_pix_val_V_78_reg_251;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311 <= {{img_dout[23:16]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311 <= ap_phi_reg_pp0_iter0_pix_val_V_130_reg_311;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301 <= ap_phi_reg_pp0_iter0_pix_val_V_79_reg_241;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301 <= {{img_dout[31:24]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301 <= ap_phi_reg_pp0_iter0_pix_val_V_131_reg_301;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291 <= ap_phi_reg_pp0_iter0_pix_val_V_80_reg_231;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291 <= {{img_dout[39:32]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291 <= ap_phi_reg_pp0_iter0_pix_val_V_132_reg_291;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_209)) begin
        if (((or_ln403_1_reg_726 == 1'd0) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281 <= ap_phi_reg_pp0_iter0_pix_val_V_81_reg_221;
        end else if (((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281 <= {{img_dout[47:40]}};
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281 <= ap_phi_reg_pp0_iter0_pix_val_V_133_reg_281;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_32_fu_124 <= pix_val_V_6;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_32_fu_124 <= ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_33_fu_128 <= pix_val_V_7;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_33_fu_128 <= ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_34_fu_132 <= pix_val_V_8;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_34_fu_132 <= ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_35_fu_136 <= pix_val_V_9;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_35_fu_136 <= ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_36_fu_140 <= pix_val_V_10;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_36_fu_140 <= ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            pix_val_V_37_fu_144 <= pix_val_V_11;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            pix_val_V_37_fu_144 <= ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln398_fu_433_p2 == 1'd0))) begin
            x_1_fu_120 <= x_8_fu_439_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            x_1_fu_120 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln398_reg_718 <= icmp_ln398_fu_433_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln398_fu_433_p2 == 1'd0))) begin
        or_ln403_1_reg_726 <= or_ln403_1_fu_467_p2;
        or_ln403_reg_722 <= or_ln403_fu_461_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        pix_val_V_76_reg_271 <= ap_phi_reg_pp0_iter0_pix_val_V_76_reg_271;
        pix_val_V_77_reg_261 <= ap_phi_reg_pp0_iter0_pix_val_V_77_reg_261;
        pix_val_V_78_reg_251 <= ap_phi_reg_pp0_iter0_pix_val_V_78_reg_251;
        pix_val_V_79_reg_241 <= ap_phi_reg_pp0_iter0_pix_val_V_79_reg_241;
        pix_val_V_80_reg_231 <= ap_phi_reg_pp0_iter0_pix_val_V_80_reg_231;
        pix_val_V_81_reg_221 <= ap_phi_reg_pp0_iter0_pix_val_V_81_reg_221;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (icmp_ln398_reg_718 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_x = 12'd0;
    end else begin
        ap_sig_allocacmp_x = x_1_fu_120;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_01_blk_n = bytePlanes_01_full_n;
    end else begin
        bytePlanes_01_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bytePlanes_01_write = 1'b1;
    end else begin
        bytePlanes_01_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_predicate_op71_read_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_predicate_op56_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        img_blk_n = img_empty_n;
    end else begin
        img_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op71_read_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_op56_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        img_read = 1'b1;
    end else begin
        img_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_pix_V_22_out_o = p_Result_8_fu_584_p5;
    end else begin
        out_pix_V_22_out_o = out_pix_V_22_out_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_pix_V_22_out_o_ap_vld = 1'b1;
    end else begin
        out_pix_V_22_out_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_32_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_32_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_33_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_33_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_34_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_34_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_35_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_35_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_36_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_36_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        pix_val_V_37_out_ap_vld = 1'b1;
    end else begin
        pix_val_V_37_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
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

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((bytePlanes_01_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_predicate_op56_read_state2 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_predicate_op56_read_state2 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_predicate_op71_read_state3 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_predicate_op71_read_state3 == 1'b1) & (img_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((ap_predicate_op56_read_state2 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = ((ap_predicate_op71_read_state3 == 1'b1) & (img_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (bytePlanes_01_full_n == 1'b0);
end

always @ (*) begin
    ap_condition_209 = ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end

always @ (*) begin
    ap_condition_473 = ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln398_reg_718 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_phi_reg_pp0_iter0_pix_val_V_128_reg_331 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_129_reg_321 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_130_reg_311 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_131_reg_301 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_132_reg_291 = 'bx;

assign ap_phi_reg_pp0_iter0_pix_val_V_133_reg_281 = 'bx;

always @ (*) begin
    ap_predicate_op56_read_state2 = ((or_ln403_reg_722 == 1'd1) & (icmp_ln398_reg_718 == 1'd0));
end

always @ (*) begin
    ap_predicate_op71_read_state3 = ((or_ln403_1_reg_726 == 1'd1) & (icmp_ln398_reg_718 == 1'd0));
end

assign bytePlanes_01_din = {{p_Result_6_fu_562_p5[127:120]}, {p_Result_7_fu_574_p4}, {p_Result_6_fu_562_p5[95:0]}};

assign cmp62_fu_449_p2 = (($signed(zext_ln398_fu_445_p1) < $signed(sub61_cast198_cast_fu_391_p1)) ? 1'b1 : 1'b0);

assign icmp_ln398_fu_433_p2 = ((ap_sig_allocacmp_x == trunc_ln385_1) ? 1'b1 : 1'b0);

assign in_pix_V_1_fu_530_p4 = {{{pix_val_V_79_reg_241}, {pix_val_V_80_reg_231}}, {pix_val_V_81_reg_221}};

assign or_ln403_1_fu_467_p2 = (icmp_ln388 | cmp62_fu_449_p2);

assign or_ln403_2_fu_455_p2 = (trunc_ln1 | icmp_ln388);

assign or_ln403_fu_461_p2 = (or_ln403_2_fu_455_p2 | cmp62_fu_449_p2);

assign out_pix_V_1_fu_540_p5 = {{p_Result_10_fu_518_p5[127:56]}, {in_pix_V_1_fu_530_p4}, {p_Result_10_fu_518_p5[31:0]}};

assign p_Result_10_fu_518_p5 = {{out_pix_V_22_out_i[127:24]}, {p_Result_9_fu_508_p4}};

assign p_Result_6_fu_562_p5 = {{out_pix_V_1_fu_540_p5[127:88]}, {p_Result_s_fu_552_p4}, {out_pix_V_1_fu_540_p5[63:0]}};

assign p_Result_7_fu_574_p4 = {{{ap_phi_reg_pp0_iter1_pix_val_V_131_reg_301}, {ap_phi_reg_pp0_iter1_pix_val_V_132_reg_291}}, {ap_phi_reg_pp0_iter1_pix_val_V_133_reg_281}};

assign p_Result_8_fu_584_p5 = {{p_Result_6_fu_562_p5[127:120]}, {p_Result_7_fu_574_p4}, {p_Result_6_fu_562_p5[95:0]}};

assign p_Result_9_fu_508_p4 = {{{pix_val_V_76_reg_271}, {pix_val_V_77_reg_261}}, {pix_val_V_78_reg_251}};

assign p_Result_s_fu_552_p4 = {{{ap_phi_reg_pp0_iter1_pix_val_V_128_reg_331}, {ap_phi_reg_pp0_iter1_pix_val_V_129_reg_321}}, {ap_phi_reg_pp0_iter1_pix_val_V_130_reg_311}};

assign pix_val_V_207_fu_496_p1 = img_dout[7:0];

assign pix_val_V_209_fu_500_p1 = img_dout[7:0];

assign pix_val_V_32_out = pix_val_V_32_fu_124;

assign pix_val_V_33_out = pix_val_V_33_fu_128;

assign pix_val_V_34_out = pix_val_V_34_fu_132;

assign pix_val_V_35_out = pix_val_V_35_fu_136;

assign pix_val_V_36_out = pix_val_V_36_fu_140;

assign pix_val_V_37_out = pix_val_V_37_fu_144;

assign sub61_cast198_cast_fu_391_p1 = $signed(sub61_cast198);

assign x_8_fu_439_p2 = (ap_sig_allocacmp_x + 12'd1);

assign zext_ln398_fu_445_p1 = ap_sig_allocacmp_x;

endmodule //design_1_v_frmbuf_wr_0_0_MultiPixStream2Bytes_Pipeline_VITIS_LOOP_398_5
