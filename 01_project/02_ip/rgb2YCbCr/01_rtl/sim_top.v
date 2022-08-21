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
wire            done            ;


axis_gen u_axis_gen(
    .clk_in   ( clk_in   ),
    .reset    ( reset    ),

    .tdata    ( tdata    ),
    .tlast    ( tlast    ),
    .tready   ( tready   ),
    .tuser    ( tuser    ),
    .tvalid   ( tvalid   ),
    .done     ( done     )
);


reg     done_dly;

always @ (posedge clk_in)
begin
    done_dly <= done;
end

always @ (posedge clk_in)
begin
    if ({done_dly,done} == 2'b01)
        $fclose(fd_out);
    else
        ;
end




wire[23:0]  tdata_1         ; 
wire        tlast_1         ;
wire        tready_1       ;
wire        tuser_1         ;
wire        tvalid_1        ;

localparam FILE_BIN_OUT = "/media/disk_x/vic_projects/vic_ip/rgb2YCbCr/03_sim/test_out.bin";

integer     fd_out;

initial
begin

    fd_out = $fopen(FILE_BIN_OUT, "wb");
    if(fd_out == 0)
    begin
        $display("$open file bin out failed") ;
        $stop;
    end
    $display("\n ============= file bin out opened... ============= ") ;

end



rgb2YCbCr#(
    .pix_per_clock ( 1 ),
    .data_width    ( 8 )
)u_rgb2YCbCr(
    .clk_in        ( clk_in        ),
    .reset         ( reset         ),

    .rdata         ( tdata         ),
    .rlast         ( tlast         ),
    .rready        ( tready       ),
    .ruser         ( tuser         ),
    .rvalid        ( tvalid        ),

    .tdata         ( tdata_1       ),
    .tlast         ( tlast_1       ),
    .tready        ( tready_1     ),
    .tuser         ( tuser_1       ),
    .tvalid        ( tvalid_1      )
);

always @ (posedge clk_in)
begin
    if (tvalid_1)
        begin
            $fwrite(fd_out,"%c",tdata_1[7:0]);
            $fwrite(fd_out,"%c",tdata_1[15:8]);
            $fwrite(fd_out,"%c",tdata_1[23:16]);
        end
    else
        ;
end






endmodule
