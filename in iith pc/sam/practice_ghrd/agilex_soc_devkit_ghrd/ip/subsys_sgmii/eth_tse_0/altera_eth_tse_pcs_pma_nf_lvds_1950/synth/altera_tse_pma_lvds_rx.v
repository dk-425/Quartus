// (C) 2001-2022 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// megafunction wizard: %ALTLVDS_RX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTLVDS_RX 

// ============================================================
// File Name: altera_tse_pma_lvds_rx.v
// Megafunction Name(s):
// 			ALTLVDS_RX
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.0 Build 162 10/23/2013 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module altera_tse_pma_lvds_rx (
	pll_areset,
	rx_cda_reset,
	rx_channel_data_align,
	rx_in,
	rx_inclock,
	rx_reset,
	rx_divfwdclk,
	rx_locked,
	rx_out,
	rx_outclock);

	input	  pll_areset;
	input	[0:0]  rx_cda_reset;
	input	[0:0]  rx_channel_data_align;
	input	[0:0]  rx_in;
	input	  rx_inclock;
	input	[0:0]  rx_reset;
	output	[0:0]  rx_divfwdclk;
	output	  rx_locked;
	output	[9:0]  rx_out;
	output	  rx_outclock;

	wire [0:0] sub_wire0;
	wire  sub_wire1;
	wire [9:0] sub_wire2;
	wire  sub_wire3;
	wire [0:0] rx_divfwdclk = sub_wire0[0:0];
	wire  rx_locked = sub_wire1;
	wire [9:0] rx_out = sub_wire2[9:0];
	wire  rx_outclock = sub_wire3;

	altlvds_rx	ALTLVDS_RX_component (
				.rx_in (rx_in),
				.rx_inclock (rx_inclock),
				.rx_reset (rx_reset),
				.pll_areset (pll_areset),
				.rx_cda_reset (rx_cda_reset),
				.rx_channel_data_align (rx_channel_data_align),
				.rx_divfwdclk (sub_wire0),
				.rx_locked (sub_wire1),
				.rx_out (sub_wire2),
				.rx_outclock (sub_wire3),
				.dpa_pll_cal_busy (),
				.dpa_pll_recal (1'b0),
				.pll_phasecounterselect (),
				.pll_phasedone (1'b1),
				.pll_phasestep (),
				.pll_phaseupdown (),
				.pll_scanclk (),
				.rx_cda_max (),
				.rx_coreclk (1'b1),
				.rx_data_align (1'b0),
				.rx_data_align_reset (1'b0),
				.rx_data_reset (1'b0),
				.rx_deskew (1'b0),
				.rx_dpa_lock_reset (1'b0),
				.rx_dpa_locked (),
				.rx_dpaclock (1'b0),
				.rx_dpll_enable (1'b1),
				.rx_dpll_hold (1'b0),
				.rx_dpll_reset (1'b0),
				.rx_enable (1'b1),
				.rx_fifo_reset (1'b0),
				.rx_pll_enable (1'b1),
				.rx_readclock (1'b0),
				.rx_syncclock (1'b0));
	defparam
		ALTLVDS_RX_component.buffer_implementation = "RAM",
		ALTLVDS_RX_component.cds_mode = "UNUSED",
		ALTLVDS_RX_component.common_rx_tx_pll = "ON",
		ALTLVDS_RX_component.data_align_rollover = 10,
		ALTLVDS_RX_component.data_rate = "1250.0 Mbps",
		ALTLVDS_RX_component.deserialization_factor = 10,
		ALTLVDS_RX_component.dpa_initial_phase_value = 0,
		ALTLVDS_RX_component.dpll_lock_count = 0,
		ALTLVDS_RX_component.dpll_lock_window = 0,
		ALTLVDS_RX_component.enable_clock_pin_mode = "UNUSED",
		ALTLVDS_RX_component.enable_dpa_align_to_rising_edge_only = "OFF",
		ALTLVDS_RX_component.enable_dpa_calibration = "ON",
		ALTLVDS_RX_component.enable_dpa_fifo = "UNUSED",
		ALTLVDS_RX_component.enable_dpa_initial_phase_selection = "OFF",
		ALTLVDS_RX_component.enable_dpa_mode = "ON",
		ALTLVDS_RX_component.enable_dpa_pll_calibration = "OFF",
		ALTLVDS_RX_component.enable_soft_cdr_mode = "ON",
		ALTLVDS_RX_component.implement_in_les = "OFF",
		ALTLVDS_RX_component.inclock_boost = 0,
		ALTLVDS_RX_component.inclock_data_alignment = "EDGE_ALIGNED",
		ALTLVDS_RX_component.inclock_period = 8000,
		ALTLVDS_RX_component.inclock_phase_shift = 0,
		ALTLVDS_RX_component.input_data_rate = 1250,
		ALTLVDS_RX_component.intended_device_family = "Stratix IV",
		ALTLVDS_RX_component.lose_lock_on_one_change = "UNUSED",
		ALTLVDS_RX_component.lpm_hint = "UNUSED",
		ALTLVDS_RX_component.lpm_type = "altlvds_rx",
		ALTLVDS_RX_component.number_of_channels = 1,
		ALTLVDS_RX_component.outclock_resource = "AUTO",
		ALTLVDS_RX_component.pll_operation_mode = "UNUSED",
		ALTLVDS_RX_component.pll_self_reset_on_loss_lock = "UNUSED",
		ALTLVDS_RX_component.port_rx_channel_data_align = "PORT_USED",
		ALTLVDS_RX_component.port_rx_data_align = "PORT_UNUSED",
		ALTLVDS_RX_component.refclk_frequency = "125.00 MHz",
		ALTLVDS_RX_component.registered_data_align_input = "UNUSED",
		ALTLVDS_RX_component.registered_output = "ON",
		ALTLVDS_RX_component.reset_fifo_at_first_lock = "UNUSED",
		ALTLVDS_RX_component.rx_align_data_reg = "UNUSED",
		ALTLVDS_RX_component.sim_dpa_is_negative_ppm_drift = "OFF",
		ALTLVDS_RX_component.sim_dpa_net_ppm_variation = 0,
		ALTLVDS_RX_component.sim_dpa_output_clock_phase_shift = 0,
		ALTLVDS_RX_component.use_coreclock_input = "OFF",
		ALTLVDS_RX_component.use_dpll_rawperror = "OFF",
		ALTLVDS_RX_component.use_external_pll = "OFF",
		ALTLVDS_RX_component.use_no_phase_shift = "ON",
		ALTLVDS_RX_component.x_on_bitslip = "OFF",
		ALTLVDS_RX_component.clk_src_is_pll = "off";


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: Bitslip NUMERIC "10"
// Retrieval info: PRIVATE: Clock_Choices STRING "tx_coreclock"
// Retrieval info: PRIVATE: Clock_Mode NUMERIC "0"
// Retrieval info: PRIVATE: Data_rate STRING "1250.0"
// Retrieval info: PRIVATE: Deser_Factor NUMERIC "10"
// Retrieval info: PRIVATE: Dpll_Lock_Count STRING "STRING"
// Retrieval info: PRIVATE: Dpll_Lock_Window STRING "STRING"
// Retrieval info: PRIVATE: Enable_DPA_Mode STRING "ON"
// Retrieval info: PRIVATE: Enable_FIFO_DPA_Channels STRING "STRING"
// Retrieval info: PRIVATE: Ext_PLL STRING "OFF"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: PRIVATE: Le_Serdes STRING "OFF"
// Retrieval info: PRIVATE: Num_Channel NUMERIC "1"
// Retrieval info: PRIVATE: Outclock_Divide_By STRING "STRING"
// Retrieval info: PRIVATE: pCNX_OUTCLK_ALIGN STRING "STRING"
// Retrieval info: PRIVATE: pINCLOCK_PHASE_SHIFT STRING "STRING"
// Retrieval info: PRIVATE: PLL_Enable NUMERIC "0"
// Retrieval info: PRIVATE: PLL_Freq STRING "125.00"
// Retrieval info: PRIVATE: PLL_Period STRING "8.000"
// Retrieval info: PRIVATE: pOUTCLOCK_PHASE_SHIFT STRING "STRING"
// Retrieval info: PRIVATE: Reg_InOut NUMERIC "1"
// Retrieval info: PRIVATE: Use_Cda_Reset NUMERIC "1"
// Retrieval info: PRIVATE: Use_Clock_Resc STRING "AUTO"
// Retrieval info: PRIVATE: Use_Common_Rx_Tx_Plls NUMERIC "1"
// Retrieval info: PRIVATE: Use_Data_Align NUMERIC "1"
// Retrieval info: PRIVATE: Use_Lock NUMERIC "1"
// Retrieval info: PRIVATE: Use_Pll_Areset NUMERIC "1"
// Retrieval info: PRIVATE: Use_Rawperror STRING "STRING"
// Retrieval info: PRIVATE: Use_Tx_Out_Phase STRING "STRING"
// Retrieval info: CONSTANT: BUFFER_IMPLEMENTATION STRING "RAM"
// Retrieval info: CONSTANT: CDS_MODE STRING "UNUSED"
// Retrieval info: CONSTANT: COMMON_RX_TX_PLL STRING "ON"
// Retrieval info: CONSTANT: clk_src_is_pll STRING "off"
// Retrieval info: CONSTANT: DATA_ALIGN_ROLLOVER NUMERIC "10"
// Retrieval info: CONSTANT: DATA_RATE STRING "1250.0 Mbps"
// Retrieval info: CONSTANT: DESERIALIZATION_FACTOR NUMERIC "10"
// Retrieval info: CONSTANT: DPA_INITIAL_PHASE_VALUE NUMERIC "0"
// Retrieval info: CONSTANT: DPLL_LOCK_COUNT NUMERIC "0"
// Retrieval info: CONSTANT: DPLL_LOCK_WINDOW NUMERIC "0"
// Retrieval info: CONSTANT: ENABLE_CLOCK_PIN_MODE STRING "UNUSED"
// Retrieval info: CONSTANT: ENABLE_DPA_ALIGN_TO_RISING_EDGE_ONLY STRING "OFF"
// Retrieval info: CONSTANT: ENABLE_DPA_CALIBRATION STRING "ON"
// Retrieval info: CONSTANT: ENABLE_DPA_FIFO STRING "UNUSED"
// Retrieval info: CONSTANT: ENABLE_DPA_INITIAL_PHASE_SELECTION STRING "OFF"
// Retrieval info: CONSTANT: ENABLE_DPA_MODE STRING "ON"
// Retrieval info: CONSTANT: ENABLE_DPA_PLL_CALIBRATION STRING "OFF"
// Retrieval info: CONSTANT: ENABLE_SOFT_CDR_MODE STRING "ON"
// Retrieval info: CONSTANT: IMPLEMENT_IN_LES STRING "OFF"
// Retrieval info: CONSTANT: INCLOCK_BOOST NUMERIC "0"
// Retrieval info: CONSTANT: INCLOCK_DATA_ALIGNMENT STRING "EDGE_ALIGNED"
// Retrieval info: CONSTANT: INCLOCK_PERIOD NUMERIC "8000"
// Retrieval info: CONSTANT: INCLOCK_PHASE_SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: INPUT_DATA_RATE NUMERIC "1250"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: CONSTANT: LOSE_LOCK_ON_ONE_CHANGE STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altlvds_rx"
// Retrieval info: CONSTANT: NUMBER_OF_CHANNELS NUMERIC "1"
// Retrieval info: CONSTANT: OUTCLOCK_RESOURCE STRING "AUTO"
// Retrieval info: CONSTANT: PLL_OPERATION_MODE STRING "UNUSED"
// Retrieval info: CONSTANT: PLL_SELF_RESET_ON_LOSS_LOCK STRING "UNUSED"
// Retrieval info: CONSTANT: PORT_RX_CHANNEL_DATA_ALIGN STRING "PORT_USED"
// Retrieval info: CONSTANT: PORT_RX_DATA_ALIGN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: REFCLK_FREQUENCY STRING "125.00 MHz"
// Retrieval info: CONSTANT: REGISTERED_DATA_ALIGN_INPUT STRING "UNUSED"
// Retrieval info: CONSTANT: REGISTERED_OUTPUT STRING "ON"
// Retrieval info: CONSTANT: RESET_FIFO_AT_FIRST_LOCK STRING "UNUSED"
// Retrieval info: CONSTANT: RX_ALIGN_DATA_REG STRING "UNUSED"
// Retrieval info: CONSTANT: SIM_DPA_IS_NEGATIVE_PPM_DRIFT STRING "OFF"
// Retrieval info: CONSTANT: SIM_DPA_NET_PPM_VARIATION NUMERIC "0"
// Retrieval info: CONSTANT: SIM_DPA_OUTPUT_CLOCK_PHASE_SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: USE_CORECLOCK_INPUT STRING "OFF"
// Retrieval info: CONSTANT: USE_DPLL_RAWPERROR STRING "OFF"
// Retrieval info: CONSTANT: USE_EXTERNAL_PLL STRING "OFF"
// Retrieval info: CONSTANT: USE_NO_PHASE_SHIFT STRING "ON"
// Retrieval info: CONSTANT: X_ON_BITSLIP STRING "OFF"
// Retrieval info: USED_PORT: pll_areset 0 0 0 0 INPUT NODEFVAL "pll_areset"
// Retrieval info: CONNECT: @pll_areset 0 0 0 0 pll_areset 0 0 0 0
// Retrieval info: USED_PORT: rx_cda_reset 0 0 1 0 INPUT NODEFVAL "rx_cda_reset[0..0]"
// Retrieval info: CONNECT: @rx_cda_reset 0 0 1 0 rx_cda_reset 0 0 1 0
// Retrieval info: USED_PORT: rx_channel_data_align 0 0 1 0 INPUT NODEFVAL "rx_channel_data_align[0..0]"
// Retrieval info: CONNECT: @rx_channel_data_align 0 0 1 0 rx_channel_data_align 0 0 1 0
// Retrieval info: USED_PORT: rx_divfwdclk 0 0 1 0 OUTPUT NODEFVAL "rx_divfwdclk[0..0]"
// Retrieval info: CONNECT: rx_divfwdclk 0 0 1 0 @rx_divfwdclk 0 0 1 0
// Retrieval info: USED_PORT: rx_in 0 0 1 0 INPUT NODEFVAL "rx_in[0..0]"
// Retrieval info: CONNECT: @rx_in 0 0 1 0 rx_in 0 0 1 0
// Retrieval info: USED_PORT: rx_inclock 0 0 0 0 INPUT NODEFVAL "rx_inclock"
// Retrieval info: CONNECT: @rx_inclock 0 0 0 0 rx_inclock 0 0 0 0
// Retrieval info: USED_PORT: rx_locked 0 0 0 0 OUTPUT NODEFVAL "rx_locked"
// Retrieval info: CONNECT: rx_locked 0 0 0 0 @rx_locked 0 0 0 0
// Retrieval info: USED_PORT: rx_out 0 0 10 0 OUTPUT NODEFVAL "rx_out[9..0]"
// Retrieval info: CONNECT: rx_out 0 0 10 0 @rx_out 0 0 10 0
// Retrieval info: USED_PORT: rx_outclock 0 0 0 0 OUTPUT NODEFVAL "rx_outclock"
// Retrieval info: CONNECT: rx_outclock 0 0 0 0 @rx_outclock 0 0 0 0
// Retrieval info: USED_PORT: rx_reset 0 0 1 0 INPUT NODEFVAL "rx_reset[0..0]"
// Retrieval info: CONNECT: @rx_reset 0 0 1 0 rx_reset 0 0 1 0
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.bsf FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx_inst.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx_bb.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.inc FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.cmp FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL altera_tse_pma_lvds_rx.ppf TRUE FALSE
// Retrieval info: LIB_FILE: altera_mf
