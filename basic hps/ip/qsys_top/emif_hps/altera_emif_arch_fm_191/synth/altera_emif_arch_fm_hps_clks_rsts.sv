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



///////////////////////////////////////////////////////////////////////////////
// This module handles the creation and wiring of the HPS clock/reset signals.
//
///////////////////////////////////////////////////////////////////////////////

// altera message_off 10036

 module altera_emif_arch_fm_hps_clks_rsts #(
   parameter PORT_CLKS_SHARING_MASTER_OUT_WIDTH      = 32,
   parameter PORT_CLKS_SHARING_SLAVE_IN_WIDTH        = 32,
   parameter PORT_DFT_ND_CORE_CLK_BUF_OUT_WIDTH      = 1,
   parameter PORT_DFT_ND_CORE_CLK_LOCKED_WIDTH       = 1,
   parameter PORT_HPS_EMIF_H2E_GP_WIDTH              = 1
) (
   // For a master interface, the PLL ref clock and the global reset signal
   // come from an external source from user logic, via the following ports. 
   // For slave interfaces, they come from the master via the sharing interface.
   // The connectivity ensures that all interfaces in a master/slave
   // configuration share the same ref clock and global reset, which is
   // one of the requirements for core-clock sharing.
   // pll_ref_clk_int is the actual PLL ref clock signal that will be used by the
   // reset of the IP. For a master interface it is equivalent to pll_ref_clk. 
   // For a slave interface it is equivalent to the pll_ref_clk signal of the master.
   input  logic                                                 pll_ref_clk,
   output logic                                                 pll_ref_clk_int,
   
   // Feedback signals to CPA via the core
   output logic [1:0]                                           core_clks_fb_to_cpa_pri,
   output logic [1:0]                                           core_clks_fb_to_cpa_sec,
   
   // Reset request signal.
   // local_reset_req_int is the actual reset request signal that will be
   // used internally by the rest of the IP. For a master interface it
   // is equivalent to local_reset_req. For a slave interface it is
   // equivalent to the local_reset_req signal of the master.
   input  logic                                                 local_reset_req,
   output logic                                                 local_reset_req_int,
   
   // The following is the master/slave sharing interfaces.
   input  logic [PORT_CLKS_SHARING_SLAVE_IN_WIDTH-1:0]          clks_sharing_slave_in,
   output logic [PORT_CLKS_SHARING_MASTER_OUT_WIDTH-1:0]        clks_sharing_master_out,
   
   // The following are all the possible core clock/reset signals.
   // afi_* only exists in PHY-only mode (or if soft controller is used).
   // emif_usr_* only exists if hard memory controller is used.
   output logic                                                 afi_clk,
   output logic                                                 afi_half_clk,
   output logic                                                 afi_reset_n,

   output logic                                                 emif_usr_clk,
   output logic                                                 emif_usr_half_clk,
   output logic                                                 emif_usr_reset_n,
   
   output logic                                                 emif_usr_clk_sec,
   output logic                                                 emif_usr_half_clk_sec,
   output logic                                                 emif_usr_reset_n_sec,

   // DFT
   output logic [PORT_DFT_ND_CORE_CLK_BUF_OUT_WIDTH-1:0]        dft_core_clk_buf_out,
   output logic [PORT_DFT_ND_CORE_CLK_LOCKED_WIDTH-1:0]         dft_core_clk_locked
);
   timeunit 1ns;
   timeprecision 1ps;
   
   // HPS clocks are not modeled for simulation.
   // Also in HPS mode we do not generate clocks that are visible to user logic.
   assign pll_ref_clk_int    = pll_ref_clk;
   
   // Reset request is not supported by HPS EMIF.
   // HPS EMIF has its own way of reset request mechanism.
   assign local_reset_req_int     = 1'b0;

   assign afi_clk                 = 1'b0;
   assign afi_half_clk            = 1'b0;
   assign afi_reset_n             = 1'b1;
   
   assign emif_usr_clk            = 1'b0;
   assign emif_usr_half_clk       = 1'b0;
   assign emif_usr_reset_n        = 1'b1;
   
   assign emif_usr_clk_sec        = 1'b0;
   assign emif_usr_half_clk_sec   = 1'b0;
   assign emif_usr_reset_n_sec    = 1'b1;
   
   assign core_clks_fb_to_cpa_pri = '0;
   assign core_clks_fb_to_cpa_sec = '0;
   assign clks_sharing_master_out = '0;
   
   assign dft_core_clk_locked     = '0;
   assign dft_core_clk_buf_out    = '0;
   
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6ZQ+VhgkbCW0rZqYTeV61n7e2E6mApcsQg+TDPrgeO8O5vFdcuaft/87Wun9sRhYIvy29Qn6yxv0MKUUYkT1qX3EBd63UN4t6jKce5glkj0dmCRe+A3J9e6YR1bWHm4mADseOqT7PLg5eodau9WlclSf8iGL3yr7apZl0yicxrKZVeqY2wciX36kkA6ao0Ilf/6fbPXxSOt7Hjo/aHW/dshZX7vuj4LSPaIfYH8jbvm1fGhUAklkqBYqLwXpA2ihOMzu0nMl5os2Zs72TYMngFEYuy79khbeNgBc1NV0+W4OjDVG80ZBA2yP7P6IkpGyYv/2J/Su52zOxqm6nlYuOzoIFGryw7W71bmoTylot4pz55TSpV53Yb5ssxxRCdfhQZh+RJv7ijuUarWvTRo5cTdofg/5dbbSwcEi1AhCvW8gdE3b5KisbwEtTIvJedkcp+Xz0Mp1AiRdZ5bpbZk60kySYNRZI702eau1kVKz4DWnT59X7bAiYp0JC6ul7ZavKO3MaDqVodbfE5XkI+pAKd1KKgdaXw9Rnv/7fUZaczEaiUCFc2behvVjUlZjGRCtq53Llv5pQMQA5NSRazirq5v2fHsfOVuD3SvQ+w1y4LQILVxunVpGsD3ZjSxagH9OpFXScgt6WaMboiZpSkrX0bLK4uvbS5ZXbhGiW+GVp9s3pa7Wzg+lNfwxMrwVeXls3eYH7mMZ2nC2lOhWsrL+2X4o3BXBxG0FOiziWKaQbxCl2k5F36DJ0J/TxeVUSFZd7znF3LNBphwWXlLY+BN6G/w"
`endif