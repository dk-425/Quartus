// qsys_top_msgdma_0.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module qsys_top_msgdma_0 (
		input  wire         clock_clk,                    //            clock.clk
		input  wire         reset_n_reset_n,              //          reset_n.reset_n
		input  wire [31:0]  csr_writedata,                //              csr.writedata
		input  wire         csr_write,                    //                 .write
		input  wire [3:0]   csr_byteenable,               //                 .byteenable
		output wire [31:0]  csr_readdata,                 //                 .readdata
		input  wire         csr_read,                     //                 .read
		input  wire [2:0]   csr_address,                  //                 .address
		input  wire         descriptor_slave_write,       // descriptor_slave.write
		output wire         descriptor_slave_waitrequest, //                 .waitrequest
		input  wire [127:0] descriptor_slave_writedata,   //                 .writedata
		input  wire [15:0]  descriptor_slave_byteenable,  //                 .byteenable
		output wire         csr_irq_irq,                  //          csr_irq.irq
		output wire [31:0]  mm_read_address,              //          mm_read.address
		output wire         mm_read_read,                 //                 .read
		output wire [3:0]   mm_read_byteenable,           //                 .byteenable
		input  wire [31:0]  mm_read_readdata,             //                 .readdata
		input  wire         mm_read_waitrequest,          //                 .waitrequest
		input  wire         mm_read_readdatavalid,        //                 .readdatavalid
		output wire [31:0]  st_source_data,               //        st_source.data
		output wire         st_source_valid,              //                 .valid
		input  wire         st_source_ready               //                 .ready
	);

	qsys_top_msgdma_0_altera_msgdma_1922_iwx37kq msgdma_0 (
		.clock_clk                    (clock_clk),                    //   input,    width = 1,            clock.clk
		.reset_n_reset_n              (reset_n_reset_n),              //   input,    width = 1,          reset_n.reset_n
		.csr_writedata                (csr_writedata),                //   input,   width = 32,              csr.writedata
		.csr_write                    (csr_write),                    //   input,    width = 1,                 .write
		.csr_byteenable               (csr_byteenable),               //   input,    width = 4,                 .byteenable
		.csr_readdata                 (csr_readdata),                 //  output,   width = 32,                 .readdata
		.csr_read                     (csr_read),                     //   input,    width = 1,                 .read
		.csr_address                  (csr_address),                  //   input,    width = 3,                 .address
		.descriptor_slave_write       (descriptor_slave_write),       //   input,    width = 1, descriptor_slave.write
		.descriptor_slave_waitrequest (descriptor_slave_waitrequest), //  output,    width = 1,                 .waitrequest
		.descriptor_slave_writedata   (descriptor_slave_writedata),   //   input,  width = 128,                 .writedata
		.descriptor_slave_byteenable  (descriptor_slave_byteenable),  //   input,   width = 16,                 .byteenable
		.csr_irq_irq                  (csr_irq_irq),                  //  output,    width = 1,          csr_irq.irq
		.mm_read_address              (mm_read_address),              //  output,   width = 32,          mm_read.address
		.mm_read_read                 (mm_read_read),                 //  output,    width = 1,                 .read
		.mm_read_byteenable           (mm_read_byteenable),           //  output,    width = 4,                 .byteenable
		.mm_read_readdata             (mm_read_readdata),             //   input,   width = 32,                 .readdata
		.mm_read_waitrequest          (mm_read_waitrequest),          //   input,    width = 1,                 .waitrequest
		.mm_read_readdatavalid        (mm_read_readdatavalid),        //   input,    width = 1,                 .readdatavalid
		.st_source_data               (st_source_data),               //  output,   width = 32,        st_source.data
		.st_source_valid              (st_source_valid),              //  output,    width = 1,                 .valid
		.st_source_ready              (st_source_ready)               //   input,    width = 1,                 .ready
	);

endmodule
