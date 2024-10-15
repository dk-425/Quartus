	component gmii_sgmii_adapter_0 is
		port (
			clk             : in  std_logic                     := 'X';             -- clk
			rst_n           : in  std_logic                     := 'X';             -- reset_n
			addr            : in  std_logic                     := 'X';             -- address
			read            : in  std_logic                     := 'X';             -- read
			write           : in  std_logic                     := 'X';             -- write
			writedata       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			readdata        : out std_logic_vector(31 downto 0);                    -- readdata
			mac_tx_clk_o    : in  std_logic                     := 'X';             -- phy_tx_clk_o
			mac_rst_tx_n    : in  std_logic                     := 'X';             -- rst_tx_n
			mac_rst_rx_n    : in  std_logic                     := 'X';             -- rst_rx_n
			mac_txd         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- phy_txd_o
			mac_txen        : in  std_logic                     := 'X';             -- phy_txen_o
			mac_txer        : in  std_logic                     := 'X';             -- phy_txer_o
			mac_speed       : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- phy_mac_speed_o
			mac_tx_clk_i    : out std_logic;                                        -- phy_tx_clk_i
			mac_rx_clk      : out std_logic;                                        -- phy_rx_clk_i
			mac_rxdv        : out std_logic;                                        -- phy_rxdv_i
			mac_rxer        : out std_logic;                                        -- phy_rxer_i
			mac_rxd         : out std_logic_vector(7 downto 0);                     -- phy_rxd_i
			mac_col         : out std_logic;                                        -- phy_col_i
			mac_crs         : out std_logic;                                        -- phy_crs_i
			pcs_rst_tx      : out std_logic;                                        -- reset
			pcs_rst_rx      : out std_logic;                                        -- reset
			pcs_tx_clk      : in  std_logic                     := 'X';             -- clk
			pcs_rx_clk      : in  std_logic                     := 'X';             -- clk
			pcs_txclk_ena   : in  std_logic                     := 'X';             -- tx_clkena
			pcs_rxclk_ena   : in  std_logic                     := 'X';             -- rx_clkena
			pcs_gmii_rx_dv  : in  std_logic                     := 'X';             -- gmii_rx_dv
			pcs_gmii_rx_d   : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- gmii_rx_d
			pcs_gmii_rx_err : in  std_logic                     := 'X';             -- gmii_rx_err
			pcs_gmii_tx_en  : out std_logic;                                        -- gmii_tx_en
			pcs_gmii_tx_d   : out std_logic_vector(7 downto 0);                     -- gmii_tx_d
			pcs_gmii_tx_err : out std_logic;                                        -- gmii_tx_err
			pcs_mii_rx_dv   : in  std_logic                     := 'X';             -- mii_rx_dv
			pcs_mii_rx_d    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- mii_rx_d
			pcs_mii_rx_err  : in  std_logic                     := 'X';             -- mii_rx_err
			pcs_mii_col     : in  std_logic                     := 'X';             -- mii_col
			pcs_mii_crs     : in  std_logic                     := 'X';             -- mii_crs
			pcs_mii_tx_en   : out std_logic;                                        -- mii_tx_en
			pcs_mii_tx_d    : out std_logic_vector(3 downto 0);                     -- mii_tx_d
			pcs_mii_tx_err  : out std_logic                                         -- mii_tx_err
		);
	end component gmii_sgmii_adapter_0;

	u0 : component gmii_sgmii_adapter_0
		port map (
			clk             => CONNECTED_TO_clk,             --         peri_clock.clk
			rst_n           => CONNECTED_TO_rst_n,           --         peri_reset.reset_n
			addr            => CONNECTED_TO_addr,            --       avalon_slave.address
			read            => CONNECTED_TO_read,            --                   .read
			write           => CONNECTED_TO_write,           --                   .write
			writedata       => CONNECTED_TO_writedata,       --                   .writedata
			readdata        => CONNECTED_TO_readdata,        --                   .readdata
			mac_tx_clk_o    => CONNECTED_TO_mac_tx_clk_o,    --           hps_gmii.phy_tx_clk_o
			mac_rst_tx_n    => CONNECTED_TO_mac_rst_tx_n,    --                   .rst_tx_n
			mac_rst_rx_n    => CONNECTED_TO_mac_rst_rx_n,    --                   .rst_rx_n
			mac_txd         => CONNECTED_TO_mac_txd,         --                   .phy_txd_o
			mac_txen        => CONNECTED_TO_mac_txen,        --                   .phy_txen_o
			mac_txer        => CONNECTED_TO_mac_txer,        --                   .phy_txer_o
			mac_speed       => CONNECTED_TO_mac_speed,       --                   .phy_mac_speed_o
			mac_tx_clk_i    => CONNECTED_TO_mac_tx_clk_i,    --                   .phy_tx_clk_i
			mac_rx_clk      => CONNECTED_TO_mac_rx_clk,      --                   .phy_rx_clk_i
			mac_rxdv        => CONNECTED_TO_mac_rxdv,        --                   .phy_rxdv_i
			mac_rxer        => CONNECTED_TO_mac_rxer,        --                   .phy_rxer_i
			mac_rxd         => CONNECTED_TO_mac_rxd,         --                   .phy_rxd_i
			mac_col         => CONNECTED_TO_mac_col,         --                   .phy_col_i
			mac_crs         => CONNECTED_TO_mac_crs,         --                   .phy_crs_i
			pcs_rst_tx      => CONNECTED_TO_pcs_rst_tx,      -- pcs_transmit_reset.reset
			pcs_rst_rx      => CONNECTED_TO_pcs_rst_rx,      --  pcs_receive_reset.reset
			pcs_tx_clk      => CONNECTED_TO_pcs_tx_clk,      -- pcs_transmit_clock.clk
			pcs_rx_clk      => CONNECTED_TO_pcs_rx_clk,      --  pcs_receive_clock.clk
			pcs_txclk_ena   => CONNECTED_TO_pcs_txclk_ena,   --   pcs_clock_enable.tx_clkena
			pcs_rxclk_ena   => CONNECTED_TO_pcs_rxclk_ena,   --                   .rx_clkena
			pcs_gmii_rx_dv  => CONNECTED_TO_pcs_gmii_rx_dv,  --           pcs_gmii.gmii_rx_dv
			pcs_gmii_rx_d   => CONNECTED_TO_pcs_gmii_rx_d,   --                   .gmii_rx_d
			pcs_gmii_rx_err => CONNECTED_TO_pcs_gmii_rx_err, --                   .gmii_rx_err
			pcs_gmii_tx_en  => CONNECTED_TO_pcs_gmii_tx_en,  --                   .gmii_tx_en
			pcs_gmii_tx_d   => CONNECTED_TO_pcs_gmii_tx_d,   --                   .gmii_tx_d
			pcs_gmii_tx_err => CONNECTED_TO_pcs_gmii_tx_err, --                   .gmii_tx_err
			pcs_mii_rx_dv   => CONNECTED_TO_pcs_mii_rx_dv,   --            pcs_mii.mii_rx_dv
			pcs_mii_rx_d    => CONNECTED_TO_pcs_mii_rx_d,    --                   .mii_rx_d
			pcs_mii_rx_err  => CONNECTED_TO_pcs_mii_rx_err,  --                   .mii_rx_err
			pcs_mii_col     => CONNECTED_TO_pcs_mii_col,     --                   .mii_col
			pcs_mii_crs     => CONNECTED_TO_pcs_mii_crs,     --                   .mii_crs
			pcs_mii_tx_en   => CONNECTED_TO_pcs_mii_tx_en,   --                   .mii_tx_en
			pcs_mii_tx_d    => CONNECTED_TO_pcs_mii_tx_d,    --                   .mii_tx_d
			pcs_mii_tx_err  => CONNECTED_TO_pcs_mii_tx_err   --                   .mii_tx_err
		);

