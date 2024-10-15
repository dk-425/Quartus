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


module altera_emif_arch_fm_buf_udir_se_i #(
   parameter OCT_CONTROL_WIDTH = 1,
   parameter CALIBRATED_OCT = 1
) (
   input  logic i,
   input  logic oct_termin,
   output logic o
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
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .ibar(),
            .dynamicterminationcontrol()
            );    
      end else 
      begin : no_oct
         tennm_io_ibuf ibuf(
            .i(i),
            .o(o),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .ibar(),
            .dynamicterminationcontrol()
            );
      end
   endgenerate
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bcqzHSki/FLL4NAK1aJf9nFGo2fe6gANFPgtku0TfkxJOHXCmCagVlOshZpSbcG4Ct+snyCVtJfRe5oxguD9RlQRyFN3MCIxZM6VQFOkFX7DcM9+n309QtOMQ47ItsxNVHpyy5gtVX4RtZ2n3WcY0ch2FDKc8wG2FrKSXAuqmUpzLJYVhubwJOpByr/xsLF7RKekSsHbWqmEMs4bJWQqm3qr+QBsI3G6XxCrq3SfuJKGZXbpEQR8E/wUnWe2B5T1qRJujqWy3gICQpsouU9mH9rt+bl/qd8BYxLKdl10J0ZMK5Z4FvYNAY/uptLUEMkesNXCPz3rgOsGxCmyhGAbIOoGbniogmJXJqlynSKgtTkqmHU5bAaGkLIZbXtl5jhEMdzg64vdmMSnMYA0g37eEBx140Enlpvc4ied7UxNBLln0MF+J2bXbWZEsBiZlcMf8ONBDc4ZlxzUa7Y0+9ZZ5VnCXRbNrgZUqrdHjv9XdVFUTcZlSfgEO83GNVYt0nnfvTTNxbxPgQXmegHc3Fyex3GKcjAcLP2tFRh0KEi0bClHQ4s/N2JmlAclu+IzbP7TRiqyKanh2wdZOcCLMTa9I74+re0KcOiKi6UkPB3nUtmcx6d9ctG5DIEC4J3z+yoR5ekNZGUG/PBsBJFO275uLNe3vbra0HqqfJ/bXekq1CRkpNoh4vULRH800mASBds1EtSplGGPRGrqJB+jp/xAKPLaGUZik7tIVacDfHMASpe9cT4VgjBhJNFerfqNMECLXaf9///UZlLzI0VYCDxA/D"
`endif