module emac_splitter_0 (
		input  wire       phy_txclk_o,        //   emac_gtx_clk.clk
		output wire       clk_tx_i,           // emac_tx_clk_in.clk
		output wire       clk_rx_i,           // emac_rx_clk_in.clk
		input  wire       rst_tx_n_o,         //  emac_tx_reset.reset_n
		input  wire       rst_rx_n_o,         //  emac_rx_reset.reset_n
		input  wire       mac_tx_clk_i,       //       hps_gmii.phy_tx_clk_i
		input  wire       mac_rx_clk,         //               .phy_rx_clk_i
		input  wire       mac_rxdv,           //               .phy_rxdv_i
		input  wire       mac_rxer,           //               .phy_rxer_i
		input  wire [7:0] mac_rxd,            //               .phy_rxd_i
		input  wire       mac_col,            //               .phy_col_i
		input  wire       mac_crs,            //               .phy_crs_i
		output wire       mac_tx_clk_o,       //               .phy_tx_clk_o
		output wire       mac_rst_tx_n,       //               .rst_tx_n
		output wire       mac_rst_rx_n,       //               .rst_rx_n
		output wire [7:0] mac_txd,            //               .phy_txd_o
		output wire       mac_txen,           //               .phy_txen_o
		output wire       mac_txer,           //               .phy_txer_o
		output wire [1:0] mac_speed,          //               .phy_mac_speed_o
		input  wire       mdi_in,             //           mdio.gmii_mdi_i
		output wire       mdo_out,            //               .gmii_mdo_o
		output wire       mdo_out_en,         //               .gmii_mdo_o_e
		input  wire [7:0] phy_txd_o,          //           emac.phy_txd_o
		input  wire       phy_txen_o,         //               .phy_txen_o
		input  wire       phy_txer_o,         //               .phy_txer_o
		input  wire [1:0] phy_mac_speed_o,    //               .phy_mac_speed_o
		input  wire       mdo_o,              //               .gmii_mdo_o
		input  wire       mdo_o_e,            //               .gmii_mdo_o_e
		input  wire       ptp_pps_o,          //               .ptp_pps_o
		output wire       phy_rxdv_i,         //               .phy_rxdv_i
		output wire       phy_rxer_i,         //               .phy_rxer_i
		output wire [7:0] phy_rxd_i,          //               .phy_rxd_i
		output wire       phy_col_i,          //               .phy_col_i
		output wire       phy_crs_i,          //               .phy_crs_i
		output wire       mdi_i,              //               .gmii_mdi_i
		output wire       ptp_aux_ts_trig_i,  //               .ptp_aux_ts_trig_i
		input  wire       ptp_tstmp_data,     //               .ptp_tstmp_data
		input  wire       ptp_tstmp_en,       //               .ptp_tstmp_en
		input  wire       ptp_aux_ts_trig_in, //            ptp.ptp_aux_ts_trig_i
		output wire       ptp_pps_out,        //               .ptp_pps_o
		output wire       ptp_tstmp_data_out, //               .ptp_tstmp_data
		output wire       ptp_tstmp_en_out    //               .ptp_tstmp_en
	);
endmodule

