module subsys_sgmii (
		input  wire        emac_gtx_clk_clk,                //           emac_gtx_clk.clk
		output wire        emac_tx_clk_in_clk,              //         emac_tx_clk_in.clk
		output wire        emac_rx_clk_in_clk,              //         emac_rx_clk_in.clk
		input  wire        emac_tx_reset_reset_n,           //          emac_tx_reset.reset_n
		input  wire        emac_rx_reset_reset_n,           //          emac_rx_reset.reset_n
		input  wire        mdio_gmii_mdi_i,                 //                   mdio.gmii_mdi_i
		output wire        mdio_gmii_mdo_o,                 //                       .gmii_mdo_o
		output wire        mdio_gmii_mdo_o_e,               //                       .gmii_mdo_o_e
		input  wire [7:0]  splitter_emac_phy_txd_o,         //          splitter_emac.phy_txd_o
		input  wire        splitter_emac_phy_txen_o,        //                       .phy_txen_o
		input  wire        splitter_emac_phy_txer_o,        //                       .phy_txer_o
		input  wire [1:0]  splitter_emac_phy_mac_speed_o,   //                       .phy_mac_speed_o
		input  wire        splitter_emac_gmii_mdo_o,        //                       .gmii_mdo_o
		input  wire        splitter_emac_gmii_mdo_o_e,      //                       .gmii_mdo_o_e
		input  wire        splitter_emac_ptp_pps_o,         //                       .ptp_pps_o
		output wire        splitter_emac_phy_rxdv_i,        //                       .phy_rxdv_i
		output wire        splitter_emac_phy_rxer_i,        //                       .phy_rxer_i
		output wire [7:0]  splitter_emac_phy_rxd_i,         //                       .phy_rxd_i
		output wire        splitter_emac_phy_col_i,         //                       .phy_col_i
		output wire        splitter_emac_phy_crs_i,         //                       .phy_crs_i
		output wire        splitter_emac_gmii_mdi_i,        //                       .gmii_mdi_i
		output wire        splitter_emac_ptp_aux_ts_trig_i, //                       .ptp_aux_ts_trig_i
		input  wire        splitter_emac_ptp_tstmp_data,    //                       .ptp_tstmp_data
		input  wire        splitter_emac_ptp_tstmp_en,      //                       .ptp_tstmp_en
		input  wire        ptp_ptp_aux_ts_trig_i,           //                    ptp.ptp_aux_ts_trig_i
		output wire        ptp_ptp_pps_o,                   //                       .ptp_pps_o
		output wire        ptp_ptp_tstmp_data,              //                       .ptp_tstmp_data
		output wire        ptp_ptp_tstmp_en,                //                       .ptp_tstmp_en
		output wire        sgmii_status_set_10,             //           sgmii_status.set_10
		output wire        sgmii_status_set_1000,           //                       .set_1000
		output wire        sgmii_status_set_100,            //                       .set_100
		output wire        sgmii_status_hd_ena,             //                       .hd_ena
		output wire        status_led_crs,                  //             status_led.crs
		output wire        status_led_link,                 //                       .link
		output wire        status_led_panel_link,           //                       .panel_link
		output wire        status_led_col,                  //                       .col
		output wire        status_led_an,                   //                       .an
		output wire        status_led_char_err,             //                       .char_err
		output wire        status_led_disp_err,             //                       .disp_err
		output wire        serdes_control_export,           //         serdes_control.export
		output wire        lvds_tx_pll_locked_export,       //     lvds_tx_pll_locked.export
		input  wire        serial_connection_rxp_0,         //      serial_connection.rxp_0
		input  wire        serial_connection_rxn_0,         //                       .rxn_0
		output wire        serial_connection_txp_0,         //                       .txp_0
		output wire        serial_connection_txn_0,         //                       .txn_0
		input  wire        clk_125_clk,                     //                clk_125.clk
		output wire        csr_waitrequest,                 //                    csr.waitrequest
		output wire [31:0] csr_readdata,                    //                       .readdata
		output wire        csr_readdatavalid,               //                       .readdatavalid
		input  wire [0:0]  csr_burstcount,                  //                       .burstcount
		input  wire [31:0] csr_writedata,                   //                       .writedata
		input  wire [6:0]  csr_address,                     //                       .address
		input  wire        csr_write,                       //                       .write
		input  wire        csr_read,                        //                       .read
		input  wire [3:0]  csr_byteenable,                  //                       .byteenable
		input  wire        csr_debugaccess,                 //                       .debugaccess
		input  wire        csr_clk_clk,                     //                csr_clk.clk
		input  wire [12:0] sgmii_debug_status_pio_export,   // sgmii_debug_status_pio.export
		input  wire        rst_in_reset_n                   //                 rst_in.reset_n
	);
endmodule

