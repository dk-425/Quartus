module eth_tse_0 (
		input  wire        ref_clk,            //  pcs_ref_clk_clock_connection.clk
		input  wire        clk,                // control_port_clock_connection.clk
		input  wire        reset,              //              reset_connection.reset
		input  wire [4:0]  reg_addr,           //                  control_port.address
		output wire [15:0] reg_data_out,       //                              .readdata
		input  wire        reg_rd,             //                              .read
		input  wire [15:0] reg_data_in,        //                              .writedata
		input  wire        reg_wr,             //                              .write
		output wire        reg_busy,           //                              .waitrequest
		output wire        tx_clkena,          //       clock_enable_connection.tx_clkena
		output wire        rx_clkena,          //                              .rx_clkena
		output wire        gmii_rx_dv,         //               gmii_connection.gmii_rx_dv
		output wire [7:0]  gmii_rx_d,          //                              .gmii_rx_d
		output wire        gmii_rx_err,        //                              .gmii_rx_err
		input  wire        gmii_tx_en,         //                              .gmii_tx_en
		input  wire [7:0]  gmii_tx_d,          //                              .gmii_tx_d
		input  wire        gmii_tx_err,        //                              .gmii_tx_err
		output wire        mii_rx_dv,          //                mii_connection.mii_rx_dv
		output wire [3:0]  mii_rx_d,           //                              .mii_rx_d
		output wire        mii_rx_err,         //                              .mii_rx_err
		input  wire        mii_tx_en,          //                              .mii_tx_en
		input  wire [3:0]  mii_tx_d,           //                              .mii_tx_d
		input  wire        mii_tx_err,         //                              .mii_tx_err
		output wire        mii_col,            //                              .mii_col
		output wire        mii_crs,            //                              .mii_crs
		output wire        set_10,             //       sgmii_status_connection.set_10
		output wire        set_1000,           //                              .set_1000
		output wire        set_100,            //                              .set_100
		output wire        hd_ena,             //                              .hd_ena
		output wire        tx_clk,             // pcs_transmit_clock_connection.clk
		output wire        rx_clk,             //  pcs_receive_clock_connection.clk
		input  wire        reset_tx_clk,       // pcs_transmit_reset_connection.reset
		input  wire        reset_rx_clk,       //  pcs_receive_reset_connection.reset
		output wire        led_crs,            //         status_led_connection.crs
		output wire        led_link,           //                              .link
		output wire        led_panel_link,     //                              .panel_link
		output wire        led_col,            //                              .col
		output wire        led_an,             //                              .an
		output wire        led_char_err,       //                              .char_err
		output wire        led_disp_err,       //                              .disp_err
		output wire        rx_recovclkout,     //     serdes_control_connection.export
		output wire        lvds_tx_pll_locked, //            lvds_tx_pll_locked.export
		input  wire        rxp,                //             serial_connection.rxp_0
		input  wire        rxn,                //                              .rxn_0
		output wire        txp,                //                              .txp_0
		output wire        txn                 //                              .txn_0
	);
endmodule

