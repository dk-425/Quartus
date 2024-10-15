// (C) 2001-2023 Intel Corporation. All rights reserved.
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


module altera_emif_arch_fm_buf_unused (
   output logic o
);
   timeunit 1ns;
   timeprecision 1ps;

   assign o = 1'b0;
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6ZmMS2FVi3kJGeypjwGFej6fwDSg6CcSeZ+JnSfuBLUxrHHYzqpi9j8cekre/Hcm2P16IGLiREi44b/Qba0996ZhZg6iYe+5thxhbsvXBN1ZaT/ayBiQ7BE8LA4bHmlwE0SQ1W9aZnYbEoKjJRZTqDdFQ7skPmZkeLU3xs8COjcpi+DrCffTjzGyWk0P/Oi0CgmcmssEXBIufkzQ08cpZfRJVthFDfUybXypOPJ3b92gcJq0FMExFP/6dQaKyEsTDSbXEInKGqyXmfa4p8BTv8snG+/Wk/oK+mjKTPQ+bXPvJ4PpPrccwYaWZTRmt+1uXs6ZXH9bER4BCuC0wEV6/H0jkaNE/1o4FhLl+sTa9NsWKtpnAb+YTzUpWtdYxpEyYm9jCb5vlM5Uvdb5cvSy/TOCQ7/QsqKQQLa3m28HSUcP+93Wguyf5aG2YuC/OS0OnKfa6h8EifGhON6odUA7GTq25GSVh2E2FMH9WEloblqJPf5WBBit0x7xt7Te/C2qqb0c6gav0ps4+b9kF9cv7GzMoSbphm6fkmkdFXbhVlhFxh2GiGYpCwO8eGMgVIJrJxBvbVYbRKOGUGclKe7ESupJ29kpzEOdckWHOLf3iUHi5HweHauzOgtrBL+OQqW/9kn4qv+Nksm7/AzLBFFiXeEgrPX3SHYm3NarLdbv2QUCa1BlBG5AX1UIM5VMvY8ccypXSUgVLsCTqLUuuOGTihzmWSQClI+zxce0xVNO0KJlmF5P3ScRzYszViLw4JemEceKRNPISnHMpFB2CL4v7zm"
`endif