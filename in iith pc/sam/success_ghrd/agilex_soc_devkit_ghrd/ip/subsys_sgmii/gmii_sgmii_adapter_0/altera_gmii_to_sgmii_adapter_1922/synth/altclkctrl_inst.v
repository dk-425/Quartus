// altclkctrl_inst.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module altclkctrl_inst (
		input  wire  ena,    //    ena.export
		input  wire  inclk,  //  inclk.clk
		output wire  outclk  // outclk.clk
	);

	gmii_sgmii_adapter_0_intelclkctrl_200_kpobney altclkctrl_inst (
		.ena    (ena),    //   input,  width = 1,    ena.export
		.inclk  (inclk),  //   input,  width = 1,  inclk.clk
		.outclk (outclk)  //  output,  width = 1, outclk.clk
	);

endmodule
