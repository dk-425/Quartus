module gmii_sgmii_adapter_0 (
		input  wire        clk,             //         peri_clock.clk
		input  wire        rst_n,           //         peri_reset.reset_n
		input  wire        addr,            //       avalon_slave.address
		input  wire        read,            //                   .read
		input  wire        write,           //                   .write
		input  wire [31:0] writedata,       //                   .writedata
		output wire [31:0] readdata,        //                   .readdata
		input  wire        mac_tx_clk_o,    //           hps_gmii.phy_tx_clk_o
		input  wire        mac_rst_tx_n,    //                   .rst_tx_n
		input  wire        mac_rst_rx_n,    //                   .rst_rx_n
		input  wire [7:0]  mac_txd,         //                   .phy_txd_o
		input  wire        mac_txen,        //                   .phy_txen_o
		input  wire        mac_txer,        //                   .phy_txer_o
		input  wire [1:0]  mac_speed,       //                   .phy_mac_speed_o
		output wire        mac_tx_clk_i,    //                   .phy_tx_clk_i
		output wire        mac_rx_clk,      //                   .phy_rx_clk_i
		output wire        mac_rxdv,        //                   .phy_rxdv_i
		output wire        mac_rxer,        //                   .phy_rxer_i
		output wire [7:0]  mac_rxd,         //                   .phy_rxd_i
		output wire        mac_col,         //                   .phy_col_i
		output wire        mac_crs,         //                   .phy_crs_i
		output wire        pcs_rst_tx,      // pcs_transmit_reset.reset
		output wire        pcs_rst_rx,      //  pcs_receive_reset.reset
		input  wire        pcs_tx_clk,      // pcs_transmit_clock.clk
		input  wire        pcs_rx_clk,      //  pcs_receive_clock.clk
		input  wire        pcs_txclk_ena,   //   pcs_clock_enable.tx_clkena
		input  wire        pcs_rxclk_ena,   //                   .rx_clkena
		input  wire        pcs_gmii_rx_dv,  //           pcs_gmii.gmii_rx_dv
		input  wire [7:0]  pcs_gmii_rx_d,   //                   .gmii_rx_d
		input  wire        pcs_gmii_rx_err, //                   .gmii_rx_err
		output wire        pcs_gmii_tx_en,  //                   .gmii_tx_en
		output wire [7:0]  pcs_gmii_tx_d,   //                   .gmii_tx_d
		output wire        pcs_gmii_tx_err, //                   .gmii_tx_err
		input  wire        pcs_mii_rx_dv,   //            pcs_mii.mii_rx_dv
		input  wire [3:0]  pcs_mii_rx_d,    //                   .mii_rx_d
		input  wire        pcs_mii_rx_err,  //                   .mii_rx_err
		input  wire        pcs_mii_col,     //                   .mii_col
		input  wire        pcs_mii_crs,     //                   .mii_crs
		output wire        pcs_mii_tx_en,   //                   .mii_tx_en
		output wire [3:0]  pcs_mii_tx_d,    //                   .mii_tx_d
		output wire        pcs_mii_tx_err   //                   .mii_tx_err
	);
endmodule

