// qsys_top_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1923_ee7u5xy.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module qsys_top_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1923_ee7u5xy #(
		parameter SYMBOLS_PER_BEAT = 1,
		parameter BITS_PER_SYMBOL  = 131,
		parameter USE_PACKETS      = 1,
		parameter USE_EMPTY        = 0,
		parameter EMPTY_WIDTH      = 0,
		parameter CHANNEL_WIDTH    = 2,
		parameter PACKET_WIDTH     = 2,
		parameter ERROR_WIDTH      = 0,
		parameter PIPELINE_READY   = 1,
		parameter SYNC_RESET       = 1
	) (
		input  wire         clk,               //       cr0.clk
		input  wire         reset,             // cr0_reset.reset
		output wire         in_ready,          //     sink0.ready
		input  wire         in_valid,          //          .valid
		input  wire         in_startofpacket,  //          .startofpacket
		input  wire         in_endofpacket,    //          .endofpacket
		input  wire [130:0] in_data,           //          .data
		input  wire [1:0]   in_channel,        //          .channel
		input  wire         out_ready,         //   source0.ready
		output wire         out_valid,         //          .valid
		output wire         out_startofpacket, //          .startofpacket
		output wire         out_endofpacket,   //          .endofpacket
		output wire [130:0] out_data,          //          .data
		output wire [1:0]   out_channel        //          .channel
	);

	qsys_top_altera_avalon_st_pipeline_stage_1920_zterisq #(
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
	) my_altera_avalon_st_pipeline_stage (
		.clk               (clk),               //   input,    width = 1,       cr0.clk
		.reset             (reset),             //   input,    width = 1, cr0_reset.reset
		.in_ready          (in_ready),          //  output,    width = 1,     sink0.ready
		.in_valid          (in_valid),          //   input,    width = 1,          .valid
		.in_startofpacket  (in_startofpacket),  //   input,    width = 1,          .startofpacket
		.in_endofpacket    (in_endofpacket),    //   input,    width = 1,          .endofpacket
		.in_data           (in_data),           //   input,  width = 131,          .data
		.in_channel        (in_channel),        //   input,    width = 2,          .channel
		.out_ready         (out_ready),         //   input,    width = 1,   source0.ready
		.out_valid         (out_valid),         //  output,    width = 1,          .valid
		.out_startofpacket (out_startofpacket), //  output,    width = 1,          .startofpacket
		.out_endofpacket   (out_endofpacket),   //  output,    width = 1,          .endofpacket
		.out_data          (out_data),          //  output,  width = 131,          .data
		.out_channel       (out_channel),       //  output,    width = 2,          .channel
		.in_empty          (1'b0),              // (terminated),                         
		.out_empty         (),                  // (terminated),                         
		.out_error         (),                  // (terminated),                         
		.in_error          (1'b0)               // (terminated),                         
	);

endmodule
