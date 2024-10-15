module qsys_top (
		output wire        wd_reset_reset_n,                          //                       wd_reset.reset_n
		input  wire [43:0] agilex_hps_f2h_stm_hw_events_stm_hwevents, //   agilex_hps_f2h_stm_hw_events.stm_hwevents
		input  wire        agilex_hps_h2f_cs_ntrst,                   //              agilex_hps_h2f_cs.ntrst
		input  wire        agilex_hps_h2f_cs_tck,                     //                               .tck
		input  wire        agilex_hps_h2f_cs_tdi,                     //                               .tdi
		output wire        agilex_hps_h2f_cs_tdo,                     //                               .tdo
		output wire        agilex_hps_h2f_cs_tdoen,                   //                               .tdoen
		input  wire        agilex_hps_h2f_cs_tms,                     //                               .tms
		output wire        emac1_mdc_clk,                             //                      emac1_mdc.clk
		output wire        hps_io_EMAC0_TX_CLK,                       //                         hps_io.EMAC0_TX_CLK
		output wire        hps_io_EMAC0_TXD0,                         //                               .EMAC0_TXD0
		output wire        hps_io_EMAC0_TXD1,                         //                               .EMAC0_TXD1
		output wire        hps_io_EMAC0_TXD2,                         //                               .EMAC0_TXD2
		output wire        hps_io_EMAC0_TXD3,                         //                               .EMAC0_TXD3
		input  wire        hps_io_EMAC0_RX_CTL,                       //                               .EMAC0_RX_CTL
		output wire        hps_io_EMAC0_TX_CTL,                       //                               .EMAC0_TX_CTL
		input  wire        hps_io_EMAC0_RX_CLK,                       //                               .EMAC0_RX_CLK
		input  wire        hps_io_EMAC0_RXD0,                         //                               .EMAC0_RXD0
		input  wire        hps_io_EMAC0_RXD1,                         //                               .EMAC0_RXD1
		input  wire        hps_io_EMAC0_RXD2,                         //                               .EMAC0_RXD2
		input  wire        hps_io_EMAC0_RXD3,                         //                               .EMAC0_RXD3
		inout  wire        hps_io_EMAC0_MDIO,                         //                               .EMAC0_MDIO
		output wire        hps_io_EMAC0_MDC,                          //                               .EMAC0_MDC
		inout  wire        hps_io_SDMMC_CMD,                          //                               .SDMMC_CMD
		inout  wire        hps_io_SDMMC_D0,                           //                               .SDMMC_D0
		inout  wire        hps_io_SDMMC_D1,                           //                               .SDMMC_D1
		inout  wire        hps_io_SDMMC_D2,                           //                               .SDMMC_D2
		inout  wire        hps_io_SDMMC_D3,                           //                               .SDMMC_D3
		output wire        hps_io_SDMMC_CCLK,                         //                               .SDMMC_CCLK
		inout  wire        hps_io_USB0_DATA0,                         //                               .USB0_DATA0
		inout  wire        hps_io_USB0_DATA1,                         //                               .USB0_DATA1
		inout  wire        hps_io_USB0_DATA2,                         //                               .USB0_DATA2
		inout  wire        hps_io_USB0_DATA3,                         //                               .USB0_DATA3
		inout  wire        hps_io_USB0_DATA4,                         //                               .USB0_DATA4
		inout  wire        hps_io_USB0_DATA5,                         //                               .USB0_DATA5
		inout  wire        hps_io_USB0_DATA6,                         //                               .USB0_DATA6
		inout  wire        hps_io_USB0_DATA7,                         //                               .USB0_DATA7
		input  wire        hps_io_USB0_CLK,                           //                               .USB0_CLK
		output wire        hps_io_USB0_STP,                           //                               .USB0_STP
		input  wire        hps_io_USB0_DIR,                           //                               .USB0_DIR
		input  wire        hps_io_USB0_NXT,                           //                               .USB0_NXT
		input  wire        hps_io_UART0_RX,                           //                               .UART0_RX
		output wire        hps_io_UART0_TX,                           //                               .UART0_TX
		inout  wire        hps_io_I2C1_SDA,                           //                               .I2C1_SDA
		inout  wire        hps_io_I2C1_SCL,                           //                               .I2C1_SCL
		inout  wire        hps_io_gpio1_io0,                          //                               .gpio1_io0
		inout  wire        hps_io_gpio1_io1,                          //                               .gpio1_io1
		inout  wire        hps_io_gpio1_io4,                          //                               .gpio1_io4
		inout  wire        hps_io_gpio1_io5,                          //                               .gpio1_io5
		input  wire        hps_io_jtag_tck,                           //                               .jtag_tck
		input  wire        hps_io_jtag_tms,                           //                               .jtag_tms
		output wire        hps_io_jtag_tdo,                           //                               .jtag_tdo
		input  wire        hps_io_jtag_tdi,                           //                               .jtag_tdi
		input  wire        hps_io_hps_osc_clk,                        //                               .hps_osc_clk
		inout  wire        hps_io_gpio1_io19,                         //                               .gpio1_io19
		inout  wire        hps_io_gpio1_io20,                         //                               .gpio1_io20
		inout  wire        hps_io_gpio1_io21,                         //                               .gpio1_io21
		output wire        h2f_reset_reset,                           //                      h2f_reset.reset
		input  wire [31:0] f2h_irq1_irq,                              //                       f2h_irq1.irq
		input  wire        clk_100_clk,                               //                        clk_100.clk
		input  wire        clk_125_clk,                               //                        clk_125.clk
		input  wire        emif_hps_pll_ref_clk_clk,                  //           emif_hps_pll_ref_clk.clk
		input  wire        emif_hps_oct_oct_rzqin,                    //                   emif_hps_oct.oct_rzqin
		output wire [0:0]  emif_hps_mem_mem_ck,                       //                   emif_hps_mem.mem_ck
		output wire [0:0]  emif_hps_mem_mem_ck_n,                     //                               .mem_ck_n
		output wire [16:0] emif_hps_mem_mem_a,                        //                               .mem_a
		output wire [0:0]  emif_hps_mem_mem_act_n,                    //                               .mem_act_n
		output wire [1:0]  emif_hps_mem_mem_ba,                       //                               .mem_ba
		output wire [0:0]  emif_hps_mem_mem_bg,                       //                               .mem_bg
		output wire [0:0]  emif_hps_mem_mem_cke,                      //                               .mem_cke
		output wire [0:0]  emif_hps_mem_mem_cs_n,                     //                               .mem_cs_n
		output wire [0:0]  emif_hps_mem_mem_odt,                      //                               .mem_odt
		output wire [0:0]  emif_hps_mem_mem_reset_n,                  //                               .mem_reset_n
		output wire [0:0]  emif_hps_mem_mem_par,                      //                               .mem_par
		input  wire [0:0]  emif_hps_mem_mem_alert_n,                  //                               .mem_alert_n
		inout  wire [8:0]  emif_hps_mem_mem_dqs,                      //                               .mem_dqs
		inout  wire [8:0]  emif_hps_mem_mem_dqs_n,                    //                               .mem_dqs_n
		inout  wire [71:0] emif_hps_mem_mem_dq,                       //                               .mem_dq
		inout  wire [8:0]  emif_hps_mem_mem_dbi_n,                    //                               .mem_dbi_n
		input  wire        reset_reset_n,                             //                          reset.reset_n
		output wire        ninit_done_ninit_done,                     //                     ninit_done.ninit_done
		input  wire [3:0]  button_pio_external_connection_export,     // button_pio_external_connection.export
		input  wire [3:0]  dipsw_pio_external_connection_export,      //  dipsw_pio_external_connection.export
		input  wire [2:0]  led_pio_external_connection_in_port,       //    led_pio_external_connection.in_port
		output wire [2:0]  led_pio_external_connection_out_port,      //                               .out_port
		input  wire        emac1_mdio_gmii_mdi_i,                     //                     emac1_mdio.gmii_mdi_i
		output wire        emac1_mdio_gmii_mdo_o,                     //                               .gmii_mdo_o
		output wire        emac1_mdio_gmii_mdo_o_e,                   //                               .gmii_mdo_o_e
		input  wire        emac1_ptp_ptp_aux_ts_trig_i,               //                      emac1_ptp.ptp_aux_ts_trig_i
		output wire        emac1_ptp_ptp_pps_o,                       //                               .ptp_pps_o
		output wire        emac1_ptp_ptp_tstmp_data,                  //                               .ptp_tstmp_data
		output wire        emac1_ptp_ptp_tstmp_en,                    //                               .ptp_tstmp_en
		output wire        emac1_sgmii_status_set_10,                 //             emac1_sgmii_status.set_10
		output wire        emac1_sgmii_status_set_1000,               //                               .set_1000
		output wire        emac1_sgmii_status_set_100,                //                               .set_100
		output wire        emac1_sgmii_status_hd_ena,                 //                               .hd_ena
		output wire        emac1_status_led_crs,                      //               emac1_status_led.crs
		output wire        emac1_status_led_link,                     //                               .link
		output wire        emac1_status_led_panel_link,               //                               .panel_link
		output wire        emac1_status_led_col,                      //                               .col
		output wire        emac1_status_led_an,                       //                               .an
		output wire        emac1_status_led_char_err,                 //                               .char_err
		output wire        emac1_status_led_disp_err,                 //                               .disp_err
		output wire        emac1_serdes_control_export,               //           emac1_serdes_control.export
		output wire        emac1_lvds_tx_pll_locked_export,           //       emac1_lvds_tx_pll_locked.export
		input  wire        emac1_serial_rxp_0,                        //                   emac1_serial.rxp_0
		input  wire        emac1_serial_rxn_0,                        //                               .rxn_0
		output wire        emac1_serial_txp_0,                        //                               .txp_0
		output wire        emac1_serial_txn_0,                        //                               .txn_0
		input  wire [12:0] emac1_sgmii_debug_status_pio_export        //   emac1_sgmii_debug_status_pio.export
	);
endmodule

