set_property PACKAGE_PIN AE14 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]

set_property PACKAGE_PIN AE5 [get_ports sys_clk_clk_p]
set_property IOSTANDARD DIFF_HSTL_I_12 [get_ports sys_clk_clk_p]

set_false_path -through [get_nets design_1_i/v_vid_in_axi4s_0/axis_enable]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
