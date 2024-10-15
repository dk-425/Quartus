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
// UFI wrapper for FalconMesa EMIFs
///////////////////////////////////////////////////////////////////////////////

module altera_emif_arch_fm_ufi_wrapper #(
   parameter MODE   = "pin_ufi_use_in_direct_out_direct",
   parameter IS_HPS = 1,
   parameter IS_C2P = 1,
   parameter HIPI_DELAY= 225,
   parameter TIEOFF = 0
) (
   input logic                                       i_src_clk,
   input logic                                       i_dst_clk,

   input  logic                                      i_din,
   output logic                                      o_dout
);
   generate
     if (TIEOFF) begin
        assign o_dout = i_din;
     end else begin
        if (IS_HPS && !IS_C2P) begin : hps_p2c_ufi
           (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225; -name PRESERVE_FANOUT_FREE_WYSIWYG ON"} *)
           tennm_ufi #(
             .mode    (MODE),
             .datapath("p2c")
           ) preserved_ufi_inst (
             .srcclk (i_src_clk),
             .destclk(i_dst_clk),
             .d      (i_din),
             .dout   (o_dout)
           );
        end else begin
           if (!IS_C2P) begin : p2c_ufi
              (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON"} *)
              tennm_ufi #(
                .mode    (MODE),
                .datapath("p2c")
              ) ufi_inst (
                .srcclk (i_src_clk),
                .destclk(i_dst_clk),
                .d      (i_din),
                .dout   (o_dout)
              );
           end else if (HIPI_DELAY == 350) begin : c2p_350_ufi 
              (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 350"} *)
              tennm_ufi #(
                .mode    (MODE),
                .datapath("c2p")
              ) ufi_inst (
                .srcclk (i_src_clk),
                .destclk(i_dst_clk),
                .d      (i_din),
                .dout   (o_dout)
              );
           end else if (HIPI_DELAY == 100) begin: c2p_100_ufi
              (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 100"} *)
              tennm_ufi #(
                .mode    (MODE),
                .datapath("c2p")
              ) ufi_inst (
                .srcclk (i_src_clk),
                .destclk(i_dst_clk),
                .d      (i_din),
                .dout   (o_dout)
              );
           end else begin: c2p_225_ufi
              (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)
              tennm_ufi #(
                .mode    (MODE),
                .datapath("c2p")
              ) ufi_inst (
                .srcclk (i_src_clk),
                .destclk(i_dst_clk),
                .d      (i_din),
                .dout   (o_dout)
              );
           end

        end
     end
     
   endgenerate 
         

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "xyeHksFywj37/JpS8eVbtg2bmowYPkfZLmCXpl8/E6qFneGEQLn8+utFUaKUo/d/XG1Jq2y65ZhxtfaatInO1k+jXuZJ8cALpq4CqI/3ZtfNU90nEsPm0xQgHRnWSujLIQobLpu4AIjHgJR1GD+Boa/VDTfaeo8Q4njIiFTHNsrFlg5wdvLhSHLzP6keL23BxMXuCPBMRVPRGv2R815gPH+ZNsfg1P4cglAAsW2ebya9m9ZXh1wFUaG1GknE5fq5/zdgVkEYPxRfKEJa+EXqcAIfs839Tq8USwDvAKR+H0GSY0pFLlQIBblXz3/MPsHLpfiD5UJ6ze8OW/Bha7CgsyS2RMV2t8ewX9Vu1wUE7U8p0VRH2gwj0HRih76dxMPxSDVaYRdiRSJ9wDIhHZ9qKQcs/dWZ5hxcmcnkA3FYqKTsyht8xxGqyvD/74vDeXHSitLuhDWfoAjwd8m2fxTGFKLCcbZer7nfk/eZM0eRie2IOBeqEM+dkXEe6RImAMNGWrVCDi5mwWAs84Mk2HEVv7/SZdj9rz5M5LDA5zUoNuohplXHM518ra5Oq1SQ2jRiUK0NjLIuehnHY0v9emkIae6lIe87tpcAvtlRLoOuZNhzx3lEFkBTGi7HsoEGlXgUGza7/2lrrcbCtNx76A8CjrWQyeknUndQlJKuzeE7tNbR5XxUSmDgHhcdtPWwRPjCK5cUkro/Spnk28bhxws2mLPOZmb5FrdqT/vnUNHNDHrLQmaFDi1lWBsIyZGBkVH0Szq/JO6AY7fHgR+ExJRyG99W8hwtup4q+OumqHdjBbxab34R85pjPYh+Z9ewmjycEv4+bw2Abhl5oM+t84hc8dFldLnOcstNe/gQTpSngPb7oYInKck2d3bf0LdLmwcij5u3OZZ9ZyPWT9ytg9qLwuOQBFbdVwIqWFc5NJr3RJN4OsFOT4LnLd6sxdqlK8ltxKv9k4k9H4Vh9eERPHStVvwNqi+uo4U5KmjPYSTVRlF2CIIDMGAb/Aty2vN7nVwK"
`endif