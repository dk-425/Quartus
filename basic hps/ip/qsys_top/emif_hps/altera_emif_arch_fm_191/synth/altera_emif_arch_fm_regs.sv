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
// This module handles the creation of a conditional register stage.
// This module may be used to implement a synchronizer (with properly selected
// REGISTER value)
///////////////////////////////////////////////////////////////////////////////

// The following ensures that the register stage isn't synthesized into
// RAM-based shift-regs (especially if customer logic implements another follow-on
// pipeline stage). RAM-based shift-regs can degrade timing for C2P/P2C transfers.
(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF" *)

 module altera_emif_arch_fm_regs #(
   parameter REGISTER       = 0,
   parameter WIDTH          = 0
) (
   input  logic              clk,
   input  logic              reset_n,
   input  logic [WIDTH-1:0]  data_in,
   output logic [WIDTH-1:0]  data_out
) /* synthesis dont_merge */;
   timeunit 1ns;
   timeprecision 1ps;

   generate
      genvar stage;

      if (REGISTER == 0) begin : no_reg
         assign data_out = data_in;
      end else begin : regs
         logic [WIDTH-1:0] sr_out [(REGISTER > 0 ? REGISTER-1 : 0):0];

         assign data_out = sr_out[REGISTER-1];

         for (stage = 0; stage < REGISTER; stage = stage + 1)
         begin : stage_gen
            always_ff @(posedge clk or negedge reset_n) begin
               if (~reset_n) begin
                  sr_out[stage] <= '0;
               end else begin
                  sr_out[stage] <= (stage == 0) ? data_in : sr_out[stage-1];
               end
            end
         end
      end
   endgenerate
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bId7ndicx37wnmdpjbjKCs0yFvDs67gZse8C8V4pm4ruN/m2RUjKxIu0VsN2Zq7qgDAcxUcdkvuwnklWVk4nRFjESSyNUsv+2wlgQgUBSqysj6hrRCCMDISulVXXPSLOw+H9eBHTPAQmPl9ZeSbBMW3xfi1VvTR7sYGHCSYfgElwsWNWXkw6/6O+bRiBOcxG2MTTNYTzDzh5JZExKDTj3TSxTGXE5If32FISJrAiC/pWx2ZZqt+CCSv8w3eZitqERnthlLah+PUKiIIVbW6Ja33OEsrSQBUjb7ZM6Gs6xe0oGBFuk3kNIYZMhXMv76dPJxan64ciw5Cb/ve4xjVuKynUi8KsWJzEueDpqWMTqGAcn3fLhgsVuFDoKn6utpqudR6Z0pygRcWPb5yNiE2CmYzpLJoaXYBe+BW2BANj62Q1ex1KMuHYCFBTL4TheaXpcxdbn7OWaQ/NSkUYvy7hOuZUy1DRiyNU07rqMtKJ+0ZpZRAHZGoTqXTt141fUpFicnO4oGNk7W6+tfEi7MMc7CQh/sSBfDhNrXzRgxQvnLKb5QftfpKaOlNL5sDh9+3yx04VbKK+/TeOpDXZ2nCFKGRtnxjEeUir/0ZECYeiF7OyZ02eYDr/U3H3ev+Uo92NEXZz4Q2GeP5mDwzg3mncz4+buPRaWBdZi3vqKFuAi8wA0ghm7OGPFoVkvUVQZvrA411HejVkEhFXrTvC6UkyNDbLVE6zU7m4vzjVdiIhs6yU3DKDm46mUCtdfTZXKaiU7H8ldd6krW6LDTOjVvj9l+"
`endif