package require -exact qsys 21.3

# create the system "qsys_top"
proc do_create_qsys_top {} {
	# create the system
	create_system qsys_top
	set_project_property BOARD {Intel Agilex F-Series FPGA Development Kit DK-DEV-AGF014EA}
	set_project_property DEVICE {AGFB014R24B2E2V}
	set_project_property DEVICE_FAMILY {Agilex}
	set_project_property HIDE_FROM_IP_CATALOG {false}
	set_use_testbench_naming_pattern 0 {}

	# add HDL parameters

	# add the components
	add_component agilex_hps ip/qsys_top/agilex_hps.ip intel_agilex_hps intel_agilex_hps_inst 23.0.0
	load_component agilex_hps
	set_component_parameter_value CLK_MAIN_PLL_SOURCE2 {0}
	set_component_parameter_value CLK_PERI_PLL_SOURCE2 {0}
	set_component_parameter_value CM_Mode {N/A}
	set_component_parameter_value CM_PinMuxing {Unused}
	set_component_parameter_value CONFIG_HPS_DIV_GPIO {1}
	set_component_parameter_value CTI_Enable {0}
	set_component_parameter_value CUSTOM_MPU_CLK {800.0}
	set_component_parameter_value DDR_ATB_Enable {0}
	set_component_parameter_value DEBUG_APB_Enable {0}
	set_component_parameter_value DISABLE_PERI_PLL {0}
	set_component_parameter_value DMA_Enable {No No No No No No No No}
	set_component_parameter_value EMAC0_CLK {250}
	set_component_parameter_value EMAC0_Mode {RGMII_with_MDIO}
	set_component_parameter_value EMAC0_PTP {0}
	set_component_parameter_value EMAC0_PinMuxing {IO}
	set_component_parameter_value EMAC0_SWITCH_Enable {0}
	set_component_parameter_value EMAC1_CLK {250}
	set_component_parameter_value EMAC1_Mode {N/A}
	set_component_parameter_value EMAC1_PTP {0}
	set_component_parameter_value EMAC1_PinMuxing {Unused}
	set_component_parameter_value EMAC1_SWITCH_Enable {0}
	set_component_parameter_value EMAC2_CLK {250}
	set_component_parameter_value EMAC2_Mode {N/A}
	set_component_parameter_value EMAC2_PTP {0}
	set_component_parameter_value EMAC2_PinMuxing {Unused}
	set_component_parameter_value EMAC2_SWITCH_Enable {0}
	set_component_parameter_value EMAC_PTP_REF_CLK {100}
	set_component_parameter_value EMIF_CONDUIT_Enable {1}
	set_component_parameter_value EMIF_DDR_WIDTH {64}
	set_component_parameter_value EMIF_Topology {0}
	set_component_parameter_value F2H_FREE_CLK_Enable {0}
	set_component_parameter_value F2H_FREE_CLK_FREQ {200}
	set_component_parameter_value F2SINTERRUPT_Enable {1}
	set_component_parameter_value F2S_ADDRESS_WIDTH {32}
	set_component_parameter_value F2S_Route_config {1}
	set_component_parameter_value F2S_Width {5}
	set_component_parameter_value F2S_mode {0}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_GTX_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_MD_CLK {2.5}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_GTX_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_MD_CLK {2.5}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC2_GTX_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC2_MD_CLK {2.5}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C0_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C1_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2CEMAC0_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2CEMAC1_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2CEMAC2_CLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SDMMC_CCLK {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM0_SCLK_OUT {125}
	set_component_parameter_value FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM1_SCLK_OUT {125}
	set_component_parameter_value FP_EMIF_CONDUIT_Enable {1}
	set_component_parameter_value FP_F2S_Width {0}
	set_component_parameter_value GP_Enable {0}
	set_component_parameter_value H2F_COLD_RST_Enable {0}
	set_component_parameter_value H2F_PENDING_RST_Enable {0}
	set_component_parameter_value H2F_USER0_CLK_Enable {0}
	set_component_parameter_value H2F_USER0_CLK_FREQ {500}
	set_component_parameter_value H2F_USER1_CLK_Enable {0}
	set_component_parameter_value H2F_USER1_CLK_FREQ {500}
	set_component_parameter_value HNOC_Interface_Mode {0}
	set_component_parameter_value HPS_DIV_GPIO_FREQ2 {100}
	set_component_parameter_value HPS_IOA_10_open_drain_en {0}
	set_component_parameter_value HPS_IOA_11_open_drain_en {0}
	set_component_parameter_value HPS_IOA_12_open_drain_en {0}
	set_component_parameter_value HPS_IOA_13_open_drain_en {0}
	set_component_parameter_value HPS_IOA_14_open_drain_en {0}
	set_component_parameter_value HPS_IOA_15_open_drain_en {0}
	set_component_parameter_value HPS_IOA_16_open_drain_en {0}
	set_component_parameter_value HPS_IOA_17_open_drain_en {0}
	set_component_parameter_value HPS_IOA_18_open_drain_en {0}
	set_component_parameter_value HPS_IOA_19_open_drain_en {0}
	set_component_parameter_value HPS_IOA_1_open_drain_en {0}
	set_component_parameter_value HPS_IOA_20_open_drain_en {0}
	set_component_parameter_value HPS_IOA_21_open_drain_en {0}
	set_component_parameter_value HPS_IOA_22_open_drain_en {0}
	set_component_parameter_value HPS_IOA_23_open_drain_en {0}
	set_component_parameter_value HPS_IOA_24_open_drain_en {0}
	set_component_parameter_value HPS_IOA_2_open_drain_en {0}
	set_component_parameter_value HPS_IOA_3_open_drain_en {0}
	set_component_parameter_value HPS_IOA_4_open_drain_en {0}
	set_component_parameter_value HPS_IOA_5_open_drain_en {0}
	set_component_parameter_value HPS_IOA_6_open_drain_en {0}
	set_component_parameter_value HPS_IOA_7_open_drain_en {0}
	set_component_parameter_value HPS_IOA_8_open_drain_en {0}
	set_component_parameter_value HPS_IOA_9_open_drain_en {0}
	set_component_parameter_value HPS_IOB_10_open_drain_en {0}
	set_component_parameter_value HPS_IOB_11_open_drain_en {0}
	set_component_parameter_value HPS_IOB_12_open_drain_en {0}
	set_component_parameter_value HPS_IOB_13_open_drain_en {0}
	set_component_parameter_value HPS_IOB_14_open_drain_en {0}
	set_component_parameter_value HPS_IOB_15_open_drain_en {0}
	set_component_parameter_value HPS_IOB_16_open_drain_en {0}
	set_component_parameter_value HPS_IOB_17_open_drain_en {0}
	set_component_parameter_value HPS_IOB_18_open_drain_en {0}
	set_component_parameter_value HPS_IOB_19_open_drain_en {0}
	set_component_parameter_value HPS_IOB_1_open_drain_en {0}
	set_component_parameter_value HPS_IOB_20_open_drain_en {0}
	set_component_parameter_value HPS_IOB_21_open_drain_en {0}
	set_component_parameter_value HPS_IOB_22_open_drain_en {0}
	set_component_parameter_value HPS_IOB_23_open_drain_en {0}
	set_component_parameter_value HPS_IOB_24_open_drain_en {0}
	set_component_parameter_value HPS_IOB_2_open_drain_en {0}
	set_component_parameter_value HPS_IOB_3_open_drain_en {0}
	set_component_parameter_value HPS_IOB_4_open_drain_en {0}
	set_component_parameter_value HPS_IOB_5_open_drain_en {0}
	set_component_parameter_value HPS_IOB_6_open_drain_en {0}
	set_component_parameter_value HPS_IOB_7_open_drain_en {0}
	set_component_parameter_value HPS_IOB_8_open_drain_en {0}
	set_component_parameter_value HPS_IOB_9_open_drain_en {0}
	set_component_parameter_value HPS_IO_Enable {USB0:CLK USB0:STP USB0:DIR USB0:DATA0 USB0:DATA1 USB0:NXT USB0:DATA2 USB0:DATA3 USB0:DATA4 USB0:DATA5 USB0:DATA6 USB0:DATA7 EMAC0:TX_CLK EMAC0:TX_CTL EMAC0:RX_CLK EMAC0:RX_CTL EMAC0:TXD0 EMAC0:TXD1 EMAC0:RXD0 EMAC0:RXD1 EMAC0:TXD2 EMAC0:TXD3 EMAC0:RXD2 EMAC0:RXD3 GPIO GPIO UART0:TX UART0:RX GPIO GPIO I2C1:SDA I2C1:SCL JTAG:TCK JTAG:TMS JTAG:TDO JTAG:TDI SDMMC:D0 SDMMC:CMD SDMMC:CCLK SDMMC:D1 SDMMC:D2 SDMMC:D3 HPS_OSC_CLK GPIO GPIO GPIO MDIO0:MDIO MDIO0:MDC}
	set_component_parameter_value I2C0_Mode {N/A}
	set_component_parameter_value I2C0_PinMuxing {Unused}
	set_component_parameter_value I2C1_Mode {default}
	set_component_parameter_value I2C1_PinMuxing {IO}
	set_component_parameter_value I2CEMAC0_Mode {N/A}
	set_component_parameter_value I2CEMAC0_PinMuxing {Unused}
	set_component_parameter_value I2CEMAC1_Mode {N/A}
	set_component_parameter_value I2CEMAC1_PinMuxing {Unused}
	set_component_parameter_value I2CEMAC2_Mode {N/A}
	set_component_parameter_value I2CEMAC2_PinMuxing {Unused}
	set_component_parameter_value INTERNAL_OSCILLATOR_ENABLE {60}
	set_component_parameter_value IO_INPUT_DELAY0 {0}
	set_component_parameter_value IO_INPUT_DELAY1 {0}
	set_component_parameter_value IO_INPUT_DELAY10 {0}
	set_component_parameter_value IO_INPUT_DELAY11 {0}
	set_component_parameter_value IO_INPUT_DELAY12 {0}
	set_component_parameter_value IO_INPUT_DELAY13 {0}
	set_component_parameter_value IO_INPUT_DELAY14 {0}
	set_component_parameter_value IO_INPUT_DELAY15 {0}
	set_component_parameter_value IO_INPUT_DELAY16 {0}
	set_component_parameter_value IO_INPUT_DELAY17 {0}
	set_component_parameter_value IO_INPUT_DELAY18 {0}
	set_component_parameter_value IO_INPUT_DELAY19 {0}
	set_component_parameter_value IO_INPUT_DELAY2 {0}
	set_component_parameter_value IO_INPUT_DELAY20 {0}
	set_component_parameter_value IO_INPUT_DELAY21 {0}
	set_component_parameter_value IO_INPUT_DELAY22 {0}
	set_component_parameter_value IO_INPUT_DELAY23 {0}
	set_component_parameter_value IO_INPUT_DELAY24 {0}
	set_component_parameter_value IO_INPUT_DELAY25 {0}
	set_component_parameter_value IO_INPUT_DELAY26 {0}
	set_component_parameter_value IO_INPUT_DELAY27 {0}
	set_component_parameter_value IO_INPUT_DELAY28 {0}
	set_component_parameter_value IO_INPUT_DELAY29 {0}
	set_component_parameter_value IO_INPUT_DELAY3 {0}
	set_component_parameter_value IO_INPUT_DELAY30 {0}
	set_component_parameter_value IO_INPUT_DELAY31 {0}
	set_component_parameter_value IO_INPUT_DELAY32 {0}
	set_component_parameter_value IO_INPUT_DELAY33 {0}
	set_component_parameter_value IO_INPUT_DELAY34 {0}
	set_component_parameter_value IO_INPUT_DELAY35 {0}
	set_component_parameter_value IO_INPUT_DELAY36 {0}
	set_component_parameter_value IO_INPUT_DELAY37 {0}
	set_component_parameter_value IO_INPUT_DELAY38 {0}
	set_component_parameter_value IO_INPUT_DELAY39 {0}
	set_component_parameter_value IO_INPUT_DELAY4 {0}
	set_component_parameter_value IO_INPUT_DELAY40 {0}
	set_component_parameter_value IO_INPUT_DELAY41 {0}
	set_component_parameter_value IO_INPUT_DELAY42 {0}
	set_component_parameter_value IO_INPUT_DELAY43 {0}
	set_component_parameter_value IO_INPUT_DELAY44 {0}
	set_component_parameter_value IO_INPUT_DELAY45 {0}
	set_component_parameter_value IO_INPUT_DELAY46 {0}
	set_component_parameter_value IO_INPUT_DELAY47 {0}
	set_component_parameter_value IO_INPUT_DELAY5 {0}
	set_component_parameter_value IO_INPUT_DELAY6 {0}
	set_component_parameter_value IO_INPUT_DELAY7 {0}
	set_component_parameter_value IO_INPUT_DELAY8 {0}
	set_component_parameter_value IO_INPUT_DELAY9 {0}
	set_component_parameter_value IO_OUTPUT_DELAY0 {0}
	set_component_parameter_value IO_OUTPUT_DELAY1 {0}
	set_component_parameter_value IO_OUTPUT_DELAY10 {0}
	set_component_parameter_value IO_OUTPUT_DELAY11 {0}
	set_component_parameter_value IO_OUTPUT_DELAY12 {45}
	set_component_parameter_value IO_OUTPUT_DELAY13 {0}
	set_component_parameter_value IO_OUTPUT_DELAY14 {0}
	set_component_parameter_value IO_OUTPUT_DELAY15 {0}
	set_component_parameter_value IO_OUTPUT_DELAY16 {0}
	set_component_parameter_value IO_OUTPUT_DELAY17 {0}
	set_component_parameter_value IO_OUTPUT_DELAY18 {0}
	set_component_parameter_value IO_OUTPUT_DELAY19 {0}
	set_component_parameter_value IO_OUTPUT_DELAY2 {0}
	set_component_parameter_value IO_OUTPUT_DELAY20 {0}
	set_component_parameter_value IO_OUTPUT_DELAY21 {0}
	set_component_parameter_value IO_OUTPUT_DELAY22 {0}
	set_component_parameter_value IO_OUTPUT_DELAY23 {0}
	set_component_parameter_value IO_OUTPUT_DELAY24 {0}
	set_component_parameter_value IO_OUTPUT_DELAY25 {0}
	set_component_parameter_value IO_OUTPUT_DELAY26 {0}
	set_component_parameter_value IO_OUTPUT_DELAY27 {0}
	set_component_parameter_value IO_OUTPUT_DELAY28 {0}
	set_component_parameter_value IO_OUTPUT_DELAY29 {0}
	set_component_parameter_value IO_OUTPUT_DELAY3 {0}
	set_component_parameter_value IO_OUTPUT_DELAY30 {0}
	set_component_parameter_value IO_OUTPUT_DELAY31 {0}
	set_component_parameter_value IO_OUTPUT_DELAY32 {0}
	set_component_parameter_value IO_OUTPUT_DELAY33 {0}
	set_component_parameter_value IO_OUTPUT_DELAY34 {0}
	set_component_parameter_value IO_OUTPUT_DELAY35 {0}
	set_component_parameter_value IO_OUTPUT_DELAY36 {0}
	set_component_parameter_value IO_OUTPUT_DELAY37 {0}
	set_component_parameter_value IO_OUTPUT_DELAY38 {0}
	set_component_parameter_value IO_OUTPUT_DELAY39 {0}
	set_component_parameter_value IO_OUTPUT_DELAY4 {0}
	set_component_parameter_value IO_OUTPUT_DELAY40 {0}
	set_component_parameter_value IO_OUTPUT_DELAY41 {0}
	set_component_parameter_value IO_OUTPUT_DELAY42 {0}
	set_component_parameter_value IO_OUTPUT_DELAY43 {0}
	set_component_parameter_value IO_OUTPUT_DELAY44 {0}
	set_component_parameter_value IO_OUTPUT_DELAY45 {0}
	set_component_parameter_value IO_OUTPUT_DELAY46 {0}
	set_component_parameter_value IO_OUTPUT_DELAY47 {0}
	set_component_parameter_value IO_OUTPUT_DELAY5 {0}
	set_component_parameter_value IO_OUTPUT_DELAY6 {0}
	set_component_parameter_value IO_OUTPUT_DELAY7 {0}
	set_component_parameter_value IO_OUTPUT_DELAY8 {0}
	set_component_parameter_value IO_OUTPUT_DELAY9 {0}
	set_component_parameter_value IPXACT_Enable {0}
	set_component_parameter_value L3_MAIN_FREE_CLK {400}
	set_component_parameter_value L4_SYS_FREE_CLK {2}
	set_component_parameter_value LWH2F_ADDRESS_WIDTH {21}
	set_component_parameter_value LWH2F_Enable {1}
	set_component_parameter_value MAINPLL_FDIV_EN {0}
	set_component_parameter_value MANUAL_CLK_EMACA_SOURCE {0}
	set_component_parameter_value MANUAL_CLK_EMACB_SOURCE {1}
	set_component_parameter_value MANUAL_CLK_EMAC_PTP_SOURCE {1}
	set_component_parameter_value MANUAL_CLK_GPIO_SOURCE {1}
	set_component_parameter_value MANUAL_CLK_MPU_SOURCE {0}
	set_component_parameter_value MANUAL_CLK_NOC_SOURCE {1}
	set_component_parameter_value MANUAL_CLK_PSI_SOURCE {0}
	set_component_parameter_value MANUAL_CLK_S2F_USER0_SOURCE {0}
	set_component_parameter_value MANUAL_CLK_S2F_USER1_SOURCE {0}
	set_component_parameter_value MANUAL_CLK_SDMMC_SOURCE {1}
	set_component_parameter_value MANUAL_CLK_SRC_EN {0}
	set_component_parameter_value MANUAL_MAINPLL_C0 {1000.0}
	set_component_parameter_value MANUAL_MAINPLL_C2 {500.0}
	set_component_parameter_value MANUAL_MAINPLL_C3 {200.0}
	set_component_parameter_value MANUAL_MAINPLL_CFREQ_EN {0}
	set_component_parameter_value MANUAL_PERPLL_C0 {1200.0}
	set_component_parameter_value MANUAL_PERPLL_C2 {480.0}
	set_component_parameter_value MANUAL_PERPLL_C3 {200.0}
	set_component_parameter_value MANUAL_PERPLL_CFREQ_EN {0}
	set_component_parameter_value MPU_EVENTS_Enable {0}
	set_component_parameter_value NAND_Mode {N/A}
	set_component_parameter_value NAND_PinMuxing {Unused}
	set_component_parameter_value NOCDIV_CS_ATCLK {0}
	set_component_parameter_value NOCDIV_CS_PDBGCLK {2}
	set_component_parameter_value NOCDIV_CS_TRACECLK {0}
	set_component_parameter_value NOCDIV_L4MAINCLK {0}
	set_component_parameter_value NOCDIV_L4MPCLK {1}
	set_component_parameter_value NOCDIV_L4SPCLK {2}
	set_component_parameter_value OVERIDE_PERI_PLL {0}
	set_component_parameter_value PERI_PLL_MANUAL_VCO_FREQ {2000}
	set_component_parameter_value PERPLL_FDIV_EN {0}
	set_component_parameter_value PLL_CLK0 {Unused}
	set_component_parameter_value PLL_CLK1 {Unused}
	set_component_parameter_value PLL_CLK2 {Unused}
	set_component_parameter_value PLL_CLK3 {Unused}
	set_component_parameter_value PLL_CLK4 {Unused}
	set_component_parameter_value PSI_CLK_FREQ {500}
	set_component_parameter_value RUN_INTERNAL_BUILD_CHECKS {0}
	set_component_parameter_value S2FINTERRUPT_CLOCKPERIPHERAL_Enable {0}
	set_component_parameter_value S2FINTERRUPT_DMA_Enable {0}
	set_component_parameter_value S2FINTERRUPT_EMAC0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_EMAC1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_EMAC2_Enable {0}
	set_component_parameter_value S2FINTERRUPT_GPIO_Enable {0}
	set_component_parameter_value S2FINTERRUPT_I2C0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_I2C1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_I2CEMAC0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_I2CEMAC1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_I2CEMAC2_Enable {0}
	set_component_parameter_value S2FINTERRUPT_L4TIMER_Enable {0}
	set_component_parameter_value S2FINTERRUPT_NAND_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SDMMC_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SPIM0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SPIM1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SPIS0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SPIS1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SYSTEMMANAGER_Enable {0}
	set_component_parameter_value S2FINTERRUPT_SYSTIMER_Enable {0}
	set_component_parameter_value S2FINTERRUPT_UART0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_UART1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_USB0_Enable {0}
	set_component_parameter_value S2FINTERRUPT_USB1_Enable {0}
	set_component_parameter_value S2FINTERRUPT_WATCHDOG_Enable {0}
	set_component_parameter_value S2F_ADDRESS_WIDTH {32}
	set_component_parameter_value S2F_Width {1}
	set_component_parameter_value SDMMC_Mode {4-bit}
	set_component_parameter_value SDMMC_PinMuxing {IO}
	set_component_parameter_value SDMMC_REF_CLK {200}
	set_component_parameter_value SMMU_rsb_sid_const {0}
	set_component_parameter_value SMMU_rsb_ssd_const {0}
	set_component_parameter_value SMMU_sid_config {0}
	set_component_parameter_value SMMU_ssd_config {0}
	set_component_parameter_value SMMU_wsb_sid_const {0}
	set_component_parameter_value SMMU_wsb_ssd_const {0}
	set_component_parameter_value SPIM0_Mode {N/A}
	set_component_parameter_value SPIM0_PinMuxing {Unused}
	set_component_parameter_value SPIM1_Mode {N/A}
	set_component_parameter_value SPIM1_PinMuxing {Unused}
	set_component_parameter_value SPIS0_Mode {N/A}
	set_component_parameter_value SPIS0_PinMuxing {Unused}
	set_component_parameter_value SPIS1_Mode {N/A}
	set_component_parameter_value SPIS1_PinMuxing {Unused}
	set_component_parameter_value STM_Enable {1}
	set_component_parameter_value TESTIOCTRL_DEBUGCLKSEL {16}
	set_component_parameter_value TESTIOCTRL_MAINCLKSEL {8}
	set_component_parameter_value TESTIOCTRL_PERICLKSEL {8}
	set_component_parameter_value TEST_Enable {0}
	set_component_parameter_value TPIU_Select {HPS Clock Manager}
	set_component_parameter_value TRACE_Mode {N/A}
	set_component_parameter_value TRACE_PinMuxing {Unused}
	set_component_parameter_value UART0_Mode {No_flow_control}
	set_component_parameter_value UART0_PinMuxing {IO}
	set_component_parameter_value UART1_Mode {N/A}
	set_component_parameter_value UART1_PinMuxing {Unused}
	set_component_parameter_value USB0_Mode {default}
	set_component_parameter_value USB0_PinMuxing {IO}
	set_component_parameter_value USB1_Mode {N/A}
	set_component_parameter_value USB1_PinMuxing {Unused}
	set_component_parameter_value USE_DEFAULT_MPU_CLK {0}
	set_component_parameter_value W_RESET_ACTION {0}
	set_component_parameter_value eosc1_clk_mhz {25.0}
	set_component_parameter_value watchdog_reset {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation agilex_hps
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface h2f_watchdog_rst reset OUTPUT
	set_instantiation_interface_parameter_value h2f_watchdog_rst associatedClock {}
	set_instantiation_interface_parameter_value h2f_watchdog_rst associatedDirectReset {}
	set_instantiation_interface_parameter_value h2f_watchdog_rst associatedResetSinks {none}
	set_instantiation_interface_parameter_value h2f_watchdog_rst synchronousEdges {NONE}
	add_instantiation_interface_port h2f_watchdog_rst h2f_watchdog_rst reset_n 1 STD_LOGIC Output
	add_instantiation_interface f2h_stm_hw_events conduit INPUT
	set_instantiation_interface_parameter_value f2h_stm_hw_events associatedClock {}
	set_instantiation_interface_parameter_value f2h_stm_hw_events associatedReset {}
	set_instantiation_interface_parameter_value f2h_stm_hw_events prSafe {false}
	add_instantiation_interface_port f2h_stm_hw_events f2h_stm_hwevents stm_hwevents 44 STD_LOGIC_VECTOR Input
	add_instantiation_interface h2f_cs conduit INPUT
	set_instantiation_interface_parameter_value h2f_cs associatedClock {}
	set_instantiation_interface_parameter_value h2f_cs associatedReset {}
	set_instantiation_interface_parameter_value h2f_cs prSafe {false}
	add_instantiation_interface_port h2f_cs h2f_cs_ntrst ntrst 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_cs h2f_cs_tck tck 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_cs h2f_cs_tdi tdi 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_cs h2f_cs_tdo tdo 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_cs h2f_cs_tdoen tdoen 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_cs h2f_cs_tms tms 1 STD_LOGIC Input
	add_instantiation_interface hps_emif conduit INPUT
	set_instantiation_interface_parameter_value hps_emif associatedClock {}
	set_instantiation_interface_parameter_value hps_emif associatedReset {}
	set_instantiation_interface_parameter_value hps_emif prSafe {false}
	add_instantiation_interface_port hps_emif hps_emif_emif_to_hps emif_to_hps 4096 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port hps_emif hps_emif_hps_to_emif hps_to_emif 4096 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port hps_emif hps_emif_emif_to_gp emif_to_gp 1 STD_LOGIC Input
	add_instantiation_interface_port hps_emif hps_emif_gp_to_emif gp_to_emif 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface hps_io conduit INPUT
	set_instantiation_interface_parameter_value hps_io associatedClock {}
	set_instantiation_interface_parameter_value hps_io associatedReset {}
	set_instantiation_interface_parameter_value hps_io prSafe {false}
	add_instantiation_interface_port hps_io EMAC0_TX_CLK EMAC0_TX_CLK 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_TXD0 EMAC0_TXD0 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_TXD1 EMAC0_TXD1 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_TXD2 EMAC0_TXD2 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_TXD3 EMAC0_TXD3 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_RX_CTL EMAC0_RX_CTL 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_TX_CTL EMAC0_TX_CTL 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io EMAC0_RX_CLK EMAC0_RX_CLK 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_RXD0 EMAC0_RXD0 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_RXD1 EMAC0_RXD1 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_RXD2 EMAC0_RXD2 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_RXD3 EMAC0_RXD3 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io EMAC0_MDIO EMAC0_MDIO 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io EMAC0_MDC EMAC0_MDC 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io SDMMC_CMD SDMMC_CMD 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io SDMMC_D0 SDMMC_D0 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io SDMMC_D1 SDMMC_D1 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io SDMMC_D2 SDMMC_D2 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io SDMMC_D3 SDMMC_D3 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io SDMMC_CCLK SDMMC_CCLK 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io USB0_DATA0 USB0_DATA0 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA1 USB0_DATA1 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA2 USB0_DATA2 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA3 USB0_DATA3 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA4 USB0_DATA4 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA5 USB0_DATA5 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA6 USB0_DATA6 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_DATA7 USB0_DATA7 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io USB0_CLK USB0_CLK 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io USB0_STP USB0_STP 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io USB0_DIR USB0_DIR 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io USB0_NXT USB0_NXT 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io UART0_RX UART0_RX 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io UART0_TX UART0_TX 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io I2C1_SDA I2C1_SDA 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io I2C1_SCL I2C1_SCL 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io0 gpio1_io0 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io1 gpio1_io1 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io4 gpio1_io4 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io5 gpio1_io5 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io jtag_tck jtag_tck 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io jtag_tms jtag_tms 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io jtag_tdo jtag_tdo 1 STD_LOGIC Output
	add_instantiation_interface_port hps_io jtag_tdi jtag_tdi 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io hps_osc_clk hps_osc_clk 1 STD_LOGIC Input
	add_instantiation_interface_port hps_io gpio1_io19 gpio1_io19 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io20 gpio1_io20 1 STD_LOGIC Bidir
	add_instantiation_interface_port hps_io gpio1_io21 gpio1_io21 1 STD_LOGIC Bidir
	add_instantiation_interface h2f_reset reset OUTPUT
	set_instantiation_interface_parameter_value h2f_reset associatedClock {}
	set_instantiation_interface_parameter_value h2f_reset associatedDirectReset {}
	set_instantiation_interface_parameter_value h2f_reset associatedResetSinks {none}
	set_instantiation_interface_parameter_value h2f_reset synchronousEdges {NONE}
	add_instantiation_interface_port h2f_reset h2f_rst reset 1 STD_LOGIC Output
	add_instantiation_interface h2f_axi_clock clock INPUT
	set_instantiation_interface_parameter_value h2f_axi_clock clockRate {0}
	set_instantiation_interface_parameter_value h2f_axi_clock externallyDriven {false}
	set_instantiation_interface_parameter_value h2f_axi_clock ptfSchematicName {}
	add_instantiation_interface_port h2f_axi_clock h2f_axi_clk clk 1 STD_LOGIC Input
	add_instantiation_interface h2f_axi_reset reset INPUT
	set_instantiation_interface_parameter_value h2f_axi_reset associatedClock {h2f_axi_clock}
	set_instantiation_interface_parameter_value h2f_axi_reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port h2f_axi_reset h2f_axi_rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface h2f_axi_master axi4 OUTPUT
	set_instantiation_interface_parameter_value h2f_axi_master associatedClock {h2f_axi_clock}
	set_instantiation_interface_parameter_value h2f_axi_master associatedReset {h2f_axi_reset}
	set_instantiation_interface_parameter_value h2f_axi_master combinedIssuingCapability {16}
	set_instantiation_interface_parameter_value h2f_axi_master issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value h2f_axi_master issuesINCRBursts {true}
	set_instantiation_interface_parameter_value h2f_axi_master issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value h2f_axi_master maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value h2f_axi_master maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value h2f_axi_master maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value h2f_axi_master readIssuingCapability {16}
	set_instantiation_interface_parameter_value h2f_axi_master trustzoneAware {true}
	set_instantiation_interface_parameter_value h2f_axi_master writeIssuingCapability {16}
	add_instantiation_interface_port h2f_axi_master h2f_AWID awid 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWADDR awaddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWLEN awlen 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWSIZE awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWBURST awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWLOCK awlock 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_AWCACHE awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWPROT awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_AWVALID awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_AWREADY awready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_WDATA wdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_WSTRB wstrb 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_WLAST wlast 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_WVALID wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_WREADY wready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_BID bid 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_axi_master h2f_BRESP bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_axi_master h2f_BVALID bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_BREADY bready 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_ARID arid 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARADDR araddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARLEN arlen 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARSIZE arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARBURST arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARLOCK arlock 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_ARCACHE arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARPROT arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_axi_master h2f_ARVALID arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_axi_master h2f_ARREADY arready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_RID rid 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_axi_master h2f_RDATA rdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_axi_master h2f_RRESP rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_axi_master h2f_RLAST rlast 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_RVALID rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_axi_master h2f_RREADY rready 1 STD_LOGIC Output
	add_instantiation_interface h2f_lw_axi_clock clock INPUT
	set_instantiation_interface_parameter_value h2f_lw_axi_clock clockRate {0}
	set_instantiation_interface_parameter_value h2f_lw_axi_clock externallyDriven {false}
	set_instantiation_interface_parameter_value h2f_lw_axi_clock ptfSchematicName {}
	add_instantiation_interface_port h2f_lw_axi_clock h2f_lw_axi_clk clk 1 STD_LOGIC Input
	add_instantiation_interface h2f_lw_axi_reset reset INPUT
	set_instantiation_interface_parameter_value h2f_lw_axi_reset associatedClock {h2f_lw_axi_clock}
	set_instantiation_interface_parameter_value h2f_lw_axi_reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port h2f_lw_axi_reset h2f_lw_axi_rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface h2f_lw_axi_master axi4 OUTPUT
	set_instantiation_interface_parameter_value h2f_lw_axi_master associatedClock {h2f_lw_axi_clock}
	set_instantiation_interface_parameter_value h2f_lw_axi_master associatedReset {h2f_lw_axi_reset}
	set_instantiation_interface_parameter_value h2f_lw_axi_master combinedIssuingCapability {16}
	set_instantiation_interface_parameter_value h2f_lw_axi_master issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value h2f_lw_axi_master issuesINCRBursts {true}
	set_instantiation_interface_parameter_value h2f_lw_axi_master issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value h2f_lw_axi_master maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value h2f_lw_axi_master maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value h2f_lw_axi_master maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value h2f_lw_axi_master readIssuingCapability {16}
	set_instantiation_interface_parameter_value h2f_lw_axi_master trustzoneAware {true}
	set_instantiation_interface_parameter_value h2f_lw_axi_master writeIssuingCapability {16}
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWID awid 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWADDR awaddr 21 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWLEN awlen 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWSIZE awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWBURST awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWLOCK awlock 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWCACHE awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWPROT awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWVALID awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_AWREADY awready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_WDATA wdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_WSTRB wstrb 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_WLAST wlast 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_WVALID wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_WREADY wready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_BID bid 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_BRESP bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_BVALID bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_BREADY bready 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARID arid 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARADDR araddr 21 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARLEN arlen 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARSIZE arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARBURST arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARLOCK arlock 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARCACHE arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARPROT arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARVALID arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_ARREADY arready 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RID rid 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RDATA rdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RRESP rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RLAST rlast 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RVALID rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port h2f_lw_axi_master h2f_lw_RREADY rready 1 STD_LOGIC Output
	add_instantiation_interface f2h_axi_clock clock INPUT
	set_instantiation_interface_parameter_value f2h_axi_clock clockRate {0}
	set_instantiation_interface_parameter_value f2h_axi_clock externallyDriven {false}
	set_instantiation_interface_parameter_value f2h_axi_clock ptfSchematicName {}
	add_instantiation_interface_port f2h_axi_clock f2h_axi_clk clk 1 STD_LOGIC Input
	add_instantiation_interface f2h_axi_reset reset INPUT
	set_instantiation_interface_parameter_value f2h_axi_reset associatedClock {f2h_axi_clock}
	set_instantiation_interface_parameter_value f2h_axi_reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port f2h_axi_reset f2h_axi_rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface f2h_axi_slave axi4 INPUT
	set_instantiation_interface_parameter_value f2h_axi_slave associatedClock {f2h_axi_clock}
	set_instantiation_interface_parameter_value f2h_axi_slave associatedReset {f2h_axi_reset}
	set_instantiation_interface_parameter_value f2h_axi_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value f2h_axi_slave combinedAcceptanceCapability {16}
	set_instantiation_interface_parameter_value f2h_axi_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value f2h_axi_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value f2h_axi_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value f2h_axi_slave readAcceptanceCapability {8}
	set_instantiation_interface_parameter_value f2h_axi_slave readDataReorderingDepth {8}
	set_instantiation_interface_parameter_value f2h_axi_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value f2h_axi_slave writeAcceptanceCapability {8}
	set_instantiation_interface_sysinfo_parameter_value f2h_axi_slave address_map {<address-map><slave name='f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value f2h_axi_slave address_width {32}
	set_instantiation_interface_sysinfo_parameter_value f2h_axi_slave max_slave_data_width {512}
	add_instantiation_interface_port f2h_axi_slave f2h_AWID awid 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWADDR awaddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWLEN awlen 8 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWSIZE awsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWBURST awburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWLOCK awlock 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWCACHE awcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWPROT awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWVALID awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWREADY awready 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_AWQOS awqos 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_WDATA wdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_WSTRB wstrb 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_WLAST wlast 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_WVALID wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_WREADY wready 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_BID bid 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port f2h_axi_slave f2h_BRESP bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port f2h_axi_slave f2h_BVALID bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_BREADY bready 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARID arid 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARADDR araddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARLEN arlen 8 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARSIZE arsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARBURST arburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARLOCK arlock 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARCACHE arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARPROT arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARVALID arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARREADY arready 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_ARQOS arqos 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_RID rid 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port f2h_axi_slave f2h_RDATA rdata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port f2h_axi_slave f2h_RRESP rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port f2h_axi_slave f2h_RLAST rlast 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_RVALID rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port f2h_axi_slave f2h_RREADY rready 1 STD_LOGIC Input
	add_instantiation_interface_port f2h_axi_slave f2h_ARUSER aruser 23 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port f2h_axi_slave f2h_AWUSER awuser 23 STD_LOGIC_VECTOR Input
	add_instantiation_interface f2h_irq0 interrupt OUTPUT
	set_instantiation_interface_parameter_value f2h_irq0 associatedAddressablePoint {}
	set_instantiation_interface_parameter_value f2h_irq0 associatedClock {}
	set_instantiation_interface_parameter_value f2h_irq0 associatedReset {}
	set_instantiation_interface_parameter_value f2h_irq0 irqMap {}
	set_instantiation_interface_parameter_value f2h_irq0 irqScheme {INDIVIDUAL_REQUESTS}
	set_instantiation_interface_assignment_value f2h_irq0 embeddedsw.dts.irq.rx_offset {19}
	set_instantiation_interface_assignment_value f2h_irq0 embeddedsw.dts.irq.rx_type {arm_gic_spi}
	add_instantiation_interface_port f2h_irq0 f2h_irq_p0 irq 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface f2h_irq1 interrupt OUTPUT
	set_instantiation_interface_parameter_value f2h_irq1 associatedAddressablePoint {}
	set_instantiation_interface_parameter_value f2h_irq1 associatedClock {}
	set_instantiation_interface_parameter_value f2h_irq1 associatedReset {}
	set_instantiation_interface_parameter_value f2h_irq1 irqMap {}
	set_instantiation_interface_parameter_value f2h_irq1 irqScheme {INDIVIDUAL_REQUESTS}
	set_instantiation_interface_assignment_value f2h_irq1 embeddedsw.dts.irq.rx_offset {51}
	set_instantiation_interface_assignment_value f2h_irq1 embeddedsw.dts.irq.rx_type {arm_gic_spi}
	add_instantiation_interface_port f2h_irq1 f2h_irq_p1 irq 32 STD_LOGIC_VECTOR Input
	save_instantiation
	add_component clk_100 ip/qsys_top/clk_100.ip altera_clock_bridge altera_clock_bridge_inst 19.2.0
	load_component clk_100
	set_component_parameter_value EXPLICIT_CLOCK_RATE {100000000.0}
	set_component_parameter_value NUM_CLOCK_OUTPUTS {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation clk_100
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface in_clk clock INPUT
	set_instantiation_interface_parameter_value in_clk clockRate {0}
	set_instantiation_interface_parameter_value in_clk externallyDriven {false}
	set_instantiation_interface_parameter_value in_clk ptfSchematicName {}
	add_instantiation_interface_port in_clk in_clk clk 1 STD_LOGIC Input
	add_instantiation_interface out_clk clock OUTPUT
	set_instantiation_interface_parameter_value out_clk associatedDirectClock {in_clk}
	set_instantiation_interface_parameter_value out_clk clockRate {100000000}
	set_instantiation_interface_parameter_value out_clk clockRateKnown {true}
	set_instantiation_interface_parameter_value out_clk externallyDriven {false}
	set_instantiation_interface_parameter_value out_clk ptfSchematicName {}
	set_instantiation_interface_sysinfo_parameter_value out_clk clock_rate {100000000}
	add_instantiation_interface_port out_clk out_clk clk 1 STD_LOGIC Output
	save_instantiation
	add_component debu_core_selector ip/qsys_top/s2mm_pio_1.ip altera_avalon_pio s2mm_pio_1 19.2.0
	load_component debu_core_selector
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {Output}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {0.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {8}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation debu_core_selector
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {0}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {0}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {8}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {0}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection out_port export 8 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component emif_calbus_0 ip/qsys_top/emif_calbus_0.ip altera_emif_cal altera_emif_cal_inst 2.6.2
	load_component emif_calbus_0
	set_component_parameter_value AXM_ID_NUM {0}
	set_component_parameter_value DIAG_ENABLE_JTAG_UART {0}
	set_component_parameter_value DIAG_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_EXPORT_VJI {0}
	set_component_parameter_value DIAG_EXTRA_CONFIGS {}
	set_component_parameter_value DIAG_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_SIM_VERBOSE {0}
	set_component_parameter_value DIAG_SYNTH_FOR_SIM {0}
	set_component_parameter_value ENABLE_DDRT {0}
	set_component_parameter_value NUM_CALBUS_INTERFACE {1}
	set_component_parameter_value PHY_DDRT_EXPORT_CLK_STP_IF {0}
	set_component_parameter_value SHORT_QSYS_INTERFACE_NAMES {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation emif_calbus_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface emif_calbus_0 conduit INPUT
	set_instantiation_interface_parameter_value emif_calbus_0 associatedClock {emif_calbus_clk}
	set_instantiation_interface_parameter_value emif_calbus_0 associatedReset {}
	set_instantiation_interface_parameter_value emif_calbus_0 prSafe {false}
	add_instantiation_interface_port emif_calbus_0 calbus_read_0 calbus_read 1 STD_LOGIC Output
	add_instantiation_interface_port emif_calbus_0 calbus_write_0 calbus_write 1 STD_LOGIC Output
	add_instantiation_interface_port emif_calbus_0 calbus_address_0 calbus_address 20 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port emif_calbus_0 calbus_wdata_0 calbus_wdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port emif_calbus_0 calbus_rdata_0 calbus_rdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port emif_calbus_0 calbus_seq_param_tbl_0 calbus_seq_param_tbl 4096 STD_LOGIC_VECTOR Input
	add_instantiation_interface emif_calbus_clk clock OUTPUT
	set_instantiation_interface_parameter_value emif_calbus_clk associatedDirectClock {}
	set_instantiation_interface_parameter_value emif_calbus_clk clockRate {0}
	set_instantiation_interface_parameter_value emif_calbus_clk clockRateKnown {false}
	set_instantiation_interface_parameter_value emif_calbus_clk externallyDriven {false}
	set_instantiation_interface_parameter_value emif_calbus_clk ptfSchematicName {}
	set_instantiation_interface_sysinfo_parameter_value emif_calbus_clk clock_rate {0}
	add_instantiation_interface_port emif_calbus_clk calbus_clk clk 1 STD_LOGIC Output
	save_instantiation
	add_component emif_hps ip/qsys_top/emif_hps.ip altera_emif_fm_hps altera_emif_fm_hps_inst 2.6.2
	load_component emif_hps
	set_component_parameter_value BOARD_DDR3_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_DDR3_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDR3_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR3_DQS_TO_CK_SKEW_NS {0.02}
	set_component_parameter_value BOARD_DDR3_IS_SKEW_WITHIN_AC_DESKEWED {1}
	set_component_parameter_value BOARD_DDR3_IS_SKEW_WITHIN_DQS_DESKEWED {0}
	set_component_parameter_value BOARD_DDR3_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDR3_MAX_DQS_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDR3_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDR3_PKG_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR3_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_DDR3_SKEW_BETWEEN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR3_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR3_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDR3_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDR3_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR3_USER_RCLK_SLEW_RATE {5.0}
	set_component_parameter_value BOARD_DDR3_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR3_USER_RDATA_SLEW_RATE {2.5}
	set_component_parameter_value BOARD_DDR3_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR3_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDR3_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR3_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDR3_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_DDR3_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_DDR4_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_DDR4_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDR4_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR4_DQS_TO_CK_SKEW_NS {0.02}
	set_component_parameter_value BOARD_DDR4_IS_SKEW_WITHIN_AC_DESKEWED {0}
	set_component_parameter_value BOARD_DDR4_IS_SKEW_WITHIN_DQS_DESKEWED {1}
	set_component_parameter_value BOARD_DDR4_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDR4_MAX_DQS_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDR4_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDR4_PKG_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR4_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_DDR4_SKEW_BETWEEN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDR4_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR4_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDR4_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDR4_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR4_USER_RCLK_SLEW_RATE {8.0}
	set_component_parameter_value BOARD_DDR4_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR4_USER_RDATA_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDR4_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR4_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDR4_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDR4_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDR4_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_DDR4_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_DDRT_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_DDRT_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDRT_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDRT_DQS_TO_CK_SKEW_NS {0.02}
	set_component_parameter_value BOARD_DDRT_IS_SKEW_WITHIN_AC_DESKEWED {0}
	set_component_parameter_value BOARD_DDRT_IS_SKEW_WITHIN_DQS_DESKEWED {1}
	set_component_parameter_value BOARD_DDRT_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDRT_MAX_DQS_DELAY_NS {0.6}
	set_component_parameter_value BOARD_DDRT_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_DDRT_PKG_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDRT_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_DDRT_SKEW_BETWEEN_DQS_NS {0.02}
	set_component_parameter_value BOARD_DDRT_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDRT_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDRT_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDRT_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDRT_USER_RCLK_SLEW_RATE {8.0}
	set_component_parameter_value BOARD_DDRT_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDRT_USER_RDATA_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDRT_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDRT_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_DDRT_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_DDRT_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_DDRT_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_DDRT_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_LPDDR3_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_DQS_TO_CK_SKEW_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_IS_SKEW_WITHIN_AC_DESKEWED {1}
	set_component_parameter_value BOARD_LPDDR3_IS_SKEW_WITHIN_DQS_DESKEWED {0}
	set_component_parameter_value BOARD_LPDDR3_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_LPDDR3_MAX_DQS_DELAY_NS {0.6}
	set_component_parameter_value BOARD_LPDDR3_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_PKG_BRD_SKEW_WITHIN_DQS_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_LPDDR3_SKEW_BETWEEN_DQS_NS {0.02}
	set_component_parameter_value BOARD_LPDDR3_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_LPDDR3_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_LPDDR3_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_USER_RCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_LPDDR3_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_USER_RDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_LPDDR3_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_LPDDR3_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_LPDDR3_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_LPDDR3_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_LPDDR3_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_QDR2_AC_TO_K_SKEW_NS {0.0}
	set_component_parameter_value BOARD_QDR2_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_QDR2_BRD_SKEW_WITHIN_D_NS {0.02}
	set_component_parameter_value BOARD_QDR2_BRD_SKEW_WITHIN_Q_NS {0.02}
	set_component_parameter_value BOARD_QDR2_IS_SKEW_WITHIN_AC_DESKEWED {1}
	set_component_parameter_value BOARD_QDR2_IS_SKEW_WITHIN_D_DESKEWED {0}
	set_component_parameter_value BOARD_QDR2_IS_SKEW_WITHIN_Q_DESKEWED {0}
	set_component_parameter_value BOARD_QDR2_MAX_K_DELAY_NS {0.6}
	set_component_parameter_value BOARD_QDR2_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_QDR2_PKG_BRD_SKEW_WITHIN_D_NS {0.02}
	set_component_parameter_value BOARD_QDR2_PKG_BRD_SKEW_WITHIN_Q_NS {0.02}
	set_component_parameter_value BOARD_QDR2_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR2_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_QDR2_USER_K_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_QDR2_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR2_USER_RCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_QDR2_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR2_USER_RDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_QDR2_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR2_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR2_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_QDR2_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_QDR2_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_QDR4_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_QDR4_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_QDR4_BRD_SKEW_WITHIN_QK_NS {0.02}
	set_component_parameter_value BOARD_QDR4_DK_TO_CK_SKEW_NS {-0.02}
	set_component_parameter_value BOARD_QDR4_IS_SKEW_WITHIN_AC_DESKEWED {1}
	set_component_parameter_value BOARD_QDR4_IS_SKEW_WITHIN_QK_DESKEWED {1}
	set_component_parameter_value BOARD_QDR4_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_QDR4_MAX_DK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_QDR4_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_QDR4_PKG_BRD_SKEW_WITHIN_QK_NS {0.02}
	set_component_parameter_value BOARD_QDR4_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_QDR4_SKEW_BETWEEN_DK_NS {0.02}
	set_component_parameter_value BOARD_QDR4_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR4_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_QDR4_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_QDR4_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR4_USER_RCLK_SLEW_RATE {5.0}
	set_component_parameter_value BOARD_QDR4_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR4_USER_RDATA_SLEW_RATE {2.5}
	set_component_parameter_value BOARD_QDR4_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR4_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_QDR4_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_QDR4_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_QDR4_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_QDR4_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value BOARD_RLD3_AC_TO_CK_SKEW_NS {0.0}
	set_component_parameter_value BOARD_RLD3_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_RLD3_BRD_SKEW_WITHIN_QK_NS {0.02}
	set_component_parameter_value BOARD_RLD3_DK_TO_CK_SKEW_NS {-0.02}
	set_component_parameter_value BOARD_RLD3_IS_SKEW_WITHIN_AC_DESKEWED {1}
	set_component_parameter_value BOARD_RLD3_IS_SKEW_WITHIN_QK_DESKEWED {0}
	set_component_parameter_value BOARD_RLD3_MAX_CK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_RLD3_MAX_DK_DELAY_NS {0.6}
	set_component_parameter_value BOARD_RLD3_PKG_BRD_SKEW_WITHIN_AC_NS {0.02}
	set_component_parameter_value BOARD_RLD3_PKG_BRD_SKEW_WITHIN_QK_NS {0.02}
	set_component_parameter_value BOARD_RLD3_SKEW_BETWEEN_DIMMS_NS {0.05}
	set_component_parameter_value BOARD_RLD3_SKEW_BETWEEN_DK_NS {0.02}
	set_component_parameter_value BOARD_RLD3_USER_AC_ISI_NS {0.0}
	set_component_parameter_value BOARD_RLD3_USER_AC_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_RLD3_USER_CK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_RLD3_USER_RCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_RLD3_USER_RCLK_SLEW_RATE {7.0}
	set_component_parameter_value BOARD_RLD3_USER_RDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_RLD3_USER_RDATA_SLEW_RATE {3.5}
	set_component_parameter_value BOARD_RLD3_USER_WCLK_ISI_NS {0.0}
	set_component_parameter_value BOARD_RLD3_USER_WCLK_SLEW_RATE {4.0}
	set_component_parameter_value BOARD_RLD3_USER_WDATA_ISI_NS {0.0}
	set_component_parameter_value BOARD_RLD3_USER_WDATA_SLEW_RATE {2.0}
	set_component_parameter_value BOARD_RLD3_USE_DEFAULT_ISI_VALUES {1}
	set_component_parameter_value BOARD_RLD3_USE_DEFAULT_SLEW_RATES {1}
	set_component_parameter_value CTRL_DDR3_ADDR_ORDER_ENUM {DDR3_CTRL_ADDR_ORDER_CS_R_B_C}
	set_component_parameter_value CTRL_DDR3_AUTO_POWER_DOWN_CYCS {32}
	set_component_parameter_value CTRL_DDR3_AUTO_POWER_DOWN_EN {0}
	set_component_parameter_value CTRL_DDR3_AUTO_PRECHARGE_EN {0}
	set_component_parameter_value CTRL_DDR3_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_DDR3_ECC_AUTO_CORRECTION_EN {0}
	set_component_parameter_value CTRL_DDR3_ECC_EN {0}
	set_component_parameter_value CTRL_DDR3_ECC_READDATAERROR_EN {1}
	set_component_parameter_value CTRL_DDR3_ECC_STATUS_EN {0}
	set_component_parameter_value CTRL_DDR3_MMR_EN {0}
	set_component_parameter_value CTRL_DDR3_RD_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR3_RD_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR3_RD_TO_WR_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR3_REORDER_EN {1}
	set_component_parameter_value CTRL_DDR3_SELF_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR3_STARVE_LIMIT {10}
	set_component_parameter_value CTRL_DDR3_USER_PRIORITY_EN {0}
	set_component_parameter_value CTRL_DDR3_USER_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR3_WR_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR3_WR_TO_RD_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR3_WR_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_ADDR_ORDER_ENUM {DDR4_CTRL_ADDR_ORDER_CS_R_B_C_BG}
	set_component_parameter_value CTRL_DDR4_AUTO_POWER_DOWN_CYCS {32}
	set_component_parameter_value CTRL_DDR4_AUTO_POWER_DOWN_EN {0}
	set_component_parameter_value CTRL_DDR4_AUTO_PRECHARGE_EN {0}
	set_component_parameter_value CTRL_DDR4_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_ST}
	set_component_parameter_value CTRL_DDR4_ECC_AUTO_CORRECTION_EN {1}
	set_component_parameter_value CTRL_DDR4_ECC_EN {1}
	set_component_parameter_value CTRL_DDR4_ECC_READDATAERROR_EN {0}
	set_component_parameter_value CTRL_DDR4_ECC_STATUS_EN {0}
	set_component_parameter_value CTRL_DDR4_MAJOR_MODE_EN {0}
	set_component_parameter_value CTRL_DDR4_MMR_EN {0}
	set_component_parameter_value CTRL_DDR4_POST_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR4_POST_REFRESH_LOWER_LIMIT {0}
	set_component_parameter_value CTRL_DDR4_POST_REFRESH_UPPER_LIMIT {2}
	set_component_parameter_value CTRL_DDR4_PRE_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR4_PRE_REFRESH_UPPER_LIMIT {1}
	set_component_parameter_value CTRL_DDR4_RD_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_RD_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_RD_TO_WR_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_REORDER_EN {1}
	set_component_parameter_value CTRL_DDR4_SELF_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR4_STARVE_LIMIT {10}
	set_component_parameter_value CTRL_DDR4_USER_PRIORITY_EN {0}
	set_component_parameter_value CTRL_DDR4_USER_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDR4_WR_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_WR_TO_RD_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDR4_WR_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_ADDR_INTERLEAVING {COARSE}
	set_component_parameter_value CTRL_DDRT_ADDR_ORDER_ENUM {DDRT_CTRL_ADDR_ORDER_CS_R_B_C_BG}
	set_component_parameter_value CTRL_DDRT_AUTO_POWER_DOWN_CYCS {32}
	set_component_parameter_value CTRL_DDRT_AUTO_POWER_DOWN_EN {0}
	set_component_parameter_value CTRL_DDRT_AUTO_PRECHARGE_EN {0}
	set_component_parameter_value CTRL_DDRT_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_DDRT_DIMM_DENSITY {128}
	set_component_parameter_value CTRL_DDRT_DIMM_VIRAL_FLOW_EN {0}
	set_component_parameter_value CTRL_DDRT_ECC_AUTO_CORRECTION_EN {0}
	set_component_parameter_value CTRL_DDRT_ECC_EN {0}
	set_component_parameter_value CTRL_DDRT_ECC_READDATAERROR_EN {1}
	set_component_parameter_value CTRL_DDRT_ECC_STATUS_EN {1}
	set_component_parameter_value CTRL_DDRT_ERR_INJECT_EN {0}
	set_component_parameter_value CTRL_DDRT_ERR_REPLAY_EN {0}
	set_component_parameter_value CTRL_DDRT_EXT_ERR_INJECT_EN {0}
	set_component_parameter_value CTRL_DDRT_GNT_TO_GNT_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_GNT_TO_WR_DIFF_CHIP_DELTA_CYCS {1}
	set_component_parameter_value CTRL_DDRT_GNT_TO_WR_SAME_CHIP_DELTA_CYCS {1}
	set_component_parameter_value CTRL_DDRT_HOST_VIRAL_FLOW_EN {0}
	set_component_parameter_value CTRL_DDRT_MMR_EN {0}
	set_component_parameter_value CTRL_DDRT_NUM_OF_AXIS_ID {1}
	set_component_parameter_value CTRL_DDRT_PARITY_CMD_EN {0}
	set_component_parameter_value CTRL_DDRT_PMM_ADR_FLOW_EN {0}
	set_component_parameter_value CTRL_DDRT_PMM_WPQ_FLUSH_EN {0}
	set_component_parameter_value CTRL_DDRT_POISON_DETECTION_EN {0}
	set_component_parameter_value CTRL_DDRT_PORT_AFI_C_WIDTH {2}
	set_component_parameter_value CTRL_DDRT_RD_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_RD_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_RD_TO_WR_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_REORDER_EN {1}
	set_component_parameter_value CTRL_DDRT_SELF_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDRT_STARVE_LIMIT {10}
	set_component_parameter_value CTRL_DDRT_UPI_EN {0}
	set_component_parameter_value CTRL_DDRT_UPI_ID_WIDTH {8}
	set_component_parameter_value CTRL_DDRT_USER_PRIORITY_EN {0}
	set_component_parameter_value CTRL_DDRT_USER_REFRESH_EN {0}
	set_component_parameter_value CTRL_DDRT_WR_ACK_POLICY {POSTED}
	set_component_parameter_value CTRL_DDRT_WR_TO_GNT_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_WR_TO_GNT_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_WR_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_WR_TO_RD_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_WR_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_DDRT_ZQ_INTERVAL_MS {3}
	set_component_parameter_value CTRL_LPDDR3_ADDR_ORDER_ENUM {LPDDR3_CTRL_ADDR_ORDER_CS_R_B_C}
	set_component_parameter_value CTRL_LPDDR3_AUTO_POWER_DOWN_CYCS {32}
	set_component_parameter_value CTRL_LPDDR3_AUTO_POWER_DOWN_EN {0}
	set_component_parameter_value CTRL_LPDDR3_AUTO_PRECHARGE_EN {0}
	set_component_parameter_value CTRL_LPDDR3_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_LPDDR3_MMR_EN {0}
	set_component_parameter_value CTRL_LPDDR3_RD_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_LPDDR3_RD_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_LPDDR3_RD_TO_WR_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_LPDDR3_REORDER_EN {1}
	set_component_parameter_value CTRL_LPDDR3_SELF_REFRESH_EN {0}
	set_component_parameter_value CTRL_LPDDR3_STARVE_LIMIT {10}
	set_component_parameter_value CTRL_LPDDR3_USER_PRIORITY_EN {0}
	set_component_parameter_value CTRL_LPDDR3_USER_REFRESH_EN {0}
	set_component_parameter_value CTRL_LPDDR3_WR_TO_RD_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_LPDDR3_WR_TO_RD_SAME_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_LPDDR3_WR_TO_WR_DIFF_CHIP_DELTA_CYCS {0}
	set_component_parameter_value CTRL_QDR2_AVL_ENABLE_POWER_OF_TWO_BUS {0}
	set_component_parameter_value CTRL_QDR2_AVL_MAX_BURST_COUNT {4}
	set_component_parameter_value CTRL_QDR2_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_QDR4_ADD_RAW_TURNAROUND_DELAY_CYC {0}
	set_component_parameter_value CTRL_QDR4_ADD_WAR_TURNAROUND_DELAY_CYC {0}
	set_component_parameter_value CTRL_QDR4_AVL_ENABLE_POWER_OF_TWO_BUS {0}
	set_component_parameter_value CTRL_QDR4_AVL_MAX_BURST_COUNT {4}
	set_component_parameter_value CTRL_QDR4_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_QDR4_DEF_RAW_TURNAROUND_DELAY_CYC {4}
	set_component_parameter_value CTRL_RLD2_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value CTRL_RLD3_ADDR_ORDER_ENUM {RLD3_CTRL_ADDR_ORDER_CS_R_B_C}
	set_component_parameter_value CTRL_RLD3_AVL_PROTOCOL_ENUM {CTRL_AVL_PROTOCOL_MM}
	set_component_parameter_value DIAG_ADD_READY_PIPELINE {1}
	set_component_parameter_value DIAG_BOARD_DELAY_CONFIG_STR {}
	set_component_parameter_value DIAG_DB_RESET_AUTO_RELEASE {avl_release}
	set_component_parameter_value DIAG_DDR3_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_DDR3_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_DDR3_CAL_ADDR0 {0}
	set_component_parameter_value DIAG_DDR3_CAL_ADDR1 {8}
	set_component_parameter_value DIAG_DDR3_CAL_ENABLE_MICRON_AP {0}
	set_component_parameter_value DIAG_DDR3_CAL_ENABLE_NON_DES {0}
	set_component_parameter_value DIAG_DDR3_CAL_FULL_CAL_ON_RESET {1}
	set_component_parameter_value DIAG_DDR3_CA_DESKEW_EN {1}
	set_component_parameter_value DIAG_DDR3_CA_LEVEL_EN {1}
	set_component_parameter_value DIAG_DDR3_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_DDR3_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_DDR3_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_DDR3_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_DDR3_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_DDR3_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_DDR3_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_DDR3_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_DDR3_EX_DESIGN_ISSP_EN {0}
	set_component_parameter_value DIAG_DDR3_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_DDR3_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_DDR3_INTERFACE_ID {0}
	set_component_parameter_value DIAG_DDR3_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_DDR3_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_DDR3_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_DDR3_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_DDR3_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_DDR3_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_DDR3_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_DDR3_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_DDR3_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_DDR3_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_DDR3_USE_TG_HBM {0}
	set_component_parameter_value DIAG_DDR4_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_DDR4_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_DDR4_CAL_ADDR0 {0}
	set_component_parameter_value DIAG_DDR4_CAL_ADDR1 {8}
	set_component_parameter_value DIAG_DDR4_CAL_ENABLE_NON_DES {0}
	set_component_parameter_value DIAG_DDR4_CAL_FULL_CAL_ON_RESET {1}
	set_component_parameter_value DIAG_DDR4_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_DDR4_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_DDR4_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_DDR4_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_DDR4_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_DDR4_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_DDR4_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_DDR4_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_DDR4_EX_DESIGN_ISSP_EN {0}
	set_component_parameter_value DIAG_DDR4_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_DDR4_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_DDR4_INTERFACE_ID {0}
	set_component_parameter_value DIAG_DDR4_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_DDR4_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_DDR4_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_DDR4_SKIP_AC_PARITY_CHECK {0}
	set_component_parameter_value DIAG_DDR4_SKIP_CA_DESKEW {0}
	set_component_parameter_value DIAG_DDR4_SKIP_CA_LEVEL {0}
	set_component_parameter_value DIAG_DDR4_SKIP_VREF_CAL {0}
	set_component_parameter_value DIAG_DDR4_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_DDR4_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_DDR4_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_DDR4_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_DDR4_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_DDR4_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_DDR4_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_DDR4_USE_TG_HBM {0}
	set_component_parameter_value DIAG_DDRT_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_DDRT_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_DDRT_CAL_ADDR0 {0}
	set_component_parameter_value DIAG_DDRT_CAL_ADDR1 {8}
	set_component_parameter_value DIAG_DDRT_CAL_ENABLE_NON_DES {0}
	set_component_parameter_value DIAG_DDRT_CAL_FULL_CAL_ON_RESET {1}
	set_component_parameter_value DIAG_DDRT_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_DDRT_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_DDRT_EFF_TEST {0}
	set_component_parameter_value DIAG_DDRT_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_DDRT_ENABLE_DRIVER_MARGINING {0}
	set_component_parameter_value DIAG_DDRT_ENABLE_ENHANCED_TESTING {0}
	set_component_parameter_value DIAG_DDRT_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_DDRT_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_DDRT_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_DDRT_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_DDRT_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_DDRT_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_DDRT_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_DDRT_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_DDRT_INTERFACE_ID {0}
	set_component_parameter_value DIAG_DDRT_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_DDRT_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_DDRT_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_DDRT_SKIP_CA_DESKEW {0}
	set_component_parameter_value DIAG_DDRT_SKIP_CA_LEVEL {0}
	set_component_parameter_value DIAG_DDRT_SKIP_VREF_CAL {0}
	set_component_parameter_value DIAG_DDRT_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_DDRT_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_DDRT_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_DDRT_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_DDRT_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_DDRT_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_DDRT_USE_TG_AVL_2 {1}
	set_component_parameter_value DIAG_DDRT_USE_TG_HBM {0}
	set_component_parameter_value DIAG_ECLIPSE_DEBUG {0}
	set_component_parameter_value DIAG_ENABLE_HPS_EMIF_DEBUG {0}
	set_component_parameter_value DIAG_ENABLE_JTAG_UART {0}
	set_component_parameter_value DIAG_ENABLE_JTAG_UART_HEX {0}
	set_component_parameter_value DIAG_EXPORT_PLL_LOCKED {0}
	set_component_parameter_value DIAG_EXPORT_PLL_REF_CLK_OUT {0}
	set_component_parameter_value DIAG_EXPORT_VJI {0}
	set_component_parameter_value DIAG_EXPOSE_DFT_SIGNALS {0}
	set_component_parameter_value DIAG_EXPOSE_EARLY_READY {0}
	set_component_parameter_value DIAG_EXPOSE_RD_TYPE {0}
	set_component_parameter_value DIAG_EXTRA_CONFIGS {}
	set_component_parameter_value DIAG_EXT_DOCS {0}
	set_component_parameter_value DIAG_EX_DESIGN_ADD_TEST_EMIFS {}
	set_component_parameter_value DIAG_EX_DESIGN_SEPARATE_RESETS {0}
	set_component_parameter_value DIAG_FAST_SIM_OVERRIDE {FAST_SIM_OVERRIDE_DEFAULT}
	set_component_parameter_value DIAG_HMC_HRC {OFF}
	set_component_parameter_value DIAG_LPDDR3_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_LPDDR3_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_LPDDR3_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_LPDDR3_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_LPDDR3_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_LPDDR3_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_LPDDR3_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_LPDDR3_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_LPDDR3_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_LPDDR3_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_LPDDR3_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_LPDDR3_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_LPDDR3_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_LPDDR3_INTERFACE_ID {0}
	set_component_parameter_value DIAG_LPDDR3_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_LPDDR3_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_LPDDR3_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_LPDDR3_SKIP_CA_DESKEW {0}
	set_component_parameter_value DIAG_LPDDR3_SKIP_CA_LEVEL {0}
	set_component_parameter_value DIAG_LPDDR3_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_LPDDR3_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_LPDDR3_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_LPDDR3_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_LPDDR3_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_LPDDR3_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_LPDDR3_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_LPDDR3_USE_TG_HBM {0}
	set_component_parameter_value DIAG_QDR2_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_QDR2_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_QDR2_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_QDR2_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_QDR2_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_QDR2_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_QDR2_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_QDR2_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_QDR2_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_QDR2_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_QDR2_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_QDR2_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_QDR2_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_QDR2_INTERFACE_ID {0}
	set_component_parameter_value DIAG_QDR2_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_QDR2_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_QDR2_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_QDR2_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_QDR2_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_QDR2_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_QDR2_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_QDR2_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_QDR2_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_QDR2_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_QDR2_USE_TG_HBM {0}
	set_component_parameter_value DIAG_QDR4_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_QDR4_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_QDR4_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_QDR4_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_QDR4_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_QDR4_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_QDR4_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_QDR4_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_QDR4_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_QDR4_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_QDR4_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_QDR4_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_QDR4_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_QDR4_INTERFACE_ID {0}
	set_component_parameter_value DIAG_QDR4_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_QDR4_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_QDR4_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_QDR4_SKIP_VREF_CAL {0}
	set_component_parameter_value DIAG_QDR4_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_QDR4_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_QDR4_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_QDR4_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_QDR4_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_QDR4_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_QDR4_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_QDR4_USE_TG_HBM {0}
	set_component_parameter_value DIAG_RLD2_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_RLD2_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_RLD2_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_RLD2_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_RLD2_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_RLD2_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_RLD2_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_RLD2_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_RLD2_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_RLD2_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_RLD2_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_RLD2_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_RLD2_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_RLD2_INTERFACE_ID {0}
	set_component_parameter_value DIAG_RLD2_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_RLD2_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_RLD2_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_RLD2_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_RLD2_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_RLD2_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_RLD2_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_RLD2_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_RLD2_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_RLD2_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_RLD2_USE_TG_HBM {0}
	set_component_parameter_value DIAG_RLD3_ABSTRACT_PHY {0}
	set_component_parameter_value DIAG_RLD3_AC_PARITY_ERR {0}
	set_component_parameter_value DIAG_RLD3_CA_DESKEW_EN {1}
	set_component_parameter_value DIAG_RLD3_CA_LEVEL_EN {1}
	set_component_parameter_value DIAG_RLD3_DISABLE_AFI_P2C_REGISTERS {0}
	set_component_parameter_value DIAG_RLD3_EFFICIENCY_MONITOR {EFFMON_MODE_DISABLED}
	set_component_parameter_value DIAG_RLD3_ENABLE_DEFAULT_MODE {0}
	set_component_parameter_value DIAG_RLD3_ENABLE_USER_MODE {1}
	set_component_parameter_value DIAG_RLD3_EXPORT_SEQ_AVALON_HEAD_OF_CHAIN {1}
	set_component_parameter_value DIAG_RLD3_EXPORT_SEQ_AVALON_MASTER {0}
	set_component_parameter_value DIAG_RLD3_EXPORT_SEQ_AVALON_SLAVE {CAL_DEBUG_EXPORT_MODE_DISABLED}
	set_component_parameter_value DIAG_RLD3_EXPORT_TG_CFG_AVALON_SLAVE {TG_CFG_AMM_EXPORT_MODE_JTAG}
	set_component_parameter_value DIAG_RLD3_EX_DESIGN_ISSP_EN {1}
	set_component_parameter_value DIAG_RLD3_EX_DESIGN_NUM_OF_SLAVES {1}
	set_component_parameter_value DIAG_RLD3_EX_DESIGN_SEPARATE_RZQS {1}
	set_component_parameter_value DIAG_RLD3_INTERFACE_ID {0}
	set_component_parameter_value DIAG_RLD3_SEPARATE_READ_WRITE_ITFS {0}
	set_component_parameter_value DIAG_RLD3_SIM_CAL_MODE_ENUM {SIM_CAL_MODE_SKIP}
	set_component_parameter_value DIAG_RLD3_SIM_VERBOSE {1}
	set_component_parameter_value DIAG_RLD3_TG2_TEST_DURATION {SHORT}
	set_component_parameter_value DIAG_RLD3_USER_SIM_MEMORY_PRELOAD {0}
	set_component_parameter_value DIAG_RLD3_USER_SIM_MEMORY_PRELOAD_PRI_EMIF_FILE {EMIF_PRI_PRELOAD.txt}
	set_component_parameter_value DIAG_RLD3_USER_SIM_MEMORY_PRELOAD_SEC_EMIF_FILE {EMIF_SEC_PRELOAD.txt}
	set_component_parameter_value DIAG_RLD3_USER_USE_SIM_MEMORY_VALIDATION_TG {1}
	set_component_parameter_value DIAG_RLD3_USE_NEW_EFFMON_S10 {0}
	set_component_parameter_value DIAG_RLD3_USE_TG_AVL_2 {0}
	set_component_parameter_value DIAG_RLD3_USE_TG_HBM {0}
	set_component_parameter_value DIAG_RS232_UART_BAUDRATE {57600}
	set_component_parameter_value DIAG_SEQ_RESET_AUTO_RELEASE {avl}
	set_component_parameter_value DIAG_SIM_REGTEST_MODE {0}
	set_component_parameter_value DIAG_SOFT_NIOS_CLOCK_FREQUENCY {100}
	set_component_parameter_value DIAG_SOFT_NIOS_MODE {SOFT_NIOS_MODE_DISABLED}
	set_component_parameter_value DIAG_SYNTH_FOR_SIM {0}
	set_component_parameter_value DIAG_TG_AVL_2_NUM_CFG_INTERFACES {0}
	set_component_parameter_value DIAG_TIMING_REGTEST_MODE {0}
	set_component_parameter_value DIAG_USE_BOARD_DELAY_MODEL {0}
	set_component_parameter_value DIAG_USE_RS232_UART {0}
	set_component_parameter_value DIAG_VERBOSE_IOAUX {0}
	set_component_parameter_value EMIF_0_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_0_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_0_STORED_PARAM {}
	set_component_parameter_value EMIF_10_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_10_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_10_STORED_PARAM {}
	set_component_parameter_value EMIF_11_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_11_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_11_STORED_PARAM {}
	set_component_parameter_value EMIF_12_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_12_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_12_STORED_PARAM {}
	set_component_parameter_value EMIF_13_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_13_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_13_STORED_PARAM {}
	set_component_parameter_value EMIF_14_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_14_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_14_STORED_PARAM {}
	set_component_parameter_value EMIF_15_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_15_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_15_STORED_PARAM {}
	set_component_parameter_value EMIF_1_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_1_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_1_STORED_PARAM {}
	set_component_parameter_value EMIF_2_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_2_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_2_STORED_PARAM {}
	set_component_parameter_value EMIF_3_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_3_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_3_STORED_PARAM {}
	set_component_parameter_value EMIF_4_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_4_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_4_STORED_PARAM {}
	set_component_parameter_value EMIF_5_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_5_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_5_STORED_PARAM {}
	set_component_parameter_value EMIF_6_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_6_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_6_STORED_PARAM {}
	set_component_parameter_value EMIF_7_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_7_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_7_STORED_PARAM {}
	set_component_parameter_value EMIF_8_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_8_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_8_STORED_PARAM {}
	set_component_parameter_value EMIF_9_CONN_TO_CALIP {CALIP_0}
	set_component_parameter_value EMIF_9_REF_CLK_SHARING {EXPORTED}
	set_component_parameter_value EMIF_9_STORED_PARAM {}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_DDR3_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_DDR4_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_DDRT_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_LPDDR3_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_QDR2_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_QDR4_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_RLD2_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_GEN_BSI {0}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_GEN_CDC {0}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_GEN_SIM {1}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_GEN_SYNTH {1}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_HDL_FORMAT {HDL_FORMAT_VERILOG}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_PREV_PRESET {TARGET_DEV_KIT_NONE}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_SEL_DESIGN {AVAIL_EX_DESIGNS_GEN_DESIGN}
	set_component_parameter_value EX_DESIGN_GUI_RLD3_TARGET_DEV_KIT {TARGET_DEV_KIT_NONE}
	set_component_parameter_value INTERNAL_TESTING_MODE {0}
	set_component_parameter_value IS_ED_SLAVE {0}
	set_component_parameter_value MEM_DDR3_ALERT_N_DQS_GROUP {0}
	set_component_parameter_value MEM_DDR3_ALERT_N_PLACEMENT_ENUM {DDR3_ALERT_N_PLACEMENT_AC_LANES}
	set_component_parameter_value MEM_DDR3_ASR_ENUM {DDR3_ASR_MANUAL}
	set_component_parameter_value MEM_DDR3_ATCL_ENUM {DDR3_ATCL_DISABLED}
	set_component_parameter_value MEM_DDR3_BANK_ADDR_WIDTH {3}
	set_component_parameter_value MEM_DDR3_BL_ENUM {DDR3_BL_BL8}
	set_component_parameter_value MEM_DDR3_BT_ENUM {DDR3_BT_SEQUENTIAL}
	set_component_parameter_value MEM_DDR3_CFG_GEN_DBE {0}
	set_component_parameter_value MEM_DDR3_CFG_GEN_SBE {0}
	set_component_parameter_value MEM_DDR3_CKE_PER_DIMM {1}
	set_component_parameter_value MEM_DDR3_CK_WIDTH {1}
	set_component_parameter_value MEM_DDR3_COL_ADDR_WIDTH {10}
	set_component_parameter_value MEM_DDR3_DISCRETE_CS_WIDTH {1}
	set_component_parameter_value MEM_DDR3_DISCRETE_MIRROR_ADDRESSING_EN {0}
	set_component_parameter_value MEM_DDR3_DLL_EN {1}
	set_component_parameter_value MEM_DDR3_DM_EN {1}
	set_component_parameter_value MEM_DDR3_DQ_PER_DQS {8}
	set_component_parameter_value MEM_DDR3_DQ_WIDTH {72}
	set_component_parameter_value MEM_DDR3_DRV_STR_ENUM {DDR3_DRV_STR_RZQ_7}
	set_component_parameter_value MEM_DDR3_FORMAT_ENUM {MEM_FORMAT_UDIMM}
	set_component_parameter_value MEM_DDR3_HIDE_ADV_MR_SETTINGS {1}
	set_component_parameter_value MEM_DDR3_LRDIMM_EXTENDED_CONFIG {000000000000000000}
	set_component_parameter_value MEM_DDR3_MIRROR_ADDRESSING_EN {1}
	set_component_parameter_value MEM_DDR3_NUM_OF_DIMMS {1}
	set_component_parameter_value MEM_DDR3_PD_ENUM {DDR3_PD_OFF}
	set_component_parameter_value MEM_DDR3_RANKS_PER_DIMM {1}
	set_component_parameter_value MEM_DDR3_RDIMM_CONFIG {0000000000000000}
	set_component_parameter_value MEM_DDR3_ROW_ADDR_WIDTH {15}
	set_component_parameter_value MEM_DDR3_RTT_NOM_ENUM {DDR3_RTT_NOM_ODT_DISABLED}
	set_component_parameter_value MEM_DDR3_RTT_WR_ENUM {DDR3_RTT_WR_RZQ_4}
	set_component_parameter_value MEM_DDR3_R_ODT0_1X1 {off}
	set_component_parameter_value MEM_DDR3_R_ODT0_2X2 {off off}
	set_component_parameter_value MEM_DDR3_R_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDR3_R_ODT0_4X4 {off off on off}
	set_component_parameter_value MEM_DDR3_R_ODT1_2X2 {off off}
	set_component_parameter_value MEM_DDR3_R_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDR3_R_ODT1_4X4 {off off off on}
	set_component_parameter_value MEM_DDR3_R_ODT2_4X4 {on off off off}
	set_component_parameter_value MEM_DDR3_R_ODT3_4X4 {off on off off}
	set_component_parameter_value MEM_DDR3_R_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDR3_R_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDR3_R_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR3_R_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR3_SPEEDBIN_ENUM {DDR3_SPEEDBIN_2133}
	set_component_parameter_value MEM_DDR3_SRT_ENUM {DDR3_SRT_NORMAL}
	set_component_parameter_value MEM_DDR3_TCL {14}
	set_component_parameter_value MEM_DDR3_TDH_DC_MV {100}
	set_component_parameter_value MEM_DDR3_TDH_PS {55}
	set_component_parameter_value MEM_DDR3_TDQSCK_PS {180}
	set_component_parameter_value MEM_DDR3_TDQSQ_PS {75}
	set_component_parameter_value MEM_DDR3_TDQSS_CYC {0.27}
	set_component_parameter_value MEM_DDR3_TDSH_CYC {0.18}
	set_component_parameter_value MEM_DDR3_TDSS_CYC {0.18}
	set_component_parameter_value MEM_DDR3_TDS_AC_MV {135}
	set_component_parameter_value MEM_DDR3_TDS_PS {53}
	set_component_parameter_value MEM_DDR3_TFAW_NS {25.0}
	set_component_parameter_value MEM_DDR3_TIH_DC_MV {100}
	set_component_parameter_value MEM_DDR3_TIH_PS {95}
	set_component_parameter_value MEM_DDR3_TINIT_US {500}
	set_component_parameter_value MEM_DDR3_TIS_AC_MV {135}
	set_component_parameter_value MEM_DDR3_TIS_PS {60}
	set_component_parameter_value MEM_DDR3_TMRD_CK_CYC {4}
	set_component_parameter_value MEM_DDR3_TQH_CYC {0.38}
	set_component_parameter_value MEM_DDR3_TQSH_CYC {0.4}
	set_component_parameter_value MEM_DDR3_TRAS_NS {33.0}
	set_component_parameter_value MEM_DDR3_TRCD_NS {13.09}
	set_component_parameter_value MEM_DDR3_TREFI_US {7.8}
	set_component_parameter_value MEM_DDR3_TRFC_NS {160.0}
	set_component_parameter_value MEM_DDR3_TRP_NS {13.09}
	set_component_parameter_value MEM_DDR3_TRRD_CYC {6}
	set_component_parameter_value MEM_DDR3_TRTP_CYC {8}
	set_component_parameter_value MEM_DDR3_TWLH_PS {125.0}
	set_component_parameter_value MEM_DDR3_TWLS_PS {125.0}
	set_component_parameter_value MEM_DDR3_TWR_NS {15.0}
	set_component_parameter_value MEM_DDR3_TWTR_CYC {8}
	set_component_parameter_value MEM_DDR3_USE_DEFAULT_ODT {1}
	set_component_parameter_value MEM_DDR3_WTCL {10}
	set_component_parameter_value MEM_DDR3_W_ODT0_1X1 {on}
	set_component_parameter_value MEM_DDR3_W_ODT0_2X2 {on off}
	set_component_parameter_value MEM_DDR3_W_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDR3_W_ODT0_4X4 {on off on off}
	set_component_parameter_value MEM_DDR3_W_ODT1_2X2 {off on}
	set_component_parameter_value MEM_DDR3_W_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDR3_W_ODT1_4X4 {off on off on}
	set_component_parameter_value MEM_DDR3_W_ODT2_4X4 {on off on off}
	set_component_parameter_value MEM_DDR3_W_ODT3_4X4 {off on off on}
	set_component_parameter_value MEM_DDR3_W_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDR3_W_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDR3_W_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR3_W_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR4_AC_PARITY_LATENCY {DDR4_AC_PARITY_LATENCY_DISABLE}
	set_component_parameter_value MEM_DDR4_AC_PERSISTENT_ERROR {0}
	set_component_parameter_value MEM_DDR4_ALERT_N_AC_LANE {0}
	set_component_parameter_value MEM_DDR4_ALERT_N_AC_PIN {0}
	set_component_parameter_value MEM_DDR4_ALERT_N_DQS_GROUP {0}
	set_component_parameter_value MEM_DDR4_ALERT_N_PLACEMENT_ENUM {DDR4_ALERT_N_PLACEMENT_AUTO}
	set_component_parameter_value MEM_DDR4_ALERT_PAR_EN {1}
	set_component_parameter_value MEM_DDR4_ASR_ENUM {DDR4_ASR_MANUAL_NORMAL}
	set_component_parameter_value MEM_DDR4_ATCL_ENUM {DDR4_ATCL_DISABLED}
	set_component_parameter_value MEM_DDR4_BANK_ADDR_WIDTH {2}
	set_component_parameter_value MEM_DDR4_BANK_GROUP_WIDTH {1}
	set_component_parameter_value MEM_DDR4_BL_ENUM {DDR4_BL_BL8}
	set_component_parameter_value MEM_DDR4_BT_ENUM {DDR4_BT_SEQUENTIAL}
	set_component_parameter_value MEM_DDR4_CAL_MODE {0}
	set_component_parameter_value MEM_DDR4_CFG_GEN_DBE {0}
	set_component_parameter_value MEM_DDR4_CFG_GEN_SBE {0}
	set_component_parameter_value MEM_DDR4_CHIP_ID_WIDTH {0}
	set_component_parameter_value MEM_DDR4_CKE_PER_DIMM {1}
	set_component_parameter_value MEM_DDR4_CK_WIDTH {1}
	set_component_parameter_value MEM_DDR4_COL_ADDR_WIDTH {10}
	set_component_parameter_value MEM_DDR4_DB_DQ_DRV_ENUM {DDR4_DB_DRV_STR_RZQ_7}
	set_component_parameter_value MEM_DDR4_DB_RTT_NOM_ENUM {DDR4_DB_RTT_NOM_ODT_DISABLED}
	set_component_parameter_value MEM_DDR4_DB_RTT_PARK_ENUM {DDR4_DB_RTT_PARK_ODT_DISABLED}
	set_component_parameter_value MEM_DDR4_DB_RTT_WR_ENUM {DDR4_DB_RTT_WR_RZQ_3}
	set_component_parameter_value MEM_DDR4_DEFAULT_VREFOUT {1}
	set_component_parameter_value MEM_DDR4_DISCRETE_CS_WIDTH {1}
	set_component_parameter_value MEM_DDR4_DISCRETE_MIRROR_ADDRESSING_EN {0}
	set_component_parameter_value MEM_DDR4_DLL_EN {1}
	set_component_parameter_value MEM_DDR4_DM_EN {1}
	set_component_parameter_value MEM_DDR4_DQ_PER_DQS {8}
	set_component_parameter_value MEM_DDR4_DQ_WIDTH {72}
	set_component_parameter_value MEM_DDR4_DRV_STR_ENUM {DDR4_DRV_STR_RZQ_7}
	set_component_parameter_value MEM_DDR4_FINE_GRANULARITY_REFRESH {DDR4_FINE_REFRESH_FIXED_1X}
	set_component_parameter_value MEM_DDR4_FORMAT_ENUM {MEM_FORMAT_DISCRETE}
	set_component_parameter_value MEM_DDR4_GEARDOWN {DDR4_GEARDOWN_HR}
	set_component_parameter_value MEM_DDR4_HIDE_ADV_MR_SETTINGS {1}
	set_component_parameter_value MEM_DDR4_INTEL_DEFAULT_TERM {1}
	set_component_parameter_value MEM_DDR4_INTERNAL_VREFDQ_MONITOR {0}
	set_component_parameter_value MEM_DDR4_LRDIMM_ODT_LESS_BS {0}
	set_component_parameter_value MEM_DDR4_LRDIMM_ODT_LESS_BS_PARK_OHM {240}
	set_component_parameter_value MEM_DDR4_LRDIMM_VREFDQ_VALUE {}
	set_component_parameter_value MEM_DDR4_MAX_POWERDOWN {0}
	set_component_parameter_value MEM_DDR4_MIRROR_ADDRESSING_EN {1}
	set_component_parameter_value MEM_DDR4_MPR_READ_FORMAT {DDR4_MPR_READ_FORMAT_SERIAL}
	set_component_parameter_value MEM_DDR4_NUM_OF_DIMMS {1}
	set_component_parameter_value MEM_DDR4_ODT_IN_POWERDOWN {1}
	set_component_parameter_value MEM_DDR4_PER_DRAM_ADDR {0}
	set_component_parameter_value MEM_DDR4_RANKS_PER_DIMM {1}
	set_component_parameter_value MEM_DDR4_RCD_CA_IBT_ENUM {DDR4_RCD_CA_IBT_100}
	set_component_parameter_value MEM_DDR4_RCD_CKE_IBT_ENUM {DDR4_RCD_CKE_IBT_100}
	set_component_parameter_value MEM_DDR4_RCD_CS_IBT_ENUM {DDR4_RCD_CS_IBT_100}
	set_component_parameter_value MEM_DDR4_RCD_ODT_IBT_ENUM {DDR4_RCD_ODT_IBT_100}
	set_component_parameter_value MEM_DDR4_READ_DBI {1}
	set_component_parameter_value MEM_DDR4_READ_PREAMBLE {2}
	set_component_parameter_value MEM_DDR4_READ_PREAMBLE_TRAINING {0}
	set_component_parameter_value MEM_DDR4_ROW_ADDR_WIDTH {17}
	set_component_parameter_value MEM_DDR4_RTT_NOM_ENUM {DDR4_RTT_NOM_ODT_DISABLED}
	set_component_parameter_value MEM_DDR4_RTT_PARK {DDR4_RTT_PARK_RZQ_4}
	set_component_parameter_value MEM_DDR4_RTT_WR_ENUM {DDR4_RTT_WR_ODT_DISABLED}
	set_component_parameter_value MEM_DDR4_R_ODT0_1X1 {off}
	set_component_parameter_value MEM_DDR4_R_ODT0_2X2 {off off}
	set_component_parameter_value MEM_DDR4_R_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDR4_R_ODT0_4X4 {off off on off}
	set_component_parameter_value MEM_DDR4_R_ODT1_2X2 {off off}
	set_component_parameter_value MEM_DDR4_R_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDR4_R_ODT1_4X4 {off off off on}
	set_component_parameter_value MEM_DDR4_R_ODT2_4X4 {on off off off}
	set_component_parameter_value MEM_DDR4_R_ODT3_4X4 {off on off off}
	set_component_parameter_value MEM_DDR4_R_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDR4_R_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDR4_R_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR4_R_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR4_SELF_RFSH_ABORT {0}
	set_component_parameter_value MEM_DDR4_SPD_133_RCD_DB_VENDOR_LSB {0}
	set_component_parameter_value MEM_DDR4_SPD_134_RCD_DB_VENDOR_MSB {0}
	set_component_parameter_value MEM_DDR4_SPD_135_RCD_REV {0}
	set_component_parameter_value MEM_DDR4_SPD_137_RCD_CA_DRV {101}
	set_component_parameter_value MEM_DDR4_SPD_138_RCD_CK_DRV {5}
	set_component_parameter_value MEM_DDR4_SPD_139_DB_REV {0}
	set_component_parameter_value MEM_DDR4_SPD_140_DRAM_VREFDQ_R0 {29}
	set_component_parameter_value MEM_DDR4_SPD_141_DRAM_VREFDQ_R1 {29}
	set_component_parameter_value MEM_DDR4_SPD_142_DRAM_VREFDQ_R2 {29}
	set_component_parameter_value MEM_DDR4_SPD_143_DRAM_VREFDQ_R3 {29}
	set_component_parameter_value MEM_DDR4_SPD_144_DB_VREFDQ {37}
	set_component_parameter_value MEM_DDR4_SPD_145_DB_MDQ_DRV {21}
	set_component_parameter_value MEM_DDR4_SPD_148_DRAM_DRV {0}
	set_component_parameter_value MEM_DDR4_SPD_149_DRAM_RTT_WR_NOM {20}
	set_component_parameter_value MEM_DDR4_SPD_152_DRAM_RTT_PARK {39}
	set_component_parameter_value MEM_DDR4_SPD_155_DB_VREFDQ_RANGE {0}
	set_component_parameter_value MEM_DDR4_SPEEDBIN_ENUM {DDR4_SPEEDBIN_3200}
	set_component_parameter_value MEM_DDR4_TCCD_L_CYC {8}
	set_component_parameter_value MEM_DDR4_TCCD_S_CYC {4}
	set_component_parameter_value MEM_DDR4_TCL {20}
	set_component_parameter_value MEM_DDR4_TDIVW_DJ_CYC {0.1}
	set_component_parameter_value MEM_DDR4_TDIVW_TOTAL_UI {0.2}
	set_component_parameter_value MEM_DDR4_TDQSCK_PS {170}
	set_component_parameter_value MEM_DDR4_TDQSQ_PS {66}
	set_component_parameter_value MEM_DDR4_TDQSQ_UI {0.18}
	set_component_parameter_value MEM_DDR4_TDQSS_CYC {0.27}
	set_component_parameter_value MEM_DDR4_TDSH_CYC {0.18}
	set_component_parameter_value MEM_DDR4_TDSS_CYC {0.18}
	set_component_parameter_value MEM_DDR4_TDVWP_UI {0.72}
	set_component_parameter_value MEM_DDR4_TEMP_CONTROLLED_RFSH_ENA {0}
	set_component_parameter_value MEM_DDR4_TEMP_CONTROLLED_RFSH_RANGE {DDR4_TEMP_CONTROLLED_RFSH_NORMAL}
	set_component_parameter_value MEM_DDR4_TEMP_SENSOR_READOUT {0}
	set_component_parameter_value MEM_DDR4_TFAW_DLR_CYC {16}
	set_component_parameter_value MEM_DDR4_TFAW_NS {30.0}
	set_component_parameter_value MEM_DDR4_TIH_DC_MV {65}
	set_component_parameter_value MEM_DDR4_TIH_PS {65}
	set_component_parameter_value MEM_DDR4_TINIT_US {500}
	set_component_parameter_value MEM_DDR4_TIS_AC_MV {90}
	set_component_parameter_value MEM_DDR4_TIS_PS {40}
	set_component_parameter_value MEM_DDR4_TMRD_CK_CYC {8}
	set_component_parameter_value MEM_DDR4_TQH_CYC {0.38}
	set_component_parameter_value MEM_DDR4_TQH_UI {0.74}
	set_component_parameter_value MEM_DDR4_TQSH_CYC {0.4}
	set_component_parameter_value MEM_DDR4_TRAS_NS {32.0}
	set_component_parameter_value MEM_DDR4_TRCD_NS {13.75}
	set_component_parameter_value MEM_DDR4_TREFI_US {7.8}
	set_component_parameter_value MEM_DDR4_TRFC_DLR_NS {350.0}
	set_component_parameter_value MEM_DDR4_TRFC_NS {350.0}
	set_component_parameter_value MEM_DDR4_TRP_NS {13.75}
	set_component_parameter_value MEM_DDR4_TRRD_DLR_CYC {4}
	set_component_parameter_value MEM_DDR4_TRRD_L_CYC {8}
	set_component_parameter_value MEM_DDR4_TRRD_S_CYC {7}
	set_component_parameter_value MEM_DDR4_TWLH_CYC {0.13}
	set_component_parameter_value MEM_DDR4_TWLH_PS {0.0}
	set_component_parameter_value MEM_DDR4_TWLS_CYC {0.13}
	set_component_parameter_value MEM_DDR4_TWLS_PS {0.0}
	set_component_parameter_value MEM_DDR4_TWR_NS {15.0}
	set_component_parameter_value MEM_DDR4_TWTR_L_CYC {12}
	set_component_parameter_value MEM_DDR4_TWTR_S_CYC {4}
	set_component_parameter_value MEM_DDR4_USER_VREFDQ_TRAINING_RANGE {DDR4_VREFDQ_TRAINING_RANGE_1}
	set_component_parameter_value MEM_DDR4_USER_VREFDQ_TRAINING_VALUE {56.0}
	set_component_parameter_value MEM_DDR4_USE_DEFAULT_ODT {0}
	set_component_parameter_value MEM_DDR4_VDIVW_TOTAL {136}
	set_component_parameter_value MEM_DDR4_WRITE_CRC {0}
	set_component_parameter_value MEM_DDR4_WRITE_DBI {0}
	set_component_parameter_value MEM_DDR4_WRITE_PREAMBLE {1}
	set_component_parameter_value MEM_DDR4_WTCL {16}
	set_component_parameter_value MEM_DDR4_W_ODT0_1X1 {off}
	set_component_parameter_value MEM_DDR4_W_ODT0_2X2 {on off}
	set_component_parameter_value MEM_DDR4_W_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDR4_W_ODT0_4X4 {on off on off}
	set_component_parameter_value MEM_DDR4_W_ODT1_2X2 {off on}
	set_component_parameter_value MEM_DDR4_W_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDR4_W_ODT1_4X4 {off on off on}
	set_component_parameter_value MEM_DDR4_W_ODT2_4X4 {on off on off}
	set_component_parameter_value MEM_DDR4_W_ODT3_4X4 {off on off on}
	set_component_parameter_value MEM_DDR4_W_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDR4_W_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDR4_W_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDR4_W_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDRT_AC_PARITY_LATENCY {DDRT_AC_PARITY_LATENCY_DISABLE}
	set_component_parameter_value MEM_DDRT_AC_PERSISTENT_ERROR {0}
	set_component_parameter_value MEM_DDRT_ALERT_N_AC_LANE {0}
	set_component_parameter_value MEM_DDRT_ALERT_N_AC_PIN {0}
	set_component_parameter_value MEM_DDRT_ALERT_N_DQS_GROUP {0}
	set_component_parameter_value MEM_DDRT_ALERT_N_PLACEMENT_ENUM {DDRT_ALERT_N_PLACEMENT_AUTO}
	set_component_parameter_value MEM_DDRT_ALERT_PAR_EN {1}
	set_component_parameter_value MEM_DDRT_ASR_ENUM {DDRT_ASR_MANUAL_NORMAL}
	set_component_parameter_value MEM_DDRT_ATCL_ENUM {DDRT_ATCL_DISABLED}
	set_component_parameter_value MEM_DDRT_BANK_ADDR_WIDTH {2}
	set_component_parameter_value MEM_DDRT_BANK_GROUP_WIDTH {2}
	set_component_parameter_value MEM_DDRT_BL_ENUM {DDRT_BL_BL8}
	set_component_parameter_value MEM_DDRT_BT_ENUM {DDRT_BT_SEQUENTIAL}
	set_component_parameter_value MEM_DDRT_CAL_MODE {0}
	set_component_parameter_value MEM_DDRT_CFG_GEN_DBE {0}
	set_component_parameter_value MEM_DDRT_CFG_GEN_SBE {0}
	set_component_parameter_value MEM_DDRT_CKE_PER_DIMM {1}
	set_component_parameter_value MEM_DDRT_COL_ADDR_WIDTH {10}
	set_component_parameter_value MEM_DDRT_DB_DQ_DRV_ENUM {DDRT_DB_DRV_STR_RZQ_7}
	set_component_parameter_value MEM_DDRT_DB_RTT_NOM_ENUM {DDRT_DB_RTT_NOM_ODT_DISABLED}
	set_component_parameter_value MEM_DDRT_DB_RTT_PARK_ENUM {DDRT_DB_RTT_PARK_ODT_DISABLED}
	set_component_parameter_value MEM_DDRT_DB_RTT_WR_ENUM {DDRT_DB_RTT_WR_RZQ_4}
	set_component_parameter_value MEM_DDRT_DEFAULT_ADDED_LATENCY {1}
	set_component_parameter_value MEM_DDRT_DEFAULT_PREAMBLE {1}
	set_component_parameter_value MEM_DDRT_DEFAULT_VREFOUT {1}
	set_component_parameter_value MEM_DDRT_DISCRETE_CS_WIDTH {1}
	set_component_parameter_value MEM_DDRT_DISCRETE_MIRROR_ADDRESSING_EN {0}
	set_component_parameter_value MEM_DDRT_DLL_EN {1}
	set_component_parameter_value MEM_DDRT_DM_EN {0}
	set_component_parameter_value MEM_DDRT_DQ_PER_DQS {4}
	set_component_parameter_value MEM_DDRT_DQ_WIDTH {72}
	set_component_parameter_value MEM_DDRT_DRV_STR_ENUM {DDRT_DRV_STR_RZQ_7}
	set_component_parameter_value MEM_DDRT_FINE_GRANULARITY_REFRESH {DDRT_FINE_REFRESH_FIXED_1X}
	set_component_parameter_value MEM_DDRT_FORMAT_ENUM {MEM_FORMAT_LRDIMM}
	set_component_parameter_value MEM_DDRT_GEARDOWN {DDRT_GEARDOWN_HR}
	set_component_parameter_value MEM_DDRT_HIDE_ADV_MR_SETTINGS {1}
	set_component_parameter_value MEM_DDRT_HIDE_LATENCY_SETTINGS {1}
	set_component_parameter_value MEM_DDRT_I2C_DIMM_0_SA {0}
	set_component_parameter_value MEM_DDRT_I2C_DIMM_1_SA {1}
	set_component_parameter_value MEM_DDRT_I2C_DIMM_2_SA {2}
	set_component_parameter_value MEM_DDRT_I2C_DIMM_3_SA {3}
	set_component_parameter_value MEM_DDRT_INTERNAL_VREFDQ_MONITOR {0}
	set_component_parameter_value MEM_DDRT_LRDIMM_ODT_LESS_BS {0}
	set_component_parameter_value MEM_DDRT_LRDIMM_ODT_LESS_BS_PARK_OHM {240}
	set_component_parameter_value MEM_DDRT_LRDIMM_VREFDQ_VALUE {}
	set_component_parameter_value MEM_DDRT_MAX_POWERDOWN {0}
	set_component_parameter_value MEM_DDRT_MIRROR_ADDRESSING_EN {1}
	set_component_parameter_value MEM_DDRT_MPR_READ_FORMAT {DDRT_MPR_READ_FORMAT_SERIAL}
	set_component_parameter_value MEM_DDRT_NUM_OF_DIMMS {1}
	set_component_parameter_value MEM_DDRT_ODT_IN_POWERDOWN {1}
	set_component_parameter_value MEM_DDRT_PARTIAL_WRITES {0}
	set_component_parameter_value MEM_DDRT_PERSISTENT_MODE {1}
	set_component_parameter_value MEM_DDRT_PER_DRAM_ADDR {0}
	set_component_parameter_value MEM_DDRT_PWR_MODE {DDRT_PWR_MODE_12W}
	set_component_parameter_value MEM_DDRT_RANKS_PER_DIMM {1}
	set_component_parameter_value MEM_DDRT_RCD_CA_IBT_ENUM {DDRT_RCD_CA_IBT_100}
	set_component_parameter_value MEM_DDRT_RCD_CKE_IBT_ENUM {DDRT_RCD_CKE_IBT_100}
	set_component_parameter_value MEM_DDRT_RCD_CS_IBT_ENUM {DDRT_RCD_CS_IBT_100}
	set_component_parameter_value MEM_DDRT_RCD_ODT_IBT_ENUM {DDRT_RCD_ODT_IBT_100}
	set_component_parameter_value MEM_DDRT_READ_DBI {0}
	set_component_parameter_value MEM_DDRT_READ_PREAMBLE_TRAINING {0}
	set_component_parameter_value MEM_DDRT_ROW_ADDR_WIDTH {18}
	set_component_parameter_value MEM_DDRT_RTT_NOM_ENUM {DDRT_RTT_NOM_RZQ_4}
	set_component_parameter_value MEM_DDRT_RTT_PARK {DDRT_RTT_PARK_ODT_DISABLED}
	set_component_parameter_value MEM_DDRT_RTT_WR_ENUM {DDRT_RTT_WR_ODT_DISABLED}
	set_component_parameter_value MEM_DDRT_R_ODT0_1X1 {off}
	set_component_parameter_value MEM_DDRT_R_ODT0_2X2 {off off}
	set_component_parameter_value MEM_DDRT_R_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDRT_R_ODT0_4X4 {off off off off}
	set_component_parameter_value MEM_DDRT_R_ODT1_2X2 {off off}
	set_component_parameter_value MEM_DDRT_R_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDRT_R_ODT1_4X4 {off off on on}
	set_component_parameter_value MEM_DDRT_R_ODT2_4X4 {off off off off}
	set_component_parameter_value MEM_DDRT_R_ODT3_4X4 {on on off off}
	set_component_parameter_value MEM_DDRT_R_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDRT_R_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDRT_R_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDRT_R_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDRT_SELF_RFSH_ABORT {0}
	set_component_parameter_value MEM_DDRT_SPD_133_RCD_DB_VENDOR_LSB {0}
	set_component_parameter_value MEM_DDRT_SPD_134_RCD_DB_VENDOR_MSB {0}
	set_component_parameter_value MEM_DDRT_SPD_135_RCD_REV {0}
	set_component_parameter_value MEM_DDRT_SPD_137_RCD_CA_DRV {85}
	set_component_parameter_value MEM_DDRT_SPD_138_RCD_CK_DRV {5}
	set_component_parameter_value MEM_DDRT_SPD_139_DB_REV {0}
	set_component_parameter_value MEM_DDRT_SPD_140_DRAM_VREFDQ_R0 {29}
	set_component_parameter_value MEM_DDRT_SPD_141_DRAM_VREFDQ_R1 {29}
	set_component_parameter_value MEM_DDRT_SPD_142_DRAM_VREFDQ_R2 {29}
	set_component_parameter_value MEM_DDRT_SPD_143_DRAM_VREFDQ_R3 {29}
	set_component_parameter_value MEM_DDRT_SPD_144_DB_VREFDQ {25}
	set_component_parameter_value MEM_DDRT_SPD_145_DB_MDQ_DRV {21}
	set_component_parameter_value MEM_DDRT_SPD_148_DRAM_DRV {0}
	set_component_parameter_value MEM_DDRT_SPD_149_DRAM_RTT_WR_NOM {20}
	set_component_parameter_value MEM_DDRT_SPD_152_DRAM_RTT_PARK {39}
	set_component_parameter_value MEM_DDRT_SPEEDBIN_ENUM {DDRT_SPEEDBIN_2400}
	set_component_parameter_value MEM_DDRT_TCCD_L_CYC {6}
	set_component_parameter_value MEM_DDRT_TCCD_S_CYC {4}
	set_component_parameter_value MEM_DDRT_TCL {15}
	set_component_parameter_value MEM_DDRT_TDIVW_DJ_CYC {0.1}
	set_component_parameter_value MEM_DDRT_TDIVW_TOTAL_UI {0.2}
	set_component_parameter_value MEM_DDRT_TDQSCK_PS {165}
	set_component_parameter_value MEM_DDRT_TDQSQ_PS {66}
	set_component_parameter_value MEM_DDRT_TDQSQ_UI {0.16}
	set_component_parameter_value MEM_DDRT_TDQSS_CYC {0.27}
	set_component_parameter_value MEM_DDRT_TDSH_CYC {0.18}
	set_component_parameter_value MEM_DDRT_TDSS_CYC {0.18}
	set_component_parameter_value MEM_DDRT_TDVWP_UI {0.72}
	set_component_parameter_value MEM_DDRT_TEMP_CONTROLLED_RFSH_ENA {0}
	set_component_parameter_value MEM_DDRT_TEMP_CONTROLLED_RFSH_RANGE {DDRT_TEMP_CONTROLLED_RFSH_NORMAL}
	set_component_parameter_value MEM_DDRT_TEMP_SENSOR_READOUT {0}
	set_component_parameter_value MEM_DDRT_TFAW_DLR_CYC {16}
	set_component_parameter_value MEM_DDRT_TFAW_NS {21.0}
	set_component_parameter_value MEM_DDRT_TIH_DC_MV {75}
	set_component_parameter_value MEM_DDRT_TIH_PS {95}
	set_component_parameter_value MEM_DDRT_TINIT_US {500}
	set_component_parameter_value MEM_DDRT_TIS_AC_MV {100}
	set_component_parameter_value MEM_DDRT_TIS_PS {60}
	set_component_parameter_value MEM_DDRT_TMRD_CK_CYC {8}
	set_component_parameter_value MEM_DDRT_TQH_CYC {0.38}
	set_component_parameter_value MEM_DDRT_TQH_UI {0.76}
	set_component_parameter_value MEM_DDRT_TQSH_CYC {0.38}
	set_component_parameter_value MEM_DDRT_TRAS_NS {32.0}
	set_component_parameter_value MEM_DDRT_TRCD_NS {15.0}
	set_component_parameter_value MEM_DDRT_TREFI_US {7.8}
	set_component_parameter_value MEM_DDRT_TRFC_DLR_NS {90.0}
	set_component_parameter_value MEM_DDRT_TRFC_NS {260.0}
	set_component_parameter_value MEM_DDRT_TRP_NS {15.0}
	set_component_parameter_value MEM_DDRT_TRRD_DLR_CYC {4}
	set_component_parameter_value MEM_DDRT_TRRD_L_CYC {6}
	set_component_parameter_value MEM_DDRT_TRRD_S_CYC {4}
	set_component_parameter_value MEM_DDRT_TWLH_CYC {0.13}
	set_component_parameter_value MEM_DDRT_TWLH_PS {0.0}
	set_component_parameter_value MEM_DDRT_TWLS_CYC {0.13}
	set_component_parameter_value MEM_DDRT_TWLS_PS {0.0}
	set_component_parameter_value MEM_DDRT_TWR_NS {15.0}
	set_component_parameter_value MEM_DDRT_TWTR_L_CYC {9}
	set_component_parameter_value MEM_DDRT_TWTR_S_CYC {3}
	set_component_parameter_value MEM_DDRT_USER_READ_PREAMBLE {1}
	set_component_parameter_value MEM_DDRT_USER_TCL_ADDED {0}
	set_component_parameter_value MEM_DDRT_USER_VREFDQ_TRAINING_RANGE {DDRT_VREFDQ_TRAINING_RANGE_1}
	set_component_parameter_value MEM_DDRT_USER_VREFDQ_TRAINING_VALUE {56.0}
	set_component_parameter_value MEM_DDRT_USER_WRITE_PREAMBLE {1}
	set_component_parameter_value MEM_DDRT_USER_WTCL_ADDED {6}
	set_component_parameter_value MEM_DDRT_USE_DEFAULT_ODT {1}
	set_component_parameter_value MEM_DDRT_VDIVW_TOTAL {136}
	set_component_parameter_value MEM_DDRT_WRITE_CRC {0}
	set_component_parameter_value MEM_DDRT_WRITE_DBI {0}
	set_component_parameter_value MEM_DDRT_WTCL {18}
	set_component_parameter_value MEM_DDRT_W_ODT0_1X1 {on}
	set_component_parameter_value MEM_DDRT_W_ODT0_2X2 {on off}
	set_component_parameter_value MEM_DDRT_W_ODT0_4X2 {off off on on}
	set_component_parameter_value MEM_DDRT_W_ODT0_4X4 {on on off off}
	set_component_parameter_value MEM_DDRT_W_ODT1_2X2 {off on}
	set_component_parameter_value MEM_DDRT_W_ODT1_4X2 {on on off off}
	set_component_parameter_value MEM_DDRT_W_ODT1_4X4 {off off on on}
	set_component_parameter_value MEM_DDRT_W_ODT2_4X4 {off off on on}
	set_component_parameter_value MEM_DDRT_W_ODT3_4X4 {on on off off}
	set_component_parameter_value MEM_DDRT_W_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_DDRT_W_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_DDRT_W_ODTN_4X2 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_DDRT_W_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_LPDDR3_BANK_ADDR_WIDTH {3}
	set_component_parameter_value MEM_LPDDR3_BL {LPDDR3_BL_BL8}
	set_component_parameter_value MEM_LPDDR3_CK_WIDTH {1}
	set_component_parameter_value MEM_LPDDR3_COL_ADDR_WIDTH {10}
	set_component_parameter_value MEM_LPDDR3_DATA_LATENCY {LPDDR3_DL_RL12_WL6}
	set_component_parameter_value MEM_LPDDR3_DISCRETE_CS_WIDTH {1}
	set_component_parameter_value MEM_LPDDR3_DM_EN {1}
	set_component_parameter_value MEM_LPDDR3_DQODT {LPDDR3_DQODT_DISABLE}
	set_component_parameter_value MEM_LPDDR3_DQ_WIDTH {32}
	set_component_parameter_value MEM_LPDDR3_DRV_STR {LPDDR3_DRV_STR_40D_40U}
	set_component_parameter_value MEM_LPDDR3_PDODT {LPDDR3_PDODT_DISABLED}
	set_component_parameter_value MEM_LPDDR3_ROW_ADDR_WIDTH {15}
	set_component_parameter_value MEM_LPDDR3_R_ODT0_1X1 {off}
	set_component_parameter_value MEM_LPDDR3_R_ODT0_2X2 {off off}
	set_component_parameter_value MEM_LPDDR3_R_ODT0_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_R_ODT1_2X2 {off off}
	set_component_parameter_value MEM_LPDDR3_R_ODT1_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_R_ODT2_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_R_ODT3_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_R_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_LPDDR3_R_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_LPDDR3_R_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_LPDDR3_SPEEDBIN_ENUM {LPDDR3_SPEEDBIN_1600}
	set_component_parameter_value MEM_LPDDR3_TDH_DC_MV {100}
	set_component_parameter_value MEM_LPDDR3_TDH_PS {100}
	set_component_parameter_value MEM_LPDDR3_TDQSCKDL {614}
	set_component_parameter_value MEM_LPDDR3_TDQSQ_PS {135}
	set_component_parameter_value MEM_LPDDR3_TDQSS_CYC {1.25}
	set_component_parameter_value MEM_LPDDR3_TDSH_CYC {0.2}
	set_component_parameter_value MEM_LPDDR3_TDSS_CYC {0.2}
	set_component_parameter_value MEM_LPDDR3_TDS_AC_MV {150}
	set_component_parameter_value MEM_LPDDR3_TDS_PS {75}
	set_component_parameter_value MEM_LPDDR3_TFAW_NS {50.0}
	set_component_parameter_value MEM_LPDDR3_TIH_DC_MV {100}
	set_component_parameter_value MEM_LPDDR3_TIH_PS {100}
	set_component_parameter_value MEM_LPDDR3_TINIT_US {500}
	set_component_parameter_value MEM_LPDDR3_TIS_AC_MV {150}
	set_component_parameter_value MEM_LPDDR3_TIS_PS {75}
	set_component_parameter_value MEM_LPDDR3_TMRR_CK_CYC {4}
	set_component_parameter_value MEM_LPDDR3_TMRW_CK_CYC {10}
	set_component_parameter_value MEM_LPDDR3_TQH_CYC {0.38}
	set_component_parameter_value MEM_LPDDR3_TQSH_CYC {0.38}
	set_component_parameter_value MEM_LPDDR3_TRAS_NS {42.5}
	set_component_parameter_value MEM_LPDDR3_TRCD_NS {18.0}
	set_component_parameter_value MEM_LPDDR3_TREFI_US {3.9}
	set_component_parameter_value MEM_LPDDR3_TRFC_NS {210.0}
	set_component_parameter_value MEM_LPDDR3_TRP_NS {18.0}
	set_component_parameter_value MEM_LPDDR3_TRRD_CYC {8}
	set_component_parameter_value MEM_LPDDR3_TRTP_CYC {6}
	set_component_parameter_value MEM_LPDDR3_TWLH_PS {175.0}
	set_component_parameter_value MEM_LPDDR3_TWLS_PS {175.0}
	set_component_parameter_value MEM_LPDDR3_TWR_NS {15.0}
	set_component_parameter_value MEM_LPDDR3_TWTR_CYC {6}
	set_component_parameter_value MEM_LPDDR3_USE_DEFAULT_ODT {1}
	set_component_parameter_value MEM_LPDDR3_W_ODT0_1X1 {on}
	set_component_parameter_value MEM_LPDDR3_W_ODT0_2X2 {on on}
	set_component_parameter_value MEM_LPDDR3_W_ODT0_4X4 {on on on on}
	set_component_parameter_value MEM_LPDDR3_W_ODT1_2X2 {off off}
	set_component_parameter_value MEM_LPDDR3_W_ODT1_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_W_ODT2_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_W_ODT3_4X4 {off off off off}
	set_component_parameter_value MEM_LPDDR3_W_ODTN_1X1 {Rank\ 0}
	set_component_parameter_value MEM_LPDDR3_W_ODTN_2X2 {Rank\ 0 Rank\ 1}
	set_component_parameter_value MEM_LPDDR3_W_ODTN_4X4 {Rank\ 0 Rank\ 1 Rank\ 2 Rank\ 3}
	set_component_parameter_value MEM_QDR2_ADDR_WIDTH {19}
	set_component_parameter_value MEM_QDR2_BL {4}
	set_component_parameter_value MEM_QDR2_BWS_EN {1}
	set_component_parameter_value MEM_QDR2_DATA_PER_DEVICE {36}
	set_component_parameter_value MEM_QDR2_INTERNAL_JITTER_NS {0.08}
	set_component_parameter_value MEM_QDR2_SPEEDBIN_ENUM {QDR2_SPEEDBIN_633}
	set_component_parameter_value MEM_QDR2_TCCQO_NS {0.45}
	set_component_parameter_value MEM_QDR2_TCQDOH_NS {-0.09}
	set_component_parameter_value MEM_QDR2_TCQD_NS {0.09}
	set_component_parameter_value MEM_QDR2_TCQH_NS {0.71}
	set_component_parameter_value MEM_QDR2_THA_NS {0.18}
	set_component_parameter_value MEM_QDR2_THD_NS {0.18}
	set_component_parameter_value MEM_QDR2_TRL_CYC {2.5}
	set_component_parameter_value MEM_QDR2_TSA_NS {0.23}
	set_component_parameter_value MEM_QDR2_TSD_NS {0.23}
	set_component_parameter_value MEM_QDR2_WIDTH_EXPANDED {0}
	set_component_parameter_value MEM_QDR4_AC_ODT_MODE_ENUM {QDR4_ODT_25_PCT}
	set_component_parameter_value MEM_QDR4_ADDR_INV_ENA {0}
	set_component_parameter_value MEM_QDR4_ADDR_WIDTH {21}
	set_component_parameter_value MEM_QDR4_CK_ODT_MODE_ENUM {QDR4_ODT_25_PCT}
	set_component_parameter_value MEM_QDR4_DATA_INV_ENA {1}
	set_component_parameter_value MEM_QDR4_DATA_ODT_MODE_ENUM {QDR4_ODT_25_PCT}
	set_component_parameter_value MEM_QDR4_DQ_PER_PORT_PER_DEVICE {36}
	set_component_parameter_value MEM_QDR4_MEM_TYPE_ENUM {MEM_XP}
	set_component_parameter_value MEM_QDR4_PD_OUTPUT_DRIVE_MODE_ENUM {QDR4_OUTPUT_DRIVE_25_PCT}
	set_component_parameter_value MEM_QDR4_PU_OUTPUT_DRIVE_MODE_ENUM {QDR4_OUTPUT_DRIVE_25_PCT}
	set_component_parameter_value MEM_QDR4_SKIP_ODT_SWEEPING {1}
	set_component_parameter_value MEM_QDR4_SPEEDBIN_ENUM {QDR4_SPEEDBIN_2133}
	set_component_parameter_value MEM_QDR4_TASH_PS {170}
	set_component_parameter_value MEM_QDR4_TCKDK_MAX_PS {150}
	set_component_parameter_value MEM_QDR4_TCKDK_MIN_PS {-150}
	set_component_parameter_value MEM_QDR4_TCKQK_MAX_PS {225}
	set_component_parameter_value MEM_QDR4_TCSH_PS {170}
	set_component_parameter_value MEM_QDR4_TISH_PS {150}
	set_component_parameter_value MEM_QDR4_TQH_CYC {0.4}
	set_component_parameter_value MEM_QDR4_TQKQ_MAX_PS {75}
	set_component_parameter_value MEM_QDR4_USE_ADDR_PARITY {0}
	set_component_parameter_value MEM_QDR4_WIDTH_EXPANDED {0}
	set_component_parameter_value MEM_RLD2_ADDR_WIDTH {21}
	set_component_parameter_value MEM_RLD2_BANK_ADDR_WIDTH {3}
	set_component_parameter_value MEM_RLD2_BL {4}
	set_component_parameter_value MEM_RLD2_CONFIG_ENUM {RLD2_CONFIG_TRC_8_TRL_8_TWL_9}
	set_component_parameter_value MEM_RLD2_DM_EN {1}
	set_component_parameter_value MEM_RLD2_DQ_PER_DEVICE {9}
	set_component_parameter_value MEM_RLD2_DRIVE_IMPEDENCE_ENUM {RLD2_DRIVE_IMPEDENCE_INTERNAL_50}
	set_component_parameter_value MEM_RLD2_ODT_MODE_ENUM {RLD2_ODT_ON}
	set_component_parameter_value MEM_RLD2_REFRESH_INTERVAL_US {0.24}
	set_component_parameter_value MEM_RLD2_SPEEDBIN_ENUM {RLD2_SPEEDBIN_18}
	set_component_parameter_value MEM_RLD2_TAH_NS {0.3}
	set_component_parameter_value MEM_RLD2_TAS_NS {0.3}
	set_component_parameter_value MEM_RLD2_TCKDK_MAX_NS {0.3}
	set_component_parameter_value MEM_RLD2_TCKDK_MIN_NS {-0.3}
	set_component_parameter_value MEM_RLD2_TCKH_CYC {0.45}
	set_component_parameter_value MEM_RLD2_TCKQK_MAX_NS {0.2}
	set_component_parameter_value MEM_RLD2_TDH_NS {0.17}
	set_component_parameter_value MEM_RLD2_TDS_NS {0.17}
	set_component_parameter_value MEM_RLD2_TQKH_HCYC {0.9}
	set_component_parameter_value MEM_RLD2_TQKQ_MAX_NS {0.12}
	set_component_parameter_value MEM_RLD2_TQKQ_MIN_NS {-0.12}
	set_component_parameter_value MEM_RLD2_WIDTH_EXPANDED {0}
	set_component_parameter_value MEM_RLD3_ADDR_WIDTH {20}
	set_component_parameter_value MEM_RLD3_AREF_PROTOCOL_ENUM {RLD3_AREF_BAC}
	set_component_parameter_value MEM_RLD3_BANK_ADDR_WIDTH {4}
	set_component_parameter_value MEM_RLD3_BL {2}
	set_component_parameter_value MEM_RLD3_DATA_LATENCY_MODE_ENUM {RLD3_DL_RL16_WL17}
	set_component_parameter_value MEM_RLD3_DEPTH_EXPANDED {0}
	set_component_parameter_value MEM_RLD3_DM_EN {1}
	set_component_parameter_value MEM_RLD3_DQ_PER_DEVICE {36}
	set_component_parameter_value MEM_RLD3_ODT_MODE_ENUM {RLD3_ODT_40}
	set_component_parameter_value MEM_RLD3_OUTPUT_DRIVE_MODE_ENUM {RLD3_OUTPUT_DRIVE_40}
	set_component_parameter_value MEM_RLD3_SPEEDBIN_ENUM {RLD3_SPEEDBIN_093E}
	set_component_parameter_value MEM_RLD3_TCKDK_MAX_CYC {0.27}
	set_component_parameter_value MEM_RLD3_TCKDK_MIN_CYC {-0.27}
	set_component_parameter_value MEM_RLD3_TCKQK_MAX_PS {135}
	set_component_parameter_value MEM_RLD3_TDH_DC_MV {100}
	set_component_parameter_value MEM_RLD3_TDH_PS {5}
	set_component_parameter_value MEM_RLD3_TDS_AC_MV {150}
	set_component_parameter_value MEM_RLD3_TDS_PS {-30}
	set_component_parameter_value MEM_RLD3_TIH_DC_MV {100}
	set_component_parameter_value MEM_RLD3_TIH_PS {65}
	set_component_parameter_value MEM_RLD3_TIS_AC_MV {150}
	set_component_parameter_value MEM_RLD3_TIS_PS {85}
	set_component_parameter_value MEM_RLD3_TQH_CYC {0.38}
	set_component_parameter_value MEM_RLD3_TQKQ_MAX_PS {75}
	set_component_parameter_value MEM_RLD3_T_RC_MODE_ENUM {RLD3_TRC_9}
	set_component_parameter_value MEM_RLD3_WIDTH_EXPANDED {0}
	set_component_parameter_value MEM_RLD3_WRITE_PROTOCOL_ENUM {RLD3_WRITE_1BANK}
	set_component_parameter_value NUM_IPS {1}
	set_component_parameter_value PHY_DDR3_CAL_ADDR0 {0}
	set_component_parameter_value PHY_DDR3_CAL_ADDR1 {8}
	set_component_parameter_value PHY_DDR3_CAL_ENABLE_NON_DES {0}
	set_component_parameter_value PHY_DDR3_CONFIG_ENUM {CONFIG_PHY_AND_HARD_CTRL}
	set_component_parameter_value PHY_DDR3_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_DDR3_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_DDR3_DEFAULT_IO {1}
	set_component_parameter_value PHY_DDR3_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_DDR3_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_DDR3_IO_VOLTAGE {1.5}
	set_component_parameter_value PHY_DDR3_MEM_CLK_FREQ_MHZ {1066.667}
	set_component_parameter_value PHY_DDR3_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_DDR3_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_DDR3_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_DDR3_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_DDR3_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_DDR3_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_DDR3_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_DDR3_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_DDR3_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDR3_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_DDR4_CONFIG_ENUM {CONFIG_PHY_AND_HARD_CTRL}
	set_component_parameter_value PHY_DDR4_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_DDR4_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_DDR4_DEFAULT_IO {0}
	set_component_parameter_value PHY_DDR4_DEFAULT_REF_CLK_FREQ {0}
	set_component_parameter_value PHY_DDR4_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_DDR4_IO_VOLTAGE {1.2}
	set_component_parameter_value PHY_DDR4_MEM_CLK_FREQ_MHZ {1200.0}
	set_component_parameter_value PHY_DDR4_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_DDR4_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_DDR4_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_DDR4_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_AC_IO_STD_ENUM {IO_STD_SSTL_12}
	set_component_parameter_value PHY_DDR4_USER_AC_MODE_ENUM {OUT_OCT_40_CAL}
	set_component_parameter_value PHY_DDR4_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_DDR4_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_CK_IO_STD_ENUM {IO_STD_SSTL_12}
	set_component_parameter_value PHY_DDR4_USER_CK_MODE_ENUM {OUT_OCT_40_CAL}
	set_component_parameter_value PHY_DDR4_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_CLAMSHELL_EN {0}
	set_component_parameter_value PHY_DDR4_USER_DATA_IN_MODE_ENUM {IN_OCT_60_CAL}
	set_component_parameter_value PHY_DDR4_USER_DATA_IO_STD_ENUM {IO_STD_POD_12}
	set_component_parameter_value PHY_DDR4_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_DATA_OUT_MODE_ENUM {OUT_OCT_34_CAL}
	set_component_parameter_value PHY_DDR4_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDR4_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_DDR4_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_DDR4_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM {IO_STD_TRUE_DIFF_SIGNALING}
	set_component_parameter_value PHY_DDR4_USER_REF_CLK_FREQ_MHZ {100.0}
	set_component_parameter_value PHY_DDR4_USER_RZQ_IO_STD_ENUM {IO_STD_CMOS_12}
	set_component_parameter_value PHY_DDR4_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_DDRT_2CH_EN {0}
	set_component_parameter_value PHY_DDRT_CONFIG_ENUM {CONFIG_PHY_AND_SOFT_CTRL}
	set_component_parameter_value PHY_DDRT_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_DDRT_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_DDRT_DEFAULT_IO {1}
	set_component_parameter_value PHY_DDRT_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_DDRT_EXPORT_CLK_STP_IF {0}
	set_component_parameter_value PHY_DDRT_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_DDRT_I2C_USE_SMC {0}
	set_component_parameter_value PHY_DDRT_IC_EN {1}
	set_component_parameter_value PHY_DDRT_IO_VOLTAGE {1.2}
	set_component_parameter_value PHY_DDRT_MEM_CLK_FREQ_MHZ {1200.0}
	set_component_parameter_value PHY_DDRT_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_DDRT_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_DDRT_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_DDRT_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_AC_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_DDRT_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_DLL_CORE_UPDN_EN {0}
	set_component_parameter_value PHY_DDRT_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_DDRT_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_DDRT_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_DDRT_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_DDRT_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_DDRT_USE_OLD_SMBUS_MULTICOL {0}
	set_component_parameter_value PHY_LPDDR3_CONFIG_ENUM {CONFIG_PHY_AND_HARD_CTRL}
	set_component_parameter_value PHY_LPDDR3_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_LPDDR3_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_LPDDR3_DEFAULT_IO {1}
	set_component_parameter_value PHY_LPDDR3_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_LPDDR3_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_LPDDR3_IO_VOLTAGE {1.2}
	set_component_parameter_value PHY_LPDDR3_MEM_CLK_FREQ_MHZ {800.0}
	set_component_parameter_value PHY_LPDDR3_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_LPDDR3_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_LPDDR3_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_LPDDR3_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_LPDDR3_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_LPDDR3_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_LPDDR3_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_LPDDR3_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_LPDDR3_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_LPDDR3_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_QDR2_CONFIG_ENUM {CONFIG_PHY_AND_SOFT_CTRL}
	set_component_parameter_value PHY_QDR2_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_QDR2_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_QDR2_DEFAULT_IO {1}
	set_component_parameter_value PHY_QDR2_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_QDR2_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_QDR2_IO_VOLTAGE {1.5}
	set_component_parameter_value PHY_QDR2_MEM_CLK_FREQ_MHZ {633.333}
	set_component_parameter_value PHY_QDR2_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_QDR2_RATE_ENUM {RATE_HALF}
	set_component_parameter_value PHY_QDR2_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_QDR2_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_QDR2_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_QDR2_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_QDR2_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_QDR2_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_QDR2_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR2_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_QDR4_CONFIG_ENUM {CONFIG_PHY_AND_SOFT_CTRL}
	set_component_parameter_value PHY_QDR4_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_QDR4_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_QDR4_DEFAULT_IO {1}
	set_component_parameter_value PHY_QDR4_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_QDR4_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_QDR4_IO_VOLTAGE {1.2}
	set_component_parameter_value PHY_QDR4_MEM_CLK_FREQ_MHZ {1066.667}
	set_component_parameter_value PHY_QDR4_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_QDR4_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_QDR4_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_QDR4_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_QDR4_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_QDR4_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_QDR4_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_QDR4_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_QDR4_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_QDR4_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_RLD2_CONFIG_ENUM {CONFIG_PHY_AND_SOFT_CTRL}
	set_component_parameter_value PHY_RLD2_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_RLD2_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_RLD2_DEFAULT_IO {1}
	set_component_parameter_value PHY_RLD2_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_RLD2_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_RLD2_IO_VOLTAGE {1.8}
	set_component_parameter_value PHY_RLD2_MEM_CLK_FREQ_MHZ {533.333}
	set_component_parameter_value PHY_RLD2_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_RLD2_RATE_ENUM {RATE_HALF}
	set_component_parameter_value PHY_RLD2_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_RLD2_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_RLD2_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_RLD2_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_RLD2_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_RLD2_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_RLD2_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD2_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PHY_RLD3_CONFIG_ENUM {CONFIG_PHY_ONLY}
	set_component_parameter_value PHY_RLD3_CORE_CLKS_SHARING_ENUM {CORE_CLKS_SHARING_DISABLED}
	set_component_parameter_value PHY_RLD3_CORE_CLKS_SHARING_EXPOSE_SLAVE_OUT {0}
	set_component_parameter_value PHY_RLD3_DEFAULT_IO {1}
	set_component_parameter_value PHY_RLD3_DEFAULT_REF_CLK_FREQ {1}
	set_component_parameter_value PHY_RLD3_HPS_ENABLE_EARLY_RELEASE {0}
	set_component_parameter_value PHY_RLD3_IO_VOLTAGE {1.2}
	set_component_parameter_value PHY_RLD3_MEM_CLK_FREQ_MHZ {1066.667}
	set_component_parameter_value PHY_RLD3_MIMIC_HPS_EMIF {0}
	set_component_parameter_value PHY_RLD3_RATE_ENUM {RATE_QUARTER}
	set_component_parameter_value PHY_RLD3_REF_CLK_JITTER_PS {10.0}
	set_component_parameter_value PHY_RLD3_USER_AC_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_AC_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_AC_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_AC_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_AUTO_STARTING_VREFIN_EN {1}
	set_component_parameter_value PHY_RLD3_USER_CK_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_CK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_CK_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_CK_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DATA_IN_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DATA_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DATA_OUT_DEEMPHASIS_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DATA_OUT_MODE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DATA_OUT_SLEW_RATE_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_DLL_CORE_UPDN_EN {1}
	set_component_parameter_value PHY_RLD3_USER_PERIODIC_OCT_RECAL_ENUM {PERIODIC_OCT_RECAL_AUTO}
	set_component_parameter_value PHY_RLD3_USER_PING_PONG_EN {0}
	set_component_parameter_value PHY_RLD3_USER_PLL_REF_CLK_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_REF_CLK_FREQ_MHZ {-1.0}
	set_component_parameter_value PHY_RLD3_USER_RZQ_IO_STD_ENUM {unset}
	set_component_parameter_value PHY_RLD3_USER_STARTING_VREFIN {70.0}
	set_component_parameter_value PLL_ADD_EXTRA_CLKS {0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_0 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_1 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_2 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_3 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_4 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_5 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_6 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_7 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_8 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_0 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_1 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_2 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_3 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_4 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_5 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_6 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_7 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_DUTY_CYCLE_GUI_8 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_0 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_1 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_2 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_3 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_4 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_5 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_6 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_7 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_FREQ_MHZ_GUI_8 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_0 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_1 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_2 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_3 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_4 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_5 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_6 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_7 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_DEG_GUI_8 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_0 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_1 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_2 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_3 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_4 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_5 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_6 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_7 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_ACTUAL_PHASE_PS_GUI_8 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_0 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_1 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_2 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_3 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_4 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_5 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_6 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_7 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_DUTY_CYCLE_GUI_8 {50.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_0 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_1 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_2 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_3 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_4 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_5 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_6 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_7 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_FREQ_MHZ_GUI_8 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_0 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_1 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_2 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_3 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_4 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_5 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_6 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_7 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_DESIRED_PHASE_GUI_8 {0.0}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_0 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_1 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_2 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_3 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_4 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_5 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_6 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_7 {ps}
	set_component_parameter_value PLL_EXTRA_CLK_PHASE_SHIFT_UNIT_GUI_8 {ps}
	set_component_parameter_value PLL_USER_NUM_OF_EXTRA_CLKS {0}
	set_component_parameter_value PROTOCOL_ENUM {PROTOCOL_DDR4}
	set_component_parameter_value SHORT_QSYS_INTERFACE_NAMES {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation emif_hps
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface pll_ref_clk clock INPUT
	set_instantiation_interface_parameter_value pll_ref_clk clockRate {0}
	set_instantiation_interface_parameter_value pll_ref_clk externallyDriven {false}
	set_instantiation_interface_parameter_value pll_ref_clk ptfSchematicName {}
	add_instantiation_interface_port pll_ref_clk pll_ref_clk clk 1 STD_LOGIC Input
	add_instantiation_interface oct conduit INPUT
	set_instantiation_interface_parameter_value oct associatedClock {}
	set_instantiation_interface_parameter_value oct associatedReset {}
	set_instantiation_interface_parameter_value oct prSafe {false}
	add_instantiation_interface_port oct oct_rzqin oct_rzqin 1 STD_LOGIC Input
	add_instantiation_interface mem conduit INPUT
	set_instantiation_interface_parameter_value mem associatedClock {}
	set_instantiation_interface_parameter_value mem associatedReset {}
	set_instantiation_interface_parameter_value mem prSafe {false}
	add_instantiation_interface_port mem mem_ck mem_ck 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_ck_n mem_ck_n 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_a mem_a 17 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_act_n mem_act_n 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_ba mem_ba 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_bg mem_bg 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_cke mem_cke 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_cs_n mem_cs_n 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_odt mem_odt 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_reset_n mem_reset_n 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_par mem_par 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mem mem_alert_n mem_alert_n 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port mem mem_dqs mem_dqs 9 STD_LOGIC_VECTOR Bidir
	add_instantiation_interface_port mem mem_dqs_n mem_dqs_n 9 STD_LOGIC_VECTOR Bidir
	add_instantiation_interface_port mem mem_dq mem_dq 72 STD_LOGIC_VECTOR Bidir
	add_instantiation_interface_port mem mem_dbi_n mem_dbi_n 9 STD_LOGIC_VECTOR Bidir
	add_instantiation_interface hps_emif conduit INPUT
	set_instantiation_interface_parameter_value hps_emif associatedClock {}
	set_instantiation_interface_parameter_value hps_emif associatedReset {}
	set_instantiation_interface_parameter_value hps_emif prSafe {false}
	add_instantiation_interface_port hps_emif hps_to_emif hps_to_emif 4096 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port hps_emif emif_to_hps emif_to_hps 4096 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port hps_emif hps_to_emif_gp gp_to_emif 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port hps_emif emif_to_hps_gp emif_to_gp 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface emif_calbus conduit INPUT
	set_instantiation_interface_parameter_value emif_calbus associatedClock {emif_calbus_clk}
	set_instantiation_interface_parameter_value emif_calbus associatedReset {}
	set_instantiation_interface_parameter_value emif_calbus prSafe {false}
	add_instantiation_interface_port emif_calbus calbus_read calbus_read 1 STD_LOGIC Input
	add_instantiation_interface_port emif_calbus calbus_write calbus_write 1 STD_LOGIC Input
	add_instantiation_interface_port emif_calbus calbus_address calbus_address 20 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port emif_calbus calbus_wdata calbus_wdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port emif_calbus calbus_rdata calbus_rdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port emif_calbus calbus_seq_param_tbl calbus_seq_param_tbl 4096 STD_LOGIC_VECTOR Output
	add_instantiation_interface emif_calbus_clk clock INPUT
	set_instantiation_interface_parameter_value emif_calbus_clk clockRate {0}
	set_instantiation_interface_parameter_value emif_calbus_clk externallyDriven {false}
	set_instantiation_interface_parameter_value emif_calbus_clk ptfSchematicName {}
	add_instantiation_interface_port emif_calbus_clk calbus_clk clk 1 STD_LOGIC Input
	save_instantiation
	add_instance jtg_mst subsys_jtg_mst
	add_component mm2s_conduit_merger ip/qsys_top/qsys_top_axi_conduit_merger_0.ip axi_conduit_merger axi_conduit_merger_0 1.0
	load_component mm2s_conduit_merger
	set_component_parameter_value ADDRESS_WIDTH {32}
	set_component_parameter_value AXUSER_WIDTH {5}
	set_component_parameter_value DATA_WIDTH {512}
	set_component_parameter_value ID_WIDTH {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation mm2s_conduit_merger
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_sink reset INPUT
	set_instantiation_interface_parameter_value reset_sink associatedClock {clock}
	set_instantiation_interface_parameter_value reset_sink synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_sink rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface altera_axi_slave axi INPUT
	set_instantiation_interface_parameter_value altera_axi_slave associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_slave associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_slave writeAcceptanceCapability {1}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_map {<address-map><slave name='altera_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_width {32}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave max_slave_data_width {512}
	add_instantiation_interface_port altera_axi_slave s_arready arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awready awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awlen awlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awburst awburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awvalid awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_awsize awsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awcache awcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awlock awlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arvalid arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rvalid rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_arsize arsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlock arlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arburst arburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlen arlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rresp rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_rlast rlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_rready rready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wvalid wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wlast wlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_bvalid bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bready bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wready wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bresp bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_awaddr awaddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_araddr araddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awid awid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arid arid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rdata rdata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wid wid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_bid bid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wdata wdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rid rid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wstrb wstrb 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface altera_axi_master_1 axi OUTPUT
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_master_1 combinedIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesINCRBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 readIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 writeIssuingCapability {1}
	add_instantiation_interface_port altera_axi_master_1 m_awvalid awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awlen awlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awsize awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awburst awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awlock awlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awcache awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awprot awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awready awready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_awuser awuser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arvalid arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_arlen arlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arsize arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arburst arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arlock arlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arcache arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arprot arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arready arready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_aruser aruser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rvalid rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rlast rlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rresp rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rready rready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wvalid wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wlast wlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wready wready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bvalid bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bresp bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_bready bready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awaddr awaddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awid awid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_araddr araddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arid arid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rdata rdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rid rid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_wdata wdata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wstrb wstrb 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wid wid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_bid bid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface conduit_end conduit INPUT
	set_instantiation_interface_parameter_value conduit_end associatedClock {clock}
	set_instantiation_interface_parameter_value conduit_end associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end prSafe {false}
	add_instantiation_interface_port conduit_end c_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awcache awcache 4 STD_LOGIC_VECTOR Input
	save_instantiation
	add_component mm2s_pio ip/qsys_top/qsys_top_pio_0.ip altera_avalon_pio pio_0 19.2.0
	load_component mm2s_pio
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {InOut}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {553095.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {32}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation mm2s_pio
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {32}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {553095}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {32}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {553095}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port in_port 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port external_connection out_port out_port 32 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component msgdma_1 ip/qsys_top/qsys_top_msgdma_1.ip altera_msgdma msgdma_1 19.2.2
	load_component msgdma_1
	set_component_parameter_value BURST_ENABLE {1}
	set_component_parameter_value BURST_WRAPPING_SUPPORT {0}
	set_component_parameter_value CHANNEL_ENABLE {0}
	set_component_parameter_value CHANNEL_WIDTH {8}
	set_component_parameter_value DATA_FIFO_DEPTH {4096}
	set_component_parameter_value DATA_WIDTH {64}
	set_component_parameter_value DESCRIPTOR_FIFO_DEPTH {128}
	set_component_parameter_value ENHANCED_FEATURES {0}
	set_component_parameter_value ERROR_ENABLE {0}
	set_component_parameter_value ERROR_WIDTH {8}
	set_component_parameter_value EXPOSE_ST_PORT {0}
	set_component_parameter_value FIX_ADDRESS_WIDTH {32}
	set_component_parameter_value MAX_BURST_COUNT {1024}
	set_component_parameter_value MAX_BYTE {2147483647}
	set_component_parameter_value MAX_STRIDE {1}
	set_component_parameter_value MODE {1}
	set_component_parameter_value NO_BYTEENABLES {0}
	set_component_parameter_value PACKET_ENABLE {1}
	set_component_parameter_value PREFETCHER_DATA_WIDTH {32}
	set_component_parameter_value PREFETCHER_ENABLE {0}
	set_component_parameter_value PREFETCHER_MAX_READ_BURST_COUNT {2}
	set_component_parameter_value PREFETCHER_READ_BURST_ENABLE {0}
	set_component_parameter_value PROGRAMMABLE_BURST_ENABLE {0}
	set_component_parameter_value RESPONSE_PORT {2}
	set_component_parameter_value STRIDE_ENABLE {0}
	set_component_parameter_value TRANSFER_TYPE {Aligned Accesses}
	set_component_parameter_value USE_FIX_ADDRESS_WIDTH {0}
	set_component_parameter_value WRITE_RESPONSE_ENABLE {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation msgdma_1
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_WRAPPING_SUPPORT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_FIFO_DEPTH {4096}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {64}
	set_instantiation_assignment_value embeddedsw.CMacro.DESCRIPTOR_FIFO_DEPTH {128}
	set_instantiation_assignment_value embeddedsw.CMacro.DMA_MODE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.ENHANCED_FEATURES {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BURST_COUNT {1024}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BYTE {2147483647}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_STRIDE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE_DERIVED {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PREFETCHER_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PROGRAMMABLE_BURST_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.RESPONSE_PORT {2}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.TRANSFER_TYPE {Aligned Accesses}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,msgdma-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.name {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clock_clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_n reset INPUT
	set_instantiation_interface_parameter_value reset_n associatedClock {clock}
	set_instantiation_interface_parameter_value reset_n synchronousEdges {BOTH}
	add_instantiation_interface_port reset_n reset_n_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface csr avalon INPUT
	set_instantiation_interface_parameter_value csr addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value csr addressGroup {0}
	set_instantiation_interface_parameter_value csr addressSpan {32}
	set_instantiation_interface_parameter_value csr addressUnits {WORDS}
	set_instantiation_interface_parameter_value csr alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value csr associatedClock {clock}
	set_instantiation_interface_parameter_value csr associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr bitsPerSymbol {8}
	set_instantiation_interface_parameter_value csr bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value csr bridgesToMaster {}
	set_instantiation_interface_parameter_value csr burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value csr burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value csr constantBurstBehavior {false}
	set_instantiation_interface_parameter_value csr explicitAddressSpan {0}
	set_instantiation_interface_parameter_value csr holdTime {0}
	set_instantiation_interface_parameter_value csr interleaveBursts {false}
	set_instantiation_interface_parameter_value csr isBigEndian {false}
	set_instantiation_interface_parameter_value csr isFlash {false}
	set_instantiation_interface_parameter_value csr isMemoryDevice {false}
	set_instantiation_interface_parameter_value csr isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value csr linewrapBursts {false}
	set_instantiation_interface_parameter_value csr maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value csr maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value csr minimumReadLatency {1}
	set_instantiation_interface_parameter_value csr minimumResponseLatency {1}
	set_instantiation_interface_parameter_value csr minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value csr prSafe {false}
	set_instantiation_interface_parameter_value csr printableDevice {false}
	set_instantiation_interface_parameter_value csr readLatency {1}
	set_instantiation_interface_parameter_value csr readWaitStates {1}
	set_instantiation_interface_parameter_value csr readWaitTime {1}
	set_instantiation_interface_parameter_value csr registerIncomingSignals {false}
	set_instantiation_interface_parameter_value csr registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value csr setupTime {0}
	set_instantiation_interface_parameter_value csr timingUnits {Cycles}
	set_instantiation_interface_parameter_value csr transparentBridge {false}
	set_instantiation_interface_parameter_value csr waitrequestAllowance {0}
	set_instantiation_interface_parameter_value csr wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value csr writeLatency {0}
	set_instantiation_interface_parameter_value csr writeWaitStates {0}
	set_instantiation_interface_parameter_value csr writeWaitTime {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value csr address_map {<address-map><slave name='csr' start='0x0' end='0x20' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value csr address_width {5}
	set_instantiation_interface_sysinfo_parameter_value csr max_slave_data_width {32}
	add_instantiation_interface_port csr csr_writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_write write 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_byteenable byteenable 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port csr csr_read read 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_address address 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface descriptor_slave avalon INPUT
	set_instantiation_interface_parameter_value descriptor_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value descriptor_slave addressGroup {0}
	set_instantiation_interface_parameter_value descriptor_slave addressSpan {16}
	set_instantiation_interface_parameter_value descriptor_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value descriptor_slave associatedClock {clock}
	set_instantiation_interface_parameter_value descriptor_slave associatedReset {reset_n}
	set_instantiation_interface_parameter_value descriptor_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value descriptor_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value descriptor_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value descriptor_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value descriptor_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value descriptor_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value descriptor_slave holdTime {0}
	set_instantiation_interface_parameter_value descriptor_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave isBigEndian {false}
	set_instantiation_interface_parameter_value descriptor_slave isFlash {false}
	set_instantiation_interface_parameter_value descriptor_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value descriptor_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value descriptor_slave prSafe {false}
	set_instantiation_interface_parameter_value descriptor_slave printableDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave readLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave readWaitStates {1}
	set_instantiation_interface_parameter_value descriptor_slave readWaitTime {1}
	set_instantiation_interface_parameter_value descriptor_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave setupTime {0}
	set_instantiation_interface_parameter_value descriptor_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value descriptor_slave transparentBridge {false}
	set_instantiation_interface_parameter_value descriptor_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value descriptor_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value descriptor_slave writeLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_map {<address-map><slave name='descriptor_slave' start='0x0' end='0x10' datawidth='128' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_width {4}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave max_slave_data_width {128}
	add_instantiation_interface_port descriptor_slave descriptor_slave_write write 1 STD_LOGIC Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_waitrequest waitrequest 1 STD_LOGIC Output
	add_instantiation_interface_port descriptor_slave descriptor_slave_writedata writedata 128 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_byteenable byteenable 16 STD_LOGIC_VECTOR Input
	add_instantiation_interface csr_irq interrupt INPUT
	set_instantiation_interface_parameter_value csr_irq associatedAddressablePoint {csr}
	set_instantiation_interface_parameter_value csr_irq associatedClock {clock}
	set_instantiation_interface_parameter_value csr_irq associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr_irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value csr_irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value csr_irq irqScheme {NONE}
	add_instantiation_interface_port csr_irq csr_irq_irq irq 1 STD_LOGIC Output
	add_instantiation_interface mm_read avalon OUTPUT
	set_instantiation_interface_parameter_value mm_read adaptsTo {}
	set_instantiation_interface_parameter_value mm_read addressGroup {0}
	set_instantiation_interface_parameter_value mm_read addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value mm_read alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value mm_read associatedClock {clock}
	set_instantiation_interface_parameter_value mm_read associatedReset {reset_n}
	set_instantiation_interface_parameter_value mm_read bitsPerSymbol {8}
	set_instantiation_interface_parameter_value mm_read burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value mm_read burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value mm_read constantBurstBehavior {false}
	set_instantiation_interface_parameter_value mm_read dBSBigEndian {false}
	set_instantiation_interface_parameter_value mm_read doStreamReads {false}
	set_instantiation_interface_parameter_value mm_read doStreamWrites {false}
	set_instantiation_interface_parameter_value mm_read holdTime {0}
	set_instantiation_interface_parameter_value mm_read interleaveBursts {false}
	set_instantiation_interface_parameter_value mm_read isAsynchronous {false}
	set_instantiation_interface_parameter_value mm_read isBigEndian {false}
	set_instantiation_interface_parameter_value mm_read isReadable {false}
	set_instantiation_interface_parameter_value mm_read isWriteable {false}
	set_instantiation_interface_parameter_value mm_read linewrapBursts {false}
	set_instantiation_interface_parameter_value mm_read maxAddressWidth {32}
	set_instantiation_interface_parameter_value mm_read maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value mm_read maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value mm_read minimumReadLatency {1}
	set_instantiation_interface_parameter_value mm_read minimumResponseLatency {1}
	set_instantiation_interface_parameter_value mm_read prSafe {false}
	set_instantiation_interface_parameter_value mm_read readLatency {0}
	set_instantiation_interface_parameter_value mm_read readWaitTime {1}
	set_instantiation_interface_parameter_value mm_read registerIncomingSignals {false}
	set_instantiation_interface_parameter_value mm_read registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value mm_read setupTime {0}
	set_instantiation_interface_parameter_value mm_read timingUnits {Cycles}
	set_instantiation_interface_parameter_value mm_read waitrequestAllowance {0}
	set_instantiation_interface_parameter_value mm_read writeWaitTime {0}
	add_instantiation_interface_port mm_read mm_read_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_read mm_read_read read 1 STD_LOGIC Output
	add_instantiation_interface_port mm_read mm_read_byteenable byteenable 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_read mm_read_readdata readdata 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port mm_read mm_read_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port mm_read mm_read_readdatavalid readdatavalid 1 STD_LOGIC Input
	add_instantiation_interface_port mm_read mm_read_burstcount burstcount 11 STD_LOGIC_VECTOR Output
	add_instantiation_interface st_source avalon_streaming OUTPUT
	set_instantiation_interface_parameter_value st_source associatedClock {clock}
	set_instantiation_interface_parameter_value st_source associatedReset {reset_n}
	set_instantiation_interface_parameter_value st_source beatsPerCycle {1}
	set_instantiation_interface_parameter_value st_source dataBitsPerSymbol {8}
	set_instantiation_interface_parameter_value st_source emptyWithinPacket {false}
	set_instantiation_interface_parameter_value st_source errorDescriptor {}
	set_instantiation_interface_parameter_value st_source firstSymbolInHighOrderBits {true}
	set_instantiation_interface_parameter_value st_source highOrderSymbolAtMSB {false}
	set_instantiation_interface_parameter_value st_source maxChannel {0}
	set_instantiation_interface_parameter_value st_source packetDescription {}
	set_instantiation_interface_parameter_value st_source prSafe {false}
	set_instantiation_interface_parameter_value st_source readyAllowance {0}
	set_instantiation_interface_parameter_value st_source readyLatency {0}
	set_instantiation_interface_parameter_value st_source symbolsPerBeat {8}
	add_instantiation_interface_port st_source st_source_data data 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port st_source st_source_valid valid 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_ready ready 1 STD_LOGIC Input
	add_instantiation_interface_port st_source st_source_startofpacket startofpacket 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_endofpacket endofpacket 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_empty empty 3 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component msgdma_mm2s ip/qsys_top/qsys_top_msgdma_0.ip altera_msgdma msgdma_0 19.2.2
	load_component msgdma_mm2s
	set_component_parameter_value BURST_ENABLE {1}
	set_component_parameter_value BURST_WRAPPING_SUPPORT {0}
	set_component_parameter_value CHANNEL_ENABLE {0}
	set_component_parameter_value CHANNEL_WIDTH {8}
	set_component_parameter_value DATA_FIFO_DEPTH {4096}
	set_component_parameter_value DATA_WIDTH {512}
	set_component_parameter_value DESCRIPTOR_FIFO_DEPTH {8}
	set_component_parameter_value ENHANCED_FEATURES {0}
	set_component_parameter_value ERROR_ENABLE {0}
	set_component_parameter_value ERROR_WIDTH {8}
	set_component_parameter_value EXPOSE_ST_PORT {0}
	set_component_parameter_value FIX_ADDRESS_WIDTH {32}
	set_component_parameter_value MAX_BURST_COUNT {1024}
	set_component_parameter_value MAX_BYTE {536870912}
	set_component_parameter_value MAX_STRIDE {1}
	set_component_parameter_value MODE {1}
	set_component_parameter_value NO_BYTEENABLES {0}
	set_component_parameter_value PACKET_ENABLE {1}
	set_component_parameter_value PREFETCHER_DATA_WIDTH {32}
	set_component_parameter_value PREFETCHER_ENABLE {0}
	set_component_parameter_value PREFETCHER_MAX_READ_BURST_COUNT {2}
	set_component_parameter_value PREFETCHER_READ_BURST_ENABLE {0}
	set_component_parameter_value PROGRAMMABLE_BURST_ENABLE {0}
	set_component_parameter_value RESPONSE_PORT {2}
	set_component_parameter_value STRIDE_ENABLE {0}
	set_component_parameter_value TRANSFER_TYPE {Aligned Accesses}
	set_component_parameter_value USE_FIX_ADDRESS_WIDTH {0}
	set_component_parameter_value WRITE_RESPONSE_ENABLE {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation msgdma_mm2s
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_WRAPPING_SUPPORT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_FIFO_DEPTH {4096}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {512}
	set_instantiation_assignment_value embeddedsw.CMacro.DESCRIPTOR_FIFO_DEPTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DMA_MODE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.ENHANCED_FEATURES {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BURST_COUNT {1024}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BYTE {536870912}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_STRIDE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE_DERIVED {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PREFETCHER_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PROGRAMMABLE_BURST_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.RESPONSE_PORT {2}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.TRANSFER_TYPE {Aligned Accesses}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,msgdma-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.name {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clock_clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_n reset INPUT
	set_instantiation_interface_parameter_value reset_n associatedClock {clock}
	set_instantiation_interface_parameter_value reset_n synchronousEdges {BOTH}
	add_instantiation_interface_port reset_n reset_n_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface csr avalon INPUT
	set_instantiation_interface_parameter_value csr addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value csr addressGroup {0}
	set_instantiation_interface_parameter_value csr addressSpan {32}
	set_instantiation_interface_parameter_value csr addressUnits {WORDS}
	set_instantiation_interface_parameter_value csr alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value csr associatedClock {clock}
	set_instantiation_interface_parameter_value csr associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr bitsPerSymbol {8}
	set_instantiation_interface_parameter_value csr bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value csr bridgesToMaster {}
	set_instantiation_interface_parameter_value csr burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value csr burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value csr constantBurstBehavior {false}
	set_instantiation_interface_parameter_value csr explicitAddressSpan {0}
	set_instantiation_interface_parameter_value csr holdTime {0}
	set_instantiation_interface_parameter_value csr interleaveBursts {false}
	set_instantiation_interface_parameter_value csr isBigEndian {false}
	set_instantiation_interface_parameter_value csr isFlash {false}
	set_instantiation_interface_parameter_value csr isMemoryDevice {false}
	set_instantiation_interface_parameter_value csr isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value csr linewrapBursts {false}
	set_instantiation_interface_parameter_value csr maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value csr maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value csr minimumReadLatency {1}
	set_instantiation_interface_parameter_value csr minimumResponseLatency {1}
	set_instantiation_interface_parameter_value csr minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value csr prSafe {false}
	set_instantiation_interface_parameter_value csr printableDevice {false}
	set_instantiation_interface_parameter_value csr readLatency {1}
	set_instantiation_interface_parameter_value csr readWaitStates {1}
	set_instantiation_interface_parameter_value csr readWaitTime {1}
	set_instantiation_interface_parameter_value csr registerIncomingSignals {false}
	set_instantiation_interface_parameter_value csr registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value csr setupTime {0}
	set_instantiation_interface_parameter_value csr timingUnits {Cycles}
	set_instantiation_interface_parameter_value csr transparentBridge {false}
	set_instantiation_interface_parameter_value csr waitrequestAllowance {0}
	set_instantiation_interface_parameter_value csr wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value csr writeLatency {0}
	set_instantiation_interface_parameter_value csr writeWaitStates {0}
	set_instantiation_interface_parameter_value csr writeWaitTime {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value csr address_map {<address-map><slave name='csr' start='0x0' end='0x20' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value csr address_width {5}
	set_instantiation_interface_sysinfo_parameter_value csr max_slave_data_width {32}
	add_instantiation_interface_port csr csr_writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_write write 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_byteenable byteenable 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port csr csr_read read 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_address address 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface descriptor_slave avalon INPUT
	set_instantiation_interface_parameter_value descriptor_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value descriptor_slave addressGroup {0}
	set_instantiation_interface_parameter_value descriptor_slave addressSpan {16}
	set_instantiation_interface_parameter_value descriptor_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value descriptor_slave associatedClock {clock}
	set_instantiation_interface_parameter_value descriptor_slave associatedReset {reset_n}
	set_instantiation_interface_parameter_value descriptor_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value descriptor_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value descriptor_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value descriptor_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value descriptor_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value descriptor_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value descriptor_slave holdTime {0}
	set_instantiation_interface_parameter_value descriptor_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave isBigEndian {false}
	set_instantiation_interface_parameter_value descriptor_slave isFlash {false}
	set_instantiation_interface_parameter_value descriptor_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value descriptor_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value descriptor_slave prSafe {false}
	set_instantiation_interface_parameter_value descriptor_slave printableDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave readLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave readWaitStates {1}
	set_instantiation_interface_parameter_value descriptor_slave readWaitTime {1}
	set_instantiation_interface_parameter_value descriptor_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave setupTime {0}
	set_instantiation_interface_parameter_value descriptor_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value descriptor_slave transparentBridge {false}
	set_instantiation_interface_parameter_value descriptor_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value descriptor_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value descriptor_slave writeLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_map {<address-map><slave name='descriptor_slave' start='0x0' end='0x10' datawidth='128' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_width {4}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave max_slave_data_width {128}
	add_instantiation_interface_port descriptor_slave descriptor_slave_write write 1 STD_LOGIC Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_waitrequest waitrequest 1 STD_LOGIC Output
	add_instantiation_interface_port descriptor_slave descriptor_slave_writedata writedata 128 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_byteenable byteenable 16 STD_LOGIC_VECTOR Input
	add_instantiation_interface csr_irq interrupt INPUT
	set_instantiation_interface_parameter_value csr_irq associatedAddressablePoint {csr}
	set_instantiation_interface_parameter_value csr_irq associatedClock {clock}
	set_instantiation_interface_parameter_value csr_irq associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr_irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value csr_irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value csr_irq irqScheme {NONE}
	add_instantiation_interface_port csr_irq csr_irq_irq irq 1 STD_LOGIC Output
	add_instantiation_interface mm_read avalon OUTPUT
	set_instantiation_interface_parameter_value mm_read adaptsTo {}
	set_instantiation_interface_parameter_value mm_read addressGroup {0}
	set_instantiation_interface_parameter_value mm_read addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value mm_read alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value mm_read associatedClock {clock}
	set_instantiation_interface_parameter_value mm_read associatedReset {reset_n}
	set_instantiation_interface_parameter_value mm_read bitsPerSymbol {8}
	set_instantiation_interface_parameter_value mm_read burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value mm_read burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value mm_read constantBurstBehavior {false}
	set_instantiation_interface_parameter_value mm_read dBSBigEndian {false}
	set_instantiation_interface_parameter_value mm_read doStreamReads {false}
	set_instantiation_interface_parameter_value mm_read doStreamWrites {false}
	set_instantiation_interface_parameter_value mm_read holdTime {0}
	set_instantiation_interface_parameter_value mm_read interleaveBursts {false}
	set_instantiation_interface_parameter_value mm_read isAsynchronous {false}
	set_instantiation_interface_parameter_value mm_read isBigEndian {false}
	set_instantiation_interface_parameter_value mm_read isReadable {false}
	set_instantiation_interface_parameter_value mm_read isWriteable {false}
	set_instantiation_interface_parameter_value mm_read linewrapBursts {false}
	set_instantiation_interface_parameter_value mm_read maxAddressWidth {32}
	set_instantiation_interface_parameter_value mm_read maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value mm_read maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value mm_read minimumReadLatency {1}
	set_instantiation_interface_parameter_value mm_read minimumResponseLatency {1}
	set_instantiation_interface_parameter_value mm_read prSafe {false}
	set_instantiation_interface_parameter_value mm_read readLatency {0}
	set_instantiation_interface_parameter_value mm_read readWaitTime {1}
	set_instantiation_interface_parameter_value mm_read registerIncomingSignals {false}
	set_instantiation_interface_parameter_value mm_read registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value mm_read setupTime {0}
	set_instantiation_interface_parameter_value mm_read timingUnits {Cycles}
	set_instantiation_interface_parameter_value mm_read waitrequestAllowance {0}
	set_instantiation_interface_parameter_value mm_read writeWaitTime {0}
	add_instantiation_interface_port mm_read mm_read_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_read mm_read_read read 1 STD_LOGIC Output
	add_instantiation_interface_port mm_read mm_read_byteenable byteenable 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_read mm_read_readdata readdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port mm_read mm_read_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port mm_read mm_read_readdatavalid readdatavalid 1 STD_LOGIC Input
	add_instantiation_interface_port mm_read mm_read_burstcount burstcount 11 STD_LOGIC_VECTOR Output
	add_instantiation_interface st_source avalon_streaming OUTPUT
	set_instantiation_interface_parameter_value st_source associatedClock {clock}
	set_instantiation_interface_parameter_value st_source associatedReset {reset_n}
	set_instantiation_interface_parameter_value st_source beatsPerCycle {1}
	set_instantiation_interface_parameter_value st_source dataBitsPerSymbol {8}
	set_instantiation_interface_parameter_value st_source emptyWithinPacket {false}
	set_instantiation_interface_parameter_value st_source errorDescriptor {}
	set_instantiation_interface_parameter_value st_source firstSymbolInHighOrderBits {true}
	set_instantiation_interface_parameter_value st_source highOrderSymbolAtMSB {false}
	set_instantiation_interface_parameter_value st_source maxChannel {0}
	set_instantiation_interface_parameter_value st_source packetDescription {}
	set_instantiation_interface_parameter_value st_source prSafe {false}
	set_instantiation_interface_parameter_value st_source readyAllowance {0}
	set_instantiation_interface_parameter_value st_source readyLatency {0}
	set_instantiation_interface_parameter_value st_source symbolsPerBeat {64}
	add_instantiation_interface_port st_source st_source_data data 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port st_source st_source_valid valid 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_ready ready 1 STD_LOGIC Input
	add_instantiation_interface_port st_source st_source_startofpacket startofpacket 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_endofpacket endofpacket 1 STD_LOGIC Output
	add_instantiation_interface_port st_source st_source_empty empty 6 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component msgdma_s2mm ip/qsys_top/qsys_top_msgdma_s2mm.ip altera_msgdma qsys_top_msgdma_s2mm 19.2.2
	load_component msgdma_s2mm
	set_component_parameter_value BURST_ENABLE {1}
	set_component_parameter_value BURST_WRAPPING_SUPPORT {0}
	set_component_parameter_value CHANNEL_ENABLE {0}
	set_component_parameter_value CHANNEL_WIDTH {8}
	set_component_parameter_value DATA_FIFO_DEPTH {4096}
	set_component_parameter_value DATA_WIDTH {512}
	set_component_parameter_value DESCRIPTOR_FIFO_DEPTH {8}
	set_component_parameter_value ENHANCED_FEATURES {0}
	set_component_parameter_value ERROR_ENABLE {0}
	set_component_parameter_value ERROR_WIDTH {8}
	set_component_parameter_value EXPOSE_ST_PORT {0}
	set_component_parameter_value FIX_ADDRESS_WIDTH {32}
	set_component_parameter_value MAX_BURST_COUNT {1024}
	set_component_parameter_value MAX_BYTE {536870912}
	set_component_parameter_value MAX_STRIDE {1}
	set_component_parameter_value MODE {2}
	set_component_parameter_value NO_BYTEENABLES {0}
	set_component_parameter_value PACKET_ENABLE {0}
	set_component_parameter_value PREFETCHER_DATA_WIDTH {32}
	set_component_parameter_value PREFETCHER_ENABLE {0}
	set_component_parameter_value PREFETCHER_MAX_READ_BURST_COUNT {2}
	set_component_parameter_value PREFETCHER_READ_BURST_ENABLE {0}
	set_component_parameter_value PROGRAMMABLE_BURST_ENABLE {0}
	set_component_parameter_value RESPONSE_PORT {2}
	set_component_parameter_value STRIDE_ENABLE {0}
	set_component_parameter_value TRANSFER_TYPE {Aligned Accesses}
	set_component_parameter_value USE_FIX_ADDRESS_WIDTH {0}
	set_component_parameter_value WRITE_RESPONSE_ENABLE {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation msgdma_s2mm
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_WRAPPING_SUPPORT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_FIFO_DEPTH {4096}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {512}
	set_instantiation_assignment_value embeddedsw.CMacro.DESCRIPTOR_FIFO_DEPTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DMA_MODE {2}
	set_instantiation_assignment_value embeddedsw.CMacro.ENHANCED_FEATURES {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BURST_COUNT {1024}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BYTE {536870912}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_STRIDE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PREFETCHER_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PROGRAMMABLE_BURST_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.RESPONSE_PORT {2}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.TRANSFER_TYPE {Aligned Accesses}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,msgdma-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.name {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clock_clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_n reset INPUT
	set_instantiation_interface_parameter_value reset_n associatedClock {clock}
	set_instantiation_interface_parameter_value reset_n synchronousEdges {BOTH}
	add_instantiation_interface_port reset_n reset_n_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface csr avalon INPUT
	set_instantiation_interface_parameter_value csr addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value csr addressGroup {0}
	set_instantiation_interface_parameter_value csr addressSpan {32}
	set_instantiation_interface_parameter_value csr addressUnits {WORDS}
	set_instantiation_interface_parameter_value csr alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value csr associatedClock {clock}
	set_instantiation_interface_parameter_value csr associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr bitsPerSymbol {8}
	set_instantiation_interface_parameter_value csr bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value csr bridgesToMaster {}
	set_instantiation_interface_parameter_value csr burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value csr burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value csr constantBurstBehavior {false}
	set_instantiation_interface_parameter_value csr explicitAddressSpan {0}
	set_instantiation_interface_parameter_value csr holdTime {0}
	set_instantiation_interface_parameter_value csr interleaveBursts {false}
	set_instantiation_interface_parameter_value csr isBigEndian {false}
	set_instantiation_interface_parameter_value csr isFlash {false}
	set_instantiation_interface_parameter_value csr isMemoryDevice {false}
	set_instantiation_interface_parameter_value csr isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value csr linewrapBursts {false}
	set_instantiation_interface_parameter_value csr maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value csr maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value csr minimumReadLatency {1}
	set_instantiation_interface_parameter_value csr minimumResponseLatency {1}
	set_instantiation_interface_parameter_value csr minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value csr prSafe {false}
	set_instantiation_interface_parameter_value csr printableDevice {false}
	set_instantiation_interface_parameter_value csr readLatency {1}
	set_instantiation_interface_parameter_value csr readWaitStates {1}
	set_instantiation_interface_parameter_value csr readWaitTime {1}
	set_instantiation_interface_parameter_value csr registerIncomingSignals {false}
	set_instantiation_interface_parameter_value csr registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value csr setupTime {0}
	set_instantiation_interface_parameter_value csr timingUnits {Cycles}
	set_instantiation_interface_parameter_value csr transparentBridge {false}
	set_instantiation_interface_parameter_value csr waitrequestAllowance {0}
	set_instantiation_interface_parameter_value csr wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value csr writeLatency {0}
	set_instantiation_interface_parameter_value csr writeWaitStates {0}
	set_instantiation_interface_parameter_value csr writeWaitTime {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value csr address_map {<address-map><slave name='csr' start='0x0' end='0x20' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value csr address_width {5}
	set_instantiation_interface_sysinfo_parameter_value csr max_slave_data_width {32}
	add_instantiation_interface_port csr csr_writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_write write 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_byteenable byteenable 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port csr csr_read read 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_address address 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface descriptor_slave avalon INPUT
	set_instantiation_interface_parameter_value descriptor_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value descriptor_slave addressGroup {0}
	set_instantiation_interface_parameter_value descriptor_slave addressSpan {16}
	set_instantiation_interface_parameter_value descriptor_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value descriptor_slave associatedClock {clock}
	set_instantiation_interface_parameter_value descriptor_slave associatedReset {reset_n}
	set_instantiation_interface_parameter_value descriptor_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value descriptor_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value descriptor_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value descriptor_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value descriptor_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value descriptor_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value descriptor_slave holdTime {0}
	set_instantiation_interface_parameter_value descriptor_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave isBigEndian {false}
	set_instantiation_interface_parameter_value descriptor_slave isFlash {false}
	set_instantiation_interface_parameter_value descriptor_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value descriptor_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value descriptor_slave prSafe {false}
	set_instantiation_interface_parameter_value descriptor_slave printableDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave readLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave readWaitStates {1}
	set_instantiation_interface_parameter_value descriptor_slave readWaitTime {1}
	set_instantiation_interface_parameter_value descriptor_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave setupTime {0}
	set_instantiation_interface_parameter_value descriptor_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value descriptor_slave transparentBridge {false}
	set_instantiation_interface_parameter_value descriptor_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value descriptor_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value descriptor_slave writeLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_map {<address-map><slave name='descriptor_slave' start='0x0' end='0x10' datawidth='128' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_width {4}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave max_slave_data_width {128}
	add_instantiation_interface_port descriptor_slave descriptor_slave_write write 1 STD_LOGIC Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_waitrequest waitrequest 1 STD_LOGIC Output
	add_instantiation_interface_port descriptor_slave descriptor_slave_writedata writedata 128 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_byteenable byteenable 16 STD_LOGIC_VECTOR Input
	add_instantiation_interface csr_irq interrupt INPUT
	set_instantiation_interface_parameter_value csr_irq associatedAddressablePoint {csr}
	set_instantiation_interface_parameter_value csr_irq associatedClock {clock}
	set_instantiation_interface_parameter_value csr_irq associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr_irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value csr_irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value csr_irq irqScheme {NONE}
	add_instantiation_interface_port csr_irq csr_irq_irq irq 1 STD_LOGIC Output
	add_instantiation_interface mm_write avalon OUTPUT
	set_instantiation_interface_parameter_value mm_write adaptsTo {}
	set_instantiation_interface_parameter_value mm_write addressGroup {0}
	set_instantiation_interface_parameter_value mm_write addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value mm_write alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value mm_write associatedClock {clock}
	set_instantiation_interface_parameter_value mm_write associatedReset {reset_n}
	set_instantiation_interface_parameter_value mm_write bitsPerSymbol {8}
	set_instantiation_interface_parameter_value mm_write burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value mm_write burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value mm_write constantBurstBehavior {false}
	set_instantiation_interface_parameter_value mm_write dBSBigEndian {false}
	set_instantiation_interface_parameter_value mm_write doStreamReads {false}
	set_instantiation_interface_parameter_value mm_write doStreamWrites {false}
	set_instantiation_interface_parameter_value mm_write holdTime {0}
	set_instantiation_interface_parameter_value mm_write interleaveBursts {false}
	set_instantiation_interface_parameter_value mm_write isAsynchronous {false}
	set_instantiation_interface_parameter_value mm_write isBigEndian {false}
	set_instantiation_interface_parameter_value mm_write isReadable {false}
	set_instantiation_interface_parameter_value mm_write isWriteable {false}
	set_instantiation_interface_parameter_value mm_write linewrapBursts {false}
	set_instantiation_interface_parameter_value mm_write maxAddressWidth {32}
	set_instantiation_interface_parameter_value mm_write maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value mm_write maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value mm_write minimumReadLatency {1}
	set_instantiation_interface_parameter_value mm_write minimumResponseLatency {1}
	set_instantiation_interface_parameter_value mm_write prSafe {false}
	set_instantiation_interface_parameter_value mm_write readLatency {0}
	set_instantiation_interface_parameter_value mm_write readWaitTime {1}
	set_instantiation_interface_parameter_value mm_write registerIncomingSignals {false}
	set_instantiation_interface_parameter_value mm_write registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value mm_write setupTime {0}
	set_instantiation_interface_parameter_value mm_write timingUnits {Cycles}
	set_instantiation_interface_parameter_value mm_write waitrequestAllowance {0}
	set_instantiation_interface_parameter_value mm_write writeWaitTime {0}
	add_instantiation_interface_port mm_write mm_write_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_write write 1 STD_LOGIC Output
	add_instantiation_interface_port mm_write mm_write_byteenable byteenable 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_writedata writedata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port mm_write mm_write_burstcount burstcount 11 STD_LOGIC_VECTOR Output
	add_instantiation_interface st_sink avalon_streaming INPUT
	set_instantiation_interface_parameter_value st_sink associatedClock {clock}
	set_instantiation_interface_parameter_value st_sink associatedReset {reset_n}
	set_instantiation_interface_parameter_value st_sink beatsPerCycle {1}
	set_instantiation_interface_parameter_value st_sink dataBitsPerSymbol {8}
	set_instantiation_interface_parameter_value st_sink emptyWithinPacket {false}
	set_instantiation_interface_parameter_value st_sink errorDescriptor {}
	set_instantiation_interface_parameter_value st_sink firstSymbolInHighOrderBits {true}
	set_instantiation_interface_parameter_value st_sink highOrderSymbolAtMSB {false}
	set_instantiation_interface_parameter_value st_sink maxChannel {0}
	set_instantiation_interface_parameter_value st_sink packetDescription {}
	set_instantiation_interface_parameter_value st_sink prSafe {false}
	set_instantiation_interface_parameter_value st_sink readyAllowance {0}
	set_instantiation_interface_parameter_value st_sink readyLatency {0}
	set_instantiation_interface_parameter_value st_sink symbolsPerBeat {64}
	add_instantiation_interface_port st_sink st_sink_data data 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port st_sink st_sink_valid valid 1 STD_LOGIC Input
	add_instantiation_interface_port st_sink st_sink_ready ready 1 STD_LOGIC Output
	save_instantiation
	add_component msgdma_s2mm_0 ip/qsys_top/msgdma_s2mm_0.ip altera_msgdma msgdma_s2mm_0 19.2.2
	load_component msgdma_s2mm_0
	set_component_parameter_value BURST_ENABLE {1}
	set_component_parameter_value BURST_WRAPPING_SUPPORT {0}
	set_component_parameter_value CHANNEL_ENABLE {0}
	set_component_parameter_value CHANNEL_WIDTH {8}
	set_component_parameter_value DATA_FIFO_DEPTH {4096}
	set_component_parameter_value DATA_WIDTH {64}
	set_component_parameter_value DESCRIPTOR_FIFO_DEPTH {8}
	set_component_parameter_value ENHANCED_FEATURES {0}
	set_component_parameter_value ERROR_ENABLE {0}
	set_component_parameter_value ERROR_WIDTH {8}
	set_component_parameter_value EXPOSE_ST_PORT {0}
	set_component_parameter_value FIX_ADDRESS_WIDTH {32}
	set_component_parameter_value MAX_BURST_COUNT {1024}
	set_component_parameter_value MAX_BYTE {536870912}
	set_component_parameter_value MAX_STRIDE {1}
	set_component_parameter_value MODE {2}
	set_component_parameter_value NO_BYTEENABLES {0}
	set_component_parameter_value PACKET_ENABLE {0}
	set_component_parameter_value PREFETCHER_DATA_WIDTH {32}
	set_component_parameter_value PREFETCHER_ENABLE {0}
	set_component_parameter_value PREFETCHER_MAX_READ_BURST_COUNT {2}
	set_component_parameter_value PREFETCHER_READ_BURST_ENABLE {0}
	set_component_parameter_value PROGRAMMABLE_BURST_ENABLE {0}
	set_component_parameter_value RESPONSE_PORT {2}
	set_component_parameter_value STRIDE_ENABLE {0}
	set_component_parameter_value TRANSFER_TYPE {Aligned Accesses}
	set_component_parameter_value USE_FIX_ADDRESS_WIDTH {0}
	set_component_parameter_value WRITE_RESPONSE_ENABLE {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation msgdma_s2mm_0
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_ENABLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BURST_WRAPPING_SUPPORT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CHANNEL_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_FIFO_DEPTH {4096}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {64}
	set_instantiation_assignment_value embeddedsw.CMacro.DESCRIPTOR_FIFO_DEPTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.DMA_MODE {2}
	set_instantiation_assignment_value embeddedsw.CMacro.ENHANCED_FEATURES {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ERROR_WIDTH {8}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BURST_COUNT {1024}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_BYTE {536870912}
	set_instantiation_assignment_value embeddedsw.CMacro.MAX_STRIDE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PACKET_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PREFETCHER_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.PROGRAMMABLE_BURST_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.RESPONSE_PORT {2}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.STRIDE_ENABLE_DERIVED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.TRANSFER_TYPE {Aligned Accesses}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,msgdma-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.name {msgdma}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clock_clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_n reset INPUT
	set_instantiation_interface_parameter_value reset_n associatedClock {clock}
	set_instantiation_interface_parameter_value reset_n synchronousEdges {BOTH}
	add_instantiation_interface_port reset_n reset_n_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface csr avalon INPUT
	set_instantiation_interface_parameter_value csr addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value csr addressGroup {0}
	set_instantiation_interface_parameter_value csr addressSpan {32}
	set_instantiation_interface_parameter_value csr addressUnits {WORDS}
	set_instantiation_interface_parameter_value csr alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value csr associatedClock {clock}
	set_instantiation_interface_parameter_value csr associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr bitsPerSymbol {8}
	set_instantiation_interface_parameter_value csr bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value csr bridgesToMaster {}
	set_instantiation_interface_parameter_value csr burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value csr burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value csr constantBurstBehavior {false}
	set_instantiation_interface_parameter_value csr explicitAddressSpan {0}
	set_instantiation_interface_parameter_value csr holdTime {0}
	set_instantiation_interface_parameter_value csr interleaveBursts {false}
	set_instantiation_interface_parameter_value csr isBigEndian {false}
	set_instantiation_interface_parameter_value csr isFlash {false}
	set_instantiation_interface_parameter_value csr isMemoryDevice {false}
	set_instantiation_interface_parameter_value csr isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value csr linewrapBursts {false}
	set_instantiation_interface_parameter_value csr maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value csr maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value csr minimumReadLatency {1}
	set_instantiation_interface_parameter_value csr minimumResponseLatency {1}
	set_instantiation_interface_parameter_value csr minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value csr prSafe {false}
	set_instantiation_interface_parameter_value csr printableDevice {false}
	set_instantiation_interface_parameter_value csr readLatency {1}
	set_instantiation_interface_parameter_value csr readWaitStates {1}
	set_instantiation_interface_parameter_value csr readWaitTime {1}
	set_instantiation_interface_parameter_value csr registerIncomingSignals {false}
	set_instantiation_interface_parameter_value csr registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value csr setupTime {0}
	set_instantiation_interface_parameter_value csr timingUnits {Cycles}
	set_instantiation_interface_parameter_value csr transparentBridge {false}
	set_instantiation_interface_parameter_value csr waitrequestAllowance {0}
	set_instantiation_interface_parameter_value csr wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value csr writeLatency {0}
	set_instantiation_interface_parameter_value csr writeWaitStates {0}
	set_instantiation_interface_parameter_value csr writeWaitTime {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value csr embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value csr address_map {<address-map><slave name='csr' start='0x0' end='0x20' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value csr address_width {5}
	set_instantiation_interface_sysinfo_parameter_value csr max_slave_data_width {32}
	add_instantiation_interface_port csr csr_writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_write write 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_byteenable byteenable 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port csr csr_readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port csr csr_read read 1 STD_LOGIC Input
	add_instantiation_interface_port csr csr_address address 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface descriptor_slave avalon INPUT
	set_instantiation_interface_parameter_value descriptor_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value descriptor_slave addressGroup {0}
	set_instantiation_interface_parameter_value descriptor_slave addressSpan {16}
	set_instantiation_interface_parameter_value descriptor_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value descriptor_slave associatedClock {clock}
	set_instantiation_interface_parameter_value descriptor_slave associatedReset {reset_n}
	set_instantiation_interface_parameter_value descriptor_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value descriptor_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value descriptor_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value descriptor_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value descriptor_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value descriptor_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value descriptor_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value descriptor_slave holdTime {0}
	set_instantiation_interface_parameter_value descriptor_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave isBigEndian {false}
	set_instantiation_interface_parameter_value descriptor_slave isFlash {false}
	set_instantiation_interface_parameter_value descriptor_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value descriptor_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value descriptor_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value descriptor_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value descriptor_slave prSafe {false}
	set_instantiation_interface_parameter_value descriptor_slave printableDevice {false}
	set_instantiation_interface_parameter_value descriptor_slave readLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave readWaitStates {1}
	set_instantiation_interface_parameter_value descriptor_slave readWaitTime {1}
	set_instantiation_interface_parameter_value descriptor_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value descriptor_slave setupTime {0}
	set_instantiation_interface_parameter_value descriptor_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value descriptor_slave transparentBridge {false}
	set_instantiation_interface_parameter_value descriptor_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value descriptor_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value descriptor_slave writeLatency {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value descriptor_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value descriptor_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_map {<address-map><slave name='descriptor_slave' start='0x0' end='0x10' datawidth='128' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave address_width {4}
	set_instantiation_interface_sysinfo_parameter_value descriptor_slave max_slave_data_width {128}
	add_instantiation_interface_port descriptor_slave descriptor_slave_write write 1 STD_LOGIC Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_waitrequest waitrequest 1 STD_LOGIC Output
	add_instantiation_interface_port descriptor_slave descriptor_slave_writedata writedata 128 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port descriptor_slave descriptor_slave_byteenable byteenable 16 STD_LOGIC_VECTOR Input
	add_instantiation_interface csr_irq interrupt INPUT
	set_instantiation_interface_parameter_value csr_irq associatedAddressablePoint {csr}
	set_instantiation_interface_parameter_value csr_irq associatedClock {clock}
	set_instantiation_interface_parameter_value csr_irq associatedReset {reset_n}
	set_instantiation_interface_parameter_value csr_irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value csr_irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value csr_irq irqScheme {NONE}
	add_instantiation_interface_port csr_irq csr_irq_irq irq 1 STD_LOGIC Output
	add_instantiation_interface mm_write avalon OUTPUT
	set_instantiation_interface_parameter_value mm_write adaptsTo {}
	set_instantiation_interface_parameter_value mm_write addressGroup {0}
	set_instantiation_interface_parameter_value mm_write addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value mm_write alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value mm_write associatedClock {clock}
	set_instantiation_interface_parameter_value mm_write associatedReset {reset_n}
	set_instantiation_interface_parameter_value mm_write bitsPerSymbol {8}
	set_instantiation_interface_parameter_value mm_write burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value mm_write burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value mm_write constantBurstBehavior {false}
	set_instantiation_interface_parameter_value mm_write dBSBigEndian {false}
	set_instantiation_interface_parameter_value mm_write doStreamReads {false}
	set_instantiation_interface_parameter_value mm_write doStreamWrites {false}
	set_instantiation_interface_parameter_value mm_write holdTime {0}
	set_instantiation_interface_parameter_value mm_write interleaveBursts {false}
	set_instantiation_interface_parameter_value mm_write isAsynchronous {false}
	set_instantiation_interface_parameter_value mm_write isBigEndian {false}
	set_instantiation_interface_parameter_value mm_write isReadable {false}
	set_instantiation_interface_parameter_value mm_write isWriteable {false}
	set_instantiation_interface_parameter_value mm_write linewrapBursts {false}
	set_instantiation_interface_parameter_value mm_write maxAddressWidth {32}
	set_instantiation_interface_parameter_value mm_write maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value mm_write maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value mm_write minimumReadLatency {1}
	set_instantiation_interface_parameter_value mm_write minimumResponseLatency {1}
	set_instantiation_interface_parameter_value mm_write prSafe {false}
	set_instantiation_interface_parameter_value mm_write readLatency {0}
	set_instantiation_interface_parameter_value mm_write readWaitTime {1}
	set_instantiation_interface_parameter_value mm_write registerIncomingSignals {false}
	set_instantiation_interface_parameter_value mm_write registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value mm_write setupTime {0}
	set_instantiation_interface_parameter_value mm_write timingUnits {Cycles}
	set_instantiation_interface_parameter_value mm_write waitrequestAllowance {0}
	set_instantiation_interface_parameter_value mm_write writeWaitTime {0}
	add_instantiation_interface_port mm_write mm_write_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_write write 1 STD_LOGIC Output
	add_instantiation_interface_port mm_write mm_write_byteenable byteenable 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_writedata writedata 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port mm_write mm_write_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port mm_write mm_write_burstcount burstcount 11 STD_LOGIC_VECTOR Output
	add_instantiation_interface st_sink avalon_streaming INPUT
	set_instantiation_interface_parameter_value st_sink associatedClock {clock}
	set_instantiation_interface_parameter_value st_sink associatedReset {reset_n}
	set_instantiation_interface_parameter_value st_sink beatsPerCycle {1}
	set_instantiation_interface_parameter_value st_sink dataBitsPerSymbol {8}
	set_instantiation_interface_parameter_value st_sink emptyWithinPacket {false}
	set_instantiation_interface_parameter_value st_sink errorDescriptor {}
	set_instantiation_interface_parameter_value st_sink firstSymbolInHighOrderBits {true}
	set_instantiation_interface_parameter_value st_sink highOrderSymbolAtMSB {false}
	set_instantiation_interface_parameter_value st_sink maxChannel {0}
	set_instantiation_interface_parameter_value st_sink packetDescription {}
	set_instantiation_interface_parameter_value st_sink prSafe {false}
	set_instantiation_interface_parameter_value st_sink readyAllowance {0}
	set_instantiation_interface_parameter_value st_sink readyLatency {0}
	set_instantiation_interface_parameter_value st_sink symbolsPerBeat {8}
	add_instantiation_interface_port st_sink st_sink_data data 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port st_sink st_sink_valid valid 1 STD_LOGIC Input
	add_instantiation_interface_port st_sink st_sink_ready ready 1 STD_LOGIC Output
	save_instantiation
	add_component ocm ip/qsys_top/ocm.ip altera_avalon_onchip_memory2 altera_avalon_onchip_memory2_inst 19.3.6
	load_component ocm
	set_component_parameter_value allowInSystemMemoryContentEditor {0}
	set_component_parameter_value blockType {AUTO}
	set_component_parameter_value copyInitFile {0}
	set_component_parameter_value dataWidth {128}
	set_component_parameter_value dataWidth2 {32}
	set_component_parameter_value dualPort {0}
	set_component_parameter_value ecc_enabled {0}
	set_component_parameter_value enPRInitMode {0}
	set_component_parameter_value enableDiffWidth {0}
	set_component_parameter_value initMemContent {1}
	set_component_parameter_value initializationFileName {onchip_mem.hex}
	set_component_parameter_value instanceID {NONE}
	set_component_parameter_value memorySize {262144.0}
	set_component_parameter_value readDuringWriteMode {DONT_CARE}
	set_component_parameter_value resetrequest_enabled {1}
	set_component_parameter_value simAllowMRAMContentsFile {0}
	set_component_parameter_value simMemInitOnlyFilename {0}
	set_component_parameter_value singleClockOperation {1}
	set_component_parameter_value slave1Latency {2}
	set_component_parameter_value slave2Latency {1}
	set_component_parameter_value useNonDefaultInitFile {0}
	set_component_parameter_value useShallowMemBlocks {0}
	set_component_parameter_value writable {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation ocm
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR {0}
	set_instantiation_assignment_value embeddedsw.CMacro.ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CONTENTS_INFO {""}
	set_instantiation_assignment_value embeddedsw.CMacro.DUAL_PORT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.GUI_RAM_BLOCK_TYPE {AUTO}
	set_instantiation_assignment_value embeddedsw.CMacro.INIT_CONTENTS_FILE {ocm_altera_avalon_onchip_memory2_inst}
	set_instantiation_assignment_value embeddedsw.CMacro.INIT_MEM_CONTENT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.INSTANCE_ID {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.NON_DEFAULT_INIT_FILE_ENABLED {0}
	set_instantiation_assignment_value embeddedsw.CMacro.RAM_BLOCK_TYPE {AUTO}
	set_instantiation_assignment_value embeddedsw.CMacro.READ_DURING_WRITE_MODE {DONT_CARE}
	set_instantiation_assignment_value embeddedsw.CMacro.SINGLE_CLOCK_OP {1}
	set_instantiation_assignment_value embeddedsw.CMacro.SIZE_MULTIPLE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.SIZE_VALUE {262144}
	set_instantiation_assignment_value embeddedsw.CMacro.WRITABLE {1}
	set_instantiation_assignment_value embeddedsw.memoryInfo.DAT_SYM_INSTALL_DIR {SIM_DIR}
	set_instantiation_assignment_value embeddedsw.memoryInfo.GENERATE_DAT_SYM {1}
	set_instantiation_assignment_value embeddedsw.memoryInfo.GENERATE_HEX {1}
	set_instantiation_assignment_value embeddedsw.memoryInfo.HAS_BYTE_LANE {0}
	set_instantiation_assignment_value embeddedsw.memoryInfo.HEX_INSTALL_DIR {QPF_DIR}
	set_instantiation_assignment_value embeddedsw.memoryInfo.MEM_INIT_DATA_WIDTH {128}
	set_instantiation_assignment_value embeddedsw.memoryInfo.MEM_INIT_FILENAME {ocm_altera_avalon_onchip_memory2_inst}
	set_instantiation_assignment_value postgeneration.simulation.init_file.param_name {INIT_FILE}
	set_instantiation_assignment_value postgeneration.simulation.init_file.type {MEM_INIT}
	add_instantiation_interface clk1 clock INPUT
	set_instantiation_interface_parameter_value clk1 clockRate {0}
	set_instantiation_interface_parameter_value clk1 externallyDriven {false}
	set_instantiation_interface_parameter_value clk1 ptfSchematicName {}
	add_instantiation_interface_port clk1 clk clk 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {262144}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk1}
	set_instantiation_interface_parameter_value s1 associatedReset {reset1}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {262144}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {true}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {2}
	set_instantiation_interface_parameter_value s1 readWaitStates {0}
	set_instantiation_interface_parameter_value s1 readWaitTime {0}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {1}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x40000' datawidth='128' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {18}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {128}
	add_instantiation_interface_port s1 address address 14 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 clken clken 1 STD_LOGIC Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 write write 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 128 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port s1 writedata writedata 128 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 byteenable byteenable 16 STD_LOGIC_VECTOR Input
	add_instantiation_interface reset1 reset INPUT
	set_instantiation_interface_parameter_value reset1 associatedClock {clk1}
	set_instantiation_interface_parameter_value reset1 synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset1 reset reset 1 STD_LOGIC Input
	add_instantiation_interface_port reset1 reset_req reset_req 1 STD_LOGIC Input
	save_instantiation
	add_instance periph subsys_periph
	add_component pio_1 ip/qsys_top/qsys_top_pio_1.ip altera_avalon_pio pio_1 19.2.0
	load_component pio_1
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {InOut}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {553095.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {32}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation pio_1
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {32}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {553095}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {32}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {553095}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port in_port 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port external_connection out_port out_port 32 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component pl2ps_axis2l_wn_0 ip/qsys_top/qsys_top_pl2ps_axis2l_wn_0.ip pl2ps_axis2l_wn pl2ps_axis2l_wn_0 1.0
	load_component pl2ps_axis2l_wn_0
	set_component_parameter_value ADDR_WIDTH {10}
	set_component_parameter_value DATA_WIDTH {32}
	set_component_parameter_value STRB_WIDTH {4}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation pl2ps_axis2l_wn_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface interrupt_sender interrupt INPUT
	set_instantiation_interface_parameter_value interrupt_sender associatedAddressablePoint {}
	set_instantiation_interface_parameter_value interrupt_sender associatedClock {clock}
	set_instantiation_interface_parameter_value interrupt_sender associatedReset {reset}
	set_instantiation_interface_parameter_value interrupt_sender bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value interrupt_sender bridgesToReceiver {}
	set_instantiation_interface_parameter_value interrupt_sender irqScheme {NONE}
	add_instantiation_interface_port interrupt_sender interrupt irq 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface altera_axi4lite_slave axi4lite INPUT
	set_instantiation_interface_parameter_value altera_axi4lite_slave associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi4lite_slave associatedReset {reset}
	set_instantiation_interface_parameter_value altera_axi4lite_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi4lite_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi4lite_slave writeAcceptanceCapability {1}
	add_instantiation_interface_port altera_axi4lite_slave s_axi_awaddr awaddr 10 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_awvalid awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_awready awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_wdata wdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_wstrb wstrb 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_wvalid wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_wready wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_bresp bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_bvalid bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_bready bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_araddr araddr 10 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_arvalid arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_arready arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_rdata rdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_rresp rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_rvalid rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_rready rready 1 STD_LOGIC Input
	add_instantiation_interface ssbindc axi4stream INPUT
	set_instantiation_interface_parameter_value ssbindc associatedClock {clock}
	set_instantiation_interface_parameter_value ssbindc associatedReset {reset}
	add_instantiation_interface_port ssbindc ssb_tdata tdata 1880 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port ssbindc ssb_tvalid tvalid 1 STD_LOGIC Input
	add_instantiation_interface_port ssbindc ssb_tready tready 1 STD_LOGIC Output
	add_instantiation_interface pdcchindc axi4stream INPUT
	set_instantiation_interface_parameter_value pdcchindc associatedClock {clock}
	set_instantiation_interface_parameter_value pdcchindc associatedReset {reset}
	add_instantiation_interface_port pdcchindc pdcch_tdata tdata 2200 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port pdcchindc pdcch_tvalid tvalid 1 STD_LOGIC Input
	add_instantiation_interface_port pdcchindc pdcch_tready tready 1 STD_LOGIC Output
	add_instantiation_interface pdschindc axi4stream INPUT
	set_instantiation_interface_parameter_value pdschindc associatedClock {clock}
	set_instantiation_interface_parameter_value pdschindc associatedReset {reset}
	add_instantiation_interface_port pdschindc pdsch_tdata tdata 121 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port pdschindc pdsch_tvalid tvalid 1 STD_LOGIC Input
	add_instantiation_interface_port pdschindc pdsch_tready tready 1 STD_LOGIC Output
	add_instantiation_interface param axi4stream INPUT
	set_instantiation_interface_parameter_value param associatedClock {clock}
	set_instantiation_interface_parameter_value param associatedReset {reset}
	add_instantiation_interface_port param param_tdata tdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port param param_tvalid tvalid 1 STD_LOGIC Input
	add_instantiation_interface_port param param_tready tready 1 STD_LOGIC Output
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clock}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface slot_number conduit INPUT
	set_instantiation_interface_parameter_value slot_number associatedClock {clock}
	set_instantiation_interface_parameter_value slot_number associatedReset {reset}
	set_instantiation_interface_parameter_value slot_number prSafe {false}
	add_instantiation_interface_port slot_number slot_number writebyteenable_n 8 STD_LOGIC_VECTOR Input
	add_instantiation_interface sfn conduit INPUT
	set_instantiation_interface_parameter_value sfn associatedClock {clock}
	set_instantiation_interface_parameter_value sfn associatedReset {reset}
	set_instantiation_interface_parameter_value sfn prSafe {false}
	add_instantiation_interface_port sfn sfn writebyteenable_n 10 STD_LOGIC_VECTOR Input
	add_instantiation_interface slot_tick conduit INPUT
	set_instantiation_interface_parameter_value slot_tick associatedClock {clock}
	set_instantiation_interface_parameter_value slot_tick associatedReset {reset}
	set_instantiation_interface_parameter_value slot_tick prSafe {false}
	add_instantiation_interface_port slot_tick slot_tick beginbursttransfer 1 STD_LOGIC Input
	save_instantiation
	add_component ps2pl_axil2s_0 ip/qsys_top/qsys_top_ps2pl_axil2s_0.ip ps2pl_axil2s ps2pl_axil2s_0 2.0
	load_component ps2pl_axil2s_0
	set_component_parameter_value C_S_AXI_DATA_WIDTH {32}
	set_component_parameter_value C_S_AXI_S_AXI_ADDR_WIDTH {10}
	set_component_parameter_value C_S_AXI_S_AXI_DATA_WIDTH {32}
	set_component_parameter_value C_S_AXI_S_AXI_WSTRB_WIDTH {4}
	set_component_parameter_value C_S_AXI_WSTRB_WIDTH {4}
	set_component_parameter_value ap_ST_iter0_fsm_state1 {1}
	set_component_parameter_value ap_ST_iter1_fsm_state0 {2}
	set_component_parameter_value ap_ST_iter1_fsm_state2 {2}
	set_component_parameter_value ap_ST_iter2_fsm_state0 {2}
	set_component_parameter_value ap_ST_iter2_fsm_state3 {2}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation ps2pl_axil2s_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface altera_axi4lite_slave axi4lite INPUT
	set_instantiation_interface_parameter_value altera_axi4lite_slave associatedClock {clock_sink}
	set_instantiation_interface_parameter_value altera_axi4lite_slave associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi4lite_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi4lite_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi4lite_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi4lite_slave writeAcceptanceCapability {1}
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_AWVALID awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_AWREADY awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_AWADDR awaddr 10 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_WVALID wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_WREADY wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_WDATA wdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_WSTRB wstrb 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_ARVALID arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_ARREADY arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_ARADDR araddr 10 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_RVALID rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_RREADY rready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_RDATA rdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_RRESP rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_BVALID bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_BREADY bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_BRESP bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_AWPROT awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi4lite_slave s_axi_S_AXI_ARPROT arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface clock_sink clock INPUT
	set_instantiation_interface_parameter_value clock_sink clockRate {0}
	set_instantiation_interface_parameter_value clock_sink externallyDriven {false}
	set_instantiation_interface_parameter_value clock_sink ptfSchematicName {}
	add_instantiation_interface_port clock_sink ap_clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_sink reset INPUT
	set_instantiation_interface_parameter_value reset_sink associatedClock {clock_sink}
	set_instantiation_interface_parameter_value reset_sink synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_sink ap_rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface interrupt_sender interrupt INPUT
	set_instantiation_interface_parameter_value interrupt_sender associatedAddressablePoint {}
	set_instantiation_interface_parameter_value interrupt_sender associatedClock {clock_sink}
	set_instantiation_interface_parameter_value interrupt_sender associatedReset {reset_sink}
	set_instantiation_interface_parameter_value interrupt_sender bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value interrupt_sender bridgesToReceiver {}
	set_instantiation_interface_parameter_value interrupt_sender irqScheme {NONE}
	add_instantiation_interface_port interrupt_sender interrupt irq 1 STD_LOGIC Output
	add_instantiation_interface axi4stream_master axi4stream OUTPUT
	set_instantiation_interface_parameter_value axi4stream_master associatedClock {clock_sink}
	set_instantiation_interface_parameter_value axi4stream_master associatedReset {reset_sink}
	add_instantiation_interface_port axi4stream_master payload_st_V_TREADY tready 1 STD_LOGIC Input
	add_instantiation_interface_port axi4stream_master payload_st_V_TDATA tdata 3624 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port axi4stream_master payload_st_V_TVALID tvalid 1 STD_LOGIC Output
	add_instantiation_interface conduit_end conduit INPUT
	set_instantiation_interface_parameter_value conduit_end associatedClock {clock_sink}
	set_instantiation_interface_parameter_value conduit_end associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end prSafe {false}
	add_instantiation_interface_port conduit_end state_out_V readdata 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface conduit_end_1 conduit INPUT
	set_instantiation_interface_parameter_value conduit_end_1 associatedClock {clock_sink}
	set_instantiation_interface_parameter_value conduit_end_1 associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end_1 prSafe {false}
	add_instantiation_interface_port conduit_end_1 time_V readdata 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface tx_st axi4stream OUTPUT
	set_instantiation_interface_parameter_value tx_st associatedClock {clock_sink}
	set_instantiation_interface_parameter_value tx_st associatedReset {reset_sink}
	add_instantiation_interface_port tx_st tx_st_V_TREADY tready 1 STD_LOGIC Input
	add_instantiation_interface_port tx_st tx_st_V_TDATA tdata 1536 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port tx_st tx_st_V_TVALID tvalid 1 STD_LOGIC Output
	save_instantiation
	add_component rst_in ip/qsys_top/rst_in.ip altera_reset_bridge altera_reset_bridge_inst 19.2.0
	load_component rst_in
	set_component_parameter_value ACTIVE_LOW_RESET {1}
	set_component_parameter_value NUM_RESET_OUTPUTS {1}
	set_component_parameter_value SYNCHRONOUS_EDGES {both}
	set_component_parameter_value SYNC_RESET {0}
	set_component_parameter_value USE_RESET_REQUEST {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation rst_in
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface in_reset reset INPUT
	set_instantiation_interface_parameter_value in_reset associatedClock {clk}
	set_instantiation_interface_parameter_value in_reset synchronousEdges {BOTH}
	add_instantiation_interface_port in_reset in_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface out_reset reset OUTPUT
	set_instantiation_interface_parameter_value out_reset associatedClock {clk}
	set_instantiation_interface_parameter_value out_reset associatedDirectReset {in_reset}
	set_instantiation_interface_parameter_value out_reset associatedResetSinks {in_reset}
	set_instantiation_interface_parameter_value out_reset synchronousEdges {BOTH}
	add_instantiation_interface_port out_reset out_reset_n reset_n 1 STD_LOGIC Output
	save_instantiation
	add_component rx_data_dma_merger ip/qsys_top/qsys_top_axi_conduit_merger_2.ip axi_conduit_merger axi_conduit_merger_2 1.0
	load_component rx_data_dma_merger
	set_component_parameter_value ADDRESS_WIDTH {32}
	set_component_parameter_value AXUSER_WIDTH {5}
	set_component_parameter_value DATA_WIDTH {64}
	set_component_parameter_value ID_WIDTH {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation rx_data_dma_merger
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_sink reset INPUT
	set_instantiation_interface_parameter_value reset_sink associatedClock {clock}
	set_instantiation_interface_parameter_value reset_sink synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_sink rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface altera_axi_slave axi INPUT
	set_instantiation_interface_parameter_value altera_axi_slave associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_slave associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_slave writeAcceptanceCapability {1}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_map {<address-map><slave name='altera_axi_slave' start='0x0' end='0x100000000' datawidth='64' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_width {32}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave max_slave_data_width {64}
	add_instantiation_interface_port altera_axi_slave s_arready arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awready awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awlen awlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awburst awburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awvalid awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_awsize awsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awcache awcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awlock awlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arvalid arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rvalid rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_arsize arsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlock arlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arburst arburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlen arlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rresp rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_rlast rlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_rready rready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wvalid wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wlast wlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_bvalid bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bready bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wready wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bresp bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_awaddr awaddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_araddr araddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awid awid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arid arid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rdata rdata 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wid wid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_bid bid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wdata wdata 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rid rid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wstrb wstrb 8 STD_LOGIC_VECTOR Input
	add_instantiation_interface altera_axi_master_1 axi OUTPUT
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_master_1 combinedIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesINCRBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 readIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 writeIssuingCapability {1}
	add_instantiation_interface_port altera_axi_master_1 m_awvalid awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awlen awlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awsize awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awburst awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awlock awlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awcache awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awprot awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awready awready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_awuser awuser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arvalid arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_arlen arlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arsize arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arburst arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arlock arlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arcache arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arprot arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arready arready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_aruser aruser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rvalid rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rlast rlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rresp rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rready rready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wvalid wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wlast wlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wready wready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bvalid bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bresp bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_bready bready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awaddr awaddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awid awid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_araddr araddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arid arid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rdata rdata 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rid rid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_wdata wdata 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wstrb wstrb 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wid wid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_bid bid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface conduit_end conduit INPUT
	set_instantiation_interface_parameter_value conduit_end associatedClock {clock}
	set_instantiation_interface_parameter_value conduit_end associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end prSafe {false}
	add_instantiation_interface_port conduit_end c_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awcache awcache 4 STD_LOGIC_VECTOR Input
	save_instantiation
	add_component s2mm_conduit_merger ip/qsys_top/qsys_top_axi_conduit_merger_1.ip axi_conduit_merger axi_conduit_merger_1 1.0
	load_component s2mm_conduit_merger
	set_component_parameter_value ADDRESS_WIDTH {32}
	set_component_parameter_value AXUSER_WIDTH {5}
	set_component_parameter_value DATA_WIDTH {512}
	set_component_parameter_value ID_WIDTH {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation s2mm_conduit_merger
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_sink reset INPUT
	set_instantiation_interface_parameter_value reset_sink associatedClock {clock}
	set_instantiation_interface_parameter_value reset_sink synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_sink rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface altera_axi_slave axi INPUT
	set_instantiation_interface_parameter_value altera_axi_slave associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_slave associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_slave writeAcceptanceCapability {1}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_map {<address-map><slave name='altera_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_width {32}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave max_slave_data_width {512}
	add_instantiation_interface_port altera_axi_slave s_arready arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awready awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awlen awlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awburst awburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awvalid awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_awsize awsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awcache awcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awlock awlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arvalid arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rvalid rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_arsize arsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlock arlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arburst arburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlen arlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rresp rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_rlast rlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_rready rready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wvalid wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wlast wlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_bvalid bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bready bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wready wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bresp bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_awaddr awaddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_araddr araddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awid awid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arid arid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rdata rdata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wid wid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_bid bid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wdata wdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rid rid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wstrb wstrb 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface altera_axi_master_1 axi OUTPUT
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_master_1 combinedIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesINCRBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 readIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 writeIssuingCapability {1}
	add_instantiation_interface_port altera_axi_master_1 m_awvalid awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awlen awlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awsize awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awburst awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awlock awlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awcache awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awprot awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awready awready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_awuser awuser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arvalid arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_arlen arlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arsize arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arburst arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arlock arlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arcache arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arprot arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arready arready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_aruser aruser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rvalid rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rlast rlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rresp rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rready rready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wvalid wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wlast wlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wready wready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bvalid bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bresp bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_bready bready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awaddr awaddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awid awid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_araddr araddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arid arid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rdata rdata 512 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rid rid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_wdata wdata 512 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wstrb wstrb 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wid wid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_bid bid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface conduit_end conduit INPUT
	set_instantiation_interface_parameter_value conduit_end associatedClock {clock}
	set_instantiation_interface_parameter_value conduit_end associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end prSafe {false}
	add_instantiation_interface_port conduit_end c_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awcache awcache 4 STD_LOGIC_VECTOR Input
	save_instantiation
	add_component s2mm_conduit_merger_0 ip/qsys_top/s2mm_conduit_merger_0.ip axi_conduit_merger s2mm_conduit_merger_0 1.0
	load_component s2mm_conduit_merger_0
	set_component_parameter_value ADDRESS_WIDTH {32}
	set_component_parameter_value AXUSER_WIDTH {5}
	set_component_parameter_value DATA_WIDTH {64}
	set_component_parameter_value ID_WIDTH {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation s2mm_conduit_merger_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clock clock INPUT
	set_instantiation_interface_parameter_value clock clockRate {0}
	set_instantiation_interface_parameter_value clock externallyDriven {false}
	set_instantiation_interface_parameter_value clock ptfSchematicName {}
	add_instantiation_interface_port clock clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset_sink reset INPUT
	set_instantiation_interface_parameter_value reset_sink associatedClock {clock}
	set_instantiation_interface_parameter_value reset_sink synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_sink rst_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface altera_axi_slave axi INPUT
	set_instantiation_interface_parameter_value altera_axi_slave associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_slave associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value altera_axi_slave combinedAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_slave maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_slave readAcceptanceCapability {1}
	set_instantiation_interface_parameter_value altera_axi_slave readDataReorderingDepth {1}
	set_instantiation_interface_parameter_value altera_axi_slave trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_slave writeAcceptanceCapability {1}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_map {<address-map><slave name='altera_axi_slave' start='0x0' end='0x100000000' datawidth='64' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave address_width {32}
	set_instantiation_interface_sysinfo_parameter_value altera_axi_slave max_slave_data_width {64}
	add_instantiation_interface_port altera_axi_slave s_arready arready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awready awready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_awlen awlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awburst awburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awvalid awvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_awsize awsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awcache awcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awlock awlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arvalid arvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rvalid rvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_arsize arsize 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlock arlock 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arburst arburst 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arlen arlen 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rresp rresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_rlast rlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_rready rready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wvalid wvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wlast wlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_bvalid bvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bready bready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_slave s_wready wready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_slave s_bresp bresp 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_awaddr awaddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_araddr araddr 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_awid awid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_arid arid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rdata rdata 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wid wid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_bid bid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wdata wdata 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_slave s_rid rid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_slave s_wstrb wstrb 8 STD_LOGIC_VECTOR Input
	add_instantiation_interface altera_axi_master_1 axi OUTPUT
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedClock {clock}
	set_instantiation_interface_parameter_value altera_axi_master_1 associatedReset {reset_sink}
	set_instantiation_interface_parameter_value altera_axi_master_1 combinedIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesFIXEDBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesINCRBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 issuesWRAPBursts {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingReads {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingTransactions {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 maximumOutstandingWrites {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 readIssuingCapability {1}
	set_instantiation_interface_parameter_value altera_axi_master_1 trustzoneAware {true}
	set_instantiation_interface_parameter_value altera_axi_master_1 writeIssuingCapability {1}
	add_instantiation_interface_port altera_axi_master_1 m_awvalid awvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awlen awlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awsize awsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awburst awburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awlock awlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awcache awcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awprot awprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awready awready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_awuser awuser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arvalid arvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_arlen arlen 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arsize arsize 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arburst arburst 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arlock arlock 2 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arcache arcache 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arprot arprot 3 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arready arready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_aruser aruser 5 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rvalid rvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rlast rlast 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_rresp rresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rready rready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wvalid wvalid 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wlast wlast 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_wready wready 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bvalid bvalid 1 STD_LOGIC Input
	add_instantiation_interface_port altera_axi_master_1 m_bresp bresp 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_bready bready 1 STD_LOGIC Output
	add_instantiation_interface_port altera_axi_master_1 m_awaddr awaddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_awid awid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_araddr araddr 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_arid arid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_rdata rdata 64 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_rid rid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port altera_axi_master_1 m_wdata wdata 64 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wstrb wstrb 8 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_wid wid 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port altera_axi_master_1 m_bid bid 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface conduit_end conduit INPUT
	set_instantiation_interface_parameter_value conduit_end associatedClock {clock}
	set_instantiation_interface_parameter_value conduit_end associatedReset {reset_sink}
	set_instantiation_interface_parameter_value conduit_end prSafe {false}
	add_instantiation_interface_port conduit_end c_awuser awuser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_aruser aruser 5 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arprot arprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_arcache arcache 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awprot awprot 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port conduit_end c_awcache awcache 4 STD_LOGIC_VECTOR Input
	save_instantiation
	add_component s2mm_pio ip/qsys_top/s2mm_pio.ip altera_avalon_pio s2mm_pio 19.2.0
	load_component s2mm_pio
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {InOut}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {553095.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {32}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation s2mm_pio
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {32}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {553095}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {32}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {553095}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port in_port 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port external_connection out_port out_port 32 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component s2mm_pio_0 ip/qsys_top/s2mm_pio_0.ip altera_avalon_pio s2mm_pio_0 19.2.0
	load_component s2mm_pio_0
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {InOut}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {8847495.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {32}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation s2mm_pio_0
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {32}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {8847495}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {32}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {8847495}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port in_port 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port external_connection out_port out_port 32 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component sysid ip/qsys_top/sysid.ip altera_avalon_sysid_qsys altera_avalon_sysid_qsys_inst 19.1.2
	load_component sysid
	set_component_parameter_value id {-1395275010}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation sysid
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.ID {-1395275010}
	set_instantiation_assignment_value embeddedsw.CMacro.TIMESTAMP {1672652272}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,sysid-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {sysid}
	set_instantiation_assignment_value embeddedsw.dts.name {sysid}
	set_instantiation_assignment_value embeddedsw.dts.params.id {-1395275010}
	set_instantiation_assignment_value embeddedsw.dts.params.timestamp {1672652272}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clock clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface control_slave avalon INPUT
	set_instantiation_interface_parameter_value control_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value control_slave addressGroup {0}
	set_instantiation_interface_parameter_value control_slave addressSpan {8}
	set_instantiation_interface_parameter_value control_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value control_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value control_slave associatedClock {clk}
	set_instantiation_interface_parameter_value control_slave associatedReset {reset}
	set_instantiation_interface_parameter_value control_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value control_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value control_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value control_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value control_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value control_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value control_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value control_slave holdTime {0}
	set_instantiation_interface_parameter_value control_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value control_slave isBigEndian {false}
	set_instantiation_interface_parameter_value control_slave isFlash {false}
	set_instantiation_interface_parameter_value control_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value control_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value control_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value control_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value control_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value control_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value control_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value control_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value control_slave prSafe {false}
	set_instantiation_interface_parameter_value control_slave printableDevice {false}
	set_instantiation_interface_parameter_value control_slave readLatency {0}
	set_instantiation_interface_parameter_value control_slave readWaitStates {1}
	set_instantiation_interface_parameter_value control_slave readWaitTime {1}
	set_instantiation_interface_parameter_value control_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value control_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value control_slave setupTime {0}
	set_instantiation_interface_parameter_value control_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value control_slave transparentBridge {false}
	set_instantiation_interface_parameter_value control_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value control_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value control_slave writeLatency {0}
	set_instantiation_interface_parameter_value control_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value control_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value control_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value control_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value control_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value control_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value control_slave address_map {<address-map><slave name='control_slave' start='0x0' end='0x8' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value control_slave address_width {3}
	set_instantiation_interface_sysinfo_parameter_value control_slave max_slave_data_width {32}
	add_instantiation_interface_port control_slave readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port control_slave address address 1 STD_LOGIC Input
	save_instantiation
	add_component user_rst_clkgate_0 ip/qsys_top/user_rst_clkgate_0.ip altera_s10_user_rst_clkgate altera_s10_user_rst_clkgate_inst 19.4.1
	load_component user_rst_clkgate_0
	set_component_parameter_value outputType {Conduit Interface}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation user_rst_clkgate_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface ninit_done conduit INPUT
	set_instantiation_interface_parameter_value ninit_done associatedClock {}
	set_instantiation_interface_parameter_value ninit_done associatedReset {}
	set_instantiation_interface_parameter_value ninit_done prSafe {false}
	add_instantiation_interface_port ninit_done ninit_done ninit_done 1 STD_LOGIC Output
	save_instantiation

	# add wirelevel expressions

	# preserve ports for debug

	# add the connections
	add_connection agilex_hps.f2h_irq0/msgdma_1.csr_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_1.csr_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_1.csr_irq irqNumber {5}
	add_connection agilex_hps.f2h_irq0/msgdma_mm2s.csr_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_mm2s.csr_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_mm2s.csr_irq irqNumber {2}
	add_connection agilex_hps.f2h_irq0/msgdma_s2mm.csr_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_s2mm.csr_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_s2mm.csr_irq irqNumber {4}
	add_connection agilex_hps.f2h_irq0/msgdma_s2mm_0.csr_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_s2mm_0.csr_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/msgdma_s2mm_0.csr_irq irqNumber {3}
	add_connection agilex_hps.f2h_irq0/periph.button_pio_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/periph.button_pio_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/periph.button_pio_irq irqNumber {1}
	add_connection agilex_hps.f2h_irq0/periph.dipsw_pio_irq
	set_connection_parameter_value agilex_hps.f2h_irq0/periph.dipsw_pio_irq interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/periph.dipsw_pio_irq irqNumber {0}
	add_connection agilex_hps.f2h_irq0/ps2pl_axil2s_0.interrupt_sender
	set_connection_parameter_value agilex_hps.f2h_irq0/ps2pl_axil2s_0.interrupt_sender interruptsUsedSysInfo {127}
	set_connection_parameter_value agilex_hps.f2h_irq0/ps2pl_axil2s_0.interrupt_sender irqNumber {6}
	add_connection agilex_hps.h2f_axi_master/mm2s_pio.s1
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 baseAddress {0x00040830}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/mm2s_pio.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/ocm.s1
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 baseAddress {0x0000}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ocm.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/pio_1.s1
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 baseAddress {0x00040810}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pio_1.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave baseAddress {0x00040400}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave baseAddress {0x00040000}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/ps2pl_axil2s_0.altera_axi4lite_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/s2mm_pio.s1
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 baseAddress {0x00040820}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_axi_master/s2mm_pio_0.s1
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 addressMapSysInfo {<address-map><slave name='ocm.s1' start='0x0' end='0x40000' datawidth='128' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /><slave name='s2mm_pio_0.s1' start='0x40800' end='0x40810' datawidth='32' /><slave name='pio_1.s1' start='0x40810' end='0x40820' datawidth='32' /><slave name='s2mm_pio.s1' start='0x40820' end='0x40830' datawidth='32' /><slave name='mm2s_pio.s1' start='0x40830' end='0x40840' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 addressWidthSysInfo {19}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 baseAddress {0x00040800}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_axi_master/s2mm_pio_0.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/debu_core_selector.s1
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 baseAddress {0x0280}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/debu_core_selector.s1 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_1.csr
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr baseAddress {0x0220}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.csr slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave baseAddress {0x02b0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_1.descriptor_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr baseAddress {0x0260}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.csr slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave baseAddress {0x02a0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_mm2s.descriptor_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr baseAddress {0x0240}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.csr slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave baseAddress {0x02c0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm.descriptor_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr baseAddress {0x0200}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.csr slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave baseAddress {0x0290}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/msgdma_s2mm_0.descriptor_slave slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 baseAddress {0x0000}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/periph.pb_cpu_0_s0 slaveDataWidthSysInfo {-1}
	add_connection agilex_hps.h2f_lw_axi_master/sysid.control_slave
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm_0.csr' start='0x200' end='0x220' datawidth='32' /><slave name='msgdma_1.csr' start='0x220' end='0x240' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='debu_core_selector.s1' start='0x280' end='0x290' datawidth='32' /><slave name='msgdma_s2mm_0.descriptor_slave' start='0x290' end='0x2A0' datawidth='128' /><slave name='msgdma_mm2s.descriptor_slave' start='0x2A0' end='0x2B0' datawidth='128' /><slave name='msgdma_1.descriptor_slave' start='0x2B0' end='0x2C0' datawidth='128' /><slave name='msgdma_s2mm.descriptor_slave' start='0x2C0' end='0x2D0' datawidth='128' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /></address-map>}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave addressWidthSysInfo {10}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave arbitrationPriority {1}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave baseAddress {0x02d0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave defaultConnection {0}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave domainAlias {}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value agilex_hps.h2f_lw_axi_master/sysid.control_slave slaveDataWidthSysInfo {-1}
	add_connection clk_100.out_clk/agilex_hps.f2h_axi_clock
	set_connection_parameter_value clk_100.out_clk/agilex_hps.f2h_axi_clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.f2h_axi_clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.f2h_axi_clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.f2h_axi_clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/agilex_hps.h2f_axi_clock
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_axi_clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_axi_clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_axi_clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_axi_clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/agilex_hps.h2f_lw_axi_clock
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_lw_axi_clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_lw_axi_clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_lw_axi_clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/agilex_hps.h2f_lw_axi_clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/debu_core_selector.clk
	set_connection_parameter_value clk_100.out_clk/debu_core_selector.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/debu_core_selector.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/debu_core_selector.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/debu_core_selector.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/jtg_mst.clk
	set_connection_parameter_value clk_100.out_clk/jtg_mst.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/jtg_mst.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/jtg_mst.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/jtg_mst.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/mm2s_conduit_merger.clock
	set_connection_parameter_value clk_100.out_clk/mm2s_conduit_merger.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/mm2s_conduit_merger.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/mm2s_conduit_merger.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/mm2s_conduit_merger.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/mm2s_pio.clk
	set_connection_parameter_value clk_100.out_clk/mm2s_pio.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/mm2s_pio.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/mm2s_pio.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/mm2s_pio.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/msgdma_1.clock
	set_connection_parameter_value clk_100.out_clk/msgdma_1.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/msgdma_1.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/msgdma_1.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/msgdma_1.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/msgdma_mm2s.clock
	set_connection_parameter_value clk_100.out_clk/msgdma_mm2s.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/msgdma_mm2s.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/msgdma_mm2s.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/msgdma_mm2s.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/msgdma_s2mm.clock
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/msgdma_s2mm_0.clock
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm_0.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm_0.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm_0.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/msgdma_s2mm_0.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/ocm.clk1
	set_connection_parameter_value clk_100.out_clk/ocm.clk1 clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/ocm.clk1 clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/ocm.clk1 clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/ocm.clk1 resetDomainSysInfo {1}
	add_connection clk_100.out_clk/periph.clk
	set_connection_parameter_value clk_100.out_clk/periph.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/periph.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/periph.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/periph.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/pio_1.clk
	set_connection_parameter_value clk_100.out_clk/pio_1.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/pio_1.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/pio_1.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/pio_1.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/pl2ps_axis2l_wn_0.clock
	set_connection_parameter_value clk_100.out_clk/pl2ps_axis2l_wn_0.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/pl2ps_axis2l_wn_0.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/pl2ps_axis2l_wn_0.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/pl2ps_axis2l_wn_0.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/ps2pl_axil2s_0.clock_sink
	set_connection_parameter_value clk_100.out_clk/ps2pl_axil2s_0.clock_sink clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/ps2pl_axil2s_0.clock_sink clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/ps2pl_axil2s_0.clock_sink clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/ps2pl_axil2s_0.clock_sink resetDomainSysInfo {1}
	add_connection clk_100.out_clk/rst_in.clk
	set_connection_parameter_value clk_100.out_clk/rst_in.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/rst_in.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/rst_in.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/rst_in.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/rx_data_dma_merger.clock
	set_connection_parameter_value clk_100.out_clk/rx_data_dma_merger.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/rx_data_dma_merger.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/rx_data_dma_merger.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/rx_data_dma_merger.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/s2mm_conduit_merger.clock
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/s2mm_conduit_merger_0.clock
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger_0.clock clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger_0.clock clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger_0.clock clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/s2mm_conduit_merger_0.clock resetDomainSysInfo {1}
	add_connection clk_100.out_clk/s2mm_pio.clk
	set_connection_parameter_value clk_100.out_clk/s2mm_pio.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/s2mm_pio_0.clk
	set_connection_parameter_value clk_100.out_clk/s2mm_pio_0.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio_0.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio_0.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/s2mm_pio_0.clk resetDomainSysInfo {1}
	add_connection clk_100.out_clk/sysid.clk
	set_connection_parameter_value clk_100.out_clk/sysid.clk clockDomainSysInfo {1}
	set_connection_parameter_value clk_100.out_clk/sysid.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value clk_100.out_clk/sysid.clk clockResetSysInfo {}
	set_connection_parameter_value clk_100.out_clk/sysid.clk resetDomainSysInfo {1}
	add_connection emif_calbus_0.emif_calbus_clk/emif_hps.emif_calbus_clk
	set_connection_parameter_value emif_calbus_0.emif_calbus_clk/emif_hps.emif_calbus_clk clockDomainSysInfo {2}
	set_connection_parameter_value emif_calbus_0.emif_calbus_clk/emif_hps.emif_calbus_clk clockRateSysInfo {}
	set_connection_parameter_value emif_calbus_0.emif_calbus_clk/emif_hps.emif_calbus_clk clockResetSysInfo {}
	set_connection_parameter_value emif_calbus_0.emif_calbus_clk/emif_hps.emif_calbus_clk resetDomainSysInfo {2}
	add_connection emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0
	set_connection_parameter_value emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0 endPort {}
	set_connection_parameter_value emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0 endPortLSB {0}
	set_connection_parameter_value emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0 startPort {}
	set_connection_parameter_value emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0 startPortLSB {0}
	set_connection_parameter_value emif_hps.emif_calbus/emif_calbus_0.emif_calbus_0 width {0}
	add_connection emif_hps.hps_emif/agilex_hps.hps_emif
	set_connection_parameter_value emif_hps.hps_emif/agilex_hps.hps_emif endPort {}
	set_connection_parameter_value emif_hps.hps_emif/agilex_hps.hps_emif endPortLSB {0}
	set_connection_parameter_value emif_hps.hps_emif/agilex_hps.hps_emif startPort {}
	set_connection_parameter_value emif_hps.hps_emif/agilex_hps.hps_emif startPortLSB {0}
	set_connection_parameter_value emif_hps.hps_emif/agilex_hps.hps_emif width {0}
	add_connection jtg_mst.fpga_m_master/msgdma_mm2s.csr
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr baseAddress {0x0260}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_mm2s.csr slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.fpga_m_master/msgdma_s2mm.csr
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr baseAddress {0x0240}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/msgdma_s2mm.csr slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.fpga_m_master/periph.pb_cpu_0_s0
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 baseAddress {0x0000}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/periph.pb_cpu_0_s0 slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave baseAddress {0x00040400}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/pl2ps_axis2l_wn_0.altera_axi4lite_slave slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave baseAddress {0x00040000}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/ps2pl_axil2s_0.altera_axi4lite_slave slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.fpga_m_master/sysid.control_slave
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave addressMapSysInfo {<address-map><slave name='periph.button_pio.s1' start='0x60' end='0x70' datawidth='32' /><slave name='periph.dipsw_pio.s1' start='0x70' end='0x80' datawidth='32' /><slave name='periph.led_pio.s1' start='0x80' end='0x90' datawidth='32' /><slave name='periph.ILC.avalon_slave' start='0x100' end='0x200' datawidth='32' /><slave name='msgdma_s2mm.csr' start='0x240' end='0x260' datawidth='32' /><slave name='msgdma_mm2s.csr' start='0x260' end='0x280' datawidth='32' /><slave name='sysid.control_slave' start='0x2D0' end='0x2D8' datawidth='32' /><slave name='ps2pl_axil2s_0.altera_axi4lite_slave' start='0x40000' end='0x40400' datawidth='32' /><slave name='pl2ps_axis2l_wn_0.altera_axi4lite_slave' start='0x40400' end='0x40800' datawidth='32' /></address-map>}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave addressWidthSysInfo {19}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave baseAddress {0x02d0}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave defaultConnection {0}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave domainAlias {}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.fpga_m_master/sysid.control_slave slaveDataWidthSysInfo {-1}
	add_connection jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave addressMapSysInfo {<address-map><slave name='agilex_hps.f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave arbitrationPriority {1}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave baseAddress {0x0000}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave defaultConnection {0}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave domainAlias {}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value jtg_mst.hps_m_master/agilex_hps.f2h_axi_slave slaveDataWidthSysInfo {-1}
	add_connection mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressMapSysInfo {<address-map><slave name='agilex_hps.f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave arbitrationPriority {1}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave baseAddress {0x0000}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave defaultConnection {0}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave domainAlias {}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value mm2s_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave slaveDataWidthSysInfo {-1}
	add_connection msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave addressMapSysInfo {<address-map><slave name='rx_data_dma_merger.altera_axi_slave' start='0x0' end='0x100000000' datawidth='64' /></address-map>}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave arbitrationPriority {1}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave baseAddress {0x0000}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave defaultConnection {0}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave domainAlias {}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.clockCrossingAdapter {HANDSHAKE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_1.mm_read/rx_data_dma_merger.altera_axi_slave slaveDataWidthSysInfo {-1}
	add_connection msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave addressMapSysInfo {<address-map><slave name='mm2s_conduit_merger.altera_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave arbitrationPriority {1}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave baseAddress {0x0000}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave defaultConnection {0}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave domainAlias {}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.clockCrossingAdapter {HANDSHAKE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_mm2s.mm_read/mm2s_conduit_merger.altera_axi_slave slaveDataWidthSysInfo {-1}
	add_connection msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave addressMapSysInfo {<address-map><slave name='s2mm_conduit_merger.altera_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave arbitrationPriority {1}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave baseAddress {0x0000}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave defaultConnection {0}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave domainAlias {}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.clockCrossingAdapter {HANDSHAKE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_s2mm.mm_write/s2mm_conduit_merger.altera_axi_slave slaveDataWidthSysInfo {-1}
	add_connection msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave addressMapSysInfo {<address-map><slave name='s2mm_conduit_merger_0.altera_axi_slave' start='0x0' end='0x100000000' datawidth='64' /></address-map>}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave arbitrationPriority {1}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave baseAddress {0x0000}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave defaultConnection {0}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave domainAlias {}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.clockCrossingAdapter {HANDSHAKE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value msgdma_s2mm_0.mm_write/s2mm_conduit_merger_0.altera_axi_slave slaveDataWidthSysInfo {-1}
	add_connection periph.ILC_irq/periph.button_pio_irq
	set_connection_parameter_value periph.ILC_irq/periph.button_pio_irq interruptsUsedSysInfo {3}
	set_connection_parameter_value periph.ILC_irq/periph.button_pio_irq irqNumber {1}
	add_connection periph.ILC_irq/periph.dipsw_pio_irq
	set_connection_parameter_value periph.ILC_irq/periph.dipsw_pio_irq interruptsUsedSysInfo {3}
	set_connection_parameter_value periph.ILC_irq/periph.dipsw_pio_irq irqNumber {0}
	add_connection rst_in.out_reset/agilex_hps.f2h_axi_reset
	set_connection_parameter_value rst_in.out_reset/agilex_hps.f2h_axi_reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.f2h_axi_reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.f2h_axi_reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/agilex_hps.h2f_axi_reset
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_axi_reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_axi_reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_axi_reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/agilex_hps.h2f_lw_axi_reset
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_lw_axi_reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_lw_axi_reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/agilex_hps.h2f_lw_axi_reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/debu_core_selector.reset
	set_connection_parameter_value rst_in.out_reset/debu_core_selector.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/debu_core_selector.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/debu_core_selector.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/jtg_mst.reset
	set_connection_parameter_value rst_in.out_reset/jtg_mst.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/jtg_mst.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/jtg_mst.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/mm2s_conduit_merger.reset_sink
	set_connection_parameter_value rst_in.out_reset/mm2s_conduit_merger.reset_sink clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/mm2s_conduit_merger.reset_sink clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/mm2s_conduit_merger.reset_sink resetDomainSysInfo {5}
	add_connection rst_in.out_reset/mm2s_pio.reset
	set_connection_parameter_value rst_in.out_reset/mm2s_pio.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/mm2s_pio.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/mm2s_pio.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/msgdma_1.reset_n
	set_connection_parameter_value rst_in.out_reset/msgdma_1.reset_n clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/msgdma_1.reset_n clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/msgdma_1.reset_n resetDomainSysInfo {5}
	add_connection rst_in.out_reset/msgdma_mm2s.reset_n
	set_connection_parameter_value rst_in.out_reset/msgdma_mm2s.reset_n clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/msgdma_mm2s.reset_n clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/msgdma_mm2s.reset_n resetDomainSysInfo {5}
	add_connection rst_in.out_reset/msgdma_s2mm.reset_n
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm.reset_n clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm.reset_n clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm.reset_n resetDomainSysInfo {5}
	add_connection rst_in.out_reset/msgdma_s2mm_0.reset_n
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm_0.reset_n clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm_0.reset_n clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/msgdma_s2mm_0.reset_n resetDomainSysInfo {5}
	add_connection rst_in.out_reset/ocm.reset1
	set_connection_parameter_value rst_in.out_reset/ocm.reset1 clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/ocm.reset1 clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/ocm.reset1 resetDomainSysInfo {5}
	add_connection rst_in.out_reset/periph.reset
	set_connection_parameter_value rst_in.out_reset/periph.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/periph.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/periph.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/pio_1.reset
	set_connection_parameter_value rst_in.out_reset/pio_1.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/pio_1.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/pio_1.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/pl2ps_axis2l_wn_0.reset
	set_connection_parameter_value rst_in.out_reset/pl2ps_axis2l_wn_0.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/pl2ps_axis2l_wn_0.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/pl2ps_axis2l_wn_0.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/ps2pl_axil2s_0.reset_sink
	set_connection_parameter_value rst_in.out_reset/ps2pl_axil2s_0.reset_sink clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/ps2pl_axil2s_0.reset_sink clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/ps2pl_axil2s_0.reset_sink resetDomainSysInfo {5}
	add_connection rst_in.out_reset/rx_data_dma_merger.reset_sink
	set_connection_parameter_value rst_in.out_reset/rx_data_dma_merger.reset_sink clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/rx_data_dma_merger.reset_sink clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/rx_data_dma_merger.reset_sink resetDomainSysInfo {5}
	add_connection rst_in.out_reset/s2mm_conduit_merger.reset_sink
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger.reset_sink clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger.reset_sink clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger.reset_sink resetDomainSysInfo {5}
	add_connection rst_in.out_reset/s2mm_conduit_merger_0.reset_sink
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger_0.reset_sink clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger_0.reset_sink clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/s2mm_conduit_merger_0.reset_sink resetDomainSysInfo {5}
	add_connection rst_in.out_reset/s2mm_pio.reset
	set_connection_parameter_value rst_in.out_reset/s2mm_pio.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/s2mm_pio.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/s2mm_pio.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/s2mm_pio_0.reset
	set_connection_parameter_value rst_in.out_reset/s2mm_pio_0.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/s2mm_pio_0.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/s2mm_pio_0.reset resetDomainSysInfo {5}
	add_connection rst_in.out_reset/sysid.reset
	set_connection_parameter_value rst_in.out_reset/sysid.reset clockDomainSysInfo {5}
	set_connection_parameter_value rst_in.out_reset/sysid.reset clockResetSysInfo {}
	set_connection_parameter_value rst_in.out_reset/sysid.reset resetDomainSysInfo {5}
	add_connection rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressMapSysInfo {<address-map><slave name='agilex_hps.f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave arbitrationPriority {1}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave baseAddress {0x0000}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave defaultConnection {0}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave domainAlias {}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value rx_data_dma_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave slaveDataWidthSysInfo {-1}
	add_connection s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressMapSysInfo {<address-map><slave name='agilex_hps.f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave arbitrationPriority {1}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave baseAddress {0x0000}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave defaultConnection {0}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave domainAlias {}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value s2mm_conduit_merger.altera_axi_master_1/agilex_hps.f2h_axi_slave slaveDataWidthSysInfo {-1}
	add_connection s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave addressMapSysInfo {<address-map><slave name='agilex_hps.f2h_axi_slave' start='0x0' end='0x100000000' datawidth='512' /></address-map>}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave addressWidthSysInfo {32}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave arbitrationPriority {1}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave baseAddress {0x0000}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave defaultConnection {0}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave domainAlias {}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.burstAdapterImplementation {PER_BURST_TYPE_CONVERTER}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.maxAdditionalLatency {4}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value s2mm_conduit_merger_0.altera_axi_master_1/agilex_hps.f2h_axi_slave slaveDataWidthSysInfo {-1}

	# add the exports
	set_interface_property wd_reset EXPORT_OF agilex_hps.h2f_watchdog_rst
	set_interface_property agilex_hps_f2h_stm_hw_events EXPORT_OF agilex_hps.f2h_stm_hw_events
	set_interface_property agilex_hps_h2f_cs EXPORT_OF agilex_hps.h2f_cs
	set_interface_property hps_io EXPORT_OF agilex_hps.hps_io
	set_interface_property h2f_reset EXPORT_OF agilex_hps.h2f_reset
	set_interface_property f2h_irq1 EXPORT_OF agilex_hps.f2h_irq1
	set_interface_property clk_100 EXPORT_OF clk_100.in_clk
	set_interface_property debug_core_rd EXPORT_OF debu_core_selector.external_connection
	set_interface_property emif_hps_pll_ref_clk EXPORT_OF emif_hps.pll_ref_clk
	set_interface_property emif_hps_oct EXPORT_OF emif_hps.oct
	set_interface_property emif_hps_mem EXPORT_OF emif_hps.mem
	set_interface_property mm2s_conduit_merger_conduit_end EXPORT_OF mm2s_conduit_merger.conduit_end
	set_interface_property mm2s_pio EXPORT_OF mm2s_pio.external_connection
	set_interface_property msgdma_1_st_source EXPORT_OF msgdma_1.st_source
	set_interface_property pusch_data EXPORT_OF msgdma_mm2s.st_source
	set_interface_property pdsch_data EXPORT_OF msgdma_s2mm.st_sink
	set_interface_property msgdma_s2mm_0_st_sink EXPORT_OF msgdma_s2mm_0.st_sink
	set_interface_property button_pio_external_connection EXPORT_OF periph.button_pio_external_connection
	set_interface_property dipsw_pio_external_connection EXPORT_OF periph.dipsw_pio_external_connection
	set_interface_property led_pio_external_connection EXPORT_OF periph.led_pio_external_connection
	set_interface_property mm2s_pio_d EXPORT_OF pio_1.external_connection
	set_interface_property pl2ps_ssb EXPORT_OF pl2ps_axis2l_wn_0.ssbindc
	set_interface_property pl2ps_pdcch EXPORT_OF pl2ps_axis2l_wn_0.pdcchindc
	set_interface_property pl2ps_pdsch EXPORT_OF pl2ps_axis2l_wn_0.pdschindc
	set_interface_property pl2ps_param EXPORT_OF pl2ps_axis2l_wn_0.param
	set_interface_property slot_number EXPORT_OF pl2ps_axis2l_wn_0.slot_number
	set_interface_property sfn EXPORT_OF pl2ps_axis2l_wn_0.sfn
	set_interface_property slot_tick EXPORT_OF pl2ps_axis2l_wn_0.slot_tick
	set_interface_property ps2pl_stream EXPORT_OF ps2pl_axil2s_0.axi4stream_master
	set_interface_property ps2pl_axil2s_0_conduit_end EXPORT_OF ps2pl_axil2s_0.conduit_end
	set_interface_property ps2pl_axil2s_0_conduit_end_1 EXPORT_OF ps2pl_axil2s_0.conduit_end_1
	set_interface_property ps2pl_tx_st EXPORT_OF ps2pl_axil2s_0.tx_st
	set_interface_property reset EXPORT_OF rst_in.in_reset
	set_interface_property mm2s_conduit_merger_conduit_end_d EXPORT_OF rx_data_dma_merger.conduit_end
	set_interface_property s2mm_conduit_merger_conduit_end EXPORT_OF s2mm_conduit_merger.conduit_end
	set_interface_property s2mm_conduit_merger_0_conduit_end EXPORT_OF s2mm_conduit_merger_0.conduit_end
	set_interface_property s2mm_pio EXPORT_OF s2mm_pio.external_connection
	set_interface_property s2mm_pio_0_external_connection EXPORT_OF s2mm_pio_0.external_connection
	set_interface_property ninit_done EXPORT_OF user_rst_clkgate_0.ninit_done

	# set values for exposed HDL parameters
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.burstAdapterImplementation PER_BURST_TYPE_CONVERTER
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.clockCrossingAdapter AUTO
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.enableAllPipelines FALSE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.enableEccProtection FALSE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.enableInstrumentation FALSE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.interconnectType STANDARD
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.maxAdditionalLatency 4
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.syncResets TRUE
	set_domain_assignment agilex_hps.h2f_axi_master qsys_mm.widthAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.burstAdapterImplementation PER_BURST_TYPE_CONVERTER
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.clockCrossingAdapter AUTO
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.enableAllPipelines FALSE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.enableEccProtection FALSE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.enableInstrumentation FALSE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.interconnectType STANDARD
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.maxAdditionalLatency 4
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.syncResets TRUE
	set_domain_assignment jtg_mst.hps_m_master qsys_mm.widthAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_1.mm_read qsys_mm.burstAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_1.mm_read qsys_mm.clockCrossingAdapter HANDSHAKE
	set_domain_assignment msgdma_1.mm_read qsys_mm.enableAllPipelines FALSE
	set_domain_assignment msgdma_1.mm_read qsys_mm.enableEccProtection FALSE
	set_domain_assignment msgdma_1.mm_read qsys_mm.enableInstrumentation FALSE
	set_domain_assignment msgdma_1.mm_read qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment msgdma_1.mm_read qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment msgdma_1.mm_read qsys_mm.interconnectType STANDARD
	set_domain_assignment msgdma_1.mm_read qsys_mm.maxAdditionalLatency 1
	set_domain_assignment msgdma_1.mm_read qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment msgdma_1.mm_read qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment msgdma_1.mm_read qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment msgdma_1.mm_read qsys_mm.syncResets TRUE
	set_domain_assignment msgdma_1.mm_read qsys_mm.widthAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.burstAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.clockCrossingAdapter HANDSHAKE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.enableAllPipelines FALSE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.enableEccProtection FALSE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.enableInstrumentation FALSE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.interconnectType STANDARD
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.maxAdditionalLatency 1
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.syncResets TRUE
	set_domain_assignment msgdma_mm2s.mm_read qsys_mm.widthAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.burstAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.clockCrossingAdapter HANDSHAKE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.enableAllPipelines FALSE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.enableEccProtection FALSE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.enableInstrumentation FALSE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.interconnectType STANDARD
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.maxAdditionalLatency 1
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.syncResets TRUE
	set_domain_assignment msgdma_s2mm.mm_write qsys_mm.widthAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.burstAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.clockCrossingAdapter HANDSHAKE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.enableAllPipelines FALSE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.enableEccProtection FALSE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.enableInstrumentation FALSE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.interconnectType STANDARD
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.maxAdditionalLatency 1
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.syncResets TRUE
	set_domain_assignment msgdma_s2mm_0.mm_write qsys_mm.widthAdapterImplementation GENERIC_CONVERTER

	# set the the module properties
	set_module_property BONUS_DATA {<?xml version="1.0" encoding="UTF-8"?>
<bonusData>
 <element __value="agilex_hps">
  <datum __value="_sortIndex" value="7" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="agilex_hps.f2h_axi_slave">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="clk_100">
  <datum __value="_sortIndex" value="0" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="debu_core_selector">
  <datum __value="_sortIndex" value="24" type="int" />
 </element>
 <element __value="debu_core_selector.s1">
  <datum __value="baseAddress" value="640" type="String" />
 </element>
 <element __value="emif_calbus_0">
  <datum __value="_sortIndex" value="9" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="emif_hps">
  <datum __value="_sortIndex" value="8" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="jtg_mst">
  <datum __value="_sortIndex" value="4" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="mm2s_conduit_merger">
  <datum __value="_sortIndex" value="12" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="mm2s_conduit_merger.altera_axi_slave">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="mm2s_pio">
  <datum __value="_sortIndex" value="14" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="mm2s_pio.s1">
  <datum __value="baseAddress" value="264240" type="String" />
 </element>
 <element __value="msgdma_1">
  <datum __value="_sortIndex" value="18" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="msgdma_1.csr">
  <datum __value="baseAddress" value="544" type="String" />
 </element>
 <element __value="msgdma_1.descriptor_slave">
  <datum __value="baseAddress" value="688" type="String" />
 </element>
 <element __value="msgdma_mm2s">
  <datum __value="_sortIndex" value="10" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="msgdma_mm2s.csr">
  <datum __value="baseAddress" value="608" type="String" />
 </element>
 <element __value="msgdma_mm2s.descriptor_slave">
  <datum __value="baseAddress" value="672" type="String" />
 </element>
 <element __value="msgdma_s2mm">
  <datum __value="_sortIndex" value="11" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="msgdma_s2mm.csr">
  <datum __value="baseAddress" value="576" type="String" />
 </element>
 <element __value="msgdma_s2mm.descriptor_slave">
  <datum __value="baseAddress" value="704" type="String" />
 </element>
 <element __value="msgdma_s2mm_0">
  <datum __value="_sortIndex" value="21" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="msgdma_s2mm_0.csr">
  <datum __value="baseAddress" value="512" type="String" />
 </element>
 <element __value="msgdma_s2mm_0.descriptor_slave">
  <datum __value="baseAddress" value="656" type="String" />
 </element>
 <element __value="ocm">
  <datum __value="_sortIndex" value="5" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="ocm.s1">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="periph">
  <datum __value="_sortIndex" value="6" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="periph.pb_cpu_0_s0">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="pio_1">
  <datum __value="_sortIndex" value="17" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="pio_1.s1">
  <datum __value="baseAddress" value="264208" type="String" />
 </element>
 <element __value="pl2ps_axis2l_wn_0">
  <datum __value="_sortIndex" value="20" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="pl2ps_axis2l_wn_0.altera_axi4lite_slave">
  <datum __value="baseAddress" value="263168" type="String" />
 </element>
 <element __value="pl2ps_trafficgen_0.altera_axi4lite_slave">
  <datum __value="baseAddress" value="262784" type="String" />
 </element>
 <element __value="ps2pl_axil2s_0">
  <datum __value="_sortIndex" value="19" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="ps2pl_axil2s_0.altera_axi4lite_slave">
  <datum __value="baseAddress" value="262144" type="String" />
 </element>
 <element __value="rst_in">
  <datum __value="_sortIndex" value="1" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="rx_data_dma_merger">
  <datum __value="_sortIndex" value="16" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="rx_data_dma_merger.altera_axi_slave">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="s2mm_conduit_merger">
  <datum __value="_sortIndex" value="13" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="s2mm_conduit_merger.altera_axi_slave">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="s2mm_conduit_merger_0">
  <datum __value="_sortIndex" value="22" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="s2mm_conduit_merger_0.altera_axi_slave">
  <datum __value="baseAddress" value="0" type="String" />
 </element>
 <element __value="s2mm_pio">
  <datum __value="_sortIndex" value="15" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="s2mm_pio.s1">
  <datum __value="baseAddress" value="264224" type="String" />
 </element>
 <element __value="s2mm_pio_0">
  <datum __value="_sortIndex" value="23" type="int" />
  <datum __value="sopceditor_expanded" value="1" type="boolean" />
 </element>
 <element __value="s2mm_pio_0.s1">
  <datum __value="baseAddress" value="264192" type="String" />
 </element>
 <element __value="sysid">
  <datum __value="_sortIndex" value="3" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
 <element __value="sysid.control_slave">
  <datum __value="baseAddress" value="720" type="String" />
 </element>
 <element __value="user_rst_clkgate_0">
  <datum __value="_sortIndex" value="2" type="int" />
  <datum __value="sopceditor_expanded" value="0" type="boolean" />
 </element>
</bonusData>
}
	set_module_property FILE {qsys_top.qsys}
	set_module_property GENERATION_ID {0x00000000}
	set_module_property NAME {qsys_top}

	# save the system
	sync_sysinfo_parameters
	save_system qsys_top
}

# create the system "subsys_jtg_mst"
proc do_create_subsys_jtg_mst {} {
	# create the system
	create_system subsys_jtg_mst
	set_project_property BOARD {Intel Agilex F-Series FPGA Development Kit DK-DEV-AGF014EA}
	set_project_property DEVICE {AGFB014R24B2E2V}
	set_project_property DEVICE_FAMILY {Agilex}
	set_project_property HIDE_FROM_IP_CATALOG {false}
	set_use_testbench_naming_pattern 0 {}

	# add HDL parameters

	# add the components
	add_component fpga_m ip/subsys_jtg_mst/fpga_m.ip altera_jtag_avalon_master altera_jtag_avalon_master_inst 19.1
	load_component fpga_m
	set_component_parameter_value FAST_VER {0}
	set_component_parameter_value FIFO_DEPTHS {2}
	set_component_parameter_value PLI_PORT {50000}
	set_component_parameter_value USE_PLI {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation fpga_m
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value debug.hostConnection {type jtag id 110:132}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk_clk clk 1 STD_LOGIC Input
	add_instantiation_interface clk_reset reset INPUT
	set_instantiation_interface_parameter_value clk_reset associatedClock {}
	set_instantiation_interface_parameter_value clk_reset synchronousEdges {NONE}
	add_instantiation_interface_port clk_reset clk_reset_reset reset 1 STD_LOGIC Input
	add_instantiation_interface master_reset reset OUTPUT
	set_instantiation_interface_parameter_value master_reset associatedClock {}
	set_instantiation_interface_parameter_value master_reset associatedDirectReset {}
	set_instantiation_interface_parameter_value master_reset associatedResetSinks {none}
	set_instantiation_interface_parameter_value master_reset synchronousEdges {NONE}
	add_instantiation_interface_port master_reset master_reset_reset reset 1 STD_LOGIC Output
	add_instantiation_interface master avalon OUTPUT
	set_instantiation_interface_parameter_value master adaptsTo {}
	set_instantiation_interface_parameter_value master addressGroup {0}
	set_instantiation_interface_parameter_value master addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value master alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value master associatedClock {clk}
	set_instantiation_interface_parameter_value master associatedReset {clk_reset}
	set_instantiation_interface_parameter_value master bitsPerSymbol {8}
	set_instantiation_interface_parameter_value master burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value master burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value master constantBurstBehavior {false}
	set_instantiation_interface_parameter_value master dBSBigEndian {false}
	set_instantiation_interface_parameter_value master doStreamReads {false}
	set_instantiation_interface_parameter_value master doStreamWrites {false}
	set_instantiation_interface_parameter_value master holdTime {0}
	set_instantiation_interface_parameter_value master interleaveBursts {false}
	set_instantiation_interface_parameter_value master isAsynchronous {false}
	set_instantiation_interface_parameter_value master isBigEndian {false}
	set_instantiation_interface_parameter_value master isReadable {false}
	set_instantiation_interface_parameter_value master isWriteable {false}
	set_instantiation_interface_parameter_value master linewrapBursts {false}
	set_instantiation_interface_parameter_value master maxAddressWidth {32}
	set_instantiation_interface_parameter_value master maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value master maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value master minimumReadLatency {1}
	set_instantiation_interface_parameter_value master minimumResponseLatency {1}
	set_instantiation_interface_parameter_value master prSafe {false}
	set_instantiation_interface_parameter_value master readLatency {0}
	set_instantiation_interface_parameter_value master readWaitTime {1}
	set_instantiation_interface_parameter_value master registerIncomingSignals {false}
	set_instantiation_interface_parameter_value master registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value master setupTime {0}
	set_instantiation_interface_parameter_value master timingUnits {Cycles}
	set_instantiation_interface_parameter_value master waitrequestAllowance {0}
	set_instantiation_interface_parameter_value master writeWaitTime {0}
	set_instantiation_interface_assignment_value master debug.controlledBy {in_stream}
	set_instantiation_interface_assignment_value master debug.providesServices {master}
	set_instantiation_interface_assignment_value master debug.typeName {altera_jtag_avalon_master.master}
	set_instantiation_interface_assignment_value master debug.visible {true}
	add_instantiation_interface_port master master_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port master master_readdata readdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port master master_read read 1 STD_LOGIC Output
	add_instantiation_interface_port master master_write write 1 STD_LOGIC Output
	add_instantiation_interface_port master master_writedata writedata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port master master_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port master master_readdatavalid readdatavalid 1 STD_LOGIC Input
	add_instantiation_interface_port master master_byteenable byteenable 4 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component hps_m ip/subsys_jtg_mst/hps_m.ip altera_jtag_avalon_master altera_jtag_avalon_master_inst 19.1
	load_component hps_m
	set_component_parameter_value FAST_VER {0}
	set_component_parameter_value FIFO_DEPTHS {2}
	set_component_parameter_value PLI_PORT {50000}
	set_component_parameter_value USE_PLI {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation hps_m
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value debug.hostConnection {type jtag id 110:132}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk_clk clk 1 STD_LOGIC Input
	add_instantiation_interface clk_reset reset INPUT
	set_instantiation_interface_parameter_value clk_reset associatedClock {}
	set_instantiation_interface_parameter_value clk_reset synchronousEdges {NONE}
	add_instantiation_interface_port clk_reset clk_reset_reset reset 1 STD_LOGIC Input
	add_instantiation_interface master_reset reset OUTPUT
	set_instantiation_interface_parameter_value master_reset associatedClock {}
	set_instantiation_interface_parameter_value master_reset associatedDirectReset {}
	set_instantiation_interface_parameter_value master_reset associatedResetSinks {none}
	set_instantiation_interface_parameter_value master_reset synchronousEdges {NONE}
	add_instantiation_interface_port master_reset master_reset_reset reset 1 STD_LOGIC Output
	add_instantiation_interface master avalon OUTPUT
	set_instantiation_interface_parameter_value master adaptsTo {}
	set_instantiation_interface_parameter_value master addressGroup {0}
	set_instantiation_interface_parameter_value master addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value master alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value master associatedClock {clk}
	set_instantiation_interface_parameter_value master associatedReset {clk_reset}
	set_instantiation_interface_parameter_value master bitsPerSymbol {8}
	set_instantiation_interface_parameter_value master burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value master burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value master constantBurstBehavior {false}
	set_instantiation_interface_parameter_value master dBSBigEndian {false}
	set_instantiation_interface_parameter_value master doStreamReads {false}
	set_instantiation_interface_parameter_value master doStreamWrites {false}
	set_instantiation_interface_parameter_value master holdTime {0}
	set_instantiation_interface_parameter_value master interleaveBursts {false}
	set_instantiation_interface_parameter_value master isAsynchronous {false}
	set_instantiation_interface_parameter_value master isBigEndian {false}
	set_instantiation_interface_parameter_value master isReadable {false}
	set_instantiation_interface_parameter_value master isWriteable {false}
	set_instantiation_interface_parameter_value master linewrapBursts {false}
	set_instantiation_interface_parameter_value master maxAddressWidth {32}
	set_instantiation_interface_parameter_value master maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value master maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value master minimumReadLatency {1}
	set_instantiation_interface_parameter_value master minimumResponseLatency {1}
	set_instantiation_interface_parameter_value master prSafe {false}
	set_instantiation_interface_parameter_value master readLatency {0}
	set_instantiation_interface_parameter_value master readWaitTime {1}
	set_instantiation_interface_parameter_value master registerIncomingSignals {false}
	set_instantiation_interface_parameter_value master registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value master setupTime {0}
	set_instantiation_interface_parameter_value master timingUnits {Cycles}
	set_instantiation_interface_parameter_value master waitrequestAllowance {0}
	set_instantiation_interface_parameter_value master writeWaitTime {0}
	set_instantiation_interface_assignment_value master debug.controlledBy {in_stream}
	set_instantiation_interface_assignment_value master debug.providesServices {master}
	set_instantiation_interface_assignment_value master debug.typeName {altera_jtag_avalon_master.master}
	set_instantiation_interface_assignment_value master debug.visible {true}
	add_instantiation_interface_port master master_address address 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port master master_readdata readdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port master master_read read 1 STD_LOGIC Output
	add_instantiation_interface_port master master_write write 1 STD_LOGIC Output
	add_instantiation_interface_port master master_writedata writedata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port master master_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port master master_readdatavalid readdatavalid 1 STD_LOGIC Input
	add_instantiation_interface_port master master_byteenable byteenable 4 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component jtag_clk ip/subsys_jtg_mst/jtag_clk.ip altera_clock_bridge altera_clock_bridge_inst 19.2.0
	load_component jtag_clk
	set_component_parameter_value EXPLICIT_CLOCK_RATE {100000000.0}
	set_component_parameter_value NUM_CLOCK_OUTPUTS {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation jtag_clk
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface in_clk clock INPUT
	set_instantiation_interface_parameter_value in_clk clockRate {0}
	set_instantiation_interface_parameter_value in_clk externallyDriven {false}
	set_instantiation_interface_parameter_value in_clk ptfSchematicName {}
	add_instantiation_interface_port in_clk in_clk clk 1 STD_LOGIC Input
	add_instantiation_interface out_clk clock OUTPUT
	set_instantiation_interface_parameter_value out_clk associatedDirectClock {in_clk}
	set_instantiation_interface_parameter_value out_clk clockRate {100000000}
	set_instantiation_interface_parameter_value out_clk clockRateKnown {true}
	set_instantiation_interface_parameter_value out_clk externallyDriven {false}
	set_instantiation_interface_parameter_value out_clk ptfSchematicName {}
	set_instantiation_interface_sysinfo_parameter_value out_clk clock_rate {100000000}
	add_instantiation_interface_port out_clk out_clk clk 1 STD_LOGIC Output
	save_instantiation
	add_component jtag_rst_in ip/subsys_jtg_mst/jtag_rst_in.ip altera_reset_bridge altera_reset_bridge_inst 19.2.0
	load_component jtag_rst_in
	set_component_parameter_value ACTIVE_LOW_RESET {1}
	set_component_parameter_value NUM_RESET_OUTPUTS {1}
	set_component_parameter_value SYNCHRONOUS_EDGES {both}
	set_component_parameter_value SYNC_RESET {0}
	set_component_parameter_value USE_RESET_REQUEST {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation jtag_rst_in
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface in_reset reset INPUT
	set_instantiation_interface_parameter_value in_reset associatedClock {clk}
	set_instantiation_interface_parameter_value in_reset synchronousEdges {BOTH}
	add_instantiation_interface_port in_reset in_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface out_reset reset OUTPUT
	set_instantiation_interface_parameter_value out_reset associatedClock {clk}
	set_instantiation_interface_parameter_value out_reset associatedDirectReset {in_reset}
	set_instantiation_interface_parameter_value out_reset associatedResetSinks {in_reset}
	set_instantiation_interface_parameter_value out_reset synchronousEdges {BOTH}
	add_instantiation_interface_port out_reset out_reset_n reset_n 1 STD_LOGIC Output
	save_instantiation

	# add wirelevel expressions

	# preserve ports for debug

	# add the connections
	add_connection jtag_clk.out_clk/fpga_m.clk
	set_connection_parameter_value jtag_clk.out_clk/fpga_m.clk clockDomainSysInfo {-1}
	set_connection_parameter_value jtag_clk.out_clk/fpga_m.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value jtag_clk.out_clk/fpga_m.clk clockResetSysInfo {}
	set_connection_parameter_value jtag_clk.out_clk/fpga_m.clk resetDomainSysInfo {-1}
	add_connection jtag_clk.out_clk/hps_m.clk
	set_connection_parameter_value jtag_clk.out_clk/hps_m.clk clockDomainSysInfo {-1}
	set_connection_parameter_value jtag_clk.out_clk/hps_m.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value jtag_clk.out_clk/hps_m.clk clockResetSysInfo {}
	set_connection_parameter_value jtag_clk.out_clk/hps_m.clk resetDomainSysInfo {-1}
	add_connection jtag_clk.out_clk/jtag_rst_in.clk
	set_connection_parameter_value jtag_clk.out_clk/jtag_rst_in.clk clockDomainSysInfo {-1}
	set_connection_parameter_value jtag_clk.out_clk/jtag_rst_in.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value jtag_clk.out_clk/jtag_rst_in.clk clockResetSysInfo {}
	set_connection_parameter_value jtag_clk.out_clk/jtag_rst_in.clk resetDomainSysInfo {-1}
	add_connection jtag_rst_in.out_reset/fpga_m.clk_reset
	set_connection_parameter_value jtag_rst_in.out_reset/fpga_m.clk_reset clockDomainSysInfo {-1}
	set_connection_parameter_value jtag_rst_in.out_reset/fpga_m.clk_reset clockResetSysInfo {}
	set_connection_parameter_value jtag_rst_in.out_reset/fpga_m.clk_reset resetDomainSysInfo {-1}
	add_connection jtag_rst_in.out_reset/hps_m.clk_reset
	set_connection_parameter_value jtag_rst_in.out_reset/hps_m.clk_reset clockDomainSysInfo {-1}
	set_connection_parameter_value jtag_rst_in.out_reset/hps_m.clk_reset clockResetSysInfo {}
	set_connection_parameter_value jtag_rst_in.out_reset/hps_m.clk_reset resetDomainSysInfo {-1}

	# add the exports
	set_interface_property fpga_m_master EXPORT_OF fpga_m.master
	set_interface_property hps_m_master EXPORT_OF hps_m.master
	set_interface_property clk EXPORT_OF jtag_clk.in_clk
	set_interface_property reset EXPORT_OF jtag_rst_in.in_reset

	# set values for exposed HDL parameters

	# set the the module properties
	set_module_property BONUS_DATA {<?xml version="1.0" encoding="UTF-8"?>
<bonusData>
 <element __value="fpga_m">
  <datum __value="_sortIndex" value="3" type="int" />
 </element>
 <element __value="hps_m">
  <datum __value="_sortIndex" value="2" type="int" />
 </element>
 <element __value="jtag_clk">
  <datum __value="_sortIndex" value="0" type="int" />
 </element>
 <element __value="jtag_rst_in">
  <datum __value="_sortIndex" value="1" type="int" />
 </element>
</bonusData>
}
	set_module_property FILE {subsys_jtg_mst.qsys}
	set_module_property GENERATION_ID {0x00000000}
	set_module_property NAME {subsys_jtg_mst}

	# save the system
	sync_sysinfo_parameters
	save_system subsys_jtg_mst
}

# create the system "subsys_periph"
proc do_create_subsys_periph {} {
	# create the system
	create_system subsys_periph
	set_project_property BOARD {Intel Agilex F-Series FPGA Development Kit DK-DEV-AGF014EA}
	set_project_property DEVICE {AGFB014R24B2E2V}
	set_project_property DEVICE_FAMILY {Agilex}
	set_project_property HIDE_FROM_IP_CATALOG {false}
	set_use_testbench_naming_pattern 0 {}

	# add HDL parameters

	# add the components
	add_component ILC ip/subsys_periph/ILC.ip interrupt_latency_counter interrupt_latency_counter_inst 19.1.0
	load_component ILC
	set_component_parameter_value INTR_TYPE {0}
	set_component_parameter_value IRQ_PORT_CNT {2}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation ILC
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,ilc-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {ilc}
	set_instantiation_assignment_value embeddedsw.dts.name {altera_ilc}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,sw-fifo-depth {32}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface reset_n reset INPUT
	set_instantiation_interface_parameter_value reset_n associatedClock {clk}
	set_instantiation_interface_parameter_value reset_n synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset_n reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface irq interrupt OUTPUT
	set_instantiation_interface_parameter_value irq associatedAddressablePoint {}
	set_instantiation_interface_parameter_value irq associatedClock {clk}
	set_instantiation_interface_parameter_value irq associatedReset {reset_n}
	set_instantiation_interface_parameter_value irq irqMap {}
	set_instantiation_interface_parameter_value irq irqScheme {INDIVIDUAL_REQUESTS}
	add_instantiation_interface_port irq irq irq 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface avalon_slave avalon INPUT
	set_instantiation_interface_parameter_value avalon_slave addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value avalon_slave addressGroup {0}
	set_instantiation_interface_parameter_value avalon_slave addressSpan {256}
	set_instantiation_interface_parameter_value avalon_slave addressUnits {WORDS}
	set_instantiation_interface_parameter_value avalon_slave alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value avalon_slave associatedClock {clk}
	set_instantiation_interface_parameter_value avalon_slave associatedReset {reset_n}
	set_instantiation_interface_parameter_value avalon_slave bitsPerSymbol {8}
	set_instantiation_interface_parameter_value avalon_slave bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value avalon_slave bridgesToMaster {}
	set_instantiation_interface_parameter_value avalon_slave burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value avalon_slave burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value avalon_slave constantBurstBehavior {false}
	set_instantiation_interface_parameter_value avalon_slave explicitAddressSpan {0}
	set_instantiation_interface_parameter_value avalon_slave holdTime {0}
	set_instantiation_interface_parameter_value avalon_slave interleaveBursts {false}
	set_instantiation_interface_parameter_value avalon_slave isBigEndian {false}
	set_instantiation_interface_parameter_value avalon_slave isFlash {false}
	set_instantiation_interface_parameter_value avalon_slave isMemoryDevice {false}
	set_instantiation_interface_parameter_value avalon_slave isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value avalon_slave linewrapBursts {false}
	set_instantiation_interface_parameter_value avalon_slave maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value avalon_slave maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value avalon_slave minimumReadLatency {1}
	set_instantiation_interface_parameter_value avalon_slave minimumResponseLatency {1}
	set_instantiation_interface_parameter_value avalon_slave minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value avalon_slave prSafe {false}
	set_instantiation_interface_parameter_value avalon_slave printableDevice {false}
	set_instantiation_interface_parameter_value avalon_slave readLatency {1}
	set_instantiation_interface_parameter_value avalon_slave readWaitStates {0}
	set_instantiation_interface_parameter_value avalon_slave readWaitTime {0}
	set_instantiation_interface_parameter_value avalon_slave registerIncomingSignals {false}
	set_instantiation_interface_parameter_value avalon_slave registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value avalon_slave setupTime {0}
	set_instantiation_interface_parameter_value avalon_slave timingUnits {Cycles}
	set_instantiation_interface_parameter_value avalon_slave transparentBridge {false}
	set_instantiation_interface_parameter_value avalon_slave waitrequestAllowance {0}
	set_instantiation_interface_parameter_value avalon_slave wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value avalon_slave writeLatency {0}
	set_instantiation_interface_parameter_value avalon_slave writeWaitStates {0}
	set_instantiation_interface_parameter_value avalon_slave writeWaitTime {0}
	set_instantiation_interface_assignment_value avalon_slave embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value avalon_slave embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value avalon_slave embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value avalon_slave embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value avalon_slave address_map {<address-map><slave name='avalon_slave' start='0x0' end='0x100' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value avalon_slave address_width {8}
	set_instantiation_interface_sysinfo_parameter_value avalon_slave max_slave_data_width {32}
	add_instantiation_interface_port avalon_slave avmm_addr address 6 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port avalon_slave avmm_wrdata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port avalon_slave avmm_write write 1 STD_LOGIC Input
	add_instantiation_interface_port avalon_slave avmm_read read 1 STD_LOGIC Input
	add_instantiation_interface_port avalon_slave avmm_rddata readdata 32 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component button_pio ip/subsys_periph/button_pio.ip altera_avalon_pio altera_avalon_pio_inst 19.2.0
	load_component button_pio
	set_component_parameter_value bitClearingEdgeCapReg {1}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {1}
	set_component_parameter_value direction {Input}
	set_component_parameter_value edgeType {FALLING}
	set_component_parameter_value generateIRQ {1}
	set_component_parameter_value irqType {EDGE}
	set_component_parameter_value resetValue {0.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {4}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation button_pio
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {4}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {FALLING}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {EDGE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {0}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {4}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,interrupt-type {2}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,interrupt_type {2}
	set_instantiation_assignment_value embeddedsw.dts.params.edge_type {1}
	set_instantiation_assignment_value embeddedsw.dts.params.level_trigger {0}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {0}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port export 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface irq interrupt INPUT
	set_instantiation_interface_parameter_value irq associatedAddressablePoint {s1}
	set_instantiation_interface_parameter_value irq associatedClock {clk}
	set_instantiation_interface_parameter_value irq associatedReset {reset}
	set_instantiation_interface_parameter_value irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value irq irqScheme {NONE}
	set_instantiation_interface_assignment_value irq embeddedsw.dts.irq.tx_type {RISING_EDGE}
	add_instantiation_interface_port irq irq irq 1 STD_LOGIC Output
	save_instantiation
	add_component dipsw_pio ip/subsys_periph/dipsw_pio.ip altera_avalon_pio altera_avalon_pio_inst 19.2.0
	load_component dipsw_pio
	set_component_parameter_value bitClearingEdgeCapReg {1}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {1}
	set_component_parameter_value direction {Input}
	set_component_parameter_value edgeType {FALLING}
	set_component_parameter_value generateIRQ {1}
	set_component_parameter_value irqType {EDGE}
	set_component_parameter_value resetValue {0.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {4}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation dipsw_pio
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {1}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {1}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {4}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {FALLING}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {0}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {EDGE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {0}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {4}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,interrupt-type {2}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,interrupt_type {2}
	set_instantiation_assignment_value embeddedsw.dts.params.edge_type {1}
	set_instantiation_assignment_value embeddedsw.dts.params.level_trigger {0}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {0}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port export 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface irq interrupt INPUT
	set_instantiation_interface_parameter_value irq associatedAddressablePoint {s1}
	set_instantiation_interface_parameter_value irq associatedClock {clk}
	set_instantiation_interface_parameter_value irq associatedReset {reset}
	set_instantiation_interface_parameter_value irq bridgedReceiverOffset {0}
	set_instantiation_interface_parameter_value irq bridgesToReceiver {}
	set_instantiation_interface_parameter_value irq irqScheme {NONE}
	set_instantiation_interface_assignment_value irq embeddedsw.dts.irq.tx_type {RISING_EDGE}
	add_instantiation_interface_port irq irq irq 1 STD_LOGIC Output
	save_instantiation
	add_component led_pio ip/subsys_periph/led_pio.ip altera_avalon_pio altera_avalon_pio_inst 19.2.0
	load_component led_pio
	set_component_parameter_value bitClearingEdgeCapReg {0}
	set_component_parameter_value bitModifyingOutReg {0}
	set_component_parameter_value captureEdge {0}
	set_component_parameter_value direction {InOut}
	set_component_parameter_value edgeType {RISING}
	set_component_parameter_value generateIRQ {0}
	set_component_parameter_value irqType {LEVEL}
	set_component_parameter_value resetValue {1.0}
	set_component_parameter_value simDoTestBenchWiring {0}
	set_component_parameter_value simDrivenValue {0.0}
	set_component_parameter_value width {3}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation led_pio
	remove_instantiation_interfaces_and_ports
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_CLEARING_EDGE_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.BIT_MODIFYING_OUTPUT_REGISTER {0}
	set_instantiation_assignment_value embeddedsw.CMacro.CAPTURE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DATA_WIDTH {3}
	set_instantiation_assignment_value embeddedsw.CMacro.DO_TEST_BENCH_WIRING {0}
	set_instantiation_assignment_value embeddedsw.CMacro.DRIVEN_SIM_VALUE {0}
	set_instantiation_assignment_value embeddedsw.CMacro.EDGE_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.FREQ {100000000}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_IN {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_OUT {1}
	set_instantiation_assignment_value embeddedsw.CMacro.HAS_TRI {0}
	set_instantiation_assignment_value embeddedsw.CMacro.IRQ_TYPE {NONE}
	set_instantiation_assignment_value embeddedsw.CMacro.RESET_VALUE {1}
	set_instantiation_assignment_value embeddedsw.dts.compatible {altr,pio-1.0}
	set_instantiation_assignment_value embeddedsw.dts.group {gpio}
	set_instantiation_assignment_value embeddedsw.dts.name {pio}
	set_instantiation_assignment_value embeddedsw.dts.params.altr,gpio-bank-width {3}
	set_instantiation_assignment_value embeddedsw.dts.params.resetvalue {1}
	set_instantiation_assignment_value embeddedsw.dts.vendor {altr}
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface s1 avalon INPUT
	set_instantiation_interface_parameter_value s1 addressAlignment {NATIVE}
	set_instantiation_interface_parameter_value s1 addressGroup {0}
	set_instantiation_interface_parameter_value s1 addressSpan {4}
	set_instantiation_interface_parameter_value s1 addressUnits {WORDS}
	set_instantiation_interface_parameter_value s1 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s1 associatedClock {clk}
	set_instantiation_interface_parameter_value s1 associatedReset {reset}
	set_instantiation_interface_parameter_value s1 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s1 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s1 bridgesToMaster {}
	set_instantiation_interface_parameter_value s1 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s1 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s1 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s1 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s1 holdTime {0}
	set_instantiation_interface_parameter_value s1 interleaveBursts {false}
	set_instantiation_interface_parameter_value s1 isBigEndian {false}
	set_instantiation_interface_parameter_value s1 isFlash {false}
	set_instantiation_interface_parameter_value s1 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s1 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s1 linewrapBursts {false}
	set_instantiation_interface_parameter_value s1 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value s1 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s1 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s1 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s1 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s1 prSafe {false}
	set_instantiation_interface_parameter_value s1 printableDevice {false}
	set_instantiation_interface_parameter_value s1 readLatency {0}
	set_instantiation_interface_parameter_value s1 readWaitStates {1}
	set_instantiation_interface_parameter_value s1 readWaitTime {1}
	set_instantiation_interface_parameter_value s1 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s1 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s1 setupTime {0}
	set_instantiation_interface_parameter_value s1 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s1 transparentBridge {false}
	set_instantiation_interface_parameter_value s1 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s1 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s1 writeLatency {0}
	set_instantiation_interface_parameter_value s1 writeWaitStates {0}
	set_instantiation_interface_parameter_value s1 writeWaitTime {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s1 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s1 address_map {<address-map><slave name='s1' start='0x0' end='0x10' datawidth='32' /></address-map>}
	set_instantiation_interface_sysinfo_parameter_value s1 address_width {4}
	set_instantiation_interface_sysinfo_parameter_value s1 max_slave_data_width {32}
	add_instantiation_interface_port s1 address address 2 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 write_n write_n 1 STD_LOGIC Input
	add_instantiation_interface_port s1 writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s1 chipselect chipselect 1 STD_LOGIC Input
	add_instantiation_interface_port s1 readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface external_connection conduit INPUT
	set_instantiation_interface_parameter_value external_connection associatedClock {}
	set_instantiation_interface_parameter_value external_connection associatedReset {}
	set_instantiation_interface_parameter_value external_connection prSafe {false}
	add_instantiation_interface_port external_connection in_port in_port 3 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port external_connection out_port out_port 3 STD_LOGIC_VECTOR Output
	save_instantiation
	add_component pb_cpu_0 ip/subsys_periph/pb_cpu_0.ip altera_avalon_mm_bridge altera_avalon_mm_bridge_inst 20.0.1
	load_component pb_cpu_0
	set_component_parameter_value ADDRESS_UNITS {SYMBOLS}
	set_component_parameter_value ADDRESS_WIDTH {20}
	set_component_parameter_value DATA_WIDTH {32}
	set_component_parameter_value LINEWRAPBURSTS {0}
	set_component_parameter_value MAX_BURST_SIZE {1}
	set_component_parameter_value MAX_PENDING_RESPONSES {1}
	set_component_parameter_value MAX_PENDING_WRITES {0}
	set_component_parameter_value PIPELINE_COMMAND {1}
	set_component_parameter_value PIPELINE_RESPONSE {1}
	set_component_parameter_value SYMBOL_WIDTH {8}
	set_component_parameter_value SYNC_RESET {0}
	set_component_parameter_value USE_AUTO_ADDRESS_WIDTH {1}
	set_component_parameter_value USE_RESPONSE {0}
	set_component_parameter_value USE_WRITERESPONSE {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation pb_cpu_0
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface reset reset INPUT
	set_instantiation_interface_parameter_value reset associatedClock {clk}
	set_instantiation_interface_parameter_value reset synchronousEdges {DEASSERT}
	add_instantiation_interface_port reset reset reset 1 STD_LOGIC Input
	add_instantiation_interface s0 avalon INPUT
	set_instantiation_interface_parameter_value s0 addressAlignment {DYNAMIC}
	set_instantiation_interface_parameter_value s0 addressGroup {0}
	set_instantiation_interface_parameter_value s0 addressSpan {512}
	set_instantiation_interface_parameter_value s0 addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value s0 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value s0 associatedClock {clk}
	set_instantiation_interface_parameter_value s0 associatedReset {reset}
	set_instantiation_interface_parameter_value s0 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value s0 bridgedAddressOffset {0}
	set_instantiation_interface_parameter_value s0 bridgesToMaster {m0}
	set_instantiation_interface_parameter_value s0 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value s0 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value s0 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value s0 explicitAddressSpan {0}
	set_instantiation_interface_parameter_value s0 holdTime {0}
	set_instantiation_interface_parameter_value s0 interleaveBursts {false}
	set_instantiation_interface_parameter_value s0 isBigEndian {false}
	set_instantiation_interface_parameter_value s0 isFlash {false}
	set_instantiation_interface_parameter_value s0 isMemoryDevice {false}
	set_instantiation_interface_parameter_value s0 isNonVolatileStorage {false}
	set_instantiation_interface_parameter_value s0 linewrapBursts {false}
	set_instantiation_interface_parameter_value s0 maximumPendingReadTransactions {1}
	set_instantiation_interface_parameter_value s0 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value s0 minimumReadLatency {1}
	set_instantiation_interface_parameter_value s0 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value s0 minimumUninterruptedRunLength {1}
	set_instantiation_interface_parameter_value s0 prSafe {false}
	set_instantiation_interface_parameter_value s0 printableDevice {false}
	set_instantiation_interface_parameter_value s0 readLatency {0}
	set_instantiation_interface_parameter_value s0 readWaitStates {0}
	set_instantiation_interface_parameter_value s0 readWaitTime {0}
	set_instantiation_interface_parameter_value s0 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value s0 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value s0 setupTime {0}
	set_instantiation_interface_parameter_value s0 timingUnits {Cycles}
	set_instantiation_interface_parameter_value s0 transparentBridge {false}
	set_instantiation_interface_parameter_value s0 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value s0 wellBehavedWaitrequest {false}
	set_instantiation_interface_parameter_value s0 writeLatency {0}
	set_instantiation_interface_parameter_value s0 writeWaitStates {0}
	set_instantiation_interface_parameter_value s0 writeWaitTime {0}
	set_instantiation_interface_assignment_value s0 embeddedsw.configuration.isFlash {0}
	set_instantiation_interface_assignment_value s0 embeddedsw.configuration.isMemoryDevice {0}
	set_instantiation_interface_assignment_value s0 embeddedsw.configuration.isNonVolatileStorage {0}
	set_instantiation_interface_assignment_value s0 embeddedsw.configuration.isPrintableDevice {0}
	set_instantiation_interface_sysinfo_parameter_value s0 address_map {}
	set_instantiation_interface_sysinfo_parameter_value s0 address_width {}
	set_instantiation_interface_sysinfo_parameter_value s0 max_slave_data_width {}
	add_instantiation_interface_port s0 s0_waitrequest waitrequest 1 STD_LOGIC Output
	add_instantiation_interface_port s0 s0_readdata readdata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port s0 s0_readdatavalid readdatavalid 1 STD_LOGIC Output
	add_instantiation_interface_port s0 s0_burstcount burstcount 1 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s0 s0_writedata writedata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s0 s0_address address 9 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s0 s0_write write 1 STD_LOGIC Input
	add_instantiation_interface_port s0 s0_read read 1 STD_LOGIC Input
	add_instantiation_interface_port s0 s0_byteenable byteenable 4 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port s0 s0_debugaccess debugaccess 1 STD_LOGIC Input
	add_instantiation_interface m0 avalon OUTPUT
	set_instantiation_interface_parameter_value m0 adaptsTo {}
	set_instantiation_interface_parameter_value m0 addressGroup {0}
	set_instantiation_interface_parameter_value m0 addressUnits {SYMBOLS}
	set_instantiation_interface_parameter_value m0 alwaysBurstMaxBurst {false}
	set_instantiation_interface_parameter_value m0 associatedClock {clk}
	set_instantiation_interface_parameter_value m0 associatedReset {reset}
	set_instantiation_interface_parameter_value m0 bitsPerSymbol {8}
	set_instantiation_interface_parameter_value m0 burstOnBurstBoundariesOnly {false}
	set_instantiation_interface_parameter_value m0 burstcountUnits {WORDS}
	set_instantiation_interface_parameter_value m0 constantBurstBehavior {false}
	set_instantiation_interface_parameter_value m0 dBSBigEndian {false}
	set_instantiation_interface_parameter_value m0 doStreamReads {false}
	set_instantiation_interface_parameter_value m0 doStreamWrites {false}
	set_instantiation_interface_parameter_value m0 holdTime {0}
	set_instantiation_interface_parameter_value m0 interleaveBursts {false}
	set_instantiation_interface_parameter_value m0 isAsynchronous {false}
	set_instantiation_interface_parameter_value m0 isBigEndian {false}
	set_instantiation_interface_parameter_value m0 isReadable {false}
	set_instantiation_interface_parameter_value m0 isWriteable {false}
	set_instantiation_interface_parameter_value m0 linewrapBursts {false}
	set_instantiation_interface_parameter_value m0 maxAddressWidth {32}
	set_instantiation_interface_parameter_value m0 maximumPendingReadTransactions {0}
	set_instantiation_interface_parameter_value m0 maximumPendingWriteTransactions {0}
	set_instantiation_interface_parameter_value m0 minimumReadLatency {1}
	set_instantiation_interface_parameter_value m0 minimumResponseLatency {1}
	set_instantiation_interface_parameter_value m0 prSafe {false}
	set_instantiation_interface_parameter_value m0 readLatency {0}
	set_instantiation_interface_parameter_value m0 readWaitTime {1}
	set_instantiation_interface_parameter_value m0 registerIncomingSignals {false}
	set_instantiation_interface_parameter_value m0 registerOutgoingSignals {false}
	set_instantiation_interface_parameter_value m0 setupTime {0}
	set_instantiation_interface_parameter_value m0 timingUnits {Cycles}
	set_instantiation_interface_parameter_value m0 waitrequestAllowance {0}
	set_instantiation_interface_parameter_value m0 writeWaitTime {0}
	add_instantiation_interface_port m0 m0_waitrequest waitrequest 1 STD_LOGIC Input
	add_instantiation_interface_port m0 m0_readdata readdata 32 STD_LOGIC_VECTOR Input
	add_instantiation_interface_port m0 m0_readdatavalid readdatavalid 1 STD_LOGIC Input
	add_instantiation_interface_port m0 m0_burstcount burstcount 1 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port m0 m0_writedata writedata 32 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port m0 m0_address address 9 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port m0 m0_write write 1 STD_LOGIC Output
	add_instantiation_interface_port m0 m0_read read 1 STD_LOGIC Output
	add_instantiation_interface_port m0 m0_byteenable byteenable 4 STD_LOGIC_VECTOR Output
	add_instantiation_interface_port m0 m0_debugaccess debugaccess 1 STD_LOGIC Output
	save_instantiation
	add_component periph_clk ip/subsys_periph/periph_clk.ip altera_clock_bridge altera_clock_bridge_inst 19.2.0
	load_component periph_clk
	set_component_parameter_value EXPLICIT_CLOCK_RATE {100000000.0}
	set_component_parameter_value NUM_CLOCK_OUTPUTS {1}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation periph_clk
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface in_clk clock INPUT
	set_instantiation_interface_parameter_value in_clk clockRate {0}
	set_instantiation_interface_parameter_value in_clk externallyDriven {false}
	set_instantiation_interface_parameter_value in_clk ptfSchematicName {}
	add_instantiation_interface_port in_clk in_clk clk 1 STD_LOGIC Input
	add_instantiation_interface out_clk clock OUTPUT
	set_instantiation_interface_parameter_value out_clk associatedDirectClock {in_clk}
	set_instantiation_interface_parameter_value out_clk clockRate {100000000}
	set_instantiation_interface_parameter_value out_clk clockRateKnown {true}
	set_instantiation_interface_parameter_value out_clk externallyDriven {false}
	set_instantiation_interface_parameter_value out_clk ptfSchematicName {}
	set_instantiation_interface_sysinfo_parameter_value out_clk clock_rate {100000000}
	add_instantiation_interface_port out_clk out_clk clk 1 STD_LOGIC Output
	save_instantiation
	add_component periph_rst_in ip/subsys_periph/periph_rst_in.ip altera_reset_bridge altera_reset_bridge_inst 19.2.0
	load_component periph_rst_in
	set_component_parameter_value ACTIVE_LOW_RESET {1}
	set_component_parameter_value NUM_RESET_OUTPUTS {1}
	set_component_parameter_value SYNCHRONOUS_EDGES {both}
	set_component_parameter_value SYNC_RESET {0}
	set_component_parameter_value USE_RESET_REQUEST {0}
	set_component_project_property HIDE_FROM_IP_CATALOG {false}
	save_component
	load_instantiation periph_rst_in
	remove_instantiation_interfaces_and_ports
	add_instantiation_interface clk clock INPUT
	set_instantiation_interface_parameter_value clk clockRate {0}
	set_instantiation_interface_parameter_value clk externallyDriven {false}
	set_instantiation_interface_parameter_value clk ptfSchematicName {}
	add_instantiation_interface_port clk clk clk 1 STD_LOGIC Input
	add_instantiation_interface in_reset reset INPUT
	set_instantiation_interface_parameter_value in_reset associatedClock {clk}
	set_instantiation_interface_parameter_value in_reset synchronousEdges {BOTH}
	add_instantiation_interface_port in_reset in_reset_n reset_n 1 STD_LOGIC Input
	add_instantiation_interface out_reset reset OUTPUT
	set_instantiation_interface_parameter_value out_reset associatedClock {clk}
	set_instantiation_interface_parameter_value out_reset associatedDirectReset {in_reset}
	set_instantiation_interface_parameter_value out_reset associatedResetSinks {in_reset}
	set_instantiation_interface_parameter_value out_reset synchronousEdges {BOTH}
	add_instantiation_interface_port out_reset out_reset_n reset_n 1 STD_LOGIC Output
	save_instantiation

	# add wirelevel expressions

	# preserve ports for debug

	# add the connections
	add_connection pb_cpu_0.m0/ILC.avalon_slave
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave addressMapSysInfo {}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave addressWidthSysInfo {9}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave arbitrationPriority {1}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave baseAddress {0x0100}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave defaultConnection {0}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave domainAlias {}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.syncResets {TRUE}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/ILC.avalon_slave slaveDataWidthSysInfo {-1}
	add_connection pb_cpu_0.m0/button_pio.s1
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 addressMapSysInfo {}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 addressWidthSysInfo {9}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 arbitrationPriority {1}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 baseAddress {0x0060}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 defaultConnection {0}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 domainAlias {}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/button_pio.s1 slaveDataWidthSysInfo {-1}
	add_connection pb_cpu_0.m0/dipsw_pio.s1
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 addressMapSysInfo {}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 addressWidthSysInfo {9}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 arbitrationPriority {1}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 baseAddress {0x0070}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 defaultConnection {0}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 domainAlias {}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/dipsw_pio.s1 slaveDataWidthSysInfo {-1}
	add_connection pb_cpu_0.m0/led_pio.s1
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 addressMapSysInfo {}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 addressWidthSysInfo {9}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 arbitrationPriority {1}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 baseAddress {0x0080}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 defaultConnection {0}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 domainAlias {}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.burstAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.clockCrossingAdapter {AUTO}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.enableAllPipelines {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.enableEccProtection {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.enableInstrumentation {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.insertDefaultSlave {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.interconnectResetSource {DEFAULT}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.interconnectType {STANDARD}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.maxAdditionalLatency {1}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.optimizeRdFifoSize {FALSE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.piplineType {PIPELINE_STAGE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.responseFifoType {REGISTER_BASED}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.syncResets {TRUE}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 qsys_mm.widthAdapterImplementation {GENERIC_CONVERTER}
	set_connection_parameter_value pb_cpu_0.m0/led_pio.s1 slaveDataWidthSysInfo {-1}
	add_connection periph_clk.out_clk/ILC.clk
	set_connection_parameter_value periph_clk.out_clk/ILC.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/ILC.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/ILC.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/ILC.clk resetDomainSysInfo {-1}
	add_connection periph_clk.out_clk/button_pio.clk
	set_connection_parameter_value periph_clk.out_clk/button_pio.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/button_pio.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/button_pio.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/button_pio.clk resetDomainSysInfo {-1}
	add_connection periph_clk.out_clk/dipsw_pio.clk
	set_connection_parameter_value periph_clk.out_clk/dipsw_pio.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/dipsw_pio.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/dipsw_pio.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/dipsw_pio.clk resetDomainSysInfo {-1}
	add_connection periph_clk.out_clk/led_pio.clk
	set_connection_parameter_value periph_clk.out_clk/led_pio.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/led_pio.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/led_pio.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/led_pio.clk resetDomainSysInfo {-1}
	add_connection periph_clk.out_clk/pb_cpu_0.clk
	set_connection_parameter_value periph_clk.out_clk/pb_cpu_0.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/pb_cpu_0.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/pb_cpu_0.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/pb_cpu_0.clk resetDomainSysInfo {-1}
	add_connection periph_clk.out_clk/periph_rst_in.clk
	set_connection_parameter_value periph_clk.out_clk/periph_rst_in.clk clockDomainSysInfo {-1}
	set_connection_parameter_value periph_clk.out_clk/periph_rst_in.clk clockRateSysInfo {100000000.0}
	set_connection_parameter_value periph_clk.out_clk/periph_rst_in.clk clockResetSysInfo {}
	set_connection_parameter_value periph_clk.out_clk/periph_rst_in.clk resetDomainSysInfo {-1}
	add_connection periph_rst_in.out_reset/ILC.reset_n
	set_connection_parameter_value periph_rst_in.out_reset/ILC.reset_n clockDomainSysInfo {-1}
	set_connection_parameter_value periph_rst_in.out_reset/ILC.reset_n clockResetSysInfo {}
	set_connection_parameter_value periph_rst_in.out_reset/ILC.reset_n resetDomainSysInfo {-1}
	add_connection periph_rst_in.out_reset/button_pio.reset
	set_connection_parameter_value periph_rst_in.out_reset/button_pio.reset clockDomainSysInfo {-1}
	set_connection_parameter_value periph_rst_in.out_reset/button_pio.reset clockResetSysInfo {}
	set_connection_parameter_value periph_rst_in.out_reset/button_pio.reset resetDomainSysInfo {-1}
	add_connection periph_rst_in.out_reset/dipsw_pio.reset
	set_connection_parameter_value periph_rst_in.out_reset/dipsw_pio.reset clockDomainSysInfo {-1}
	set_connection_parameter_value periph_rst_in.out_reset/dipsw_pio.reset clockResetSysInfo {}
	set_connection_parameter_value periph_rst_in.out_reset/dipsw_pio.reset resetDomainSysInfo {-1}
	add_connection periph_rst_in.out_reset/led_pio.reset
	set_connection_parameter_value periph_rst_in.out_reset/led_pio.reset clockDomainSysInfo {-1}
	set_connection_parameter_value periph_rst_in.out_reset/led_pio.reset clockResetSysInfo {}
	set_connection_parameter_value periph_rst_in.out_reset/led_pio.reset resetDomainSysInfo {-1}
	add_connection periph_rst_in.out_reset/pb_cpu_0.reset
	set_connection_parameter_value periph_rst_in.out_reset/pb_cpu_0.reset clockDomainSysInfo {-1}
	set_connection_parameter_value periph_rst_in.out_reset/pb_cpu_0.reset clockResetSysInfo {}
	set_connection_parameter_value periph_rst_in.out_reset/pb_cpu_0.reset resetDomainSysInfo {-1}

	# add the exports
	set_interface_property ILC_irq EXPORT_OF ILC.irq
	set_interface_property button_pio_external_connection EXPORT_OF button_pio.external_connection
	set_interface_property button_pio_irq EXPORT_OF button_pio.irq
	set_interface_property dipsw_pio_external_connection EXPORT_OF dipsw_pio.external_connection
	set_interface_property dipsw_pio_irq EXPORT_OF dipsw_pio.irq
	set_interface_property led_pio_external_connection EXPORT_OF led_pio.external_connection
	set_interface_property pb_cpu_0_s0 EXPORT_OF pb_cpu_0.s0
	set_interface_property clk EXPORT_OF periph_clk.in_clk
	set_interface_property reset EXPORT_OF periph_rst_in.in_reset

	# set values for exposed HDL parameters
	set_domain_assignment pb_cpu_0.m0 qsys_mm.burstAdapterImplementation GENERIC_CONVERTER
	set_domain_assignment pb_cpu_0.m0 qsys_mm.clockCrossingAdapter AUTO
	set_domain_assignment pb_cpu_0.m0 qsys_mm.enableAllPipelines FALSE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.enableEccProtection FALSE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.enableInstrumentation FALSE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.insertDefaultSlave FALSE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.interconnectResetSource DEFAULT
	set_domain_assignment pb_cpu_0.m0 qsys_mm.interconnectType STANDARD
	set_domain_assignment pb_cpu_0.m0 qsys_mm.maxAdditionalLatency 1
	set_domain_assignment pb_cpu_0.m0 qsys_mm.optimizeRdFifoSize FALSE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.piplineType PIPELINE_STAGE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.responseFifoType REGISTER_BASED
	set_domain_assignment pb_cpu_0.m0 qsys_mm.syncResets TRUE
	set_domain_assignment pb_cpu_0.m0 qsys_mm.widthAdapterImplementation GENERIC_CONVERTER

	# set the the module properties
	set_module_property BONUS_DATA {<?xml version="1.0" encoding="UTF-8"?>
<bonusData>
 <element __value="ILC">
  <datum __value="_sortIndex" value="5" type="int" />
 </element>
 <element __value="button_pio">
  <datum __value="_sortIndex" value="2" type="int" />
 </element>
 <element __value="dipsw_pio">
  <datum __value="_sortIndex" value="3" type="int" />
 </element>
 <element __value="led_pio">
  <datum __value="_sortIndex" value="4" type="int" />
 </element>
 <element __value="pb_cpu_0">
  <datum __value="_sortIndex" value="6" type="int" />
 </element>
 <element __value="periph_clk">
  <datum __value="_sortIndex" value="0" type="int" />
 </element>
 <element __value="periph_rst_in">
  <datum __value="_sortIndex" value="1" type="int" />
 </element>
</bonusData>
}
	set_module_property FILE {subsys_periph.qsys}
	set_module_property GENERATION_ID {0x00000000}
	set_module_property NAME {subsys_periph}

	# save the system
	sync_sysinfo_parameters
	save_system subsys_periph
}

proc do_set_exported_interface_sysinfo_parameters {} {
	load_system subsys_jtg_mst.qsys
	set_exported_interface_sysinfo_parameter_value clk clock_domain {1}
	set_exported_interface_sysinfo_parameter_value clk clock_rate {100000000}
	set_exported_interface_sysinfo_parameter_value clk reset_domain {1}
	save_system subsys_jtg_mst.qsys
	load_system subsys_periph.qsys
	set_exported_interface_sysinfo_parameter_value clk clock_domain {1}
	set_exported_interface_sysinfo_parameter_value clk clock_rate {100000000}
	set_exported_interface_sysinfo_parameter_value clk reset_domain {1}
	save_system subsys_periph.qsys
}

# create all the systems, from bottom up
do_create_subsys_periph
reload_ip_catalog
do_create_subsys_jtg_mst
reload_ip_catalog
do_create_qsys_top

# set system info parameters on exported interface, from bottom up
do_set_exported_interface_sysinfo_parameters
