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



module altera_emif_arch_fm_oct #(
   parameter PHY_CALIBRATED_OCT = 0
) (
   input  logic oct_rzqin, 
   output logic oct_termin 
);
   localparam OCT_USER_OCT = "A_OCT_USER_OCT_OFF";

   generate if (PHY_CALIBRATED_OCT == 1) begin
     tennm_termination term_inst (
       .req_recal (1'b0),
       .ack_recal (/*open*/),
       .rzqin     (oct_rzqin),
       .serdataout(oct_termin)
     );
   end
   endgenerate

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "omI1kwg3SvdP6RPvdzuXACCUMVwM0bKuRDFhfqpxDoNCoeOD+ozRq8Md/WS9BKNwLN500mC9+QB7EvHnGEk0g4prLEcjOrwtDCwYsyVjCcCdngruyCoA6zgaNfFFWL9cYsOOtfZXTIu+qggQ6bzzlmOTL1jf/0cqHyfpssVE4+6noXZspJWNskJHOeBuAIdclT1n/U13Zqsk80CS8CYScAI6o5grVO+2f8DoCGvGf6Z/zuqVtWi3D5RWacTZgQyswa8xliS4aMeIa+rp7OjIKb6J/Q67u02/LNdIUaTry2t9d9moLVvTA53Wq5u6cq/rl0oBI4rlKnQNTV5La71/xvW8hC8y3bBQK7Q61/kwrtSQWsrc/gY/bQChzkgel64mZHkNwaWtRObqSP/PRdnWTkC3GhSsLgh/HqJ0OAoihs8GqEbwRlPt+1FT55z35+02RkHJjUn8YSk3rQ/fHaiF1mGdybnBcnSeVEBWNnMUPFwx2Gq0t2U1XZ1cdmck/VSij7QUGbC4LkpMhEvTjtwv1manOFlkfdVzM+QL2cYXE0+H4qEsWeM1LUexq8hyUE28QSkUTQDwXD2fcb+lC4C+eUCgJ+MF68dGVFVGMS+1bYjFboEEJv9JDzBfdnt2EZ8snA2FMvVLiMTH2/hxcXFHq44z8lkxe78RE6H9sFTow+IKrN5C6QIrC4oqEaUwtx30QGumGB//EqzTsMVefszcrGlG2xr+SwLpRTb80J1eh6VDxONkPXCPAoXOrpW7KAvxryWyxYHQcXhtBbAIUzubF3T0TwEZzyBYuSQN7TwSdehGxn6HhX93rRKmzEbR4uK7aAxDPk8DttnduKt9c8Wz/7OVLJw3HsXsSxD35LdfjhXIyBGPedptJQPpY9mfT6N1uMLmJQ7D/r9evu5UfIsdW3JRP4P0Xa8jPKkGzW5c9cZ9lXeFYGG31vwddT/R1b8oVlpuwn7/XojOrYbqbRJLvvxGnDL64kKDFGWRATEl5My271cgIzJw9C08KZiFChN4"
`endif