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



module altera_emif_arch_fm_cal_counter # (
   parameter IS_HPS = 0
) (
   input logic pll_ref_clk_int,
   input logic local_reset_req_int,
   input logic afi_cal_in_progress
);
   timeunit 1ps;
   timeprecision 1ps;

   typedef enum {
      INIT,
      IDLE,
      COUNT_CAL,
      STOP
   } counter_state_t;

   logic                         done;
   logic [31:0]                  clk_counter;

   generate
      if (IS_HPS == 0) begin : non_hps
         logic                         cal_done;
         logic                         reset_req_sync;
         logic                         cal_in_progress_sync;

         altera_std_synchronizer_nocut
         inst_sync_reset_n (
            .clk     (pll_ref_clk_int),
            .reset_n (1'b1),
            .din     (local_reset_req_int),
            .dout    (reset_req_sync)
         );

         altera_std_synchronizer_nocut
         inst_sync_cal_in_progress (
            .clk     (pll_ref_clk_int),
            .reset_n (1'b1),
            .din     (afi_cal_in_progress),
            .dout    (cal_in_progress_sync)
         );

         counter_state_t counter_state /* synthesis ignore_power_up */;

         assign done = ((counter_state == STOP) ? 1'b1 : 1'b0);

         always_ff @(posedge pll_ref_clk_int) begin
            if(reset_req_sync == 1'b1) begin
               counter_state <= INIT;
            end
            else begin
               case(counter_state)
                  INIT:
                  begin
                     clk_counter <= 32'h0;
                     counter_state <= IDLE;
                  end

                  IDLE:
                  begin
                     if (cal_in_progress_sync == 1'b1)
                     begin
                        counter_state <= COUNT_CAL;
                     end
                  end

                  COUNT_CAL:
                  begin
                     clk_counter[31:0] <= clk_counter[31:0] + 32'h0000_0001;

                     if (cal_in_progress_sync == 1'b0)
                     begin
                        counter_state <= STOP;
                     end
                  end

                  STOP:
                  begin
                     counter_state <= STOP;
                  end

                  default:
                  begin
                     counter_state <= INIT;
                  end
               endcase
            end
         end
      end else begin : hps
         assign done = 1'b1;
         assign clk_counter = '0;
      end
   endgenerate

`ifdef ALTERA_EMIF_ENABLE_ISSP
   altsource_probe #(         
      .sld_auto_instance_index ("YES"),
      .sld_instance_index      (0),
      .instance_id             ("CALC"),
      .probe_width             (33),
      .source_width            (0),
      .source_initial_value    ("0"),
      .enable_metastability    ("NO")
      ) cal_counter_issp (
      .probe  ({done, clk_counter[31:0]})
   );
`endif

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6YEBeFpSOxaym7AaTJXzC9eTMdrhyzj7aLxGTnXcdXFdGUZo72RrFj5AN9m5d0By8GYIbbWHMzvyUk6rtMNcayMSlTNKQBE/82akMq8KRaCjk8wVzVEUiQNu1I4Z1NGwwtghTYTvtmpHRyeDXDj4L88MO52HCgQDnhcSs28RiCw2VpIGXNLtpjB7SCtQeSq5jDxUd0XM0kQic0vDF9Y+PZQLXk+zWh50f4QWm0tqgSHyMpPdI3zt9b4q5dHwsGASH4LBrq1UK12VoMEFivME4ZG0tHAh9FmE9I4H/rW63bkIq6IukHf4JBlikW7u1BIf+H0sJvRfMSYBnW0TBB7/HsoWGfx+xhdBG5uKKVbB45mbfTpWAJ5zXtGAppNDozgLwggEQgYB/K3DILu33eg9H7HDUAIfDVaHMxDzBTQXlAJ8qpkZx8aMLbRGP7t+BI6tBpYnpIIPp+eCxydhANuD8Q+fxdDXRWEoP39x0sBf41i9OtVJfTJfKoFbpr+4PgP8tN+DHD6+LBKJ8sg9SMencB0JqZ1G5TA8ja9ADtojp59CjvajoYphXR14lGy/NE8ewXf56zx9MpNRT+DVyvLFNsJfAZd7UfgunZwWh/kEO/6r+kQv7wfWsgNKTFbpOW839xrtRXlCQ0Lc0YIVWVZB9t3T41VdgSIXb2C43yhthyezuRncJIMeiD34KUHjGSb0bcpojXD9+5O5ZA5+Z/RjixTQHIjp52/J2KIi6DXRGtxGNFNs3/TPQzKkzo8kry5xhAzySzcJ7UQUXV7g04PiMer"
`endif