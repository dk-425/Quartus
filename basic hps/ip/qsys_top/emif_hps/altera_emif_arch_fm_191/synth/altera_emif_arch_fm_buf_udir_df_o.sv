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


module altera_emif_arch_fm_buf_udir_df_o #(
   parameter OCT_CONTROL_WIDTH = 1,
   parameter CALIBRATED_OCT = 1
) (
   input  logic i,
   input  logic ibar,
   output logic o,
   output logic obar,
   input  logic oein,
   input  logic oeinb,
   input  logic oct_termin
);
   timeunit 1ns;
   timeprecision 1ps;

   localparam DCCEN = "true";

   logic pdiff_out_o;
   logic pdiff_out_obar;

   logic pdiff_out_oe;
   logic pdiff_out_oebar;

   tennm_pseudo_diff_out # (
      .feedthrough("true")
   ) pdiff_out (
      .i(i),
      .ibar(ibar),
      .o(pdiff_out_o),
      .obar(pdiff_out_obar),
      .oein(oein),
      .oebin(oeinb),
      .oeout(pdiff_out_oe),
      .oebout(pdiff_out_oebar),
      .dtcin(),
      .dtcbarin(),
      .dtc(),
      .dtcbar()
   );

   generate
      if (CALIBRATED_OCT)
      begin : cal_oct
         tennm_io_obuf # (
            .dccen(DCCEN)
         ) obuf (
            .i(pdiff_out_o),
            .o(o),
            .oe(pdiff_out_oe),
            .term_in(oct_termin),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .obar(),
            .devoe()
         );

         tennm_io_obuf # (
            .dccen(DCCEN)
         ) obuf_bar (
            .i(pdiff_out_obar),
            .o(obar),
            .oe(pdiff_out_oebar),
            .term_in(oct_termin),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .obar(),
            .devoe()
         );
      end else
      begin : no_oct
         tennm_io_obuf # (
            .dccen(DCCEN)
         ) obuf (
            .i(pdiff_out_o),
            .o(o),
            .oe(pdiff_out_oe),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .obar(),
            .devoe()
         );

         tennm_io_obuf # (
            .dccen(DCCEN)
         ) obuf_bar (
            .i(pdiff_out_obar),
            .o(obar),
            .oe(pdiff_out_oebar),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .obar(),
            .devoe()
         );
      end
   endgenerate

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6bMCAYThFASxr0btCnbe/ryQaB5TQBmK/UT9W3pKNr76jAGvHXL81a10N5XEvhH/LcmaUaYsKj1TPl7LR/QmCSIhQhy8Q0R8oBgRhPEssSI67ZYiJgHdQTpizXvv4hzMUpaDeawRXHsbezmoxY4ueBW2Siab9SQULNgUqftROg6luHOo8LMIGDIEB4Hi1Uv9+H2WJQOFCmn6i7WEFFYWS7l+uM1wh97dXA6DYfwfkxV+n1hN2oo1eIx0DXjQsBQovcNrOO7uYRbyQyB4e5I3psBZaPcmW51Hn8FRUGR6acH2MzgIi12r99kP9pN4unwGKB3uIaeE1uDwmDp7zTKZmwmMOJAjv01NgqvYwqZfz3eSz5FnTeewfjf2NhzkaC0xmRoGK+Hk2OCaqULo/kcKdp9lnN3tbzlT4fT4vZtIfhoentGhTl7iRCW2nNoaoaUo5aTGsKwRg72Cz7v34NjunZHY53Ij9FkzEeB3oyNcIa+t9oD3F1orPUN30IejKErA/Uw8w2ExBK6tXypHP/DUlTYbWlYaP/FfRU1jbIdS5h076kku7HlXUj42YWrPEUDdRE/C3QuAXQ5lAKDAGHM2+/PiM4agEUtnYX3S2K6m6UV2F3jpb5D6YilX8RoEpSx5oCtW0PVuPwcmMktKe8Dwsw/xD9nxGdjFOZJ/Y0QewW8R0iGBBhmBCoYUgCN280uW8Rw5x+iLwBDCSkmrBobw/F7y+Z7bd+cwp6tER1YTK7PkeZsoKKz/mZ4Vi3cVvwro7u0s9AFfiVoStc84z0ouNWW"
`endif