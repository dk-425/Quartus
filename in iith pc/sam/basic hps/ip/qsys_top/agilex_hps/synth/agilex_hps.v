// agilex_hps.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module agilex_hps (
		output wire          h2f_rst,              //         h2f_reset.reset
		output wire          h2f_watchdog_rst,     //  h2f_watchdog_rst.reset_n
		input  wire [4095:0] hps_emif_emif_to_hps, //          hps_emif.emif_to_hps
		output wire [4095:0] hps_emif_hps_to_emif, //                  .hps_to_emif
		input  wire          hps_emif_emif_to_gp,  //                  .emif_to_gp
		output wire [1:0]    hps_emif_gp_to_emif,  //                  .gp_to_emif
		input  wire          f2h_axi_clk,          //     f2h_axi_clock.clk
		input  wire          f2h_axi_rst_n,        //     f2h_axi_reset.reset_n
		input  wire [3:0]    f2h_AWCACHE,          //     f2h_axi_slave.awcache
		input  wire [3:0]    f2h_ARCACHE,          //                  .arcache
		input  wire [4:0]    f2h_AWID,             //                  .awid
		input  wire [31:0]   f2h_AWADDR,           //                  .awaddr
		input  wire [7:0]    f2h_AWLEN,            //                  .awlen
		input  wire [2:0]    f2h_AWSIZE,           //                  .awsize
		input  wire [1:0]    f2h_AWBURST,          //                  .awburst
		input  wire          f2h_AWLOCK,           //                  .awlock
		input  wire [2:0]    f2h_AWPROT,           //                  .awprot
		input  wire          f2h_AWVALID,          //                  .awvalid
		output wire          f2h_AWREADY,          //                  .awready
		input  wire [3:0]    f2h_AWQOS,            //                  .awqos
		input  wire [127:0]  f2h_WDATA,            //                  .wdata
		input  wire [15:0]   f2h_WSTRB,            //                  .wstrb
		input  wire          f2h_WLAST,            //                  .wlast
		input  wire          f2h_WVALID,           //                  .wvalid
		output wire          f2h_WREADY,           //                  .wready
		output wire [4:0]    f2h_BID,              //                  .bid
		output wire [1:0]    f2h_BRESP,            //                  .bresp
		output wire          f2h_BVALID,           //                  .bvalid
		input  wire          f2h_BREADY,           //                  .bready
		input  wire [4:0]    f2h_ARID,             //                  .arid
		input  wire [31:0]   f2h_ARADDR,           //                  .araddr
		input  wire [7:0]    f2h_ARLEN,            //                  .arlen
		input  wire [2:0]    f2h_ARSIZE,           //                  .arsize
		input  wire [1:0]    f2h_ARBURST,          //                  .arburst
		input  wire          f2h_ARLOCK,           //                  .arlock
		input  wire [2:0]    f2h_ARPROT,           //                  .arprot
		input  wire          f2h_ARVALID,          //                  .arvalid
		output wire          f2h_ARREADY,          //                  .arready
		input  wire [3:0]    f2h_ARQOS,            //                  .arqos
		output wire [4:0]    f2h_RID,              //                  .rid
		output wire [127:0]  f2h_RDATA,            //                  .rdata
		output wire [1:0]    f2h_RRESP,            //                  .rresp
		output wire          f2h_RLAST,            //                  .rlast
		output wire          f2h_RVALID,           //                  .rvalid
		input  wire          f2h_RREADY,           //                  .rready
		input  wire [22:0]   f2h_ARUSER,           //                  .aruser
		input  wire [22:0]   f2h_AWUSER,           //                  .awuser
		input  wire          h2f_lw_axi_clk,       //  h2f_lw_axi_clock.clk
		input  wire          h2f_lw_axi_rst_n,     //  h2f_lw_axi_reset.reset_n
		output wire [3:0]    h2f_lw_AWID,          // h2f_lw_axi_master.awid
		output wire [20:0]   h2f_lw_AWADDR,        //                  .awaddr
		output wire [7:0]    h2f_lw_AWLEN,         //                  .awlen
		output wire [2:0]    h2f_lw_AWSIZE,        //                  .awsize
		output wire [1:0]    h2f_lw_AWBURST,       //                  .awburst
		output wire          h2f_lw_AWLOCK,        //                  .awlock
		output wire [3:0]    h2f_lw_AWCACHE,       //                  .awcache
		output wire [2:0]    h2f_lw_AWPROT,        //                  .awprot
		output wire          h2f_lw_AWVALID,       //                  .awvalid
		input  wire          h2f_lw_AWREADY,       //                  .awready
		output wire [31:0]   h2f_lw_WDATA,         //                  .wdata
		output wire [3:0]    h2f_lw_WSTRB,         //                  .wstrb
		output wire          h2f_lw_WLAST,         //                  .wlast
		output wire          h2f_lw_WVALID,        //                  .wvalid
		input  wire          h2f_lw_WREADY,        //                  .wready
		input  wire [3:0]    h2f_lw_BID,           //                  .bid
		input  wire [1:0]    h2f_lw_BRESP,         //                  .bresp
		input  wire          h2f_lw_BVALID,        //                  .bvalid
		output wire          h2f_lw_BREADY,        //                  .bready
		output wire [3:0]    h2f_lw_ARID,          //                  .arid
		output wire [20:0]   h2f_lw_ARADDR,        //                  .araddr
		output wire [7:0]    h2f_lw_ARLEN,         //                  .arlen
		output wire [2:0]    h2f_lw_ARSIZE,        //                  .arsize
		output wire [1:0]    h2f_lw_ARBURST,       //                  .arburst
		output wire          h2f_lw_ARLOCK,        //                  .arlock
		output wire [3:0]    h2f_lw_ARCACHE,       //                  .arcache
		output wire [2:0]    h2f_lw_ARPROT,        //                  .arprot
		output wire          h2f_lw_ARVALID,       //                  .arvalid
		input  wire          h2f_lw_ARREADY,       //                  .arready
		input  wire [3:0]    h2f_lw_RID,           //                  .rid
		input  wire [31:0]   h2f_lw_RDATA,         //                  .rdata
		input  wire [1:0]    h2f_lw_RRESP,         //                  .rresp
		input  wire          h2f_lw_RLAST,         //                  .rlast
		input  wire          h2f_lw_RVALID,        //                  .rvalid
		output wire          h2f_lw_RREADY,        //                  .rready
		input  wire          h2f_axi_clk,          //     h2f_axi_clock.clk
		input  wire          h2f_axi_rst_n,        //     h2f_axi_reset.reset_n
		output wire [3:0]    h2f_AWID,             //    h2f_axi_master.awid
		output wire [31:0]   h2f_AWADDR,           //                  .awaddr
		output wire [7:0]    h2f_AWLEN,            //                  .awlen
		output wire [2:0]    h2f_AWSIZE,           //                  .awsize
		output wire [1:0]    h2f_AWBURST,          //                  .awburst
		output wire          h2f_AWLOCK,           //                  .awlock
		output wire [3:0]    h2f_AWCACHE,          //                  .awcache
		output wire [2:0]    h2f_AWPROT,           //                  .awprot
		output wire          h2f_AWVALID,          //                  .awvalid
		input  wire          h2f_AWREADY,          //                  .awready
		output wire [31:0]   h2f_WDATA,            //                  .wdata
		output wire [3:0]    h2f_WSTRB,            //                  .wstrb
		output wire          h2f_WLAST,            //                  .wlast
		output wire          h2f_WVALID,           //                  .wvalid
		input  wire          h2f_WREADY,           //                  .wready
		input  wire [3:0]    h2f_BID,              //                  .bid
		input  wire [1:0]    h2f_BRESP,            //                  .bresp
		input  wire          h2f_BVALID,           //                  .bvalid
		output wire          h2f_BREADY,           //                  .bready
		output wire [3:0]    h2f_ARID,             //                  .arid
		output wire [31:0]   h2f_ARADDR,           //                  .araddr
		output wire [7:0]    h2f_ARLEN,            //                  .arlen
		output wire [2:0]    h2f_ARSIZE,           //                  .arsize
		output wire [1:0]    h2f_ARBURST,          //                  .arburst
		output wire          h2f_ARLOCK,           //                  .arlock
		output wire [3:0]    h2f_ARCACHE,          //                  .arcache
		output wire [2:0]    h2f_ARPROT,           //                  .arprot
		output wire          h2f_ARVALID,          //                  .arvalid
		input  wire          h2f_ARREADY,          //                  .arready
		input  wire [3:0]    h2f_RID,              //                  .rid
		input  wire [31:0]   h2f_RDATA,            //                  .rdata
		input  wire [1:0]    h2f_RRESP,            //                  .rresp
		input  wire          h2f_RLAST,            //                  .rlast
		input  wire          h2f_RVALID,           //                  .rvalid
		output wire          h2f_RREADY,           //                  .rready
		output wire          EMAC0_TX_CLK,         //            hps_io.EMAC0_TX_CLK
		output wire          EMAC0_TXD0,           //                  .EMAC0_TXD0
		output wire          EMAC0_TXD1,           //                  .EMAC0_TXD1
		output wire          EMAC0_TXD2,           //                  .EMAC0_TXD2
		output wire          EMAC0_TXD3,           //                  .EMAC0_TXD3
		input  wire          EMAC0_RX_CTL,         //                  .EMAC0_RX_CTL
		output wire          EMAC0_TX_CTL,         //                  .EMAC0_TX_CTL
		input  wire          EMAC0_RX_CLK,         //                  .EMAC0_RX_CLK
		input  wire          EMAC0_RXD0,           //                  .EMAC0_RXD0
		input  wire          EMAC0_RXD1,           //                  .EMAC0_RXD1
		input  wire          EMAC0_RXD2,           //                  .EMAC0_RXD2
		input  wire          EMAC0_RXD3,           //                  .EMAC0_RXD3
		inout  wire          EMAC0_MDIO,           //                  .EMAC0_MDIO
		output wire          EMAC0_MDC,            //                  .EMAC0_MDC
		inout  wire          SDMMC_CMD,            //                  .SDMMC_CMD
		inout  wire          SDMMC_D0,             //                  .SDMMC_D0
		inout  wire          SDMMC_D1,             //                  .SDMMC_D1
		inout  wire          SDMMC_D2,             //                  .SDMMC_D2
		inout  wire          SDMMC_D3,             //                  .SDMMC_D3
		output wire          SDMMC_CCLK,           //                  .SDMMC_CCLK
		inout  wire          USB0_DATA0,           //                  .USB0_DATA0
		inout  wire          USB0_DATA1,           //                  .USB0_DATA1
		inout  wire          USB0_DATA2,           //                  .USB0_DATA2
		inout  wire          USB0_DATA3,           //                  .USB0_DATA3
		inout  wire          USB0_DATA4,           //                  .USB0_DATA4
		inout  wire          USB0_DATA5,           //                  .USB0_DATA5
		inout  wire          USB0_DATA6,           //                  .USB0_DATA6
		inout  wire          USB0_DATA7,           //                  .USB0_DATA7
		input  wire          USB0_CLK,             //                  .USB0_CLK
		output wire          USB0_STP,             //                  .USB0_STP
		input  wire          USB0_DIR,             //                  .USB0_DIR
		input  wire          USB0_NXT,             //                  .USB0_NXT
		input  wire          UART0_RX,             //                  .UART0_RX
		output wire          UART0_TX,             //                  .UART0_TX
		inout  wire          I2C1_SDA,             //                  .I2C1_SDA
		inout  wire          I2C1_SCL,             //                  .I2C1_SCL
		inout  wire          gpio1_io0,            //                  .gpio1_io0
		inout  wire          gpio1_io1,            //                  .gpio1_io1
		inout  wire          gpio1_io4,            //                  .gpio1_io4
		inout  wire          gpio1_io5,            //                  .gpio1_io5
		input  wire          jtag_tck,             //                  .jtag_tck
		input  wire          jtag_tms,             //                  .jtag_tms
		output wire          jtag_tdo,             //                  .jtag_tdo
		input  wire          jtag_tdi,             //                  .jtag_tdi
		input  wire          hps_osc_clk,          //                  .hps_osc_clk
		inout  wire          gpio1_io19,           //                  .gpio1_io19
		inout  wire          gpio1_io20,           //                  .gpio1_io20
		inout  wire          gpio1_io21            //                  .gpio1_io21
	);

	agilex_hps_intel_agilex_hps_2300_iojlsaa intel_agilex_hps_inst (
		.h2f_rst              (h2f_rst),              //  output,     width = 1,         h2f_reset.reset
		.h2f_watchdog_rst     (h2f_watchdog_rst),     //  output,     width = 1,  h2f_watchdog_rst.reset_n
		.hps_emif_emif_to_hps (hps_emif_emif_to_hps), //   input,  width = 4096,          hps_emif.emif_to_hps
		.hps_emif_hps_to_emif (hps_emif_hps_to_emif), //  output,  width = 4096,                  .hps_to_emif
		.hps_emif_emif_to_gp  (hps_emif_emif_to_gp),  //   input,     width = 1,                  .emif_to_gp
		.hps_emif_gp_to_emif  (hps_emif_gp_to_emif),  //  output,     width = 2,                  .gp_to_emif
		.f2h_axi_clk          (f2h_axi_clk),          //   input,     width = 1,     f2h_axi_clock.clk
		.f2h_axi_rst_n        (f2h_axi_rst_n),        //   input,     width = 1,     f2h_axi_reset.reset_n
		.f2h_AWCACHE          (f2h_AWCACHE),          //   input,     width = 4,     f2h_axi_slave.awcache
		.f2h_ARCACHE          (f2h_ARCACHE),          //   input,     width = 4,                  .arcache
		.f2h_AWID             (f2h_AWID),             //   input,     width = 5,                  .awid
		.f2h_AWADDR           (f2h_AWADDR),           //   input,    width = 32,                  .awaddr
		.f2h_AWLEN            (f2h_AWLEN),            //   input,     width = 8,                  .awlen
		.f2h_AWSIZE           (f2h_AWSIZE),           //   input,     width = 3,                  .awsize
		.f2h_AWBURST          (f2h_AWBURST),          //   input,     width = 2,                  .awburst
		.f2h_AWLOCK           (f2h_AWLOCK),           //   input,     width = 1,                  .awlock
		.f2h_AWPROT           (f2h_AWPROT),           //   input,     width = 3,                  .awprot
		.f2h_AWVALID          (f2h_AWVALID),          //   input,     width = 1,                  .awvalid
		.f2h_AWREADY          (f2h_AWREADY),          //  output,     width = 1,                  .awready
		.f2h_AWQOS            (f2h_AWQOS),            //   input,     width = 4,                  .awqos
		.f2h_WDATA            (f2h_WDATA),            //   input,   width = 128,                  .wdata
		.f2h_WSTRB            (f2h_WSTRB),            //   input,    width = 16,                  .wstrb
		.f2h_WLAST            (f2h_WLAST),            //   input,     width = 1,                  .wlast
		.f2h_WVALID           (f2h_WVALID),           //   input,     width = 1,                  .wvalid
		.f2h_WREADY           (f2h_WREADY),           //  output,     width = 1,                  .wready
		.f2h_BID              (f2h_BID),              //  output,     width = 5,                  .bid
		.f2h_BRESP            (f2h_BRESP),            //  output,     width = 2,                  .bresp
		.f2h_BVALID           (f2h_BVALID),           //  output,     width = 1,                  .bvalid
		.f2h_BREADY           (f2h_BREADY),           //   input,     width = 1,                  .bready
		.f2h_ARID             (f2h_ARID),             //   input,     width = 5,                  .arid
		.f2h_ARADDR           (f2h_ARADDR),           //   input,    width = 32,                  .araddr
		.f2h_ARLEN            (f2h_ARLEN),            //   input,     width = 8,                  .arlen
		.f2h_ARSIZE           (f2h_ARSIZE),           //   input,     width = 3,                  .arsize
		.f2h_ARBURST          (f2h_ARBURST),          //   input,     width = 2,                  .arburst
		.f2h_ARLOCK           (f2h_ARLOCK),           //   input,     width = 1,                  .arlock
		.f2h_ARPROT           (f2h_ARPROT),           //   input,     width = 3,                  .arprot
		.f2h_ARVALID          (f2h_ARVALID),          //   input,     width = 1,                  .arvalid
		.f2h_ARREADY          (f2h_ARREADY),          //  output,     width = 1,                  .arready
		.f2h_ARQOS            (f2h_ARQOS),            //   input,     width = 4,                  .arqos
		.f2h_RID              (f2h_RID),              //  output,     width = 5,                  .rid
		.f2h_RDATA            (f2h_RDATA),            //  output,   width = 128,                  .rdata
		.f2h_RRESP            (f2h_RRESP),            //  output,     width = 2,                  .rresp
		.f2h_RLAST            (f2h_RLAST),            //  output,     width = 1,                  .rlast
		.f2h_RVALID           (f2h_RVALID),           //  output,     width = 1,                  .rvalid
		.f2h_RREADY           (f2h_RREADY),           //   input,     width = 1,                  .rready
		.f2h_ARUSER           (f2h_ARUSER),           //   input,    width = 23,                  .aruser
		.f2h_AWUSER           (f2h_AWUSER),           //   input,    width = 23,                  .awuser
		.h2f_lw_axi_clk       (h2f_lw_axi_clk),       //   input,     width = 1,  h2f_lw_axi_clock.clk
		.h2f_lw_axi_rst_n     (h2f_lw_axi_rst_n),     //   input,     width = 1,  h2f_lw_axi_reset.reset_n
		.h2f_lw_AWID          (h2f_lw_AWID),          //  output,     width = 4, h2f_lw_axi_master.awid
		.h2f_lw_AWADDR        (h2f_lw_AWADDR),        //  output,    width = 21,                  .awaddr
		.h2f_lw_AWLEN         (h2f_lw_AWLEN),         //  output,     width = 8,                  .awlen
		.h2f_lw_AWSIZE        (h2f_lw_AWSIZE),        //  output,     width = 3,                  .awsize
		.h2f_lw_AWBURST       (h2f_lw_AWBURST),       //  output,     width = 2,                  .awburst
		.h2f_lw_AWLOCK        (h2f_lw_AWLOCK),        //  output,     width = 1,                  .awlock
		.h2f_lw_AWCACHE       (h2f_lw_AWCACHE),       //  output,     width = 4,                  .awcache
		.h2f_lw_AWPROT        (h2f_lw_AWPROT),        //  output,     width = 3,                  .awprot
		.h2f_lw_AWVALID       (h2f_lw_AWVALID),       //  output,     width = 1,                  .awvalid
		.h2f_lw_AWREADY       (h2f_lw_AWREADY),       //   input,     width = 1,                  .awready
		.h2f_lw_WDATA         (h2f_lw_WDATA),         //  output,    width = 32,                  .wdata
		.h2f_lw_WSTRB         (h2f_lw_WSTRB),         //  output,     width = 4,                  .wstrb
		.h2f_lw_WLAST         (h2f_lw_WLAST),         //  output,     width = 1,                  .wlast
		.h2f_lw_WVALID        (h2f_lw_WVALID),        //  output,     width = 1,                  .wvalid
		.h2f_lw_WREADY        (h2f_lw_WREADY),        //   input,     width = 1,                  .wready
		.h2f_lw_BID           (h2f_lw_BID),           //   input,     width = 4,                  .bid
		.h2f_lw_BRESP         (h2f_lw_BRESP),         //   input,     width = 2,                  .bresp
		.h2f_lw_BVALID        (h2f_lw_BVALID),        //   input,     width = 1,                  .bvalid
		.h2f_lw_BREADY        (h2f_lw_BREADY),        //  output,     width = 1,                  .bready
		.h2f_lw_ARID          (h2f_lw_ARID),          //  output,     width = 4,                  .arid
		.h2f_lw_ARADDR        (h2f_lw_ARADDR),        //  output,    width = 21,                  .araddr
		.h2f_lw_ARLEN         (h2f_lw_ARLEN),         //  output,     width = 8,                  .arlen
		.h2f_lw_ARSIZE        (h2f_lw_ARSIZE),        //  output,     width = 3,                  .arsize
		.h2f_lw_ARBURST       (h2f_lw_ARBURST),       //  output,     width = 2,                  .arburst
		.h2f_lw_ARLOCK        (h2f_lw_ARLOCK),        //  output,     width = 1,                  .arlock
		.h2f_lw_ARCACHE       (h2f_lw_ARCACHE),       //  output,     width = 4,                  .arcache
		.h2f_lw_ARPROT        (h2f_lw_ARPROT),        //  output,     width = 3,                  .arprot
		.h2f_lw_ARVALID       (h2f_lw_ARVALID),       //  output,     width = 1,                  .arvalid
		.h2f_lw_ARREADY       (h2f_lw_ARREADY),       //   input,     width = 1,                  .arready
		.h2f_lw_RID           (h2f_lw_RID),           //   input,     width = 4,                  .rid
		.h2f_lw_RDATA         (h2f_lw_RDATA),         //   input,    width = 32,                  .rdata
		.h2f_lw_RRESP         (h2f_lw_RRESP),         //   input,     width = 2,                  .rresp
		.h2f_lw_RLAST         (h2f_lw_RLAST),         //   input,     width = 1,                  .rlast
		.h2f_lw_RVALID        (h2f_lw_RVALID),        //   input,     width = 1,                  .rvalid
		.h2f_lw_RREADY        (h2f_lw_RREADY),        //  output,     width = 1,                  .rready
		.h2f_axi_clk          (h2f_axi_clk),          //   input,     width = 1,     h2f_axi_clock.clk
		.h2f_axi_rst_n        (h2f_axi_rst_n),        //   input,     width = 1,     h2f_axi_reset.reset_n
		.h2f_AWID             (h2f_AWID),             //  output,     width = 4,    h2f_axi_master.awid
		.h2f_AWADDR           (h2f_AWADDR),           //  output,    width = 32,                  .awaddr
		.h2f_AWLEN            (h2f_AWLEN),            //  output,     width = 8,                  .awlen
		.h2f_AWSIZE           (h2f_AWSIZE),           //  output,     width = 3,                  .awsize
		.h2f_AWBURST          (h2f_AWBURST),          //  output,     width = 2,                  .awburst
		.h2f_AWLOCK           (h2f_AWLOCK),           //  output,     width = 1,                  .awlock
		.h2f_AWCACHE          (h2f_AWCACHE),          //  output,     width = 4,                  .awcache
		.h2f_AWPROT           (h2f_AWPROT),           //  output,     width = 3,                  .awprot
		.h2f_AWVALID          (h2f_AWVALID),          //  output,     width = 1,                  .awvalid
		.h2f_AWREADY          (h2f_AWREADY),          //   input,     width = 1,                  .awready
		.h2f_WDATA            (h2f_WDATA),            //  output,    width = 32,                  .wdata
		.h2f_WSTRB            (h2f_WSTRB),            //  output,     width = 4,                  .wstrb
		.h2f_WLAST            (h2f_WLAST),            //  output,     width = 1,                  .wlast
		.h2f_WVALID           (h2f_WVALID),           //  output,     width = 1,                  .wvalid
		.h2f_WREADY           (h2f_WREADY),           //   input,     width = 1,                  .wready
		.h2f_BID              (h2f_BID),              //   input,     width = 4,                  .bid
		.h2f_BRESP            (h2f_BRESP),            //   input,     width = 2,                  .bresp
		.h2f_BVALID           (h2f_BVALID),           //   input,     width = 1,                  .bvalid
		.h2f_BREADY           (h2f_BREADY),           //  output,     width = 1,                  .bready
		.h2f_ARID             (h2f_ARID),             //  output,     width = 4,                  .arid
		.h2f_ARADDR           (h2f_ARADDR),           //  output,    width = 32,                  .araddr
		.h2f_ARLEN            (h2f_ARLEN),            //  output,     width = 8,                  .arlen
		.h2f_ARSIZE           (h2f_ARSIZE),           //  output,     width = 3,                  .arsize
		.h2f_ARBURST          (h2f_ARBURST),          //  output,     width = 2,                  .arburst
		.h2f_ARLOCK           (h2f_ARLOCK),           //  output,     width = 1,                  .arlock
		.h2f_ARCACHE          (h2f_ARCACHE),          //  output,     width = 4,                  .arcache
		.h2f_ARPROT           (h2f_ARPROT),           //  output,     width = 3,                  .arprot
		.h2f_ARVALID          (h2f_ARVALID),          //  output,     width = 1,                  .arvalid
		.h2f_ARREADY          (h2f_ARREADY),          //   input,     width = 1,                  .arready
		.h2f_RID              (h2f_RID),              //   input,     width = 4,                  .rid
		.h2f_RDATA            (h2f_RDATA),            //   input,    width = 32,                  .rdata
		.h2f_RRESP            (h2f_RRESP),            //   input,     width = 2,                  .rresp
		.h2f_RLAST            (h2f_RLAST),            //   input,     width = 1,                  .rlast
		.h2f_RVALID           (h2f_RVALID),           //   input,     width = 1,                  .rvalid
		.h2f_RREADY           (h2f_RREADY),           //  output,     width = 1,                  .rready
		.EMAC0_TX_CLK         (EMAC0_TX_CLK),         //  output,     width = 1,            hps_io.EMAC0_TX_CLK
		.EMAC0_TXD0           (EMAC0_TXD0),           //  output,     width = 1,                  .EMAC0_TXD0
		.EMAC0_TXD1           (EMAC0_TXD1),           //  output,     width = 1,                  .EMAC0_TXD1
		.EMAC0_TXD2           (EMAC0_TXD2),           //  output,     width = 1,                  .EMAC0_TXD2
		.EMAC0_TXD3           (EMAC0_TXD3),           //  output,     width = 1,                  .EMAC0_TXD3
		.EMAC0_RX_CTL         (EMAC0_RX_CTL),         //   input,     width = 1,                  .EMAC0_RX_CTL
		.EMAC0_TX_CTL         (EMAC0_TX_CTL),         //  output,     width = 1,                  .EMAC0_TX_CTL
		.EMAC0_RX_CLK         (EMAC0_RX_CLK),         //   input,     width = 1,                  .EMAC0_RX_CLK
		.EMAC0_RXD0           (EMAC0_RXD0),           //   input,     width = 1,                  .EMAC0_RXD0
		.EMAC0_RXD1           (EMAC0_RXD1),           //   input,     width = 1,                  .EMAC0_RXD1
		.EMAC0_RXD2           (EMAC0_RXD2),           //   input,     width = 1,                  .EMAC0_RXD2
		.EMAC0_RXD3           (EMAC0_RXD3),           //   input,     width = 1,                  .EMAC0_RXD3
		.EMAC0_MDIO           (EMAC0_MDIO),           //   inout,     width = 1,                  .EMAC0_MDIO
		.EMAC0_MDC            (EMAC0_MDC),            //  output,     width = 1,                  .EMAC0_MDC
		.SDMMC_CMD            (SDMMC_CMD),            //   inout,     width = 1,                  .SDMMC_CMD
		.SDMMC_D0             (SDMMC_D0),             //   inout,     width = 1,                  .SDMMC_D0
		.SDMMC_D1             (SDMMC_D1),             //   inout,     width = 1,                  .SDMMC_D1
		.SDMMC_D2             (SDMMC_D2),             //   inout,     width = 1,                  .SDMMC_D2
		.SDMMC_D3             (SDMMC_D3),             //   inout,     width = 1,                  .SDMMC_D3
		.SDMMC_CCLK           (SDMMC_CCLK),           //  output,     width = 1,                  .SDMMC_CCLK
		.USB0_DATA0           (USB0_DATA0),           //   inout,     width = 1,                  .USB0_DATA0
		.USB0_DATA1           (USB0_DATA1),           //   inout,     width = 1,                  .USB0_DATA1
		.USB0_DATA2           (USB0_DATA2),           //   inout,     width = 1,                  .USB0_DATA2
		.USB0_DATA3           (USB0_DATA3),           //   inout,     width = 1,                  .USB0_DATA3
		.USB0_DATA4           (USB0_DATA4),           //   inout,     width = 1,                  .USB0_DATA4
		.USB0_DATA5           (USB0_DATA5),           //   inout,     width = 1,                  .USB0_DATA5
		.USB0_DATA6           (USB0_DATA6),           //   inout,     width = 1,                  .USB0_DATA6
		.USB0_DATA7           (USB0_DATA7),           //   inout,     width = 1,                  .USB0_DATA7
		.USB0_CLK             (USB0_CLK),             //   input,     width = 1,                  .USB0_CLK
		.USB0_STP             (USB0_STP),             //  output,     width = 1,                  .USB0_STP
		.USB0_DIR             (USB0_DIR),             //   input,     width = 1,                  .USB0_DIR
		.USB0_NXT             (USB0_NXT),             //   input,     width = 1,                  .USB0_NXT
		.UART0_RX             (UART0_RX),             //   input,     width = 1,                  .UART0_RX
		.UART0_TX             (UART0_TX),             //  output,     width = 1,                  .UART0_TX
		.I2C1_SDA             (I2C1_SDA),             //   inout,     width = 1,                  .I2C1_SDA
		.I2C1_SCL             (I2C1_SCL),             //   inout,     width = 1,                  .I2C1_SCL
		.gpio1_io0            (gpio1_io0),            //   inout,     width = 1,                  .gpio1_io0
		.gpio1_io1            (gpio1_io1),            //   inout,     width = 1,                  .gpio1_io1
		.gpio1_io4            (gpio1_io4),            //   inout,     width = 1,                  .gpio1_io4
		.gpio1_io5            (gpio1_io5),            //   inout,     width = 1,                  .gpio1_io5
		.jtag_tck             (jtag_tck),             //   input,     width = 1,                  .jtag_tck
		.jtag_tms             (jtag_tms),             //   input,     width = 1,                  .jtag_tms
		.jtag_tdo             (jtag_tdo),             //  output,     width = 1,                  .jtag_tdo
		.jtag_tdi             (jtag_tdi),             //   input,     width = 1,                  .jtag_tdi
		.hps_osc_clk          (hps_osc_clk),          //   input,     width = 1,                  .hps_osc_clk
		.gpio1_io19           (gpio1_io19),           //   inout,     width = 1,                  .gpio1_io19
		.gpio1_io20           (gpio1_io20),           //   inout,     width = 1,                  .gpio1_io20
		.gpio1_io21           (gpio1_io21)            //   inout,     width = 1,                  .gpio1_io21
	);

endmodule
