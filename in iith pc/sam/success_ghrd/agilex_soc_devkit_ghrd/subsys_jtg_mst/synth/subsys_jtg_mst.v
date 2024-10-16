// subsys_jtg_mst.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module subsys_jtg_mst (
		output wire [31:0] fpga_m_master_address,       // fpga_m_master.address
		input  wire [31:0] fpga_m_master_readdata,      //              .readdata
		output wire        fpga_m_master_read,          //              .read
		output wire        fpga_m_master_write,         //              .write
		output wire [31:0] fpga_m_master_writedata,     //              .writedata
		input  wire        fpga_m_master_waitrequest,   //              .waitrequest
		input  wire        fpga_m_master_readdatavalid, //              .readdatavalid
		output wire [3:0]  fpga_m_master_byteenable,    //              .byteenable
		output wire [31:0] hps_m_master_address,        //  hps_m_master.address
		input  wire [31:0] hps_m_master_readdata,       //              .readdata
		output wire        hps_m_master_read,           //              .read
		output wire        hps_m_master_write,          //              .write
		output wire [31:0] hps_m_master_writedata,      //              .writedata
		input  wire        hps_m_master_waitrequest,    //              .waitrequest
		input  wire        hps_m_master_readdatavalid,  //              .readdatavalid
		output wire [3:0]  hps_m_master_byteenable,     //              .byteenable
		input  wire        clk_clk,                     //           clk.clk
		input  wire        reset_reset_n                //         reset.reset_n
	);

	wire    jtag_clk_out_clk_clk;        // jtag_clk:out_clk -> [fpga_m:clk_clk, hps_m:clk_clk, jtag_rst_in:clk]
	wire    jtag_rst_in_out_reset_reset; // jtag_rst_in:out_reset_n -> [fpga_m:clk_reset_reset, hps_m:clk_reset_reset]

	fpga_m fpga_m (
		.clk_clk              (jtag_clk_out_clk_clk),         //   input,   width = 1,          clk.clk
		.clk_reset_reset      (~jtag_rst_in_out_reset_reset), //   input,   width = 1,    clk_reset.reset
		.master_reset_reset   (),                             //  output,   width = 1, master_reset.reset
		.master_address       (fpga_m_master_address),        //  output,  width = 32,       master.address
		.master_readdata      (fpga_m_master_readdata),       //   input,  width = 32,             .readdata
		.master_read          (fpga_m_master_read),           //  output,   width = 1,             .read
		.master_write         (fpga_m_master_write),          //  output,   width = 1,             .write
		.master_writedata     (fpga_m_master_writedata),      //  output,  width = 32,             .writedata
		.master_waitrequest   (fpga_m_master_waitrequest),    //   input,   width = 1,             .waitrequest
		.master_readdatavalid (fpga_m_master_readdatavalid),  //   input,   width = 1,             .readdatavalid
		.master_byteenable    (fpga_m_master_byteenable)      //  output,   width = 4,             .byteenable
	);

	hps_m hps_m (
		.clk_clk              (jtag_clk_out_clk_clk),         //   input,   width = 1,          clk.clk
		.clk_reset_reset      (~jtag_rst_in_out_reset_reset), //   input,   width = 1,    clk_reset.reset
		.master_reset_reset   (),                             //  output,   width = 1, master_reset.reset
		.master_address       (hps_m_master_address),         //  output,  width = 32,       master.address
		.master_readdata      (hps_m_master_readdata),        //   input,  width = 32,             .readdata
		.master_read          (hps_m_master_read),            //  output,   width = 1,             .read
		.master_write         (hps_m_master_write),           //  output,   width = 1,             .write
		.master_writedata     (hps_m_master_writedata),       //  output,  width = 32,             .writedata
		.master_waitrequest   (hps_m_master_waitrequest),     //   input,   width = 1,             .waitrequest
		.master_readdatavalid (hps_m_master_readdatavalid),   //   input,   width = 1,             .readdatavalid
		.master_byteenable    (hps_m_master_byteenable)       //  output,   width = 4,             .byteenable
	);

	jtag_clk jtag_clk (
		.in_clk  (clk_clk),              //   input,  width = 1,  in_clk.clk
		.out_clk (jtag_clk_out_clk_clk)  //  output,  width = 1, out_clk.clk
	);

	jtag_rst_in jtag_rst_in (
		.clk         (jtag_clk_out_clk_clk),        //   input,  width = 1,       clk.clk
		.in_reset_n  (reset_reset_n),               //   input,  width = 1,  in_reset.reset_n
		.out_reset_n (jtag_rst_in_out_reset_reset)  //  output,  width = 1, out_reset.reset_n
	);

endmodule
