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


module altera_emif_arch_fm_buf_udir_df_i # (
   parameter OCT_CONTROL_WIDTH = 1,
   parameter CALIBRATED_OCT = 1
) (
   input  logic i,
   input  logic ibar,
   output logic o,
   input  logic oct_termin
);
   timeunit 1ns;
   timeprecision 1ps;
   
   generate
      if (CALIBRATED_OCT) 
      begin : cal_oct   
         tennm_io_ibuf  # (
            .differential_mode ("true")
         ) ibuf (
            .i(i),
            .ibar(ibar),
            .o(o),
            .term_in(oct_termin),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );
      end else 
      begin : no_oct
         tennm_io_ibuf  # (
            .differential_mode ("true")
         ) ibuf (
            .i(i),
            .ibar(ibar),
            .o(o),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );      
      end
   endgenerate      
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bWAKKf6WWRN5XFErlIkkHCXm+YmwOWDJm0HOhThUC9mCKCWzB4nwsttbF4tEX46V2Jy2fjVt0ot9PKln9uys7CQxYn7pq9V/OCR9Qcaap1NQH/L4F145Can+/bUZTJlfa8xYrHBjNK2t2bl/qsPJERPjzJmJtrHYRIwaOWQ3wIWGmh5uffvqD7bEIeJJ+mBvyVNUl7Sz5yj0+TR5cHeTtIGehn5Ck+BSqPrdNYyB4H59Zffb/w8G8w359nFIAfT7SODsKU2lsOxeRQy4gYlEh51iOP+2oMmNJJDZ7jHHex9RhNTtl9xOTQ9e+NGuwiy4fv4b/oWlxUdnMU8S5K2B65cnDI5U5I4ayvtfntgEas7OaGlLagdEYVI+/AD8KG6XlYRg6QOuvmsISWLU8udMZ5tBWsCjfRmG3xC4vPrDP4HaShCns59K8ddf5zmx6byir3Zox2pTFQLg8FObK48eaYAUaX4yxFLDMOk4k9HO1i12BsIHUUZU+uR9NJbzaQsQeqPOhyyE32N5wDFjEM2tYeIjbW7YsXgTh/5OegVhre0VUEKfVj9UNFvgdnma4GVdAoXjTWJNY1iw2M7OuKrGlv09CFms3zVFsMCSvXD2Yf8WyIr4Y4S9PrYktLEuiocWViGFC9yQeYaEERUktZg7Xf7rifcFSgh5mVJ+ZsRBLalLJxO/JKtkDJtZadvE0Zh322PZ17hroS4kXOsJ972DXP99e6mubcMheXgCQql8YLB0C2RzEdkcDBRl7nafC/ZEq0yoyjApaMtIGYJ4ZUXMTu"
`endif