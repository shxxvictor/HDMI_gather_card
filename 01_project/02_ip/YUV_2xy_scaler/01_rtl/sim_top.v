`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2022 11:14:16 AM
// Design Name: 
// Module Name: sim_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_top(
);

reg clk_in;
reg reset;

initial
begin
    reset = 1'b1;
    # 1000;
    reset = 1'b0;
end

always begin
    clk_in = 1'b0;
    forever #3.333 clk_in = ~clk_in;
end



wire[23:0]      tdata           ;
wire            tlast           ;
wire            treadsy         ;
wire            tuser           ;
wire            tvalid          ;



axis_gen u_axis_gen(
    .clk_in   ( clk_in   ),
    .reset    ( reset    ),

    .tdata    ( tdata    ),
    .tlast    ( tlast    ),
    .treadsy  ( treadsy  ),
    .tuser    ( tuser    ),
    .tvalid   ( tvalid   )
);




YUV_2xy_scaler#(
    .pix_per_clock ( 1 ),
    .data_width    ( 8 ),
    .scaler_rate   ( 2 ),
    .out_pix_per_clock ( 4 )
)u_YUV_2xy_scaler(
    .clk_in        ( clk_in        ),
    .reset         ( reset         ),

    .rdata         ( tdata          ),
    .rlast         ( tlast          ),
    .rreadsy       ( treadsy       ),
    .ruser         ( tuser          ),
    .rvalid        ( tvalid         ),
    
    .tdata         (       ),
    .tlast         (       ),
    .treadsy       (       ),
    .tuser         (       ),
    .tvalid        (       )
);







endmodule
