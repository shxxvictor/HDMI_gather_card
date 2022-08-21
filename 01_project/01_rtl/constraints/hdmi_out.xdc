set_property PACKAGE_PIN F11 [get_ports hdmi_out_clk]

set_property PACKAGE_PIN C14 [get_ports {hdmi_out_data[0]}]
set_property PACKAGE_PIN C13 [get_ports {hdmi_out_data[1]}]
set_property PACKAGE_PIN B14 [get_ports {hdmi_out_data[2]}]
set_property PACKAGE_PIN A14 [get_ports {hdmi_out_data[3]}]
set_property PACKAGE_PIN B13 [get_ports {hdmi_out_data[4]}]
set_property PACKAGE_PIN A13 [get_ports {hdmi_out_data[5]}]
set_property PACKAGE_PIN E14 [get_ports {hdmi_out_data[6]}]
set_property PACKAGE_PIN E13 [get_ports {hdmi_out_data[7]}]
set_property PACKAGE_PIN F12 [get_ports {hdmi_out_data[8]}]
set_property PACKAGE_PIN A11 [get_ports {hdmi_out_data[9]}]
set_property PACKAGE_PIN A12 [get_ports {hdmi_out_data[10]}]
set_property PACKAGE_PIN H12 [get_ports {hdmi_out_data[11]}]
set_property PACKAGE_PIN J12 [get_ports {hdmi_out_data[12]}]
set_property PACKAGE_PIN K14 [get_ports {hdmi_out_data[13]}]
set_property PACKAGE_PIN J14 [get_ports {hdmi_out_data[14]}]
set_property PACKAGE_PIN H13 [get_ports {hdmi_out_data[15]}]
set_property PACKAGE_PIN H14 [get_ports {hdmi_out_data[16]}]
set_property PACKAGE_PIN F13 [get_ports {hdmi_out_data[17]}]
set_property PACKAGE_PIN G13 [get_ports {hdmi_out_data[18]}]
set_property PACKAGE_PIN G14 [get_ports {hdmi_out_data[19]}]
set_property PACKAGE_PIN G15 [get_ports {hdmi_out_data[20]}]
set_property PACKAGE_PIN D14 [get_ports {hdmi_out_data[21]}]
set_property PACKAGE_PIN D15 [get_ports {hdmi_out_data[22]}]
set_property PACKAGE_PIN B15 [get_ports {hdmi_out_data[23]}]

set_property PACKAGE_PIN L14 [get_ports hdmi_out_de]
set_property PACKAGE_PIN L13 [get_ports hdmi_out_hs]
set_property PACKAGE_PIN A15 [get_ports hdmi_out_vs]


set_property PACKAGE_PIN AF13 [get_ports hdmi_out_i2c_scl_io]
set_property PACKAGE_PIN AE13 [get_ports hdmi_out_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_i2c_sda_io]


set_property PULLUP true [get_ports hdmi_out_i2c_scl_io]
set_property PULLUP true [get_ports hdmi_out_i2c_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_out_data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_clk]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_de]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_vs]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_hs]



set_property SLEW FAST [get_ports {hdmi_out_data[*]}]
set_property DRIVE 8 [get_ports {hdmi_out_data[*]}]
set_property SLEW FAST [get_ports hdmi_out_clk]
set_property SLEW FAST [get_ports hdmi_out_de]
set_property SLEW FAST [get_ports hdmi_out_hs]
set_property SLEW FAST [get_ports hdmi_out_vs]


