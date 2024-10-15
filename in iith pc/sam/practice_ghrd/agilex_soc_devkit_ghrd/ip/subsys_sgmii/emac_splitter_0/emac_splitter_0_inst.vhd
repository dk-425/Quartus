	component emac_splitter_0 is
		port (
			phy_txclk_o        : in  std_logic                    := 'X';             -- clk
			clk_tx_i           : out std_logic;                                       -- clk
			clk_rx_i           : out std_logic;                                       -- clk
			rst_tx_n_o         : in  std_logic                    := 'X';             -- reset_n
			rst_rx_n_o         : in  std_logic                    := 'X';             -- reset_n
			mac_tx_clk_i       : in  std_logic                    := 'X';             -- phy_tx_clk_i
			mac_rx_clk         : in  std_logic                    := 'X';             -- phy_rx_clk_i
			mac_rxdv           : in  std_logic                    := 'X';             -- phy_rxdv_i
			mac_rxer           : in  std_logic                    := 'X';             -- phy_rxer_i
			mac_rxd            : in  std_logic_vector(7 downto 0) := (others => 'X'); -- phy_rxd_i
			mac_col            : in  std_logic                    := 'X';             -- phy_col_i
			mac_crs            : in  std_logic                    := 'X';             -- phy_crs_i
			mac_tx_clk_o       : out std_logic;                                       -- phy_tx_clk_o
			mac_rst_tx_n       : out std_logic;                                       -- rst_tx_n
			mac_rst_rx_n       : out std_logic;                                       -- rst_rx_n
			mac_txd            : out std_logic_vector(7 downto 0);                    -- phy_txd_o
			mac_txen           : out std_logic;                                       -- phy_txen_o
			mac_txer           : out std_logic;                                       -- phy_txer_o
			mac_speed          : out std_logic_vector(1 downto 0);                    -- phy_mac_speed_o
			mdi_in             : in  std_logic                    := 'X';             -- gmii_mdi_i
			mdo_out            : out std_logic;                                       -- gmii_mdo_o
			mdo_out_en         : out std_logic;                                       -- gmii_mdo_o_e
			phy_txd_o          : in  std_logic_vector(7 downto 0) := (others => 'X'); -- phy_txd_o
			phy_txen_o         : in  std_logic                    := 'X';             -- phy_txen_o
			phy_txer_o         : in  std_logic                    := 'X';             -- phy_txer_o
			phy_mac_speed_o    : in  std_logic_vector(1 downto 0) := (others => 'X'); -- phy_mac_speed_o
			mdo_o              : in  std_logic                    := 'X';             -- gmii_mdo_o
			mdo_o_e            : in  std_logic                    := 'X';             -- gmii_mdo_o_e
			ptp_pps_o          : in  std_logic                    := 'X';             -- ptp_pps_o
			phy_rxdv_i         : out std_logic;                                       -- phy_rxdv_i
			phy_rxer_i         : out std_logic;                                       -- phy_rxer_i
			phy_rxd_i          : out std_logic_vector(7 downto 0);                    -- phy_rxd_i
			phy_col_i          : out std_logic;                                       -- phy_col_i
			phy_crs_i          : out std_logic;                                       -- phy_crs_i
			mdi_i              : out std_logic;                                       -- gmii_mdi_i
			ptp_aux_ts_trig_i  : out std_logic;                                       -- ptp_aux_ts_trig_i
			ptp_tstmp_data     : in  std_logic                    := 'X';             -- ptp_tstmp_data
			ptp_tstmp_en       : in  std_logic                    := 'X';             -- ptp_tstmp_en
			ptp_aux_ts_trig_in : in  std_logic                    := 'X';             -- ptp_aux_ts_trig_i
			ptp_pps_out        : out std_logic;                                       -- ptp_pps_o
			ptp_tstmp_data_out : out std_logic;                                       -- ptp_tstmp_data
			ptp_tstmp_en_out   : out std_logic                                        -- ptp_tstmp_en
		);
	end component emac_splitter_0;

	u0 : component emac_splitter_0
		port map (
			phy_txclk_o        => CONNECTED_TO_phy_txclk_o,        --   emac_gtx_clk.clk
			clk_tx_i           => CONNECTED_TO_clk_tx_i,           -- emac_tx_clk_in.clk
			clk_rx_i           => CONNECTED_TO_clk_rx_i,           -- emac_rx_clk_in.clk
			rst_tx_n_o         => CONNECTED_TO_rst_tx_n_o,         --  emac_tx_reset.reset_n
			rst_rx_n_o         => CONNECTED_TO_rst_rx_n_o,         --  emac_rx_reset.reset_n
			mac_tx_clk_i       => CONNECTED_TO_mac_tx_clk_i,       --       hps_gmii.phy_tx_clk_i
			mac_rx_clk         => CONNECTED_TO_mac_rx_clk,         --               .phy_rx_clk_i
			mac_rxdv           => CONNECTED_TO_mac_rxdv,           --               .phy_rxdv_i
			mac_rxer           => CONNECTED_TO_mac_rxer,           --               .phy_rxer_i
			mac_rxd            => CONNECTED_TO_mac_rxd,            --               .phy_rxd_i
			mac_col            => CONNECTED_TO_mac_col,            --               .phy_col_i
			mac_crs            => CONNECTED_TO_mac_crs,            --               .phy_crs_i
			mac_tx_clk_o       => CONNECTED_TO_mac_tx_clk_o,       --               .phy_tx_clk_o
			mac_rst_tx_n       => CONNECTED_TO_mac_rst_tx_n,       --               .rst_tx_n
			mac_rst_rx_n       => CONNECTED_TO_mac_rst_rx_n,       --               .rst_rx_n
			mac_txd            => CONNECTED_TO_mac_txd,            --               .phy_txd_o
			mac_txen           => CONNECTED_TO_mac_txen,           --               .phy_txen_o
			mac_txer           => CONNECTED_TO_mac_txer,           --               .phy_txer_o
			mac_speed          => CONNECTED_TO_mac_speed,          --               .phy_mac_speed_o
			mdi_in             => CONNECTED_TO_mdi_in,             --           mdio.gmii_mdi_i
			mdo_out            => CONNECTED_TO_mdo_out,            --               .gmii_mdo_o
			mdo_out_en         => CONNECTED_TO_mdo_out_en,         --               .gmii_mdo_o_e
			phy_txd_o          => CONNECTED_TO_phy_txd_o,          --           emac.phy_txd_o
			phy_txen_o         => CONNECTED_TO_phy_txen_o,         --               .phy_txen_o
			phy_txer_o         => CONNECTED_TO_phy_txer_o,         --               .phy_txer_o
			phy_mac_speed_o    => CONNECTED_TO_phy_mac_speed_o,    --               .phy_mac_speed_o
			mdo_o              => CONNECTED_TO_mdo_o,              --               .gmii_mdo_o
			mdo_o_e            => CONNECTED_TO_mdo_o_e,            --               .gmii_mdo_o_e
			ptp_pps_o          => CONNECTED_TO_ptp_pps_o,          --               .ptp_pps_o
			phy_rxdv_i         => CONNECTED_TO_phy_rxdv_i,         --               .phy_rxdv_i
			phy_rxer_i         => CONNECTED_TO_phy_rxer_i,         --               .phy_rxer_i
			phy_rxd_i          => CONNECTED_TO_phy_rxd_i,          --               .phy_rxd_i
			phy_col_i          => CONNECTED_TO_phy_col_i,          --               .phy_col_i
			phy_crs_i          => CONNECTED_TO_phy_crs_i,          --               .phy_crs_i
			mdi_i              => CONNECTED_TO_mdi_i,              --               .gmii_mdi_i
			ptp_aux_ts_trig_i  => CONNECTED_TO_ptp_aux_ts_trig_i,  --               .ptp_aux_ts_trig_i
			ptp_tstmp_data     => CONNECTED_TO_ptp_tstmp_data,     --               .ptp_tstmp_data
			ptp_tstmp_en       => CONNECTED_TO_ptp_tstmp_en,       --               .ptp_tstmp_en
			ptp_aux_ts_trig_in => CONNECTED_TO_ptp_aux_ts_trig_in, --            ptp.ptp_aux_ts_trig_i
			ptp_pps_out        => CONNECTED_TO_ptp_pps_out,        --               .ptp_pps_o
			ptp_tstmp_data_out => CONNECTED_TO_ptp_tstmp_data_out, --               .ptp_tstmp_data
			ptp_tstmp_en_out   => CONNECTED_TO_ptp_tstmp_en_out    --               .ptp_tstmp_en
		);

