// (C) 2001-2022 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

module altera_gts_reset_synchronizer ( 
    input   clk,
    input   rst_n,

    output  rst_sync_n

);

(*preserve*) reg din_sync_1;
(*preserve*) reg din_sync_2;
reg din_sync_3;


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        din_sync_1  <= 1'b0;
        din_sync_2  <= 1'b0;
        din_sync_3  <= 1'b0;
    end
    else begin
        din_sync_1  <= 1'b1;
        din_sync_2  <= din_sync_1;
        din_sync_3  <= din_sync_2;
    end
end

//assign rst_sync_n = din_sync_2;
assign rst_sync_n = din_sync_3;


endmodule
