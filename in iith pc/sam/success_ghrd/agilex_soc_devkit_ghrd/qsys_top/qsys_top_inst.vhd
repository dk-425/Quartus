	component qsys_top is
		port (
			wd_reset_reset_n                          : out   std_logic;                                        -- reset_n
			agilex_hps_f2h_stm_hw_events_stm_hwevents : in    std_logic_vector(43 downto 0) := (others => 'X'); -- stm_hwevents
			agilex_hps_h2f_cs_ntrst                   : in    std_logic                     := 'X';             -- ntrst
			agilex_hps_h2f_cs_tck                     : in    std_logic                     := 'X';             -- tck
			agilex_hps_h2f_cs_tdi                     : in    std_logic                     := 'X';             -- tdi
			agilex_hps_h2f_cs_tdo                     : out   std_logic;                                        -- tdo
			agilex_hps_h2f_cs_tdoen                   : out   std_logic;                                        -- tdoen
			agilex_hps_h2f_cs_tms                     : in    std_logic                     := 'X';             -- tms
			emac1_mdc_clk                             : out   std_logic;                                        -- clk
			hps_io_EMAC0_TX_CLK                       : out   std_logic;                                        -- EMAC0_TX_CLK
			hps_io_EMAC0_TXD0                         : out   std_logic;                                        -- EMAC0_TXD0
			hps_io_EMAC0_TXD1                         : out   std_logic;                                        -- EMAC0_TXD1
			hps_io_EMAC0_TXD2                         : out   std_logic;                                        -- EMAC0_TXD2
			hps_io_EMAC0_TXD3                         : out   std_logic;                                        -- EMAC0_TXD3
			hps_io_EMAC0_RX_CTL                       : in    std_logic                     := 'X';             -- EMAC0_RX_CTL
			hps_io_EMAC0_TX_CTL                       : out   std_logic;                                        -- EMAC0_TX_CTL
			hps_io_EMAC0_RX_CLK                       : in    std_logic                     := 'X';             -- EMAC0_RX_CLK
			hps_io_EMAC0_RXD0                         : in    std_logic                     := 'X';             -- EMAC0_RXD0
			hps_io_EMAC0_RXD1                         : in    std_logic                     := 'X';             -- EMAC0_RXD1
			hps_io_EMAC0_RXD2                         : in    std_logic                     := 'X';             -- EMAC0_RXD2
			hps_io_EMAC0_RXD3                         : in    std_logic                     := 'X';             -- EMAC0_RXD3
			hps_io_EMAC0_MDIO                         : inout std_logic                     := 'X';             -- EMAC0_MDIO
			hps_io_EMAC0_MDC                          : out   std_logic;                                        -- EMAC0_MDC
			hps_io_SDMMC_CMD                          : inout std_logic                     := 'X';             -- SDMMC_CMD
			hps_io_SDMMC_D0                           : inout std_logic                     := 'X';             -- SDMMC_D0
			hps_io_SDMMC_D1                           : inout std_logic                     := 'X';             -- SDMMC_D1
			hps_io_SDMMC_D2                           : inout std_logic                     := 'X';             -- SDMMC_D2
			hps_io_SDMMC_D3                           : inout std_logic                     := 'X';             -- SDMMC_D3
			hps_io_SDMMC_CCLK                         : out   std_logic;                                        -- SDMMC_CCLK
			hps_io_USB0_DATA0                         : inout std_logic                     := 'X';             -- USB0_DATA0
			hps_io_USB0_DATA1                         : inout std_logic                     := 'X';             -- USB0_DATA1
			hps_io_USB0_DATA2                         : inout std_logic                     := 'X';             -- USB0_DATA2
			hps_io_USB0_DATA3                         : inout std_logic                     := 'X';             -- USB0_DATA3
			hps_io_USB0_DATA4                         : inout std_logic                     := 'X';             -- USB0_DATA4
			hps_io_USB0_DATA5                         : inout std_logic                     := 'X';             -- USB0_DATA5
			hps_io_USB0_DATA6                         : inout std_logic                     := 'X';             -- USB0_DATA6
			hps_io_USB0_DATA7                         : inout std_logic                     := 'X';             -- USB0_DATA7
			hps_io_USB0_CLK                           : in    std_logic                     := 'X';             -- USB0_CLK
			hps_io_USB0_STP                           : out   std_logic;                                        -- USB0_STP
			hps_io_USB0_DIR                           : in    std_logic                     := 'X';             -- USB0_DIR
			hps_io_USB0_NXT                           : in    std_logic                     := 'X';             -- USB0_NXT
			hps_io_UART0_RX                           : in    std_logic                     := 'X';             -- UART0_RX
			hps_io_UART0_TX                           : out   std_logic;                                        -- UART0_TX
			hps_io_I2C1_SDA                           : inout std_logic                     := 'X';             -- I2C1_SDA
			hps_io_I2C1_SCL                           : inout std_logic                     := 'X';             -- I2C1_SCL
			hps_io_gpio1_io0                          : inout std_logic                     := 'X';             -- gpio1_io0
			hps_io_gpio1_io1                          : inout std_logic                     := 'X';             -- gpio1_io1
			hps_io_gpio1_io4                          : inout std_logic                     := 'X';             -- gpio1_io4
			hps_io_gpio1_io5                          : inout std_logic                     := 'X';             -- gpio1_io5
			hps_io_jtag_tck                           : in    std_logic                     := 'X';             -- jtag_tck
			hps_io_jtag_tms                           : in    std_logic                     := 'X';             -- jtag_tms
			hps_io_jtag_tdo                           : out   std_logic;                                        -- jtag_tdo
			hps_io_jtag_tdi                           : in    std_logic                     := 'X';             -- jtag_tdi
			hps_io_hps_osc_clk                        : in    std_logic                     := 'X';             -- hps_osc_clk
			hps_io_gpio1_io19                         : inout std_logic                     := 'X';             -- gpio1_io19
			hps_io_gpio1_io20                         : inout std_logic                     := 'X';             -- gpio1_io20
			hps_io_gpio1_io21                         : inout std_logic                     := 'X';             -- gpio1_io21
			h2f_reset_reset                           : out   std_logic;                                        -- reset
			f2h_irq1_irq                              : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			clk_100_clk                               : in    std_logic                     := 'X';             -- clk
			clk_125_clk                               : in    std_logic                     := 'X';             -- clk
			emif_hps_pll_ref_clk_clk                  : in    std_logic                     := 'X';             -- clk
			emif_hps_oct_oct_rzqin                    : in    std_logic                     := 'X';             -- oct_rzqin
			emif_hps_mem_mem_ck                       : out   std_logic_vector(0 downto 0);                     -- mem_ck
			emif_hps_mem_mem_ck_n                     : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			emif_hps_mem_mem_a                        : out   std_logic_vector(16 downto 0);                    -- mem_a
			emif_hps_mem_mem_act_n                    : out   std_logic_vector(0 downto 0);                     -- mem_act_n
			emif_hps_mem_mem_ba                       : out   std_logic_vector(1 downto 0);                     -- mem_ba
			emif_hps_mem_mem_bg                       : out   std_logic_vector(0 downto 0);                     -- mem_bg
			emif_hps_mem_mem_cke                      : out   std_logic_vector(0 downto 0);                     -- mem_cke
			emif_hps_mem_mem_cs_n                     : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			emif_hps_mem_mem_odt                      : out   std_logic_vector(0 downto 0);                     -- mem_odt
			emif_hps_mem_mem_reset_n                  : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
			emif_hps_mem_mem_par                      : out   std_logic_vector(0 downto 0);                     -- mem_par
			emif_hps_mem_mem_alert_n                  : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
			emif_hps_mem_mem_dqs                      : inout std_logic_vector(8 downto 0)  := (others => 'X'); -- mem_dqs
			emif_hps_mem_mem_dqs_n                    : inout std_logic_vector(8 downto 0)  := (others => 'X'); -- mem_dqs_n
			emif_hps_mem_mem_dq                       : inout std_logic_vector(71 downto 0) := (others => 'X'); -- mem_dq
			emif_hps_mem_mem_dbi_n                    : inout std_logic_vector(8 downto 0)  := (others => 'X'); -- mem_dbi_n
			reset_reset_n                             : in    std_logic                     := 'X';             -- reset_n
			ninit_done_ninit_done                     : out   std_logic;                                        -- ninit_done
			button_pio_external_connection_export     : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			dipsw_pio_external_connection_export      : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			led_pio_external_connection_in_port       : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- in_port
			led_pio_external_connection_out_port      : out   std_logic_vector(2 downto 0);                     -- out_port
			emac1_mdio_gmii_mdi_i                     : in    std_logic                     := 'X';             -- gmii_mdi_i
			emac1_mdio_gmii_mdo_o                     : out   std_logic;                                        -- gmii_mdo_o
			emac1_mdio_gmii_mdo_o_e                   : out   std_logic;                                        -- gmii_mdo_o_e
			emac1_ptp_ptp_aux_ts_trig_i               : in    std_logic                     := 'X';             -- ptp_aux_ts_trig_i
			emac1_ptp_ptp_pps_o                       : out   std_logic;                                        -- ptp_pps_o
			emac1_ptp_ptp_tstmp_data                  : out   std_logic;                                        -- ptp_tstmp_data
			emac1_ptp_ptp_tstmp_en                    : out   std_logic;                                        -- ptp_tstmp_en
			emac1_sgmii_status_set_10                 : out   std_logic;                                        -- set_10
			emac1_sgmii_status_set_1000               : out   std_logic;                                        -- set_1000
			emac1_sgmii_status_set_100                : out   std_logic;                                        -- set_100
			emac1_sgmii_status_hd_ena                 : out   std_logic;                                        -- hd_ena
			emac1_status_led_crs                      : out   std_logic;                                        -- crs
			emac1_status_led_link                     : out   std_logic;                                        -- link
			emac1_status_led_panel_link               : out   std_logic;                                        -- panel_link
			emac1_status_led_col                      : out   std_logic;                                        -- col
			emac1_status_led_an                       : out   std_logic;                                        -- an
			emac1_status_led_char_err                 : out   std_logic;                                        -- char_err
			emac1_status_led_disp_err                 : out   std_logic;                                        -- disp_err
			emac1_serdes_control_export               : out   std_logic;                                        -- export
			emac1_lvds_tx_pll_locked_export           : out   std_logic;                                        -- export
			emac1_serial_rxp_0                        : in    std_logic                     := 'X';             -- rxp_0
			emac1_serial_rxn_0                        : in    std_logic                     := 'X';             -- rxn_0
			emac1_serial_txp_0                        : out   std_logic;                                        -- txp_0
			emac1_serial_txn_0                        : out   std_logic;                                        -- txn_0
			emac1_sgmii_debug_status_pio_export       : in    std_logic_vector(12 downto 0) := (others => 'X')  -- export
		);
	end component qsys_top;

	u0 : component qsys_top
		port map (
			wd_reset_reset_n                          => CONNECTED_TO_wd_reset_reset_n,                          --                       wd_reset.reset_n
			agilex_hps_f2h_stm_hw_events_stm_hwevents => CONNECTED_TO_agilex_hps_f2h_stm_hw_events_stm_hwevents, --   agilex_hps_f2h_stm_hw_events.stm_hwevents
			agilex_hps_h2f_cs_ntrst                   => CONNECTED_TO_agilex_hps_h2f_cs_ntrst,                   --              agilex_hps_h2f_cs.ntrst
			agilex_hps_h2f_cs_tck                     => CONNECTED_TO_agilex_hps_h2f_cs_tck,                     --                               .tck
			agilex_hps_h2f_cs_tdi                     => CONNECTED_TO_agilex_hps_h2f_cs_tdi,                     --                               .tdi
			agilex_hps_h2f_cs_tdo                     => CONNECTED_TO_agilex_hps_h2f_cs_tdo,                     --                               .tdo
			agilex_hps_h2f_cs_tdoen                   => CONNECTED_TO_agilex_hps_h2f_cs_tdoen,                   --                               .tdoen
			agilex_hps_h2f_cs_tms                     => CONNECTED_TO_agilex_hps_h2f_cs_tms,                     --                               .tms
			emac1_mdc_clk                             => CONNECTED_TO_emac1_mdc_clk,                             --                      emac1_mdc.clk
			hps_io_EMAC0_TX_CLK                       => CONNECTED_TO_hps_io_EMAC0_TX_CLK,                       --                         hps_io.EMAC0_TX_CLK
			hps_io_EMAC0_TXD0                         => CONNECTED_TO_hps_io_EMAC0_TXD0,                         --                               .EMAC0_TXD0
			hps_io_EMAC0_TXD1                         => CONNECTED_TO_hps_io_EMAC0_TXD1,                         --                               .EMAC0_TXD1
			hps_io_EMAC0_TXD2                         => CONNECTED_TO_hps_io_EMAC0_TXD2,                         --                               .EMAC0_TXD2
			hps_io_EMAC0_TXD3                         => CONNECTED_TO_hps_io_EMAC0_TXD3,                         --                               .EMAC0_TXD3
			hps_io_EMAC0_RX_CTL                       => CONNECTED_TO_hps_io_EMAC0_RX_CTL,                       --                               .EMAC0_RX_CTL
			hps_io_EMAC0_TX_CTL                       => CONNECTED_TO_hps_io_EMAC0_TX_CTL,                       --                               .EMAC0_TX_CTL
			hps_io_EMAC0_RX_CLK                       => CONNECTED_TO_hps_io_EMAC0_RX_CLK,                       --                               .EMAC0_RX_CLK
			hps_io_EMAC0_RXD0                         => CONNECTED_TO_hps_io_EMAC0_RXD0,                         --                               .EMAC0_RXD0
			hps_io_EMAC0_RXD1                         => CONNECTED_TO_hps_io_EMAC0_RXD1,                         --                               .EMAC0_RXD1
			hps_io_EMAC0_RXD2                         => CONNECTED_TO_hps_io_EMAC0_RXD2,                         --                               .EMAC0_RXD2
			hps_io_EMAC0_RXD3                         => CONNECTED_TO_hps_io_EMAC0_RXD3,                         --                               .EMAC0_RXD3
			hps_io_EMAC0_MDIO                         => CONNECTED_TO_hps_io_EMAC0_MDIO,                         --                               .EMAC0_MDIO
			hps_io_EMAC0_MDC                          => CONNECTED_TO_hps_io_EMAC0_MDC,                          --                               .EMAC0_MDC
			hps_io_SDMMC_CMD                          => CONNECTED_TO_hps_io_SDMMC_CMD,                          --                               .SDMMC_CMD
			hps_io_SDMMC_D0                           => CONNECTED_TO_hps_io_SDMMC_D0,                           --                               .SDMMC_D0
			hps_io_SDMMC_D1                           => CONNECTED_TO_hps_io_SDMMC_D1,                           --                               .SDMMC_D1
			hps_io_SDMMC_D2                           => CONNECTED_TO_hps_io_SDMMC_D2,                           --                               .SDMMC_D2
			hps_io_SDMMC_D3                           => CONNECTED_TO_hps_io_SDMMC_D3,                           --                               .SDMMC_D3
			hps_io_SDMMC_CCLK                         => CONNECTED_TO_hps_io_SDMMC_CCLK,                         --                               .SDMMC_CCLK
			hps_io_USB0_DATA0                         => CONNECTED_TO_hps_io_USB0_DATA0,                         --                               .USB0_DATA0
			hps_io_USB0_DATA1                         => CONNECTED_TO_hps_io_USB0_DATA1,                         --                               .USB0_DATA1
			hps_io_USB0_DATA2                         => CONNECTED_TO_hps_io_USB0_DATA2,                         --                               .USB0_DATA2
			hps_io_USB0_DATA3                         => CONNECTED_TO_hps_io_USB0_DATA3,                         --                               .USB0_DATA3
			hps_io_USB0_DATA4                         => CONNECTED_TO_hps_io_USB0_DATA4,                         --                               .USB0_DATA4
			hps_io_USB0_DATA5                         => CONNECTED_TO_hps_io_USB0_DATA5,                         --                               .USB0_DATA5
			hps_io_USB0_DATA6                         => CONNECTED_TO_hps_io_USB0_DATA6,                         --                               .USB0_DATA6
			hps_io_USB0_DATA7                         => CONNECTED_TO_hps_io_USB0_DATA7,                         --                               .USB0_DATA7
			hps_io_USB0_CLK                           => CONNECTED_TO_hps_io_USB0_CLK,                           --                               .USB0_CLK
			hps_io_USB0_STP                           => CONNECTED_TO_hps_io_USB0_STP,                           --                               .USB0_STP
			hps_io_USB0_DIR                           => CONNECTED_TO_hps_io_USB0_DIR,                           --                               .USB0_DIR
			hps_io_USB0_NXT                           => CONNECTED_TO_hps_io_USB0_NXT,                           --                               .USB0_NXT
			hps_io_UART0_RX                           => CONNECTED_TO_hps_io_UART0_RX,                           --                               .UART0_RX
			hps_io_UART0_TX                           => CONNECTED_TO_hps_io_UART0_TX,                           --                               .UART0_TX
			hps_io_I2C1_SDA                           => CONNECTED_TO_hps_io_I2C1_SDA,                           --                               .I2C1_SDA
			hps_io_I2C1_SCL                           => CONNECTED_TO_hps_io_I2C1_SCL,                           --                               .I2C1_SCL
			hps_io_gpio1_io0                          => CONNECTED_TO_hps_io_gpio1_io0,                          --                               .gpio1_io0
			hps_io_gpio1_io1                          => CONNECTED_TO_hps_io_gpio1_io1,                          --                               .gpio1_io1
			hps_io_gpio1_io4                          => CONNECTED_TO_hps_io_gpio1_io4,                          --                               .gpio1_io4
			hps_io_gpio1_io5                          => CONNECTED_TO_hps_io_gpio1_io5,                          --                               .gpio1_io5
			hps_io_jtag_tck                           => CONNECTED_TO_hps_io_jtag_tck,                           --                               .jtag_tck
			hps_io_jtag_tms                           => CONNECTED_TO_hps_io_jtag_tms,                           --                               .jtag_tms
			hps_io_jtag_tdo                           => CONNECTED_TO_hps_io_jtag_tdo,                           --                               .jtag_tdo
			hps_io_jtag_tdi                           => CONNECTED_TO_hps_io_jtag_tdi,                           --                               .jtag_tdi
			hps_io_hps_osc_clk                        => CONNECTED_TO_hps_io_hps_osc_clk,                        --                               .hps_osc_clk
			hps_io_gpio1_io19                         => CONNECTED_TO_hps_io_gpio1_io19,                         --                               .gpio1_io19
			hps_io_gpio1_io20                         => CONNECTED_TO_hps_io_gpio1_io20,                         --                               .gpio1_io20
			hps_io_gpio1_io21                         => CONNECTED_TO_hps_io_gpio1_io21,                         --                               .gpio1_io21
			h2f_reset_reset                           => CONNECTED_TO_h2f_reset_reset,                           --                      h2f_reset.reset
			f2h_irq1_irq                              => CONNECTED_TO_f2h_irq1_irq,                              --                       f2h_irq1.irq
			clk_100_clk                               => CONNECTED_TO_clk_100_clk,                               --                        clk_100.clk
			clk_125_clk                               => CONNECTED_TO_clk_125_clk,                               --                        clk_125.clk
			emif_hps_pll_ref_clk_clk                  => CONNECTED_TO_emif_hps_pll_ref_clk_clk,                  --           emif_hps_pll_ref_clk.clk
			emif_hps_oct_oct_rzqin                    => CONNECTED_TO_emif_hps_oct_oct_rzqin,                    --                   emif_hps_oct.oct_rzqin
			emif_hps_mem_mem_ck                       => CONNECTED_TO_emif_hps_mem_mem_ck,                       --                   emif_hps_mem.mem_ck
			emif_hps_mem_mem_ck_n                     => CONNECTED_TO_emif_hps_mem_mem_ck_n,                     --                               .mem_ck_n
			emif_hps_mem_mem_a                        => CONNECTED_TO_emif_hps_mem_mem_a,                        --                               .mem_a
			emif_hps_mem_mem_act_n                    => CONNECTED_TO_emif_hps_mem_mem_act_n,                    --                               .mem_act_n
			emif_hps_mem_mem_ba                       => CONNECTED_TO_emif_hps_mem_mem_ba,                       --                               .mem_ba
			emif_hps_mem_mem_bg                       => CONNECTED_TO_emif_hps_mem_mem_bg,                       --                               .mem_bg
			emif_hps_mem_mem_cke                      => CONNECTED_TO_emif_hps_mem_mem_cke,                      --                               .mem_cke
			emif_hps_mem_mem_cs_n                     => CONNECTED_TO_emif_hps_mem_mem_cs_n,                     --                               .mem_cs_n
			emif_hps_mem_mem_odt                      => CONNECTED_TO_emif_hps_mem_mem_odt,                      --                               .mem_odt
			emif_hps_mem_mem_reset_n                  => CONNECTED_TO_emif_hps_mem_mem_reset_n,                  --                               .mem_reset_n
			emif_hps_mem_mem_par                      => CONNECTED_TO_emif_hps_mem_mem_par,                      --                               .mem_par
			emif_hps_mem_mem_alert_n                  => CONNECTED_TO_emif_hps_mem_mem_alert_n,                  --                               .mem_alert_n
			emif_hps_mem_mem_dqs                      => CONNECTED_TO_emif_hps_mem_mem_dqs,                      --                               .mem_dqs
			emif_hps_mem_mem_dqs_n                    => CONNECTED_TO_emif_hps_mem_mem_dqs_n,                    --                               .mem_dqs_n
			emif_hps_mem_mem_dq                       => CONNECTED_TO_emif_hps_mem_mem_dq,                       --                               .mem_dq
			emif_hps_mem_mem_dbi_n                    => CONNECTED_TO_emif_hps_mem_mem_dbi_n,                    --                               .mem_dbi_n
			reset_reset_n                             => CONNECTED_TO_reset_reset_n,                             --                          reset.reset_n
			ninit_done_ninit_done                     => CONNECTED_TO_ninit_done_ninit_done,                     --                     ninit_done.ninit_done
			button_pio_external_connection_export     => CONNECTED_TO_button_pio_external_connection_export,     -- button_pio_external_connection.export
			dipsw_pio_external_connection_export      => CONNECTED_TO_dipsw_pio_external_connection_export,      --  dipsw_pio_external_connection.export
			led_pio_external_connection_in_port       => CONNECTED_TO_led_pio_external_connection_in_port,       --    led_pio_external_connection.in_port
			led_pio_external_connection_out_port      => CONNECTED_TO_led_pio_external_connection_out_port,      --                               .out_port
			emac1_mdio_gmii_mdi_i                     => CONNECTED_TO_emac1_mdio_gmii_mdi_i,                     --                     emac1_mdio.gmii_mdi_i
			emac1_mdio_gmii_mdo_o                     => CONNECTED_TO_emac1_mdio_gmii_mdo_o,                     --                               .gmii_mdo_o
			emac1_mdio_gmii_mdo_o_e                   => CONNECTED_TO_emac1_mdio_gmii_mdo_o_e,                   --                               .gmii_mdo_o_e
			emac1_ptp_ptp_aux_ts_trig_i               => CONNECTED_TO_emac1_ptp_ptp_aux_ts_trig_i,               --                      emac1_ptp.ptp_aux_ts_trig_i
			emac1_ptp_ptp_pps_o                       => CONNECTED_TO_emac1_ptp_ptp_pps_o,                       --                               .ptp_pps_o
			emac1_ptp_ptp_tstmp_data                  => CONNECTED_TO_emac1_ptp_ptp_tstmp_data,                  --                               .ptp_tstmp_data
			emac1_ptp_ptp_tstmp_en                    => CONNECTED_TO_emac1_ptp_ptp_tstmp_en,                    --                               .ptp_tstmp_en
			emac1_sgmii_status_set_10                 => CONNECTED_TO_emac1_sgmii_status_set_10,                 --             emac1_sgmii_status.set_10
			emac1_sgmii_status_set_1000               => CONNECTED_TO_emac1_sgmii_status_set_1000,               --                               .set_1000
			emac1_sgmii_status_set_100                => CONNECTED_TO_emac1_sgmii_status_set_100,                --                               .set_100
			emac1_sgmii_status_hd_ena                 => CONNECTED_TO_emac1_sgmii_status_hd_ena,                 --                               .hd_ena
			emac1_status_led_crs                      => CONNECTED_TO_emac1_status_led_crs,                      --               emac1_status_led.crs
			emac1_status_led_link                     => CONNECTED_TO_emac1_status_led_link,                     --                               .link
			emac1_status_led_panel_link               => CONNECTED_TO_emac1_status_led_panel_link,               --                               .panel_link
			emac1_status_led_col                      => CONNECTED_TO_emac1_status_led_col,                      --                               .col
			emac1_status_led_an                       => CONNECTED_TO_emac1_status_led_an,                       --                               .an
			emac1_status_led_char_err                 => CONNECTED_TO_emac1_status_led_char_err,                 --                               .char_err
			emac1_status_led_disp_err                 => CONNECTED_TO_emac1_status_led_disp_err,                 --                               .disp_err
			emac1_serdes_control_export               => CONNECTED_TO_emac1_serdes_control_export,               --           emac1_serdes_control.export
			emac1_lvds_tx_pll_locked_export           => CONNECTED_TO_emac1_lvds_tx_pll_locked_export,           --       emac1_lvds_tx_pll_locked.export
			emac1_serial_rxp_0                        => CONNECTED_TO_emac1_serial_rxp_0,                        --                   emac1_serial.rxp_0
			emac1_serial_rxn_0                        => CONNECTED_TO_emac1_serial_rxn_0,                        --                               .rxn_0
			emac1_serial_txp_0                        => CONNECTED_TO_emac1_serial_txp_0,                        --                               .txp_0
			emac1_serial_txn_0                        => CONNECTED_TO_emac1_serial_txn_0,                        --                               .txn_0
			emac1_sgmii_debug_status_pio_export       => CONNECTED_TO_emac1_sgmii_debug_status_pio_export        --   emac1_sgmii_debug_status_pio.export
		);

