	component subsys_sgmii is
		port (
			emac_gtx_clk_clk                : in  std_logic                     := 'X';             -- clk
			emac_tx_clk_in_clk              : out std_logic;                                        -- clk
			emac_rx_clk_in_clk              : out std_logic;                                        -- clk
			emac_tx_reset_reset_n           : in  std_logic                     := 'X';             -- reset_n
			emac_rx_reset_reset_n           : in  std_logic                     := 'X';             -- reset_n
			mdio_gmii_mdi_i                 : in  std_logic                     := 'X';             -- gmii_mdi_i
			mdio_gmii_mdo_o                 : out std_logic;                                        -- gmii_mdo_o
			mdio_gmii_mdo_o_e               : out std_logic;                                        -- gmii_mdo_o_e
			splitter_emac_phy_txd_o         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- phy_txd_o
			splitter_emac_phy_txen_o        : in  std_logic                     := 'X';             -- phy_txen_o
			splitter_emac_phy_txer_o        : in  std_logic                     := 'X';             -- phy_txer_o
			splitter_emac_phy_mac_speed_o   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- phy_mac_speed_o
			splitter_emac_gmii_mdo_o        : in  std_logic                     := 'X';             -- gmii_mdo_o
			splitter_emac_gmii_mdo_o_e      : in  std_logic                     := 'X';             -- gmii_mdo_o_e
			splitter_emac_ptp_pps_o         : in  std_logic                     := 'X';             -- ptp_pps_o
			splitter_emac_phy_rxdv_i        : out std_logic;                                        -- phy_rxdv_i
			splitter_emac_phy_rxer_i        : out std_logic;                                        -- phy_rxer_i
			splitter_emac_phy_rxd_i         : out std_logic_vector(7 downto 0);                     -- phy_rxd_i
			splitter_emac_phy_col_i         : out std_logic;                                        -- phy_col_i
			splitter_emac_phy_crs_i         : out std_logic;                                        -- phy_crs_i
			splitter_emac_gmii_mdi_i        : out std_logic;                                        -- gmii_mdi_i
			splitter_emac_ptp_aux_ts_trig_i : out std_logic;                                        -- ptp_aux_ts_trig_i
			splitter_emac_ptp_tstmp_data    : in  std_logic                     := 'X';             -- ptp_tstmp_data
			splitter_emac_ptp_tstmp_en      : in  std_logic                     := 'X';             -- ptp_tstmp_en
			ptp_ptp_aux_ts_trig_i           : in  std_logic                     := 'X';             -- ptp_aux_ts_trig_i
			ptp_ptp_pps_o                   : out std_logic;                                        -- ptp_pps_o
			ptp_ptp_tstmp_data              : out std_logic;                                        -- ptp_tstmp_data
			ptp_ptp_tstmp_en                : out std_logic;                                        -- ptp_tstmp_en
			sgmii_status_set_10             : out std_logic;                                        -- set_10
			sgmii_status_set_1000           : out std_logic;                                        -- set_1000
			sgmii_status_set_100            : out std_logic;                                        -- set_100
			sgmii_status_hd_ena             : out std_logic;                                        -- hd_ena
			status_led_crs                  : out std_logic;                                        -- crs
			status_led_link                 : out std_logic;                                        -- link
			status_led_panel_link           : out std_logic;                                        -- panel_link
			status_led_col                  : out std_logic;                                        -- col
			status_led_an                   : out std_logic;                                        -- an
			status_led_char_err             : out std_logic;                                        -- char_err
			status_led_disp_err             : out std_logic;                                        -- disp_err
			serdes_control_export           : out std_logic;                                        -- export
			lvds_tx_pll_locked_export       : out std_logic;                                        -- export
			serial_connection_rxp_0         : in  std_logic                     := 'X';             -- rxp_0
			serial_connection_rxn_0         : in  std_logic                     := 'X';             -- rxn_0
			serial_connection_txp_0         : out std_logic;                                        -- txp_0
			serial_connection_txn_0         : out std_logic;                                        -- txn_0
			clk_125_clk                     : in  std_logic                     := 'X';             -- clk
			csr_waitrequest                 : out std_logic;                                        -- waitrequest
			csr_readdata                    : out std_logic_vector(31 downto 0);                    -- readdata
			csr_readdatavalid               : out std_logic;                                        -- readdatavalid
			csr_burstcount                  : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- burstcount
			csr_writedata                   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			csr_address                     : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- address
			csr_write                       : in  std_logic                     := 'X';             -- write
			csr_read                        : in  std_logic                     := 'X';             -- read
			csr_byteenable                  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			csr_debugaccess                 : in  std_logic                     := 'X';             -- debugaccess
			csr_clk_clk                     : in  std_logic                     := 'X';             -- clk
			sgmii_debug_status_pio_export   : in  std_logic_vector(12 downto 0) := (others => 'X'); -- export
			rst_in_reset_n                  : in  std_logic                     := 'X'              -- reset_n
		);
	end component subsys_sgmii;

	u0 : component subsys_sgmii
		port map (
			emac_gtx_clk_clk                => CONNECTED_TO_emac_gtx_clk_clk,                --           emac_gtx_clk.clk
			emac_tx_clk_in_clk              => CONNECTED_TO_emac_tx_clk_in_clk,              --         emac_tx_clk_in.clk
			emac_rx_clk_in_clk              => CONNECTED_TO_emac_rx_clk_in_clk,              --         emac_rx_clk_in.clk
			emac_tx_reset_reset_n           => CONNECTED_TO_emac_tx_reset_reset_n,           --          emac_tx_reset.reset_n
			emac_rx_reset_reset_n           => CONNECTED_TO_emac_rx_reset_reset_n,           --          emac_rx_reset.reset_n
			mdio_gmii_mdi_i                 => CONNECTED_TO_mdio_gmii_mdi_i,                 --                   mdio.gmii_mdi_i
			mdio_gmii_mdo_o                 => CONNECTED_TO_mdio_gmii_mdo_o,                 --                       .gmii_mdo_o
			mdio_gmii_mdo_o_e               => CONNECTED_TO_mdio_gmii_mdo_o_e,               --                       .gmii_mdo_o_e
			splitter_emac_phy_txd_o         => CONNECTED_TO_splitter_emac_phy_txd_o,         --          splitter_emac.phy_txd_o
			splitter_emac_phy_txen_o        => CONNECTED_TO_splitter_emac_phy_txen_o,        --                       .phy_txen_o
			splitter_emac_phy_txer_o        => CONNECTED_TO_splitter_emac_phy_txer_o,        --                       .phy_txer_o
			splitter_emac_phy_mac_speed_o   => CONNECTED_TO_splitter_emac_phy_mac_speed_o,   --                       .phy_mac_speed_o
			splitter_emac_gmii_mdo_o        => CONNECTED_TO_splitter_emac_gmii_mdo_o,        --                       .gmii_mdo_o
			splitter_emac_gmii_mdo_o_e      => CONNECTED_TO_splitter_emac_gmii_mdo_o_e,      --                       .gmii_mdo_o_e
			splitter_emac_ptp_pps_o         => CONNECTED_TO_splitter_emac_ptp_pps_o,         --                       .ptp_pps_o
			splitter_emac_phy_rxdv_i        => CONNECTED_TO_splitter_emac_phy_rxdv_i,        --                       .phy_rxdv_i
			splitter_emac_phy_rxer_i        => CONNECTED_TO_splitter_emac_phy_rxer_i,        --                       .phy_rxer_i
			splitter_emac_phy_rxd_i         => CONNECTED_TO_splitter_emac_phy_rxd_i,         --                       .phy_rxd_i
			splitter_emac_phy_col_i         => CONNECTED_TO_splitter_emac_phy_col_i,         --                       .phy_col_i
			splitter_emac_phy_crs_i         => CONNECTED_TO_splitter_emac_phy_crs_i,         --                       .phy_crs_i
			splitter_emac_gmii_mdi_i        => CONNECTED_TO_splitter_emac_gmii_mdi_i,        --                       .gmii_mdi_i
			splitter_emac_ptp_aux_ts_trig_i => CONNECTED_TO_splitter_emac_ptp_aux_ts_trig_i, --                       .ptp_aux_ts_trig_i
			splitter_emac_ptp_tstmp_data    => CONNECTED_TO_splitter_emac_ptp_tstmp_data,    --                       .ptp_tstmp_data
			splitter_emac_ptp_tstmp_en      => CONNECTED_TO_splitter_emac_ptp_tstmp_en,      --                       .ptp_tstmp_en
			ptp_ptp_aux_ts_trig_i           => CONNECTED_TO_ptp_ptp_aux_ts_trig_i,           --                    ptp.ptp_aux_ts_trig_i
			ptp_ptp_pps_o                   => CONNECTED_TO_ptp_ptp_pps_o,                   --                       .ptp_pps_o
			ptp_ptp_tstmp_data              => CONNECTED_TO_ptp_ptp_tstmp_data,              --                       .ptp_tstmp_data
			ptp_ptp_tstmp_en                => CONNECTED_TO_ptp_ptp_tstmp_en,                --                       .ptp_tstmp_en
			sgmii_status_set_10             => CONNECTED_TO_sgmii_status_set_10,             --           sgmii_status.set_10
			sgmii_status_set_1000           => CONNECTED_TO_sgmii_status_set_1000,           --                       .set_1000
			sgmii_status_set_100            => CONNECTED_TO_sgmii_status_set_100,            --                       .set_100
			sgmii_status_hd_ena             => CONNECTED_TO_sgmii_status_hd_ena,             --                       .hd_ena
			status_led_crs                  => CONNECTED_TO_status_led_crs,                  --             status_led.crs
			status_led_link                 => CONNECTED_TO_status_led_link,                 --                       .link
			status_led_panel_link           => CONNECTED_TO_status_led_panel_link,           --                       .panel_link
			status_led_col                  => CONNECTED_TO_status_led_col,                  --                       .col
			status_led_an                   => CONNECTED_TO_status_led_an,                   --                       .an
			status_led_char_err             => CONNECTED_TO_status_led_char_err,             --                       .char_err
			status_led_disp_err             => CONNECTED_TO_status_led_disp_err,             --                       .disp_err
			serdes_control_export           => CONNECTED_TO_serdes_control_export,           --         serdes_control.export
			lvds_tx_pll_locked_export       => CONNECTED_TO_lvds_tx_pll_locked_export,       --     lvds_tx_pll_locked.export
			serial_connection_rxp_0         => CONNECTED_TO_serial_connection_rxp_0,         --      serial_connection.rxp_0
			serial_connection_rxn_0         => CONNECTED_TO_serial_connection_rxn_0,         --                       .rxn_0
			serial_connection_txp_0         => CONNECTED_TO_serial_connection_txp_0,         --                       .txp_0
			serial_connection_txn_0         => CONNECTED_TO_serial_connection_txn_0,         --                       .txn_0
			clk_125_clk                     => CONNECTED_TO_clk_125_clk,                     --                clk_125.clk
			csr_waitrequest                 => CONNECTED_TO_csr_waitrequest,                 --                    csr.waitrequest
			csr_readdata                    => CONNECTED_TO_csr_readdata,                    --                       .readdata
			csr_readdatavalid               => CONNECTED_TO_csr_readdatavalid,               --                       .readdatavalid
			csr_burstcount                  => CONNECTED_TO_csr_burstcount,                  --                       .burstcount
			csr_writedata                   => CONNECTED_TO_csr_writedata,                   --                       .writedata
			csr_address                     => CONNECTED_TO_csr_address,                     --                       .address
			csr_write                       => CONNECTED_TO_csr_write,                       --                       .write
			csr_read                        => CONNECTED_TO_csr_read,                        --                       .read
			csr_byteenable                  => CONNECTED_TO_csr_byteenable,                  --                       .byteenable
			csr_debugaccess                 => CONNECTED_TO_csr_debugaccess,                 --                       .debugaccess
			csr_clk_clk                     => CONNECTED_TO_csr_clk_clk,                     --                csr_clk.clk
			sgmii_debug_status_pio_export   => CONNECTED_TO_sgmii_debug_status_pio_export,   -- sgmii_debug_status_pio.export
			rst_in_reset_n                  => CONNECTED_TO_rst_in_reset_n                   --                 rst_in.reset_n
		);

