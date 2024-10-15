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



////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  Expose extra core clocks from IOPLL
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////
module altera_emif_arch_fm_pll_extra_clks #(
   parameter PLL_NUM_OF_EXTRA_CLKS = 0,
   parameter DIAG_SIM_REGTEST_MODE = 0
) (
   input  logic                                               pll_locked,            
   input  logic [8:0]                                         pll_c_counters,        
   output logic                                               pll_extra_clk_0,       
   output logic                                               pll_extra_clk_1,
   output logic                                               pll_extra_clk_2,
   output logic                                               pll_extra_clk_3,
   output logic                                               pll_extra_clk_diag_ok
);
   timeunit 1ns;
   timeprecision 1ps;
   
   logic [3:0] pll_extra_clks;
   
   // Extra core clocks to user logic.
   // These clocks are unrelated to EMIF core clock domains. The feature is intended as a
   // way to reuse EMIF PLL to generate core clocks for designs in which physical PLLs are scarce.
   assign pll_extra_clks   = pll_c_counters[8:5];
   assign pll_extra_clk_0  = pll_extra_clks[0];
   assign pll_extra_clk_1  = pll_extra_clks[1];
   assign pll_extra_clk_2  = pll_extra_clks[2];
   assign pll_extra_clk_3  = pll_extra_clks[3];
   
   // In internal test mode, generate additional counters clocked by the extra clocks
   generate
      genvar i;
      
      if (DIAG_SIM_REGTEST_MODE && PLL_NUM_OF_EXTRA_CLKS > 0) begin: test_mode
         logic [PLL_NUM_OF_EXTRA_CLKS-1:0] pll_extra_clk_diag_done;
      
         for (i = 0; i < PLL_NUM_OF_EXTRA_CLKS; ++i)
         begin : extra_clk
            logic [9:0] counter;

            always_ff @(posedge pll_extra_clks[i] or negedge pll_locked) begin
               if (~pll_locked) begin	
                  counter <= '0;
                  pll_extra_clk_diag_done[i] <= 1'b0;
               end else begin
                  if (~counter[9]) begin
                     counter <= counter + 1'b1;
                  end
                  pll_extra_clk_diag_done[i] <= counter[9];
               end
            end         
         end
         
         assign pll_extra_clk_diag_ok = &pll_extra_clk_diag_done;
         
      end else begin : normal_mode
         assign pll_extra_clk_diag_ok = 1'b1;
      end
   endgenerate
   
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6ZN/KkIrfDJMsuwwM7Fswt+pDSMElc1NALQqZDd3o2fIXLLh1KzxJUX6EZHW1JZaDhMa+qKvo2ar+c8qYlJGuaGVs+SVdszAg6CWbM1Oju8DrtxJjKV4mQQEb/h5Uzud2TiEU6LmaG5JhtvFO+EEKr0POw/9K0Pg7V93uQD2jGki3i9UHsdz9HPlXTm1IC5CJqbc0wcK1NtwOKWWnzto8qH68rinDl/IlZe9vkSGCLkJFNngGTaMzOQ+qO6FngSDblFXBca+/n03poe+woMT7lJFefaZ0P7Fgczu4lIiSFa/jhdVzVehFvMaItbvCPZoTAKVKDP6dLlXF/US//1AT6L37zq+E/81KCLJHb2LPKcQwkCmdHw8VRZOBet/TCCqUB7pE4NIq/gf7eAZxHC75fAGwsTsWPgMGk/lGfRpZaiQ4LVEgBng8DDPWmsS+s2bc2bj7RkB76vhCy0QGdX7qPDC+8HtIDExkdvwAUm45cb7EqEUYS8hrG+QGb+nR+PsPWKzaaTabbvxtq4dREiNxxQ95LNnUCCNj8G/hABA0YsSWnnlR6pKLw4RllHiF5PrQYk182D9BREy3JOIEEgx8iPYhME8Lpa3gosDeucFPmC/9t2oPFwpcg6yG3o2N7nvV20LrVeB3jkmBAqlnZK6bbGKW+JyQ3jfWmsmIk16L2g6TrFhs5cdZMrV81HIEF3y7vDc9tDs4yFT1xwgpnJ43HzJBBD+HauePB9DWtq2mZgfEcENOvupnQlUujAkXjIjxot5SELROYEHejqPqaCJayV"
`endif