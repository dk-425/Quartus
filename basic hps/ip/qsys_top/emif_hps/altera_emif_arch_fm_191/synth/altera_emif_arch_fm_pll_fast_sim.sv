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
//  EMIF IOPLL instantiation for 20nm families
//
//  The following table describes the usage of IOPLL by EMIF. 
//
//  PLL Counter    Fanouts                          Usage
//  =====================================================================================
//  VCO Outputs    vcoph[7:0] -> phy_clk_phs[7:0]   FR clocks, 8 phases (45-deg apart)
//                 vcoph[0] -> DLL                  FR clock to DLL
//  C-counter 0    lvds_clk[0] -> phy_clk[1]        Secondary PHY clock tree (C2P/P2C rate)
//  C-counter 1    loaden[0] -> phy_clk[0]          Primary PHY clock tree (PHY/HMC rate)
//  C-counter 2    phy_clk[2]                       Feedback PHY clock tree (slowest phy clock in system)
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////
module altera_emif_arch_fm_pll_fast_sim #(
   parameter PLL_SIM_VCO_FREQ_PS                     = 0,
   parameter PLL_SIM_PHYCLK_0_FREQ_PS                = 0,
   parameter PLL_SIM_PHYCLK_1_FREQ_PS                = 0,
   parameter PLL_SIM_PHYCLK_FB_FREQ_PS               = 0,
   parameter PLL_SIM_PHY_CLK_VCO_PHASE_PS            = 0,
   parameter PORT_DFT_ND_PLL_CNTSEL_WIDTH            = 1,
   parameter PORT_DFT_ND_PLL_NUM_SHIFT_WIDTH         = 1,
   parameter PORT_DFT_ND_PLL_CORE_REFCLK_WIDTH       = 1
   
) (
   input  logic                                               pll_ref_clk_int,       
   output logic                                               pll_locked,            
   output logic                                               pll_dll_clk,           
   output logic [7:0]                                         phy_clk_phs,           
   output logic [1:0]                                         phy_clk,               
   output logic                                               phy_fb_clk_to_tile,    
   input  logic                                               phy_fb_clk_to_pll,     
   output logic [8:0]                                         pll_c_counters,        
   input  logic                                               pll_phase_en,          
   input  logic                                               pll_up_dn,             
   input  logic [PORT_DFT_ND_PLL_CNTSEL_WIDTH-1:0]            pll_cnt_sel,           
   input  logic [PORT_DFT_ND_PLL_NUM_SHIFT_WIDTH-1:0]         pll_num_phase_shifts,  
   output logic                                               pll_phase_done,        
   input  logic [PORT_DFT_ND_PLL_CORE_REFCLK_WIDTH-1:0]       pll_core_refclk        
);
   timeunit 1ps;
   timeprecision 1ps;

   localparam VCO_PHASES = 8;

   reg vco_out, phyclk0_out, phyclk1_out, fbclk_out;
   reg [4:0] pll_lock_count;
   // synthesis translate_off
   initial begin
      vco_out <= 1'b1;
      forever #(PLL_SIM_VCO_FREQ_PS/2) vco_out <= ~vco_out;
   end
   initial begin
      phyclk0_out <= 1'b1;
      #(PLL_SIM_VCO_FREQ_PS*PLL_SIM_PHY_CLK_VCO_PHASE_PS/VCO_PHASES);
      forever #(PLL_SIM_PHYCLK_0_FREQ_PS/2) phyclk0_out <= ~phyclk0_out;
   end
   initial begin
      phyclk1_out <= 1'b1;
      #(PLL_SIM_VCO_FREQ_PS*PLL_SIM_PHY_CLK_VCO_PHASE_PS/VCO_PHASES);
      forever #(PLL_SIM_PHYCLK_1_FREQ_PS/2) phyclk1_out <= ~phyclk1_out;
   end
   initial begin
      fbclk_out <= 1'b1;
      #(PLL_SIM_VCO_FREQ_PS*PLL_SIM_PHY_CLK_VCO_PHASE_PS/VCO_PHASES);
      forever #(PLL_SIM_PHYCLK_FB_FREQ_PS/2) fbclk_out <= ~fbclk_out;
   end

   initial begin
      pll_lock_count <= 5'b0;
   end
   // synthesis translate_on
   
   always @ (posedge vco_out) begin
      if (pll_lock_count != 5'b11111) begin
         pll_lock_count <= pll_lock_count + 1;
      end
   end

   assign pll_locked = (pll_lock_count == 5'b11111);
   assign pll_dll_clk = pll_locked & vco_out;
   assign phy_clk_phs[0] = pll_locked & vco_out;
   always @ (*) begin
      phy_clk_phs[1] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[0];
      phy_clk_phs[2] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[1];
      phy_clk_phs[3] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[2];
      phy_clk_phs[4] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[3];
      phy_clk_phs[5] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[4];
      phy_clk_phs[6] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[5];
      phy_clk_phs[7] <= #(PLL_SIM_VCO_FREQ_PS/VCO_PHASES) phy_clk_phs[6];
   end
   assign phy_clk = {pll_locked & phyclk1_out, pll_locked & phyclk0_out};
   assign phy_fb_clk_to_tile = pll_locked & fbclk_out;
   assign pll_c_counters[0] =  pll_locked & phyclk1_out; 
   assign pll_c_counters[1] =  pll_locked & phyclk0_out;
   assign pll_c_counters[2] =  pll_locked & fbclk_out;
   assign pll_c_counters[8:3] = 6'd0;
   assign pll_phase_done = 1'b1;

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6b2voYju7Nku4gMeJ7KNFgsdDH7nubvfj8RYwcvD0VRER+4kX/7O/0CCI4yKDY1f+aAZi0tfM+cktEVjL5GZgxzhiv4QLY3RSUjqzrPJtpnwtM3HeLfMk1TxfXFAnN/1kEZJjlLk2KrcNkwL5iehDij5v+a6EJKjlMiu3CyNl2EWDof44Pt78D/X1S8qoZJVNdBWu5aoJ3z/BAR8oU1b+95ETecObV9Xi66rlD1w6NIe/YXrr4oSGXOY8R8UXLCjaxILf6V5Pf3ySXckAxpIhliICQTqYwAF1ouVLUjrXZ3mtssArEqCqI43SQriDCOlgGfTLrYczMCLJ6zaIp/PB3sm8zSKoA+LwFsBAzuDB9RypFWPlf+Uz1DWW1qMEY5NLQ2Tx2nojTAUbqPp6fLyS61UdzYq6BJmmuU27wGK7DfhKE5I3xnDvVPuvlbUI9/QRvqibyyDR25yM6Bjp3JLdy2fplq/DsMSb00ucD7r5xOzAilLAyuRyL4chY46HmxAu582YnoHxDRiuw/o3zMyWKd+2x0I/HuPrvBFSCK3rx4IxnCuokzAfwny6cQ6TAdjM/7g7zMBTcmZrKjcGLwFrYws8YtYJ8IJNC3UKy+QyrciFfkb54uvBHc9+08DXSc4yNDp3+8QySjNyjtciscasDej+mTeQm80NV1OQ73Ne6ldyjcVW3/jKra/KL1Q/qUzPf8Y9uj2qGtB5twlIxsxRQTIaL8mFjK4xLVmjS5uND0asqmXd9OsUeIhIVlOI7YPxqXiBkVs8N4ts5ONDQwT/er"
`endif