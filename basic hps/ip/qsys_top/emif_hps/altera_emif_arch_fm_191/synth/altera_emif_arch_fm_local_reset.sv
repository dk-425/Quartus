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
//  Reset request sequencing state machine.
//
///////////////////////////////////////////////////////////////////////////////
module altera_emif_arch_fm_local_reset # (
   parameter PHY_CONFIG_ENUM    = "",
   parameter IS_HPS             = 0
) (
   input  logic   afi_clk,
   input  logic   afi_reset_n,
   input  logic   emif_usr_clk,
   input  logic   emif_usr_reset_n,

   input  logic   local_reset_req_int,
   output logic   core2seq_reset_req,

   output logic   local_reset_done,
   input  logic   seq2core_reset_done
);
   timeunit 1ns;
   timeprecision 1ps;

   typedef enum {
      WAIT_RESET_DONE,
      WAIT_USER_RESET_REQ_1ST_DEASSERT,
      WAIT_USER_RESET_REQ_ASSERT,
      WAIT_USER_RESET_REQ_2ND_DEASSERT,
      ASSERT_CORE2SEQ_RESET_REQ
   } state_t;

   generate
      if (IS_HPS) begin: hps
         assign core2seq_reset_req = 1'b0;
         assign local_reset_done   = 1'b0;
      end else begin : non_hps
         logic clk;
         logic reset_n;

         if (PHY_CONFIG_ENUM == "CONFIG_PHY_AND_HARD_CTRL") begin : hmc
            assign clk = emif_usr_clk;
            assign reset_n = emif_usr_reset_n;
         end else begin : non_hmc
            assign clk = afi_clk;
            assign reset_n = afi_reset_n;
         end

         ////////////////////////////////////////////////////////////////////
         // State machine
         ////////////////////////////////////////////////////////////////////
         state_t state                 /* synthesis ignore_power_up */;
         logic   core2seq_reset_req_r  /* synthesis ignore_power_up dont_merge syn_noprune syn_preserve = 1 */;
         logic   local_reset_done_r    /* synthesis ignore_power_up dont_merge syn_noprune syn_preserve = 1 */;

         always_ff @(posedge clk, negedge reset_n)
         begin
            if (!reset_n) begin
               state                <= WAIT_RESET_DONE;
               core2seq_reset_req_r <= 1'b0;
               local_reset_done_r   <= 1'b0;
            end else begin
               case (state)
                  WAIT_RESET_DONE:
                  begin
                     // Wait until sequencer signals it's ready to accept a reset request.
                     if (seq2core_reset_done) begin
                        if (local_reset_req_int == 1'b1) begin
                           state                <= WAIT_USER_RESET_REQ_1ST_DEASSERT;
                           core2seq_reset_req_r <= 1'b0;
                           local_reset_done_r   <= 1'b1;
                        end else begin
                           state                <= WAIT_USER_RESET_REQ_ASSERT;
                           core2seq_reset_req_r <= 1'b0;
                           local_reset_done_r   <= 1'b1;
                        end
                     end
                     else
                     begin
                        state                <= WAIT_RESET_DONE;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b0;
                     end
                  end

                  WAIT_USER_RESET_REQ_1ST_DEASSERT:
                  begin
                     if (~local_reset_req_int) begin
                        state                <= WAIT_USER_RESET_REQ_ASSERT;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b1;
                     end else begin
                        state                <= WAIT_USER_RESET_REQ_1ST_DEASSERT;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b1;
                     end
                  end

                  WAIT_USER_RESET_REQ_ASSERT:
                  begin
                     if (local_reset_req_int) begin
                        state                <= WAIT_USER_RESET_REQ_2ND_DEASSERT;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b1;
                     end else begin
                        state                <= WAIT_USER_RESET_REQ_ASSERT;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b1;
                     end

                  end

                  WAIT_USER_RESET_REQ_2ND_DEASSERT:
                  begin
                     if (~local_reset_req_int) begin
                        state                <= ASSERT_CORE2SEQ_RESET_REQ;
                        core2seq_reset_req_r <= 1'b1;
                        local_reset_done_r   <= 1'b0;
                     end else begin
                        state                <= WAIT_USER_RESET_REQ_2ND_DEASSERT;
                        core2seq_reset_req_r <= 1'b0;
                        local_reset_done_r   <= 1'b1;
                     end
                  end

                  ASSERT_CORE2SEQ_RESET_REQ:
                  begin
                     state                   <= ASSERT_CORE2SEQ_RESET_REQ;
                     core2seq_reset_req_r    <= 1'b1;
                     local_reset_done_r      <= 1'b0;
                  end
                  default:
                  begin
                     state                   <= WAIT_RESET_DONE;
                     core2seq_reset_req_r    <= 1'b0;
                     local_reset_done_r      <= 1'b0;
                  end
               endcase
            end
         end

         ////////////////////////////////////////////////////////////////////
         // Output generation
         ////////////////////////////////////////////////////////////////////
         assign core2seq_reset_req = core2seq_reset_req_r;

         // Instead of passing seq2core_reset_done directly to user, we have the ability
         // to acknowledge the reset request earlier, as soon as a local_reset_req pulse
         // is detected.
         assign local_reset_done = local_reset_done_r;
      end
   endgenerate
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6auxeDcokLlhFuWkJZO5oL+4AcvwyEUM8pzyOJBBDZFRwEKli740620eppguiDbk+/wC4COyrpwjmlptqsr6ZT6+oDwp4fgQSnTkiEJCCHoLswzVObG8cEmwqv32h/X5mndgoIZGKamsnTZNhslM13S/n91PXSlgzAxSqFmc2Etjyrlk61lCVtXWm1mMVCH/mVA02pVayLNQ6ySocYHZ5gqi4JYvEhvdYMxXytNDLOq5dSUoWAgwsmSWoc8Zr+vPnRSTn2Fekvgry0zuHSikSe+rYsnrBukUcUjZDmYhbNa5Iz41JkjEYv1QqLmdpOavp0Z+6kmhvxkBOmapghg6LzPjqV0VsynEKCB+vMxDPrB0i8sYZ6fNuOhO81BsT0RG5kWtCRg8geX4MC8mhOs6+FEcns3dpJyrPKz+9AIk+FJPWCNChSeRKB11BG88GtVLkOkbYGzo2uG807JQ+mwFPIUCNGt0tLb7gMIOjFybcWhsO61RUEll+RIV5MRTE5Q9Vfxbeo2IRtdAP+kneOeOlFm6wqA/QlK/DtDvdAz6BzHJO2mONS0Cs323tXvqJ6JsNP3q3i4FTljlVqFLBiM0H6vyyg4M7xwbV+lEBuGxEycnqqPHbWeBegxEzUgPAkJol5xy/vH7xEGvyeRxDNMb7392K5JLOlWlnfkirVSe0JSATTfcLRbzzFowbPu/vBJlsuxYFk8Qde0gTAXkfEWAJf8sQv7n8ShEK1rFgCkzYrHZGHs711LdgRDoq+X8SNiAqO76hqZA9cx5MBhBBUOyTXM"
`endif