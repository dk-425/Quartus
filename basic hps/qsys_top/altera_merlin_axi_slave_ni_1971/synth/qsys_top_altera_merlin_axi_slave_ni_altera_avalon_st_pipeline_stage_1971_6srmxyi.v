// qsys_top_altera_merlin_axi_slave_ni_altera_avalon_st_pipeline_stage_1971_6srmxyi.v

// Generated using ACDS version 23.4 79

`timescale 1 ps / 1 ps
module qsys_top_altera_merlin_axi_slave_ni_altera_avalon_st_pipeline_stage_1971_6srmxyi #(
		parameter SYMBOLS_PER_BEAT = 1,
		parameter BITS_PER_SYMBOL  = 133,
		parameter USE_PACKETS      = 0,
		parameter USE_EMPTY        = 0,
		parameter EMPTY_WIDTH      = 0,
		parameter CHANNEL_WIDTH    = 0,
		parameter PACKET_WIDTH     = 0,
		parameter ERROR_WIDTH      = 0,
		parameter PIPELINE_READY   = 0,
		parameter SYNC_RESET       = 1
	) (
		input  wire         clk,       //       cr0.clk
		input  wire         reset,     // cr0_reset.reset
		output wire         in_ready,  //     sink0.ready
		input  wire         in_valid,  //          .valid
		input  wire [132:0] in_data,   //          .data
		input  wire         out_ready, //   source0.ready
		output wire         out_valid, //          .valid
		output wire [132:0] out_data   //          .data
	);

	qsys_top_altera_avalon_st_pipeline_stage_1930_bv2ucky #(
		.SYMBOLS_PER_BEAT (SYMBOLS_PER_BEAT),
		.BITS_PER_SYMBOL  (BITS_PER_SYMBOL),
		.USE_PACKETS      (USE_PACKETS),
		.USE_EMPTY        (USE_EMPTY),
		.EMPTY_WIDTH      (EMPTY_WIDTH),
		.CHANNEL_WIDTH    (CHANNEL_WIDTH),
		.PACKET_WIDTH     (PACKET_WIDTH),
		.ERROR_WIDTH      (ERROR_WIDTH),
		.PIPELINE_READY   (PIPELINE_READY),
		.SYNC_RESET       (SYNC_RESET)
	) my_altera_avalon_st_pipeline_stage_rd (
		.clk               (clk),       //   input,    width = 1,       cr0.clk
		.reset             (reset),     //   input,    width = 1, cr0_reset.reset
		.in_ready          (in_ready),  //  output,    width = 1,     sink0.ready
		.in_valid          (in_valid),  //   input,    width = 1,          .valid
		.in_data           (in_data),   //   input,  width = 133,          .data
		.out_ready         (out_ready), //   input,    width = 1,   source0.ready
		.out_valid         (out_valid), //  output,    width = 1,          .valid
		.out_data          (out_data),  //  output,  width = 133,          .data
		.in_startofpacket  (1'b0),      // (terminated),                         
		.in_endofpacket    (1'b0),      // (terminated),                         
		.out_startofpacket (),          // (terminated),                         
		.out_endofpacket   (),          // (terminated),                         
		.in_empty          (1'b0),      // (terminated),                         
		.out_empty         (),          // (terminated),                         
		.out_error         (),          // (terminated),                         
		.in_error          (1'b0),      // (terminated),                         
		.out_channel       (),          // (terminated),                         
		.in_channel        (1'b0)       // (terminated),                         
	);

endmodule
