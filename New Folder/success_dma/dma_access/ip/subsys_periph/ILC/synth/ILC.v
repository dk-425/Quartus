// ILC.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module ILC (
		input  wire        reset_n,     //      reset_n.reset_n
		input  wire        clk,         //          clk.clk
		input  wire [1:0]  irq,         //          irq.irq
		input  wire [5:0]  avmm_addr,   // avalon_slave.address
		input  wire [31:0] avmm_wrdata, //             .writedata
		input  wire        avmm_write,  //             .write
		input  wire        avmm_read,   //             .read
		output wire [31:0] avmm_rddata  //             .readdata
	);

	interrupt_latency_counter #(
		.INTR_TYPE    (0),
		.CLOCK_RATE   (100000000),
		.IRQ_PORT_CNT (2)
	) interrupt_latency_counter_inst (
		.reset_n     (reset_n),     //   input,   width = 1,      reset_n.reset_n
		.clk         (clk),         //   input,   width = 1,          clk.clk
		.irq         (irq),         //   input,   width = 2,          irq.irq
		.avmm_addr   (avmm_addr),   //   input,   width = 6, avalon_slave.address
		.avmm_wrdata (avmm_wrdata), //   input,  width = 32,             .writedata
		.avmm_write  (avmm_write),  //   input,   width = 1,             .write
		.avmm_read   (avmm_read),   //   input,   width = 1,             .read
		.avmm_rddata (avmm_rddata)  //  output,  width = 32,             .readdata
	);

endmodule
