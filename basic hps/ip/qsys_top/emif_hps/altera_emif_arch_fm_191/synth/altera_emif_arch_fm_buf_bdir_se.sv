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


module altera_emif_arch_fm_buf_bdir_se #(
   parameter OCT_CONTROL_WIDTH = 1,
   parameter HPRX_CTLE_EN = "off",
   parameter HPRX_OFFSET_CAL = "false",
   parameter CALIBRATED_OCT = 1
) (
   inout  tri   io,
   output logic ibuf_o,
   input  logic obuf_i,
   input  logic obuf_oe,
   input  logic obuf_dtc,
   input  logic oct_termin
);
   timeunit 1ns;
   timeprecision 1ps;
   
   generate
      if (CALIBRATED_OCT) 
      begin : cal_oct
         tennm_io_ibuf # (
            .hprx_ctle_en (HPRX_CTLE_EN),
            .hprx_offset_cal (HPRX_OFFSET_CAL)
         ) ibuf (
            .i(io),
            .o(ibuf_o),
            .term_in(oct_termin),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .ibar()
            );
            
         tennm_io_obuf obuf (
            .i(obuf_i),
            .o(io),
            .oe(obuf_oe),
            .term_in(oct_termin),
            .dynamicterminationcontrol(obuf_dtc),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .obar(),
            .devoe()
            );
      end else 
      begin : no_oct
         tennm_io_ibuf # (
            .hprx_ctle_en (HPRX_CTLE_EN),
            .hprx_offset_cal (HPRX_OFFSET_CAL)
         ) ibuf (
            .i(io),
            .o(ibuf_o),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .dynamicterminationcontrol(),
            .ibar()
         );
            
         tennm_io_obuf obuf (
            .i(obuf_i),
            .o(io),
            .oe(obuf_oe),
            .dynamicterminationcontrol(),
            .seriesterminationcontrol(),
            .parallelterminationcontrol(),
            .obar(),
            .devoe()
            );      
      end
   endgenerate            
endmodule

`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6ZYDVWTMuBM02ep2X8I8ogF+KE/RCdIrtlTnzeoyq9bBIvSY3aABBYocARDROrqszDc+Qk5sujFCFfs7ncbBFOi7CsPJnjFWZsUckdLcl+gusizzcy7IZexbySQWf/2P2RjOvNC12HY77pRrgYPXJ/D58VtlTq0zuaFbHjdmda0dpzA6773ZZXQY0gaASXN9EBA+cEX0irxq0SZFhP5So2hDdQFvIBhHScQgUv64lA3bvSNHsBj2oEv8FihLq/zr6XkEthJ3yGCGtNa24ga0sHRTCwRWFCeX6y9hzjrOdGyrUOe10Kqh2R+HeEQ0MHfYo897Vxj5eKasxz1s9HZ2q14X4Afg5/TYKixx4nGcWypIw6MDlzkSuteyFcVv7ebEbGo9IM7FDZ4HOXKcqy0pr7AG4TTLFdmJ/NJgY/GHskUZRbOOSYnx5ATInZtnwh0I0czs7g3KKJc8uihG7ougIrqV2Md0se6vKarJxrcI1AwHesoK0orBZe9er4oPYrG9vsohsdGbvUUTYAcgrUTS4FZEGr+6/MThNrCFCZHLCofQgE32DXyMKLzuYpqK1jZZqYRHQnaGXZfWV3Ego263ZHbuE9UKAzTHufXSXzqzfGpFqga5Pu1ZLY6ngx4GTAiP9cbGO2PEU4WLjvrDQxqFmdjd6+nEmuzQW8p5zrD5WT+5fu7AESv7kNhlhmi2ieFqrSfCsVuA1oOfaYfg+QRUGN4ZuZlRH+in/XaMrHc6fGVrE50ltzsD1LwhyHQlPQ4zyNKJtDAzgVoykcVaDkNn9Ko"
`endif