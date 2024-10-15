	emac_splitter_0 u0 (
		.phy_txclk_o        (_connected_to_phy_txclk_o_),        //   input,  width = 1,   emac_gtx_clk.clk
		.clk_tx_i           (_connected_to_clk_tx_i_),           //  output,  width = 1, emac_tx_clk_in.clk
		.clk_rx_i           (_connected_to_clk_rx_i_),           //  output,  width = 1, emac_rx_clk_in.clk
		.rst_tx_n_o         (_connected_to_rst_tx_n_o_),         //   input,  width = 1,  emac_tx_reset.reset_n
		.rst_rx_n_o         (_connected_to_rst_rx_n_o_),         //   input,  width = 1,  emac_rx_reset.reset_n
		.mac_tx_clk_i       (_connected_to_mac_tx_clk_i_),       //   input,  width = 1,       hps_gmii.phy_tx_clk_i
		.mac_rx_clk         (_connected_to_mac_rx_clk_),         //   input,  width = 1,               .phy_rx_clk_i
		.mac_rxdv           (_connected_to_mac_rxdv_),           //   input,  width = 1,               .phy_rxdv_i
		.mac_rxer           (_connected_to_mac_rxer_),           //   input,  width = 1,               .phy_rxer_i
		.mac_rxd            (_connected_to_mac_rxd_),            //   input,  width = 8,               .phy_rxd_i
		.mac_col            (_connected_to_mac_col_),            //   input,  width = 1,               .phy_col_i
		.mac_crs            (_connected_to_mac_crs_),            //   input,  width = 1,               .phy_crs_i
		.mac_tx_clk_o       (_connected_to_mac_tx_clk_o_),       //  output,  width = 1,               .phy_tx_clk_o
		.mac_rst_tx_n       (_connected_to_mac_rst_tx_n_),       //  output,  width = 1,               .rst_tx_n
		.mac_rst_rx_n       (_connected_to_mac_rst_rx_n_),       //  output,  width = 1,               .rst_rx_n
		.mac_txd            (_connected_to_mac_txd_),            //  output,  width = 8,               .phy_txd_o
		.mac_txen           (_connected_to_mac_txen_),           //  output,  width = 1,               .phy_txen_o
		.mac_txer           (_connected_to_mac_txer_),           //  output,  width = 1,               .phy_txer_o
		.mac_speed          (_connected_to_mac_speed_),          //  output,  width = 2,               .phy_mac_speed_o
		.mdi_in             (_connected_to_mdi_in_),             //   input,  width = 1,           mdio.gmii_mdi_i
		.mdo_out            (_connected_to_mdo_out_),            //  output,  width = 1,               .gmii_mdo_o
		.mdo_out_en         (_connected_to_mdo_out_en_),         //  output,  width = 1,               .gmii_mdo_o_e
		.phy_txd_o          (_connected_to_phy_txd_o_),          //   input,  width = 8,           emac.phy_txd_o
		.phy_txen_o         (_connected_to_phy_txen_o_),         //   input,  width = 1,               .phy_txen_o
		.phy_txer_o         (_connected_to_phy_txer_o_),         //   input,  width = 1,               .phy_txer_o
		.phy_mac_speed_o    (_connected_to_phy_mac_speed_o_),    //   input,  width = 2,               .phy_mac_speed_o
		.mdo_o              (_connected_to_mdo_o_),              //   input,  width = 1,               .gmii_mdo_o
		.mdo_o_e            (_connected_to_mdo_o_e_),            //   input,  width = 1,               .gmii_mdo_o_e
		.ptp_pps_o          (_connected_to_ptp_pps_o_),          //   input,  width = 1,               .ptp_pps_o
		.phy_rxdv_i         (_connected_to_phy_rxdv_i_),         //  output,  width = 1,               .phy_rxdv_i
		.phy_rxer_i         (_connected_to_phy_rxer_i_),         //  output,  width = 1,               .phy_rxer_i
		.phy_rxd_i          (_connected_to_phy_rxd_i_),          //  output,  width = 8,               .phy_rxd_i
		.phy_col_i          (_connected_to_phy_col_i_),          //  output,  width = 1,               .phy_col_i
		.phy_crs_i          (_connected_to_phy_crs_i_),          //  output,  width = 1,               .phy_crs_i
		.mdi_i              (_connected_to_mdi_i_),              //  output,  width = 1,               .gmii_mdi_i
		.ptp_aux_ts_trig_i  (_connected_to_ptp_aux_ts_trig_i_),  //  output,  width = 1,               .ptp_aux_ts_trig_i
		.ptp_tstmp_data     (_connected_to_ptp_tstmp_data_),     //   input,  width = 1,               .ptp_tstmp_data
		.ptp_tstmp_en       (_connected_to_ptp_tstmp_en_),       //   input,  width = 1,               .ptp_tstmp_en
		.ptp_aux_ts_trig_in (_connected_to_ptp_aux_ts_trig_in_), //   input,  width = 1,            ptp.ptp_aux_ts_trig_i
		.ptp_pps_out        (_connected_to_ptp_pps_out_),        //  output,  width = 1,               .ptp_pps_o
		.ptp_tstmp_data_out (_connected_to_ptp_tstmp_data_out_), //  output,  width = 1,               .ptp_tstmp_data
		.ptp_tstmp_en_out   (_connected_to_ptp_tstmp_en_out_)    //  output,  width = 1,               .ptp_tstmp_en
	);

