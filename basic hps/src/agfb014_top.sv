//****************************************************************************
//
// SPDX-License-Identifier: MIT-0
// Copyright(c) 2019-2021 Intel Corporation.
//
//****************************************************************************
// This is a generated system top level RTL file.


`include "../../../channels/tx_rx/src/l1.svh"
`include "../../../channels/tx_rx/src/l1c.svh"

`ifndef __TDDC_HEADER_INCLUDE__
`define __TDDC_HEADER_INCLUDE__
`include "../../../channels/tx_rx/src/wn_tdd_controller.svh"
`endif

module agfb014_top (
	//Additional refclk_bti to preserve Etile XCVR
	input  wire          refclk_bti              ,
	// Clock and Reset
	input  wire [ 1-1:0] fpga_clk_100            ,
	output wire [ 4-1:0] fpga_led_pio            ,
	input  wire [ 4-1:0] fpga_dipsw_pio          ,
	input  wire [ 4-1:0] fpga_button_pio         ,
	//HPS
	// HPS EMIF
	output wire [   0:0] emif_hps_mem_mem_ck     ,
	output wire [   0:0] emif_hps_mem_mem_ck_n   ,
	output wire [  16:0] emif_hps_mem_mem_a      ,
	output wire [   0:0] emif_hps_mem_mem_act_n  ,
	output wire [   1:0] emif_hps_mem_mem_ba     ,
	output wire [ 1-1:0] emif_hps_mem_mem_bg     ,
	output wire [   0:0] emif_hps_mem_mem_cke    ,
	output wire [   0:0] emif_hps_mem_mem_cs_n   ,
	output wire [   0:0] emif_hps_mem_mem_odt    ,
	output wire [   0:0] emif_hps_mem_mem_reset_n,
	output wire [   0:0] emif_hps_mem_mem_par    ,
	input  wire [   0:0] emif_hps_mem_mem_alert_n,
	input  wire          emif_hps_oct_oct_rzqin  ,
	input  wire          emif_hps_pll_ref_clk    ,
	inout  wire [ 9-1:0] emif_hps_mem_mem_dbi_n  ,
	inout  wire [72-1:0] emif_hps_mem_mem_dq     ,
	inout  wire [ 9-1:0] emif_hps_mem_mem_dqs    ,
	inout  wire [ 9-1:0] emif_hps_mem_mem_dqs_n  ,
	input  wire          hps_jtag_tck            ,
	input  wire          hps_jtag_tms            ,
	output wire          hps_jtag_tdo            ,
	input  wire          hps_jtag_tdi            ,
	output wire          hps_sdmmc_CCLK          ,
	inout  wire          hps_sdmmc_CMD           ,
	inout  wire          hps_sdmmc_D0            ,
	inout  wire          hps_sdmmc_D1            ,
	inout  wire          hps_sdmmc_D2            ,
	inout  wire          hps_sdmmc_D3            ,
	inout  wire          hps_usb0_DATA0          ,
	inout  wire          hps_usb0_DATA1          ,
	inout  wire          hps_usb0_DATA2          ,
	inout  wire          hps_usb0_DATA3          ,
	inout  wire          hps_usb0_DATA4          ,
	inout  wire          hps_usb0_DATA5          ,
	inout  wire          hps_usb0_DATA6          ,
	inout  wire          hps_usb0_DATA7          ,
	input  wire          hps_usb0_CLK            ,
	output wire          hps_usb0_STP            ,
	input  wire          hps_usb0_DIR            ,
	input  wire          hps_usb0_NXT            ,
	output wire          hps_emac0_TX_CLK        , //TODO: may need to change RMII TX CLK to be input instead, check
	input  wire          hps_emac0_RX_CLK        ,
	output wire          hps_emac0_TX_CTL        ,
	input  wire          hps_emac0_RX_CTL        ,
	output wire          hps_emac0_TXD0          ,
	output wire          hps_emac0_TXD1          ,
	input  wire          hps_emac0_RXD0          ,
	input  wire          hps_emac0_RXD1          ,
	output wire          hps_emac0_TXD2          ,
	output wire          hps_emac0_TXD3          ,
	input  wire          hps_emac0_RXD2          ,
	input  wire          hps_emac0_RXD3          ,
	inout  wire          hps_emac0_MDIO          ,
	output wire          hps_emac0_MDC           ,
	input  wire          hps_uart0_RX            ,
	output wire          hps_uart0_TX            ,
	inout  wire          hps_i2c1_SDA            ,
	inout  wire          hps_i2c1_SCL            ,
	inout  wire          hps_gpio1_io0           ,
	inout  wire          hps_gpio1_io1           ,
	inout  wire          hps_gpio1_io4           ,
	inout  wire          hps_gpio1_io5           ,
	inout  wire          hps_gpio1_io19          ,
	inout  wire          hps_gpio1_io20          ,
	inout  wire          hps_gpio1_io21          ,
	input  wire          hps_ref_clk             ,
	input  wire [ 1-1:0] fpga_reset_n,
	output wire [63:0] TX_data,
	output wire TX_valid,
	input TX_ready
);

localparam AWCACHE_BASE = 0 ;
localparam AWCACHE_SIZE = 4 ;
localparam AWPROT_BASE  = 4 ;
localparam AWPROT_SIZE  = 3 ;
localparam AWUSER_BASE  = 7 ;
localparam AWUSER_SIZE  = 5 ;
localparam ARCACHE_BASE = 16;
localparam ARCACHE_SIZE = 4 ;
localparam ARPROT_BASE  = 20;
localparam ARPROT_SIZE  = 3 ;
localparam ARUSER_BASE  = 23;
localparam ARUSER_SIZE  = 5 ;

localparam int NRX             = 2                         ;
localparam int DW_MM2S         = 512                       ;
localparam int DW_S2MM         = 512                       ;
localparam int DW_L1TOP        = $bits(wnPhyCfgParamsWoTxT);
localparam int DW_TX_ST        = $bits(wnPhyTxCfgParamsT)  ;
localparam int DW_PS2PL        = 8                         ;
localparam int DW_PL2PS_PARAM  = $bits(pl2ps_indc_t)       ;
localparam int DW_PL2PS_MIB    = $bits(wnL1SsbOutT)        ;
localparam int DW_PL2PS_DCI    = $bits(wnL1PdcchOutT)      ;
localparam int DW_PL2PS_RXDATA = $bits(pdschrx_pl2ps_t)    ;
localparam int DW_DEBUG_CORE    = 64   ;

logic        CLK245M    ;
logic        CLK125M    ;
logic        RST_245M_N ;
logic [63:0] RX_data    ;
logic        RX_valid   ;
logic        RX_ready   ;
logic        RX_last    ;
logic [63:0] RX_data_b  ;
logic        RX_valid_b ;
logic        RX_ready_b ;
logic [63:0] RX_data_b1 ;
logic        RX_valid_b1;
logic        RX_ready_b1;
logic [63:0] dg_data    ;
logic        dg_valid   ;
logic        dg_ready   ;

logic [        DW_MM2S-1:0] mm2s_tdata              ;
logic                       mm2s_tvalid             ;
logic                       mm2s_tready             ;
logic [        DW_S2MM-1:0] s2mm_tdata              ;
logic                       s2mm_tvalid             ;
logic                       s2mm_tready             ;
logic [       DW_L1TOP-1:0] l1top_tdata             ;
logic                       l1top_tvalid            ;
logic                       l1top_tready            ;
logic [       DW_TX_ST-1:0] tx_st_tdata             ;
logic                       tx_st_tvalid            ;
logic                       tx_st_tready            ;
logic [ DW_PL2PS_PARAM-1:0] pl2ps_param_tdata       ;
logic                       pl2ps_param_tvalid      ;
logic                       pl2ps_param_tready      ;
logic [   DW_PL2PS_MIB-1:0] pl2ps_mib_tdata         ;
logic                       pl2ps_mib_tvalid        ;
logic                       pl2ps_mib_tready        ;
logic [   DW_PL2PS_DCI-1:0] pl2ps_dci_tdata         ;
logic                       pl2ps_dci_tvalid        ;
logic                       pl2ps_dci_tready        ;
logic [DW_PL2PS_RXDATA-1:0] pl2ps_rxdata_tdata      ;
logic                       pl2ps_rxdata_tvalid     ;
logic                       pl2ps_rxdata_tready     ;
logic [                9:0] sfn                     ;
logic [DW_DEBUG_CORE-1:0] cfg_dc_tdata;
logic cfg_dc_tvalid;
logic cfg_dc_tready;
logic [DW_DEBUG_CORE-1:0] debugcore_data_out_tdata;
logic debugcore_data_out_tvalid;
logic debugcore_data_out_tready;
logic [DW_DEBUG_CORE-1:0] dc_tdata;
logic dc_tvalid;
logic dc_tready;

wire system_clk_100             ;
wire system_clk_100_internal    ;
wire ninit_done                 ;
wire fpga_reset_n_debounced_wire;
reg  fpga_reset_n_debounced     ;
wire src_reset_n                ;
wire system_reset_n             ;
wire h2f_reset                  ;
(*preserve*) logic [7:0] debug_core_sel;


wire locked_400; //> this signal comes from the 400 Mhz pll
wire locked_250;
wire clk_250m;
wire reset_250m_n;

(*preserve*)logic sw_resetn;

vio vio_1(.source (sw_resetn),.source_clk(system_clk_100_internal));

assign system_reset_n = fpga_reset_n_debounced & src_reset_n & ~h2f_reset & ~ninit_done & sw_resetn;

assign system_clk_100 = fpga_clk_100;

assign system_clk_100_internal = system_clk_100;

wire [4-1:0] fpga_debounced_buttons;
wire [4-2:0] fpga_led_internal     ;
wire         heartbeat_led         ;
reg  [ 22:0] heartbeat_count       ;

assign fpga_led_pio = {heartbeat_led,fpga_led_internal};

assign heartbeat_led = ~heartbeat_count[22];

wire  [31:0] f2h_irq1_irq  ;
wire  [43:0] stm_hw_events ;
wire  [ 7:0] ps2pl_time    ;
wire  [31:0] mm2s_pio      ;
wire  [31:0] mm2s_pio_d    ;
wire  [31:0] s2mm_pio      ;
wire  [31:0] s2mm_pio_0      ;
wire  [ 7:0] state_readdata;
wire  [ 7:0] timer_readdata;
logic [ 7:0] slot_number   ;
logic        slot_tick     ;


assign stm_hw_events = {{20{1'b0}}, heartbeat_led, fpga_led_internal, fpga_dipsw_pio, fpga_debounced_buttons};

assign f2h_irq1_irq = {32'b0};

//Temporary disable src_reset_n
assign src_reset_n = 1'b1;

wn_clock_fabricpll_100to250 u0 (
	.rst      (~system_reset_n),      //   input,  width = 1,   reset.reset
	.refclk   (system_clk_100_internal),   //   input,  width = 1,  refclk.clk
	.locked   (locked_250),   //  output,  width = 1,  locked.export
	.outclk_0 (clk_250m)  //  output,  width = 1, outclk0.clk
);

reset_sync 
#(
 .IS_ACTIVE_LOW (1 )
)
reset_sync_100_250 (
 .clk_in (clk_250m ),
 .reset_in_n (system_reset_n & locked_250),
 .reset_out_n (reset_250m_n) // -> this signal is synced to clock 205
);

// Qsys Top module
qsys_top soc_inst (
	.clk_100_clk                              (clk_250m               ),
	// this is an output from reset release ip, async
	.ninit_done_ninit_done                    (ninit_done                            ), 
	// this is an output from hps, async
	.h2f_reset_reset                          (h2f_reset                             ), 
	// reset sync to clk_250m
	.reset_reset_n                            (reset_250m_n                          ),	

	// removed connections for the following ports as they are not necessary 
	// and not as important as adding a cdc block on each signal
	.led_pio_external_connection_in_port      (), //fpga_led_internal
	.led_pio_external_connection_out_port     (), //fpga_led_internal
	.dipsw_pio_external_connection_export     (), // fpga_dipsw_pio
	.button_pio_external_connection_export    (), // fpga_debounced_buttons
	.agilex_hps_f2h_stm_hw_events_stm_hwevents(), // stm_hw_events
	//Terminate the CS_JTAG.
	.agilex_hps_h2f_cs_ntrst                  (1'b1                                  ),
	.agilex_hps_h2f_cs_tck                    (1'b1                                  ),
	.agilex_hps_h2f_cs_tdi                    (1'b1                                  ),
	.agilex_hps_h2f_cs_tdo                    (                                      ),
	.agilex_hps_h2f_cs_tdoen                  (                                      ),
	.agilex_hps_h2f_cs_tms                    (1'b1                                  ),
	.emif_hps_pll_ref_clk_clk                 (emif_hps_pll_ref_clk                  ),
	.emif_hps_mem_mem_ck                      (emif_hps_mem_mem_ck                   ),
	.emif_hps_mem_mem_ck_n                    (emif_hps_mem_mem_ck_n                 ),
	.emif_hps_mem_mem_a                       (emif_hps_mem_mem_a                    ),
	.emif_hps_mem_mem_act_n                   (emif_hps_mem_mem_act_n                ),
	.emif_hps_mem_mem_ba                      (emif_hps_mem_mem_ba                   ),
	.emif_hps_mem_mem_bg                      (emif_hps_mem_mem_bg                   ),
	.emif_hps_mem_mem_cke                     (emif_hps_mem_mem_cke                  ),
	.emif_hps_mem_mem_cs_n                    (emif_hps_mem_mem_cs_n                 ),
	.emif_hps_mem_mem_odt                     (emif_hps_mem_mem_odt                  ),
	.emif_hps_mem_mem_reset_n                 (emif_hps_mem_mem_reset_n              ),
	.emif_hps_mem_mem_par                     (emif_hps_mem_mem_par                  ),
	.emif_hps_mem_mem_alert_n                 (emif_hps_mem_mem_alert_n              ),
	.emif_hps_mem_mem_dqs                     (emif_hps_mem_mem_dqs                  ),
	.emif_hps_mem_mem_dqs_n                   (emif_hps_mem_mem_dqs_n                ),
	.emif_hps_mem_mem_dq                      (emif_hps_mem_mem_dq                   ),
	.emif_hps_mem_mem_dbi_n                   (emif_hps_mem_mem_dbi_n                ),
	.emif_hps_oct_oct_rzqin                   (emif_hps_oct_oct_rzqin                ),
	.hps_io_jtag_tck                          (hps_jtag_tck                          ),
	.hps_io_jtag_tms                          (hps_jtag_tms                          ),
	.hps_io_jtag_tdo                          (hps_jtag_tdo                          ),
	.hps_io_jtag_tdi                          (hps_jtag_tdi                          ),
	.hps_io_EMAC0_TX_CLK                      (hps_emac0_TX_CLK                      ),
	.hps_io_EMAC0_RX_CLK                      (hps_emac0_RX_CLK                      ),
	.hps_io_EMAC0_TX_CTL                      (hps_emac0_TX_CTL                      ),
	.hps_io_EMAC0_RX_CTL                      (hps_emac0_RX_CTL                      ),
	.hps_io_EMAC0_TXD0                        (hps_emac0_TXD0                        ),
	.hps_io_EMAC0_TXD1                        (hps_emac0_TXD1                        ),
	.hps_io_EMAC0_RXD0                        (hps_emac0_RXD0                        ),
	.hps_io_EMAC0_RXD1                        (hps_emac0_RXD1                        ),
	.hps_io_EMAC0_TXD2                        (hps_emac0_TXD2                        ),
	.hps_io_EMAC0_TXD3                        (hps_emac0_TXD3                        ),
	.hps_io_EMAC0_RXD2                        (hps_emac0_RXD2                        ),
	.hps_io_EMAC0_RXD3                        (hps_emac0_RXD3                        ),
	.hps_io_EMAC0_MDIO                        (hps_emac0_MDIO                        ),
	.hps_io_EMAC0_MDC                         (hps_emac0_MDC                         ),
	.hps_io_SDMMC_CCLK                        (hps_sdmmc_CCLK                        ),
	.hps_io_SDMMC_CMD                         (hps_sdmmc_CMD                         ),
	.hps_io_SDMMC_D0                          (hps_sdmmc_D0                          ),
	.hps_io_SDMMC_D1                          (hps_sdmmc_D1                          ),
	.hps_io_SDMMC_D2                          (hps_sdmmc_D2                          ),
	.hps_io_SDMMC_D3                          (hps_sdmmc_D3                          ),
	.hps_io_I2C1_SDA                          (hps_i2c1_SDA                          ),
	.hps_io_I2C1_SCL                          (hps_i2c1_SCL                          ),
	.hps_io_UART0_RX                          (hps_uart0_RX                          ),
	.hps_io_UART0_TX                          (hps_uart0_TX                          ),
	.hps_io_USB0_CLK                          (hps_usb0_CLK                          ),
	.hps_io_USB0_STP                          (hps_usb0_STP                          ),
	.hps_io_USB0_DIR                          (hps_usb0_DIR                          ),
	.hps_io_USB0_NXT                          (hps_usb0_NXT                          ),
	.hps_io_USB0_DATA0                        (hps_usb0_DATA0                        ),
	.hps_io_USB0_DATA1                        (hps_usb0_DATA1                        ),
	.hps_io_USB0_DATA2                        (hps_usb0_DATA2                        ),
	.hps_io_USB0_DATA3                        (hps_usb0_DATA3                        ),
	.hps_io_USB0_DATA4                        (hps_usb0_DATA4                        ),
	.hps_io_USB0_DATA5                        (hps_usb0_DATA5                        ),
	.hps_io_USB0_DATA6                        (hps_usb0_DATA6                        ),
	.hps_io_USB0_DATA7                        (hps_usb0_DATA7                        ),
	.hps_io_gpio1_io0                         (hps_gpio1_io0                         ),
	.hps_io_gpio1_io1                         (hps_gpio1_io1                         ),
	.hps_io_gpio1_io4                         (hps_gpio1_io4                         ),
	.hps_io_gpio1_io5                         (hps_gpio1_io5                         ),
	.hps_io_gpio1_io19                        (hps_gpio1_io19                        ),
	.hps_io_gpio1_io20                        (hps_gpio1_io20                        ),
	.hps_io_gpio1_io21                        (hps_gpio1_io21                        ),
	.f2h_irq1_irq                             (f2h_irq1_irq                          ),
	.hps_io_hps_osc_clk                       (hps_ref_clk                           ),
//	.ps2pl_time_readdata                      (ps2pl_time                            ),
	
	.mm2s_conduit_merger_conduit_end_awcache  (mm2s_pio[AWCACHE_BASE+:AWCACHE_SIZE]  ), //               axi_signals.awcache
	.mm2s_conduit_merger_conduit_end_awprot   (mm2s_pio[AWPROT_BASE+: AWPROT_SIZE]   ), //                          .awprot
	.mm2s_conduit_merger_conduit_end_awuser   (mm2s_pio[AWUSER_BASE+: AWUSER_SIZE]   ), //                          .awuser
	.mm2s_conduit_merger_conduit_end_arcache  (mm2s_pio[ARCACHE_BASE+:ARCACHE_SIZE]  ), //                          .arcache
	.mm2s_conduit_merger_conduit_end_aruser   (mm2s_pio[ARUSER_BASE+: ARUSER_SIZE]   ), //                          .aruser
	.mm2s_conduit_merger_conduit_end_arprot   (mm2s_pio[ARPROT_BASE+: ARPROT_SIZE]   ),
	
	.mm2s_pio_in_port                         (mm2s_pio                              ), //   input,    width = 32,                        mm2s_pio.in_port
	.mm2s_pio_out_port                        (mm2s_pio                              ), //  output,    width = 32,                                .out_port
	
	.s2mm_conduit_merger_conduit_end_awcache  (s2mm_pio[AWCACHE_BASE+:AWCACHE_SIZE]  ), //               axi_signals.awcache
	.s2mm_conduit_merger_conduit_end_awprot   (s2mm_pio[AWPROT_BASE+: AWPROT_SIZE]   ), //                          .awprot
	.s2mm_conduit_merger_conduit_end_awuser   (s2mm_pio[AWUSER_BASE+: AWUSER_SIZE]   ), //                          .awuser
	.s2mm_conduit_merger_conduit_end_arcache  (s2mm_pio[ARCACHE_BASE+:ARCACHE_SIZE]  ), //                          .arcache
	.s2mm_conduit_merger_conduit_end_aruser   (s2mm_pio[ARUSER_BASE+: ARUSER_SIZE]   ), //                          .aruser
	.s2mm_conduit_merger_conduit_end_arprot   (s2mm_pio[ARPROT_BASE+: ARPROT_SIZE]   ),
  
	.s2mm_pio_in_port                         (s2mm_pio                              ), //   input,    width = 32,                        s2mm_pio.in_port
	.s2mm_pio_out_port                        (s2mm_pio                              ), //  output,    width = 32,                                .out_port
	
	.mm2s_conduit_merger_conduit_end_d_awcache(mm2s_pio_d[AWCACHE_BASE+:AWCACHE_SIZE]), //               axi_signals.awcache
	.mm2s_conduit_merger_conduit_end_d_awprot (mm2s_pio_d[AWPROT_BASE+: AWPROT_SIZE] ), //                          .awprot
	.mm2s_conduit_merger_conduit_end_d_awuser (mm2s_pio_d[AWUSER_BASE+: AWUSER_SIZE] ), //                          .awuser
	.mm2s_conduit_merger_conduit_end_d_arcache(mm2s_pio_d[ARCACHE_BASE+:ARCACHE_SIZE]), //                          .arcache
	.mm2s_conduit_merger_conduit_end_d_aruser (mm2s_pio_d[ARUSER_BASE+: ARUSER_SIZE] ), //                          .aruser
	.mm2s_conduit_merger_conduit_end_d_arprot (mm2s_pio_d[ARPROT_BASE+: ARPROT_SIZE] ),
	
	.mm2s_pio_d_in_port                       (mm2s_pio_d                            ), //   input,    width = 32,                        mm2s_pio.in_port
	.mm2s_pio_d_out_port                      (mm2s_pio_d                            ), //  output,    width = 32,                                .out_port
	
	.pusch_data_data                          (mm2s_tdata                            ),
	.pusch_data_valid                         (mm2s_tvalid                           ),
	.pusch_data_ready                         (mm2s_tready                           ),
	.pusch_data_startofpacket                 (                                      ),
	.pusch_data_endofpacket                   (                                      ),
	.pusch_data_empty                         (                                      ),
	
	.pdsch_data_data                          (s2mm_tdata                            ),
	.pdsch_data_valid                         (s2mm_tvalid                           ),
	.pdsch_data_ready                         (s2mm_tready                           ),
	
	.msgdma_1_st_source_data                  (RX_data_b                             ),
	.msgdma_1_st_source_valid                 (RX_valid_b                            ),
	.msgdma_1_st_source_ready                 (RX_ready_b                            ),
	.msgdma_1_st_source_startofpacket         (                                      ),
	.msgdma_1_st_source_endofpacket           (RX_last                               ),
	.msgdma_1_st_source_empty                 (                                      ),
	
	
	.ps2pl_stream_tready                      (l1top_tready                          ),
	.ps2pl_stream_tdata                       (l1top_tdata                           ),
	.ps2pl_stream_tvalid                      (l1top_tvalid                          ),
	.ps2pl_axil2s_0_conduit_end_readdata      (state_readdata                        ),
	.ps2pl_axil2s_0_conduit_end_1_readdata    (timer_readdata                        ),
	
	.ps2pl_tx_st_tready                       (tx_st_tready                          ),
	.ps2pl_tx_st_tdata                        (tx_st_tdata                           ),
	.ps2pl_tx_st_tvalid                       (tx_st_tvalid                          ),
	
	.pl2ps_ssb_tdata                          (pl2ps_mib_tdata                       ),
	.pl2ps_ssb_tvalid                         (pl2ps_mib_tvalid                      ),
	.pl2ps_ssb_tready                         (pl2ps_mib_tready                      ),
	.pl2ps_pdcch_tdata                        (pl2ps_dci_tdata                       ),
	.pl2ps_pdcch_tvalid                       (pl2ps_dci_tvalid                      ),
	.pl2ps_pdcch_tready                       (pl2ps_dci_tready                      ),
	.pl2ps_pdsch_tdata                        (pl2ps_rxdata_tdata                    ),
	.pl2ps_pdsch_tvalid                       (pl2ps_rxdata_tvalid                   ),
	.pl2ps_pdsch_tready                       (pl2ps_rxdata_tready                   ),
	.pl2ps_param_tdata                        (pl2ps_param_tdata                     ),
	.pl2ps_param_tvalid                       (pl2ps_param_tvalid                    ),
	.pl2ps_param_tready                       (pl2ps_param_tready                    ),
	.slot_number_writebyteenable_n            (slot_number                           ),
	.sfn_writebyteenable_n                    (sfn                                   ),
	.slot_tick_beginbursttransfer             (slot_tick                             ),
	
	.s2mm_conduit_merger_0_conduit_end_awcache  (s2mm_pio_0[AWCACHE_BASE+:AWCACHE_SIZE]  ), //               axi_signals.awcache
	.s2mm_conduit_merger_0_conduit_end_awprot   (s2mm_pio_0[AWPROT_BASE+: AWPROT_SIZE]   ), //                          .awprot
	.s2mm_conduit_merger_0_conduit_end_awuser   (s2mm_pio_0[AWUSER_BASE+: AWUSER_SIZE]   ), //                          .awuser
	.s2mm_conduit_merger_0_conduit_end_arcache  (s2mm_pio_0[ARCACHE_BASE+:ARCACHE_SIZE]  ), //                          .arcache
	.s2mm_conduit_merger_0_conduit_end_aruser   (s2mm_pio_0[ARUSER_BASE+: ARUSER_SIZE]   ), //                          .aruser
	.s2mm_conduit_merger_0_conduit_end_arprot   (s2mm_pio_0[ARPROT_BASE+: ARPROT_SIZE]   ),
  
	.s2mm_pio_0_external_connection_in_port                         (s2mm_pio_0                              ), //   input,    width = 32,                        s2mm_pio.in_port
	.s2mm_pio_0_external_connection_out_port                        (s2mm_pio_0                              ), //  output,    width = 32,                                .out_port
	
	.msgdma_s2mm_0_st_sink_data(dc_tdata),
	.msgdma_s2mm_0_st_sink_valid(dc_tvalid),
	.msgdma_s2mm_0_st_sink_ready(dc_tready),
	.debug_core_rd_export(debug_core_sel)
);

/****************Change only this part***********************/

// this will be optimised if IS_RF_AVAILABLE set to 0
wn_axis_fifo #(64,262144) fifo_data (
	.clock        (clk_250m),
	.reset_n      (reset_250m_n         ),
	.s_axis_tdata (RX_data_b              ),
	.s_axis_tvalid(RX_valid_b             ),
	.s_axis_tready(RX_ready_b             ),
	.m_axis_tdata (RX_data_b1             ),
	.m_axis_tvalid(RX_valid_b1            ),
	.m_axis_tready(RX_ready_b1            )
);

// Instantiation of data generator for IQ samples
//localparam string DG_FILENAME = "rx_data.dat";
(* preserve *) logic flag_init      ;
(* preserve *)	logic sel_line;
logic [1:0] r_count;


always_ff @(posedge clk_250m) begin
	if (~reset_250m_n) begin
		flag_init <= 'd0;
		sel_line  <= 'd0;
		r_count   <= 0;
	end
	else begin
		if (l1top_tvalid && l1top_tready)
			flag_init <= 'd1;
		if (RX_last&&RX_valid_b&&RX_ready_b)
			r_count <= r_count+1;
		if (RX_last&&RX_valid_b&&RX_ready_b&&r_count==0)
			sel_line <= 'd1;
	end

end

assign RX_data     = RX_data_b1;
assign RX_valid    = RX_valid_b1 && sel_line ;
assign RX_ready_b1 = RX_ready && sel_line;

wn_l1_top #(
	.NRX            (NRX            ),
	.DW_MM2S        (DW_MM2S        ),
	.DW_S2MM        (DW_S2MM        ),
	.DW_L1TOP       (DW_L1TOP       ),
	.DW_TX_ST       (DW_TX_ST       ),
	.DW_PS2PL       (DW_PS2PL       ),
	.DW_PL2PS_PARAM (DW_PL2PS_PARAM ),
	.DW_PL2PS_MIB   (DW_PL2PS_MIB   ),
	.DW_PL2PS_DCI   (DW_PL2PS_DCI   ),
	.DW_PL2PS_RXDATA(DW_PL2PS_RXDATA),
	.DW_DEBUG_CORE (DW_DEBUG_CORE),
	.IS_RF_AVAILABLE(0),	
	.IS_SIM(0),
	.INPUT_CLOCK_FREQ(100) // 100 mhz clock is used to generate 400m clock
) wn_l1_top_dut (
	.CLK245M             (clk_250m),
	.CLK125M             (system_clk_100_internal),
	.RST_245M_N          (reset_250m_n         ),
	.TX_I0               (TX_data[15:0]          ),
	.TX_Q0               (TX_data[31:16]         ),
	.TX_I1               (TX_data[47:32]         ),
	.TX_Q1               (TX_data[63:48]         ),
	.RX_I0               (RX_data[15:0]          ),
	.RX_Q0               (RX_data[31:16]         ),
	.RX_I1               (RX_data[47:32]         ),
	.RX_Q1               (RX_data[63:48]         ),
	.RX_valid            (RX_valid               ),
	.RX_ready            (RX_ready               ),
	.TX_valid            (TX_valid               ),
	.TX_ready            (TX_ready               ),
	.symbol_valid        (symbol_valid           ),
	.IF_TRSW_CTLB        (IF_TRSW_CTLB           ),
	.DL_FRAME            (DL_FRAME               ),
	.ONE_PPS             (ONE_PPS                ),
	.mm2s_tdata          (mm2s_tdata             ),
	.mm2s_tvalid         (mm2s_tvalid            ),
	.mm2s_tready         (mm2s_tready            ),
	.s2mm_tdata          (s2mm_tdata             ),
	.s2mm_tvalid         (s2mm_tvalid            ),
	.s2mm_tready         (s2mm_tready            ),
	.l1top_tdata         (l1top_tdata            ),
	.l1top_tvalid        (l1top_tvalid           ),
	.l1top_tready        (l1top_tready           ),
	.tx_st_tdata         (tx_st_tdata            ),
	.tx_st_tvalid        (tx_st_tvalid           ),
	.tx_st_tready        (tx_st_tready           ),
	.pl2ps_param_tdata   (pl2ps_param_tdata      ),
	.pl2ps_param_tvalid  (pl2ps_param_tvalid     ),
	.pl2ps_param_tready  (pl2ps_param_tready     ),
	.pl2ps_mib_tdata     (pl2ps_mib_tdata        ),
	.pl2ps_mib_tvalid    (pl2ps_mib_tvalid       ),
	.pl2ps_mib_tready    (pl2ps_mib_tready       ),
	.pl2ps_dci_tdata     (pl2ps_dci_tdata        ),
	.pl2ps_dci_tvalid    (pl2ps_dci_tvalid       ),
	.pl2ps_dci_tready    (pl2ps_dci_tready       ),
	.pl2ps_rxdata_tdata  (pl2ps_rxdata_tdata     ),
	.pl2ps_rxdata_tvalid (pl2ps_rxdata_tvalid    ),
	.pl2ps_rxdata_tready (pl2ps_rxdata_tready    ),
	.slot_tick           (slot_tick              ),
	.slot_number         (slot_number            ),
	.sfn                 (sfn                    ),
	.debugcore_data_out_tdata(cfg_dc_tdata),
	.debugcore_data_out_tvalid(cfg_dc_tvalid),
	.debugcore_data_out_tready(cfg_dc_tready)
	//.debugcore_sel(debug_core_sel)
);

(*preserve*) logic state_txn_valid;
(*preserve*) logic [31:0] count_ncycles;

//assign count_ncycles = soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.time_to_clear_indc;
//assign state_txn_valid = (soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.state==CLEAR_INTR && soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.next==SETUP) ? 1 : 0;

wn_circular_buffer #(
		.DATA_WIDTH           (DW_DEBUG_CORE),
		.CIRCULAR_BUFFER_DEPTH(             
		                       1024)  
	) wn_config_debugger_inst (
		.clock          (clk_250m),
		.reset_n        (reset_250m_n),
		.data_in_tdata  (count_ncycles),
		.data_in_tvalid (state_txn_valid),
		.data_in_tready (state_txn_valid),
		.data_out_tdata (debugcore_data_out_tdata),
		.data_out_tvalid(debugcore_data_out_tvalid),
		.data_out_tready(debugcore_data_out_tready)
	);
	
	always_comb begin
		if (debug_core_sel==0) begin
			dc_tdata = debugcore_data_out_tdata;
			dc_tvalid = debugcore_data_out_tvalid;
			debugcore_data_out_tready = dc_tready;
			cfg_dc_tready = 0;
		end
		else begin
			dc_tdata = cfg_dc_tdata;
			dc_tvalid = cfg_dc_tvalid;
			cfg_dc_tready = dc_tready;
			debugcore_data_out_tready = 0;
		end
	end
	
	enum logic [3:0] {
	SETUP,
	RD_PARAM,
	PROCESS_BITMAP,
	RD_SSB,
	RD_PDSCH,
	RD_PDCCH,
	GEN_INTR,
	CLEAR_INTR,
	GET_SLOT,
	CLEAR_SLOT_INTR
}states_in_pl2ps;

always_ff @(posedge system_clk_100_internal) begin
	if (~system_reset_n) begin
		count_ncycles <= 0;
		state_txn_valid <= 0;
	end
	else begin
		count_ncycles <= {sfn,slot_number,soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.time_to_clear_indc};
		state_txn_valid <= (soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.state==CLEAR_INTR && soc_inst.pl2ps_axis2l_wn_0.pl2ps_axis2l_wn_0.next==SETUP) ? 1 : 0;
	end
end
// (*preserve*)logic [31:0] count_n;
// (*preserve*)logic count_f;

// always_ff @(posedge system_clk_100_internal) begin
// 	if (~system_reset_n) begin
// 		count_n <= 'd0;
// 		count_f <= 1'b0;
// 	end
// 	else begin
// 		if (slot_tick) begin
// 			count_f <= 1'b1;
// 			count_n <= 'd0;
// 		end
// 		if (count_f) begin
// 			count_n <= count_n+1;
// 		end
// 	end
// end


// (*preserve*) logic [63:0] data_count_debug;
// always_ff @(posedge system_clk_100_internal) begin
// 	if (~system_reset_n) begin
// 		data_count_debug <= 'd1;
// 	end
// 	else begin
// 		if (RX_ready && RX_valid) begin
// 			data_count_debug <= data_count_debug+1;
// 		end
// 	end
// end
/****************Change only this part***********************/

// debounce fpga_reset_n
debounce fpga_reset_n_debounce_inst (
	.clk     (system_clk_100_internal    ),
	.reset_n (~ninit_done                ),
	.data_in (fpga_reset_n               ),
	.data_out(fpga_reset_n_debounced_wire)
);
defparam fpga_reset_n_debounce_inst.WIDTH = 1;
defparam fpga_reset_n_debounce_inst.POLARITY = "LOW";
defparam fpga_reset_n_debounce_inst.TIMEOUT = 10000;// at 100Mhz this is a debounce time of 1ms
defparam fpga_reset_n_debounce_inst.TIMEOUT_WIDTH = 32;// ceil(log2(TIMEOUT))

always @ (posedge system_clk_100_internal or posedge ninit_done)
	begin
		if (ninit_done == 1'b1)
			fpga_reset_n_debounced <= 1'b0;
		else
			fpga_reset_n_debounced <= fpga_reset_n_debounced_wire;
	end

// // Debounce logic to clean out glitches within 1ms
// debounce debounce_inst (
// 	.clk     (system_clk_100_internal),
// 	.reset_n (system_reset_n         ),
// 	.data_in (fpga_button_pio        ),
// 	.data_out(fpga_debounced_buttons )
// );
// defparam debounce_inst.WIDTH = 4;
// defparam debounce_inst.POLARITY = "LOW";
// defparam debounce_inst.TIMEOUT = 10000;// at 100Mhz this is a debounce time of 1ms
// defparam debounce_inst.TIMEOUT_WIDTH = 32;// ceil(log2(TIMEOUT))

always @(posedge system_clk_100_internal or negedge system_reset_n) begin
	if (~system_reset_n) begin
		heartbeat_count <= 23'd0;
	end else begin
		heartbeat_count <= heartbeat_count + 23'd1;
	end
end

endmodule


