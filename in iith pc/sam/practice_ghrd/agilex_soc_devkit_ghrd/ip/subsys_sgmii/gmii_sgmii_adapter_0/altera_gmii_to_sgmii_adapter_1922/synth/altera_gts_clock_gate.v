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

module altera_gts_clock_gate #(
    parameter DEVICE_FAMILY = "Stratix 10"
) (
    input   clk,
    input   en,

    output  clk_gated

);

generate
    if (DEVICE_FAMILY == "eASIC N5X") begin
        
        eclkgate_r gate_inst ( 
            .CLKOUT ( clk_gated ), 
            .CLKIN  ( clk       ), 
            .CLKEN  ( en        ), 
            .CLKRST ( 1'b0      )
        );

    end else begin
        
        altclkctrl_inst altclkctrl_comp ( 
            .ena    ( en        ), 
            .inclk  ( clk       ), 
            .outclk ( clk_gated ) 
        );

	end

endgenerate


endmodule