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


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module  gmii_sgmii_adapter_0_intelclkctrl_200_kpobney  (
    ena,
    inclk,
    outclk
);

input ena;
input inclk;
output outclk;

wire inclk_muxout;

assign inclk_muxout = inclk;   
tennm_clk_gate #(
    .ena_register_mode("negative latch"),
    .enable_type("sector")
) clkena_inst (
    .enable(ena),
    .inclk(inclk_muxout), 
    .outclk(outclk)
);

endmodule


