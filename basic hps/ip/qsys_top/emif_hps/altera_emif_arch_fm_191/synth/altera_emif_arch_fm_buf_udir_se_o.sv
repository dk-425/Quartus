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


module altera_emif_arch_fm_buf_udir_se_o #(
   parameter OCT_CONTROL_WIDTH = 1,
   parameter CALIBRATED_OCT = 1
) (
   input  logic i,
   output logic o,
   input  logic oe,
   input  logic oct_termin
);
   timeunit 1ns;
   timeprecision 1ps;

   generate
      if (CALIBRATED_OCT) 
      begin : cal_oct
         tennm_io_obuf obuf (
            .i(i),
            .o(o),
            .term_in(oct_termin),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .obar(),
            .oe(oe),
            .dynamicterminationcontrol(),
            .devoe()
            );    
      end else 
      begin : no_oct
         tennm_io_obuf obuf (
            .i(i),
            .o(o),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .obar(),
            .oe(oe),
            .dynamicterminationcontrol(),
            .devoe()
            );    
      end
   endgenerate
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bCjmRxpDGmC0UpLdMeNqke9HfaUrVM3buT0rLIBl9Ig6JqevCVUTYefGS0sg3kUi0t0kR8bx5dgvAVDCRhJlQ6mTPAIHv6aaQZnwbjkmFx8v+vHOAyzdcCQmzL6Z3YxfRWQqEnKmNDa4luPbbRfjWqvi8o6nztmu+KTMKjvLpHOADYKSav7GODYkDHTOO8psOpFD1UnuEoS1B4STE94zraeG8w8bKTQS//allmRqR8XwF1IWAYj/D9KtlGIdFNgUx4/ZH0/SsButWCH/3CGv5/nEd2tH7pq1PWujJ8212yw1OWXbt/nuloULgAmqICycjMuAniWQuOYDBVRwfhGr6CNd1nWeaSRyil2SLgWij8AjSMBBja+ZywY5wkDsrFPBj6PfH465BMssCJ9E6quVgbOC0UOCKnxcpGMC7XTRc3irX47PXYxCM8wrriyDUpfTQ3dnCj+6TyFpvdJC9KTlrlOXHWmy9stLk6+Rbp+spYJVAffsncUkCyWEaTq2kbW5UMeOH0nDc5xTa7gPdNgboviH8wdS/aRoVsNuz8qXpvXKyjQpfsqtswnZdVoFveF/3nXOe54MKJ6ZCUNTpCGo835yJUJmyyOq1aPp83xY0gs52VZAPuu5gPFfroKdEcMNGxhLAZQZEMm2yDp/grzYQX7c8USaJY55RjpuKngtpKUUEp+PbAWA/zFTZ+BxFKUo3sN99gjCKxr4ohm3S0exyvCSkbLPLK+mHC8xukAyZzW6ruUYKd0RXjJSFuYOHdOaHECee/Kx0phg7XpqJOzKEI"
`endif