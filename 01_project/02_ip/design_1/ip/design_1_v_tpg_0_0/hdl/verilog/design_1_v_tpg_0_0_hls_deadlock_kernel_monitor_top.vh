
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [11:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_181.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_201.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_230.s_axis_video_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_157.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_block_sigs[0] = (grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_201.srcYUV_blk_n;
assign inst_idle_sigs[1] = grp_v_tpgHlsDataFlow_fu_331.tpgBackground_U0.ap_idle;
assign inst_block_sigs[1] = (grp_v_tpgHlsDataFlow_fu_331.tpgBackground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_331.tpgBackground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_331.tpgBackground_U0.grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_442.srcYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_331.tpgBackground_U0.grp_tpgBackground_Pipeline_VITIS_LOOP_520_2_fu_442.bckgndYUV_blk_n;
assign inst_idle_sigs[2] = grp_v_tpgHlsDataFlow_fu_331.tpgForeground_U0.ap_idle;
assign inst_block_sigs[2] = (grp_v_tpgHlsDataFlow_fu_331.tpgForeground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_331.tpgForeground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_331.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_175.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_331.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_729_2_fu_175.ovrlayYUV_blk_n;
assign inst_idle_sigs[3] = grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_157.ovrlayYUV_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_v_tpgHlsDataFlow_fu_331.ap_idle;
assign inst_idle_sigs[6] = grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.ap_idle;
assign inst_idle_sigs[7] = grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_start_fu_181.ap_idle;
assign inst_idle_sigs[8] = grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_width_fu_201.ap_idle;
assign inst_idle_sigs[9] = grp_v_tpgHlsDataFlow_fu_331.AXIvideo2MultiPixStream_U0.grp_AXIvideo2MultiPixStream_Pipeline_loop_wait_for_eol_fu_230.ap_idle;
assign inst_idle_sigs[10] = grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[11] = grp_v_tpgHlsDataFlow_fu_331.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_936_2_fu_157.ap_idle;

design_1_v_tpg_0_0_hls_deadlock_idx0_monitor design_1_v_tpg_0_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
