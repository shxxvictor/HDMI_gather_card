// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_709_u_ROM_AUTO_1R (
address0, ce0, q0, address1, ce1, q1, reset,clk);

parameter DataWidth = 8;
parameter AddressWidth = 3;
parameter AddressRange = 8;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./design_1_v_tpg_0_0_tpgPatternDPColorSquare_DPtpgBarSelYuv_709_u_ROM_AUTO_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram[address1];
    end
end



endmodule

