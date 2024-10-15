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


module altera_emif_arch_fm_buf_udir_cp_i # (
   parameter OCT_CONTROL_WIDTH = 1,
   parameter CALIBRATED_OCT = 1
) (
   input  logic i,
   input  logic ibar,
   output logic o,
   output logic obar,
   input  logic oct_termin
);
   timeunit 1ns;
   timeprecision 1ps;
   
   generate
      if (CALIBRATED_OCT) 
      begin : cal_oct      
         tennm_io_ibuf ibuf(
            .i(i),
            .o(o),
            .term_in(oct_termin),
            .ibar(),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );
            
         tennm_io_ibuf ibuf_bar(
            .i(ibar),
            .o(obar),
            .term_in(oct_termin),
            .ibar(),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );
      end else 
      begin : no_oct
         tennm_io_ibuf ibuf(
            .i(i),
            .o(o),
            .ibar(),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );
            
         tennm_io_ibuf ibuf_bar(
            .i(ibar),
            .o(obar),
            .ibar(),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol()
            );      
      end
   endgenerate
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bT/WiOiaxN55Izp7WyQxr/Jv/sVYD/dAm/V0QBbY6TdjfWMzV3zF8qoHoRl91VPii4peeV9PX9Qs5NErNav4zN9CbDLQAD0W6Y1waHwGBMYZ7DqfCt9f6VxhxC4HrQCbBc3zZjVLPpRFdXjq9/V5WD9pcJ8EX2xKDvUPzUYU7iDdgD+oT4xstfAIXxE0wXYETB4xd6tRdPeGjCUam/MPqOUDbmsWKLRlw+l2rBEfK03SYHinbkSoxeCXdEDM7gKpXtVXVEbzcQ+UZtRffFbX49kDWQUv0c37GzHXygrpnW4kX34yxVOYfTuRxbtl7XusqT/DvXRvRjy2XRjzAkkmLyLDhwktaWtpdSdp7dlqTW8MzpXYC1IxrXzsGK4haWgCc7doY2J0MYdomVh0hVsAob42NW0UIVq10KRhUV/QzxmGLN4IfUgjXGasFQYMo2nPhpKFvGjDiTYJ8f+Cx5leivkgvWT7BBOLn3/O8nfAyvoRE0tz7kqMIS9A1gMbwvAweSHvR4ACbhcTJbwZXejhI3wvucY7i720/RaxA9r/jkC3+N0JwPGZK7aYMIszae2/zUWZLuR23iDAJeSsChm4N7/xw3+0JrngQfird7vKdE3M0LHCkL0+tXOqBGs48XUJj37hIJ8FoVOaWpdbY5K/jvU9U+KbLaqUnm/VU8RbxzrWTb/4DsaNNWe1evZ1eXg6oLuDfwxyoab2c1MpPY6fRx6qxGf432vDXO6Xe9azupbiFVq2ZxFqH+aj+n5jaZW2qJpDW+c6Bui5X0dUSorZQg"
`endif