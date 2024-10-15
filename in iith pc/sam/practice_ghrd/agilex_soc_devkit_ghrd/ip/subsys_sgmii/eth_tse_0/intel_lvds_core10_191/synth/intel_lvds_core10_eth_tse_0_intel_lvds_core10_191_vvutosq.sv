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


`timescale 1 ps / 1 ps


////////////////////////////////////////////////////////////////
////LVDS SERDES CORE                  //
////////////////////////////////////////////////////////////////
module intel_lvds_core10_eth_tse_0_intel_lvds_core10_191_vvutosq
#(
    parameter NUM_CHANNELS = 1,
    parameter TX_CHANNELS = 1,
    parameter RX_CHANNELS = 1,
    parameter J_FACTOR = 10,
    parameter EXTERNAL_PLL = "false",
    parameter USE_BITSLIP = "false",
    parameter TX_OUTCLOCK_NON_STD_PHASE_SHIFT = "false", 
    
    parameter SERDES_DPA_MODE = "off_mode",
    parameter SERDES_FACTOR = "factor10",
    parameter BITSLIP_MAX      = "bslip_0",
    parameter BITSLIP_FUNC     = "non_dpa_mode_pos_ph",
    parameter VCO_DIV_EXPONENT = 0,
    parameter CLK_SRC_MODE     = "cdr_off_pll0",
    parameter SER_CLK_FUNCTION = "txclk_out_pos_ph",
    parameter FILTER_CODE      = "freq_16ghz",
    parameter FILTER_CODE_CPA      = "freq_1600",
    parameter SILICON_REV      = "10nm8",

    parameter DPA_DIV_VAL      = "dpa_clk_div1",
    parameter CORE0_DIV_VAL    = "core_clk0_div1",
    parameter CORE1_DIV_VAL    = "core_clk1_div1",

    parameter UFI_MODE         = "pin_ufi_use_in_direct_out_direct",
    parameter UFI_CLK_SEL      = "pin_ufi_sel_clk0",
    parameter UFI_LOCK_COUNTER = 21,
    parameter SYNTH_FOR_SIM    = 0,

    parameter ENABLE_CLOCK_PIN_MODE = "false",
    parameter TX_OUTCLOCK_ENABLED = "false",
    parameter TX_REGISTER_CLOCK = "tx_coreclock", 
    parameter TX_OUTCLOCK_DIV_WORD = 0, 
    parameter VCO_FREQUENCY = 0,
    parameter RX_BITSLIP_ROLLOVER = J_FACTOR,
    parameter WIDE_CT = "false",

    parameter USE_CPA="false",
    parameter USE_CPA_RECONFIG="false",
    
    
    parameter DPRIO_ENABLED = "false",
    parameter NUM_CLOCKS=1,
    parameter USE_DUPLEX="false"

) (
    input                                               ext_coreclock,                  
    input       [1:0]                                   ext_lvds_clk,                       
    input       [1:0]                                   ext_loaden,                     
    input       [7:0]                                   ext_vcoph,                      
    input                                               ext_pll_locked,                 
    input       [RX_CHANNELS-1:0]                       loopback_in,                    
    input                                               pll_areset,                    
    input       [RX_CHANNELS-1:0]                       rx_bitslip_reset,               
    input       [RX_CHANNELS-1:0]                       rx_bitslip_ctrl,                
    input       [RX_CHANNELS-1:0]                       rx_dpa_reset,                   
    input       [RX_CHANNELS-1:0]                       rx_dpa_hold,                    
    input       [RX_CHANNELS-1:0]                       rx_fifo_reset,                  
    input       [RX_CHANNELS-1:0]                       rx_in_p,
    input       [RX_CHANNELS-1:0]                       rx_in_n,
    input       [TX_CHANNELS*J_FACTOR-1:0]              tx_in,                          

    input                                               user_dprio_rst_n,               
    input                                               user_dprio_read,                
    input       [8:0]                                   user_dprio_reg_addr,            
    input                                               user_dprio_write,               
    input       [7:0]                                   user_dprio_writedata,           
    input                                               user_dprio_clk_in,              
    input                                               user_mdio_dis,                  

    output                                              user_dprio_clk,                 
    output                                              user_dprio_block_select,        
    output      [7:0]                                   user_dprio_readdata,            
    output                                              user_dprio_ready,               

    output                                              pll_extra_clock0,               
    output                                              pll_extra_clock1,               
    output                                              pll_extra_clock2,               
    output                                              pll_extra_clock3,               
   
    output      [RX_CHANNELS-1:0]                       rx_bitslip_max,                
    output      [TX_CHANNELS-1:0]                       loopback_out,                  
    output      [RX_CHANNELS-1:0]                       rx_dpa_locked,             
    output      [RX_CHANNELS-1:0]                       rx_divfwdclk,                  
    output      [RX_CHANNELS*J_FACTOR-1:0]              rx_out,                        
    output                                              rx_coreclock,               
    output                                              tx_coreclock,               
    output      [TX_CHANNELS-1:0]                       tx_out_p,                   
    output      [TX_CHANNELS-1:0]                       tx_out_n,                   
    output                                              tx_outclock_p,              
    output                                              tx_outclock_n,              
    output                                              pll_locked               
);

    wire                                                tx_outclock_fclk;           
    wire                                                pll_tx_outclock_fclk;       
    wire                                                pll_tx_outclock_loaden;     
    wire         [TX_CHANNELS-1:0]                      tx_out;                     
    wire                                                tx_outclock;                
    wire         [RX_CHANNELS-1:0]                      rx_in;                      
    wire        [1:0]                                   fclk;                       
    wire        [1:0]                                   loaden;                     
    wire        [7:0]                                   vcoph;                      
    wire                                                coreclock;                  
    wire                                                dprio_clk;                  
    wire                                                dprio_rst_n;                
    wire        [RX_CHANNELS-1:0]                      rx_dpa_reset_internal;      

    wire                                                pll_reset_coreclock;        
    wire                                                pll_locked_only;            
    wire                                                pll_core_reset;             
    wire        [1:0]                                   cpa_loaden;                 
    wire        [1:0]                                   cpa_loaden_wire;                 
    wire        [1:0]                                   cpa_locked;               
    wire        [1:0]                                   cpa_coreclk_out;            
    wire                                                cpa_core_reset;             
    wire                                                extra_coreclk_out;          
    wire                                                pa_dprio_clk;               
    wire                                                pa_reset_n;                 
    wire                                                pll_dprio_clk;              
    wire       [RX_CHANNELS-1:0]                        rx_dpa_switch;                    

    


    localparam SYNC_STAGES = 3;
    localparam VCO_FREQ_HZ_INT = VCO_FREQUENCY * 1000000;

    assign rx_coreclock  = coreclock; 
    assign tx_coreclock  = coreclock; 
  
    generate
            wire inclock; 
            assign fclk                     = ext_lvds_clk; 
            assign loaden                   = ext_loaden; 
            assign vcoph                    = ext_vcoph; 
           
           assign pll_locked_only          = ext_pll_locked;
           assign cpa_loaden_wire               = {1'b0,loaden[0]};
               

    if (SERDES_DPA_MODE == "non_dpa_mode" || SERDES_DPA_MODE == "dpa_mode_fifo" || SERDES_DPA_MODE == "tx_mode")
    begin
        reset_sync_w_lock reset_core (
               .pll_areset(pll_areset),
               .pll_locked(pll_locked),
               .clock(coreclock),
               .sync_reset(pll_core_reset)
        );

        reset_synchronizer_active_high #(
            .RESET_SYNC_LENGTH(3)
        ) reset_cpa_core (
            .async_reset  (pll_areset),
            .clock        (cpa_coreclk_out[0]),
            .sync_reset   (cpa_core_reset)
        );
    end 



        assign cpa_loaden = cpa_loaden_wire;
        assign coreclock = cpa_coreclk_out[0];

        if (SERDES_DPA_MODE == "dpa_mode_cdr")
        begin
            assign pll_locked = pll_locked_only;
        end 
        else
        begin

            // The following is evaluated for simulation. Don't wait too long during simulation.
            // synthesis translate_off
            localparam UFI_COUNTER_LOCK_EXP = 14;
            // synthesis translate_on
 
            // The following is evaluated for synthesis. Don't wait too long when SYNTH_FOR_SIM enabled.
            // synthesis read_comments_as_HDL on
            // localparam UFI_COUNTER_LOCK_EXP = SYNTH_FOR_SIM ? 10 : UFI_LOCK_COUNTER;
            // synthesis read_comments_as_HDL off

            logic [UFI_LOCK_COUNTER:0] ufi_count_to_lock;
            logic ufi_locked;

            always_ff @(posedge coreclock or posedge pll_areset)
            begin
                if (pll_areset)
                begin
                    ufi_count_to_lock <= '0;
                    ufi_locked <= 1'b0;
                end
                else
                begin
                    if (~ufi_count_to_lock[UFI_COUNTER_LOCK_EXP]) begin
                        ufi_count_to_lock <= ufi_count_to_lock + 1'b1;
                    end
                    ufi_locked <= ufi_count_to_lock[UFI_COUNTER_LOCK_EXP];
                end
            end

            assign pll_locked = pll_locked_only & cpa_locked[0] & ufi_locked;
        end

        assign user_dprio_ready = cpa_locked[0];    
        assign dprio_rst_n = user_dprio_rst_n;
        assign dprio_clk = pa_dprio_clk;
        assign pa_reset_n = ~pll_areset /* synthesis noprune */ ;

        ////////////////////////////////////////////////////////////////
        ////Clock Phase Alignment Block                //
        ////////////////////////////////////////////////////////////////
        (* altera_attribute = "-name PRESERVE_FANOUT_FREE_WYSIWYG ON" *)
        tennm_cpa #(
            .powermode_dc("powerup"),
            .pa_dprio_base_addr(0), 
            .pa_core_control_en_0("core_enable_0"), 
            .pa_core_control_en_1("core_disable_1"), 
            .pa_phase_offset_0(0), 
            .pa_phase_offset_1(0), 
            .pa_reset_enable("pa_reset_en"), 
            .pa_sim_mode("simple"), 
            .powermode_freq_hz_phs_clk(VCO_FREQ_HZ_INT),

            .xio_phase_align_pnr_a_dpa_clk_pll_vco_freq_divide(DPA_DIV_VAL), 
            .pa_filter_code(FILTER_CODE_CPA), 
            .pa_support_dpa("support_dpa"), 
        
            .pa_core_clk0_pll_vco_freq_divide(CORE0_DIV_VAL), 
            .pa_core_clk1_pll_vco_freq_divide(CORE1_DIV_VAL), 
            .pa_peri_fb_mux_0_a_rbpa_feedback_mux_sel("fb0_p_clk"), 
            .pa_peri_fb_mux_1_a_rbpa_feedback_mux_sel("fb0_p_clk"), 
            .pa_fb_core_clk0_phy_clk0_freq_divide("fb_clk0_div1"), 
            .pa_fb_core_clk1_phy_clk1_freq_divide("fb_clk1_div1"), 
            
            .pa_feedback_gate_1_a_rbpa_feedback_gate("feedback_gate_dly_0"),
            .pa_feedback_gate_1_a_rbpa_feedback_gate_sel("gate_skew_periphery"),
            .pa_feedback_path_1_a_rbpa_feedback_path("feedback_path_0")
	    	) u_lvds_cpa (
            .pa_reset_n(pa_reset_n),
            
            .core_clk_in({1'b0,coreclock}        ),  
            .core_pa (12'b000000000000       ),  
            
            .master_locked (),                         
            .slave_locked (cpa_locked),
            
            .dprio_clk(dprio_clk              ), 
            .dprio_read (user_dprio_read        ),            
            .dprio_reg_addr (user_dprio_reg_addr    ),                                    
            .dprio_rst_n (dprio_rst_n            ),           
            .dprio_write (user_dprio_write       ),           
            .dprio_writedata (user_dprio_writedata   ),                                   
            .mdio_dis  (user_mdio_dis          ),             
            .dprio_block_select  (user_dprio_block_select),   
            .dprio_readdata      (user_dprio_readdata),        
                                    
            .fb_hps(2'b0),          
            
            .latch_en(1'b1),
            
            .frzreg(),
            .nfrzdrv(1'b0),
            
            .phy_clk_phs(vcoph                    ),    
            .core_clk_out({extra_coreclk_out,cpa_coreclk_out}),  
            .periphery_clk_out(),
            .fbclk_pa({2'b0,cpa_loaden[0]}),        
           
            .pllbiasen(1'b1),
            .sync_data_bot_in(1'b0),
            .sync_data_top_in(1'b0),
            
            .test_clk(1'b0),
            .test_clr_n(1'b1),
            .test_csr_in(1'b1),
            .test_dbg_out_in(4'b0110),
            .test_si_pa(2'b0),
            .testin_coreclk(1'b0),
            
            .usermode(1'b1),
            .wkpullup(1'b1),
            
            .hps_to_core_ctrl_en(),
            .hps_to_core_ctrlen(),
            .sync_clk_bot_out(),
            .sync_clk_top_out(),
            .sync_data_bot_out(),
            .sync_data_top_out(),
            .test_csr_out(),
            .test_dbg_out_out(),
            .test_so_pa()

	    );

    endgenerate     
    



    /////////////////////////////////////////////////
    ////SERDES INSTANCE               //
    /////////////////////////////////////////////////
    generate 
       if (SERDES_DPA_MODE == "non_dpa_mode" || SERDES_DPA_MODE == "dpa_mode_fifo" || SERDES_DPA_MODE == "tx_mode" && TX_REGISTER_CLOCK == "tx_coreclock")
       begin : reset_coreclk_sync 
           reset_synchronizer_active_high pll_areset_sync_coreclk (
               .async_reset(pll_core_reset),
               .clock(coreclock),
               .sync_reset(pll_reset_coreclock)
           );
       end
       else if (SERDES_DPA_MODE == "tx_mode" || USE_DUPLEX == "true")
       begin : reset_coreclk_sync 
           reset_synchronizer_active_high pll_areset_sync_coreclk (
               .async_reset(pll_core_reset),
               .clock(coreclock),
               .sync_reset(pll_reset_coreclock)
           );
       end
    endgenerate

    genvar CH_INDEX;
    genvar SER_INDEX;
    generate
        for (CH_INDEX=0;CH_INDEX<TX_CHANNELS;CH_INDEX=CH_INDEX+1)
        begin : tx_channels
            if (SERDES_DPA_MODE == "tx_mode" || USE_DUPLEX == "true")
            begin : tx                
                reg  [J_FACTOR-1:0] tx_reg  ;
                reg  [9:0] tx_reg_ufi /* synthesis syn_preserve=1*/ ;
                wire [9:0]          inv_tx_in = tx_in[(J_FACTOR*(CH_INDEX+1)-1):J_FACTOR*CH_INDEX];
                wire                tx_core_reg_clk = (TX_REGISTER_CLOCK == "tx_coreclock")? coreclock : inclock;
                wire                ufi_clk_0;
                wire [1:0]          clock_tree_loaden;          
                wire [1:0]          clock_tree_fclk;            
                wire                fbclk;                      
                
                ////////////////////////////////////////////////////////////////
                ////PHYCLK TREE                        //
                ////////////////////////////////////////////////////////////////
                tennm_io48_phyclk #(
                    .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                    .x0_xio_phy_clktree_phy_clk_mode("LVDS")
                ) lvds_clock_tree_inst (
                    .loaden_0(loaden[0]),
                    .lvds_clk_0(fclk[0]),
                    .loaden_1(loaden[1]),
                    .lvds_clk_1(fclk[1]),
                    .fblvds(1'b0),
                    .phy_clk_ufi_0(ufi_clk_0), 
                    .phy_clk_ufi_1(), 
                    .phy_clk_ufi_3(), 
                    .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                    .phy_clk_out_2(), 
                    .phy_clk_out_3() 
                );
  
                
                genvar i; 
                for (i=0; i<J_FACTOR; i=i+1)
                begin : input_reg
                    always @(posedge tx_core_reg_clk)
                    begin
                            tx_reg[i] <= inv_tx_in[J_FACTOR-1-i];
                    end     
                end
                ////////////////////////////////////////////////////////////////
                ////IOSERDESDPA TREE                   //
                ////////////////////////////////////////////////////////////////
                (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
                tennm_io_serdes_dpa #(
                    .top_mode("tx_mode"),
                    .serdes_factor(SERDES_FACTOR),
                    .bslip_max("bslip_0"),
                    .bslip_function("off_mode"),
                    .clock_source_mode("cdr_off_pll1"),
                    .serdes_function("ser_txdat"),
                    .vco_div_exponent(VCO_DIV_EXPONENT),
                    .a_filter_code(FILTER_CODE),
                    .silicon_rev(SILICON_REV)
                ) serdes_dpa_inst (
                    .fclk_in(clock_tree_fclk),
                    .loaden_in(clock_tree_loaden),
                    .par_in(tx_reg_ufi),
                    .lvdsin(),
                    .bslipcntl(),
                    .bsliprst(),
                    .dpaclk(),
                    .dpahold(),
                    .dparst(),
                    .dpaswitch(),
                    .fiforst(),
                    .dpalock(),
                    .bslipmax(),
                    .lvdsout(tx_out[CH_INDEX]),
                    .par_out(),
                    .pclk()
                );
                ////////////////////////////////////////////////////////////////
                ////C2P/P2C BOUNDARY                   //
                ////////////////////////////////////////////////////////////////
                for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
                begin: ser
                    (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                    tennm_ufi #(
                          .mode    ("pin_ufi_use_delay_fifo_out_reg"),
                          .clk_sel (UFI_CLK_SEL),
                          .datapath("c2p")
                        ) txin_ufi (
                            .srcclk (tx_core_reg_clk),
                            .destclk(ufi_clk_0), 
                            .d      (tx_reg[SER_INDEX:SER_INDEX]),  
                            .dout   (tx_reg_ufi[SER_INDEX:SER_INDEX])
                    );
                end
                
                for (SER_INDEX=J_FACTOR;SER_INDEX<10;SER_INDEX=SER_INDEX+1)
                begin: ser_padding
                    (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                    tennm_ufi #(
                          .mode    ("pin_ufi_use_delay_fifo_out_reg"),
                          .clk_sel (UFI_CLK_SEL),
                          .datapath("c2p")
                        ) txpadding_ufi (
                            .srcclk (tx_core_reg_clk),
                            .destclk(ufi_clk_0), 
                            .d      (1'b0),  
                            .dout   (tx_reg_ufi[SER_INDEX:SER_INDEX])
                    );
                end 

                ////////////////////////////////////////////////////////////////
                ////LVDS BUFFERS                       //
                ////////////////////////////////////////////////////////////////
                tennm_io_obuf tx_out_obuf (
                    .i      (tx_out[CH_INDEX]),
                    .o      (tx_out_p[CH_INDEX]),
                    .obar   (tx_out_n[CH_INDEX])
                );
            end
        end
    endgenerate
    generate
        for (CH_INDEX=0;CH_INDEX<RX_CHANNELS;CH_INDEX=CH_INDEX+1)
        begin : rx_channels
            if (SERDES_DPA_MODE == "non_dpa_mode")
            begin : rx_non_dpa
                wire [9:0] inv_rx_data;
                reg [J_FACTOR-1:0] rx_reg ; 
                reg [J_FACTOR-1:0] rx_reg_ufi; 
                reg rx_bitslip_reset_reg;
                reg rx_bitslip_ctrl_reg;
                wire rx_bitslip_max_wire;
                wire rx_bitslip_max_wire_ufi;
                wire rx_bitslip_ctrl_ufi;
                wire rx_bitslip_reset_comb;
                wire rx_bitslip_reset_ufi;
                wire                ufi_clk_0;
                wire [1:0]          clock_tree_loaden;          
                wire [1:0]          clock_tree_fclk;            
                wire                fbclk;                      


                ////////////////////////////////////////////////////////////////
                ////PHYCLK TREE                        //
                ////////////////////////////////////////////////////////////////
                tennm_io48_phyclk #(
                    .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                    .x0_xio_phy_clktree_phy_clk_mode("LVDS")
                ) lvds_clock_tree_inst (
                    .loaden_0(loaden[0]),
                    .lvds_clk_0(fclk[0]),
                    .loaden_1(loaden[1]),
                    .lvds_clk_1(fclk[1]),
                    .fblvds(1'b0),
                    .phy_clk_ufi_0(ufi_clk_0), 
                    .phy_clk_ufi_1(), 
                    .phy_clk_ufi_3(), 
                    .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                    .phy_clk_out_2(), 
                    .phy_clk_out_3() 
                );

                ////////////////////////////////////////////////////////////////
                ////IOSERDESDPA TREE                   //
                ////////////////////////////////////////////////////////////////
                (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
                tennm_io_serdes_dpa #(
                    .top_mode("non_dpa_mode"),
                    .serdes_factor(SERDES_FACTOR),
                    .bslip_max(BITSLIP_MAX),
                    .bslip_function(BITSLIP_FUNC),
                    .clock_source_mode("cdr_off_pll0"),
                    .serdes_function("des"),
                    .vco_div_exponent(VCO_DIV_EXPONENT),
                    .a_filter_code(FILTER_CODE),
                    .silicon_rev(SILICON_REV)
                ) serdes_dpa_inst (
                    .fclk_in({1'b0, clock_tree_fclk[0]}),
                    .loaden_in({1'b0, clock_tree_loaden[0]}),
                    .par_in(),
                    .lvdsin(rx_in[CH_INDEX]),
                    .bslipcntl(rx_bitslip_ctrl_ufi),
                    .bsliprst(rx_bitslip_reset_ufi),
                    .dpaclk(),
                    .dpahold(),
                    .dparst(),
                    .dpaswitch(),
                    .fiforst(),
                    .dpalock(),
                    .bslipmax(rx_bitslip_max_wire_ufi),
                    .lvdsout(),
                    .par_out(rx_reg_ufi),
                    .pclk()
                );

                genvar i; 
                for (i=0; i<J_FACTOR; i=i+1)
                begin : output_reg 
                    always @(posedge coreclock)
                    begin
                            rx_reg[J_FACTOR-1-i] <= inv_rx_data[J_FACTOR-1-i];
                    end
                end

                assign rx_out[(J_FACTOR*(CH_INDEX+1)-1):J_FACTOR*CH_INDEX] = rx_reg; 
                
                data_synchronizer #(.SYNC_LENGTH(SYNC_STAGES)) rx_bitslip_max_sync_inst (
                    .data_in(rx_bitslip_max_wire),
                    .clock(coreclock),
                    .reset(pll_reset_coreclock),
                    .data_out(rx_bitslip_max[CH_INDEX])
                ); 
                
                assign rx_bitslip_reset_comb = pll_core_reset|rx_bitslip_reset[CH_INDEX];

                always @(posedge coreclock)
                begin
                        rx_bitslip_reset_reg <= rx_bitslip_reset_comb;
                        rx_bitslip_ctrl_reg <= rx_bitslip_ctrl[CH_INDEX];
                end 


                ////////////////////////////////////////////////////////////////
                ////C2P/P2C BOUNDARY                   //
                ////////////////////////////////////////////////////////////////
                //P2C
                (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxbslipmax_ufi (
                            .d      (rx_bitslip_max_wire_ufi),  
                            .dout   (rx_bitslip_max_wire)
                );
                
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbslipctrl_ufi (
                            .d      (rx_bitslip_ctrl_reg),  
                            .dout   (rx_bitslip_ctrl_ufi)
                );
                
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbsliprst_ufi (
                            .d      (rx_bitslip_reset_reg),
                            .dout   (rx_bitslip_reset_ufi)
                );
           
                for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
                begin: des
                    (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                    tennm_ufi #(
                          .mode    ("pin_ufi_use_fast_fifo_out_reg"),
                          .clk_sel (UFI_CLK_SEL),
                          .datapath("p2c")
                        ) rxout_ufi (
                            .srcclk (ufi_clk_0),
                            .destclk(coreclock), 
                            .d      (rx_reg_ufi[SER_INDEX:SER_INDEX]),  
                            .dout   (inv_rx_data[SER_INDEX:SER_INDEX])
                    );    
                end

                ////////////////////////////////////////////////////////////////
                ////LVDS BUFFERS                       //
                ////////////////////////////////////////////////////////////////
                tennm_io_ibuf rx_in_ibuf (
                    .o      (rx_in[CH_INDEX]),
                    .i      (rx_in_p[CH_INDEX]),
                    .ibar   (rx_in_n[CH_INDEX])
                );
		defparam rx_in_ibuf.differential_mode = "true";
           end
           else if (SERDES_DPA_MODE == "dpa_mode_fifo")
           begin : dpa_fifo
                assign rx_dpa_switch[CH_INDEX]=1'b0;                    

                wire [9:0] inv_rx_data;
                reg [J_FACTOR-1:0] rx_reg ; 
                reg [J_FACTOR-1:0] rx_reg_ufi;
                reg rx_bitslip_ctrl_reg;
                reg rx_bitslip_reset_reg;
                reg rx_dpa_hold_reg;
                reg rx_dpa_reset_internal_reg;
                reg rx_dpa_switch_reg;
                reg rx_fifo_reset_reg;
                wire rx_bitslip_max_wire;
                wire rx_dpa_locked_wire;
                wire rx_bitslip_reset_comb;
                wire rx_dpa_reset_internal_comb; 
                wire rx_fifo_reset_comb;
                wire rx_dpa_locked_wire_ufi;
                wire rx_bitslip_max_wire_ufi;
                wire rx_bitslip_ctrl_ufi;
                wire rx_bitslip_reset_ufi;
                wire rx_dpa_hold_ufi;
                wire rx_dpa_reset_internal_ufi; 
                wire rx_dpa_switch_ufi;
                wire rx_fifo_reset_ufi;
                wire                ufi_clk_0;
                wire [1:0]          clock_tree_loaden;          
                wire [1:0]          clock_tree_fclk;            
                wire                fbclk;                      


                ////////////////////////////////////////////////////////////////
                ////PHYCLK TREE                        //
                ////////////////////////////////////////////////////////////////
                tennm_io48_phyclk #(
                    .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                    .x0_xio_phy_clktree_phy_clk_mode("LVDS")
                ) lvds_clock_tree_inst (
                    .loaden_0(loaden[0]),
                    .lvds_clk_0(fclk[0]),
                    .loaden_1(loaden[1]),
                    .lvds_clk_1(fclk[1]),
                    .fblvds(1'b0),
                    .phy_clk_ufi_0(ufi_clk_0), 
                    .phy_clk_ufi_1(), 
                    .phy_clk_ufi_3(), 
                    .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                    .phy_clk_out_2(), 
                    .phy_clk_out_3() 
                );

                ////////////////////////////////////////////////////////////////
                ////IOSERDESDPA TREE                   //
                ////////////////////////////////////////////////////////////////
                (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
                tennm_io_serdes_dpa #(
                    .top_mode("dpa_mode_fifo"),
                    .serdes_factor(SERDES_FACTOR),
                    .bslip_max(BITSLIP_MAX),
                    .bslip_function(BITSLIP_FUNC),
                    .clock_source_mode("cdr_off_pll0"),
                    .serdes_function("des"),
                    .vco_div_exponent(VCO_DIV_EXPONENT),
                    .a_filter_code(FILTER_CODE),
                    .silicon_rev(SILICON_REV)
                ) serdes_dpa_inst (
                    .fclk_in({1'b0, clock_tree_fclk[0]}),
                    .loaden_in({1'b0, clock_tree_loaden[0]}),
                    .par_in(),
                    .lvdsin(rx_in[CH_INDEX]),
                    .bslipcntl(rx_bitslip_ctrl_ufi),
                    .bsliprst(rx_bitslip_reset_ufi),
                    .dpaclk(vcoph),
                    .dpahold(rx_dpa_hold_ufi),
                    .dparst(rx_dpa_reset_internal_ufi),
                    .dpaswitch(rx_dpa_switch_ufi),
                    .fiforst(rx_fifo_reset_ufi),
                    .dpalock(rx_dpa_locked_wire_ufi),
                    .bslipmax(rx_bitslip_max_wire_ufi),
                    .lvdsout(),
                    .par_out(rx_reg_ufi),
                    .pclk()
                );

                genvar i; 
                for (i=0; i<J_FACTOR; i=i+1)
                begin : output_reg 
                    always @(posedge coreclock)
                    begin
                            rx_reg[J_FACTOR-1-i] <= inv_rx_data[J_FACTOR-1-i];
                    end
                end

                assign rx_out[(J_FACTOR*(CH_INDEX+1)-1):J_FACTOR*CH_INDEX] = rx_reg; 
                
                data_synchronizer #(.SYNC_LENGTH(SYNC_STAGES)) rx_bitslip_max_sync_inst (
                    .data_in(rx_bitslip_max_wire),
                    .clock(coreclock),
                    .reset(pll_reset_coreclock),
                    .data_out(rx_bitslip_max[CH_INDEX])
                ); 

                data_synchronizer #(.SYNC_LENGTH(SYNC_STAGES)) rx_dpa_locked_sync_inst (
                    .data_in(rx_dpa_locked_wire),
                    .clock(coreclock),
                    .reset(pll_reset_coreclock),
                    .data_out(rx_dpa_locked[CH_INDEX])
                ); 
                
                assign rx_bitslip_reset_comb      = pll_core_reset|rx_bitslip_reset[CH_INDEX];
                assign rx_dpa_reset_internal_comb = pll_core_reset|rx_dpa_reset_internal[CH_INDEX];
                assign rx_fifo_reset_comb         = pll_core_reset|rx_fifo_reset[CH_INDEX];
                
                always @(posedge coreclock)
                begin
                       rx_bitslip_ctrl_reg        <= rx_bitslip_ctrl[CH_INDEX];
                       rx_bitslip_reset_reg       <= rx_bitslip_reset_comb;
                       rx_dpa_hold_reg            <= rx_dpa_hold[CH_INDEX];
                       rx_dpa_reset_internal_reg  <= rx_dpa_reset_internal_comb;
                       rx_dpa_switch_reg          <= rx_dpa_switch[CH_INDEX];
                       rx_fifo_reset_reg          <= rx_fifo_reset_comb;
                end 
                
                ////////////////////////////////////////////////////////////////
                ////C2P/P2C BOUNDARY                   //
                ////////////////////////////////////////////////////////////////
                //P2C
                (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxbslipmax_ufi (
                            .d      (rx_bitslip_max_wire_ufi),  
                            .dout   (rx_bitslip_max_wire)
                );
                
                (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxdpalock_ufi (
                            .d      (rx_dpa_locked_wire_ufi),  
                            .dout   (rx_dpa_locked_wire)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbslipctrl_ufi (
                            .d      (rx_bitslip_ctrl_reg), 
                            .dout   (rx_bitslip_ctrl_ufi)
                );
                
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbsliprst_ufi (
                            .d      (rx_bitslip_reset_reg), 
                            .dout   (rx_bitslip_reset_ufi)
                );
          
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdpahold_ufi (
                            .d      (rx_dpa_hold_reg), 
                            .dout   (rx_dpa_hold_ufi)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdparst_ufi (
                            .d      (rx_dpa_reset_internal_reg), 
                            .dout   (rx_dpa_reset_internal_ufi)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdpaswitch_ufi (
                            .d      (rx_dpa_switch_reg), 
                            .dout   (rx_dpa_switch_ufi)
                );
               
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxfiforst_ufi (
                            .d      (rx_fifo_reset_reg), 
                            .dout   (rx_fifo_reset_ufi)
                );

                for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
                begin: des
                    (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                    tennm_ufi #(
                          .mode    ("pin_ufi_use_fast_fifo_out_reg"),
                          .clk_sel (UFI_CLK_SEL),
                          .datapath("p2c")
                        ) rxout_ufi (
                            .srcclk (ufi_clk_0),
                            .destclk(coreclock), 
                            .d      (rx_reg_ufi[SER_INDEX:SER_INDEX]),  
                            .dout   (inv_rx_data[SER_INDEX:SER_INDEX])
                    );    
                end


                ////////////////////////////////////////////////////////////////
                ////LVDS BUFFERS                       //
                ////////////////////////////////////////////////////////////////
                tennm_io_ibuf rx_in_ibuf (
                    .o      (rx_in[CH_INDEX]),
                    .i      (rx_in_p[CH_INDEX]),
                    .ibar   (rx_in_n[CH_INDEX])
                );
		defparam rx_in_ibuf.differential_mode = "true";
           end
           else if (SERDES_DPA_MODE == "dpa_mode_cdr")
           begin : soft_cdr
                assign rx_dpa_switch[CH_INDEX]=1'b0;                    
                wire [9:0] rx_data; 
                wire divfwdclk;
                reg [J_FACTOR-1:0] cdr_sync_reg ;
                reg [J_FACTOR-1:0] rx_reg /* synthesis syn_preserve=1*/; 
                reg [J_FACTOR-1:0] rx_data_ufi; 
                reg rx_bitslip_ctrl_reg;
                reg rx_bitslip_reset_reg;
                reg rx_dpa_hold_reg;
                reg rx_dpa_reset_internal_reg;
                reg rx_dpa_switch_reg;
                wire rx_bitslip_max_wire;
                wire rx_dpa_locked_wire;
                wire pll_areset_divfwdclk;
                wire pll_areset_rxdivfwdclk;
                wire rx_bitslip_reset_comb;
                wire rx_dpa_reset_internal_comb; 
                wire rx_dpa_locked_wire_ufi;
                wire rx_bitslip_max_wire_ufi;
                wire rx_bitslip_ctrl_ufi;
                wire rx_bitslip_reset_ufi;
                wire rx_dpa_hold_ufi;
                wire rx_dpa_reset_internal_ufi; 
                wire rx_dpa_switch_ufi;
                wire                ufi_clk_0;
                wire [1:0]          clock_tree_loaden;          
                wire [1:0]          clock_tree_fclk;            
                wire                fbclk;                      


                ////////////////////////////////////////////////////////////////
                ////PHYCLK TREE                        //
                ////////////////////////////////////////////////////////////////
                tennm_io48_phyclk #(
                    .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                    .x0_xio_phy_clktree_phy_clk_mode("LVDS")
                ) lvds_clock_tree_inst (
                    .loaden_0(loaden[0]),
                    .lvds_clk_0(fclk[0]),
                    .loaden_1(loaden[1]),
                    .lvds_clk_1(fclk[1]),
                    .fblvds(1'b0),
                    .phy_clk_ufi_0(ufi_clk_0), 
                    .phy_clk_ufi_1(), 
                    .phy_clk_ufi_3(), 
                    .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                    .phy_clk_out_2(), 
                    .phy_clk_out_3() 
                );

                ////////////////////////////////////////////////////////////////
                ////IOSERDESDPA TREE                   //
                ////////////////////////////////////////////////////////////////
                (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
                tennm_io_serdes_dpa #(
                    .top_mode("dpa_mode_cdr"),
                    .serdes_factor(SERDES_FACTOR),
                    .bslip_max(BITSLIP_MAX),
                    .bslip_function(BITSLIP_FUNC),
                    .clock_source_mode("cdr_dpa"),
                    .serdes_function("des"),
                    .vco_div_exponent(VCO_DIV_EXPONENT),
                    .a_filter_code(FILTER_CODE),
                    .silicon_rev(SILICON_REV)
                ) serdes_dpa_inst (
                    .fclk_in(clock_tree_fclk),
                    .loaden_in(),
                    .par_in(),
                    .lvdsin(rx_in[CH_INDEX]),
                    .bslipcntl(rx_bitslip_ctrl_ufi),
                    .bsliprst(rx_bitslip_reset_ufi),
                    .dpaclk(vcoph),
                    .dpahold(rx_dpa_hold_ufi),
                    .dparst(rx_dpa_reset_internal_ufi),
                    .dpaswitch(rx_dpa_switch_ufi),
                    .fiforst(),
                    .dpalock(rx_dpa_locked_wire_ufi),
                    .bslipmax(rx_bitslip_max_wire_ufi),
                    .lvdsout(),
                    .par_out(rx_data),
                    .pclk(divfwdclk) 
                );
                assign rx_divfwdclk[CH_INDEX] = ~divfwdclk;  

                reset_synchronizer_active_high pll_areset_sync_divfwdclk (
                    .async_reset(pll_areset),
                    .clock(divfwdclk),
                    .sync_reset(pll_areset_divfwdclk)
                );

                genvar i; 
                for (i=0; i<J_FACTOR; i=i+1)
                begin : cdr_sync
                    always @(posedge divfwdclk or posedge pll_areset_divfwdclk)
                    begin
                        if (pll_areset_divfwdclk)
                            cdr_sync_reg[i] <= 1'b0; 
                        else 
                            cdr_sync_reg[i] <= rx_data_ufi[i];
                    end
                end

                reset_synchronizer_active_high pll_areset_sync_rxdivfwdclk (
                    .async_reset(pll_areset),
                    .clock(rx_divfwdclk[CH_INDEX]),
                    .sync_reset(pll_areset_rxdivfwdclk)
                );

               
                always @(posedge rx_divfwdclk[CH_INDEX] or posedge pll_areset_rxdivfwdclk)
                begin 
                    if (pll_areset_rxdivfwdclk)
                        rx_reg <= {J_FACTOR{1'b0}}; 
                    else 
                        rx_reg <= cdr_sync_reg;
                end

                assign rx_out[(J_FACTOR*(CH_INDEX+1)-1):J_FACTOR*CH_INDEX] = rx_reg; 
                
                    
                data_synchronizer #(.SYNC_LENGTH(SYNC_STAGES)) rx_bitslip_max_sync_inst (
                    .data_in(rx_bitslip_max_wire),
                    .clock(rx_divfwdclk[CH_INDEX]),
                    .reset(pll_areset_rxdivfwdclk),
                    .data_out(rx_bitslip_max[CH_INDEX])
                ); 
                assign rx_bitslip_reset_comb = pll_areset_rxdivfwdclk|rx_bitslip_reset[CH_INDEX];

                always @(posedge rx_divfwdclk[CH_INDEX])
                begin
                        rx_bitslip_reset_reg <= rx_bitslip_reset_comb;
                        rx_bitslip_ctrl_reg <= rx_bitslip_ctrl[CH_INDEX];
                end 

                data_synchronizer #(.SYNC_LENGTH(SYNC_STAGES)) rx_dpa_locked_sync_inst (
                    .data_in(rx_dpa_locked_wire),
                    .clock(rx_divfwdclk[CH_INDEX]),
                    .reset(pll_areset_rxdivfwdclk),
                    .data_out(rx_dpa_locked[CH_INDEX])
                ); 
                
                assign rx_dpa_reset_internal_comb = pll_areset_rxdivfwdclk|rx_dpa_reset_internal[CH_INDEX];
                assign rx_dpa_hold_reg            = rx_dpa_hold[CH_INDEX];
                assign rx_dpa_reset_internal_reg  = rx_dpa_reset_internal_comb;
                assign rx_dpa_switch_reg          = rx_dpa_switch[CH_INDEX];

                ////////////////////////////////////////////////////////////////
                ////C2P/P2C BOUNDARY                   //
                ////////////////////////////////////////////////////////////////
                //P2C
                (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxbslipmax_ufi (
                            .d      (rx_bitslip_max_wire_ufi),  
                            .dout   (rx_bitslip_max_wire)
                );
                
                (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxdpalock_ufi (
                            .d      (rx_dpa_locked_wire_ufi),  
                            .dout   (rx_dpa_locked_wire)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbslipctrl_ufi (
                            .d      (rx_bitslip_ctrl_reg), 
                            .dout   (rx_bitslip_ctrl_ufi)
                );
                
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxbsliprst_ufi (
                            .d      (rx_bitslip_reset_reg), 
                            .dout   (rx_bitslip_reset_ufi)
                );
          
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdpahold_ufi (
                            .d      (rx_dpa_hold_reg),
                            .dout   (rx_dpa_hold_ufi)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdparst_ufi (
                            .d      (rx_dpa_reset_internal_reg), 
                            .dout   (rx_dpa_reset_internal_ufi)
                );

                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("c2p")
                        ) rxdpaswitch_ufi (
                            .d      (rx_dpa_switch_reg), 
                            .dout   (rx_dpa_switch_ufi)
                );
               
                for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
                begin: des
                    (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_PERIPHERY_CORE_TRANSFER ON" *)
                    tennm_ufi #(
                          .mode    ("pin_ufi_use_in_direct_out_direct"),
                          .datapath("p2c")
                        ) rxout_ufi (
                            .d      (rx_data[SER_INDEX:SER_INDEX]),  
                            .dout   (rx_data_ufi[SER_INDEX:SER_INDEX])
                    );    
                end
                ////////////////////////////////////////////////////////////////
                ////LVDS BUFFERS                       //
                ////////////////////////////////////////////////////////////////
                tennm_io_ibuf rx_in_ibuf (
                    .o      (rx_in[CH_INDEX]),
                    .i      (rx_in_p[CH_INDEX]),
                    .ibar   (rx_in_n[CH_INDEX])
                );
		defparam rx_in_ibuf.differential_mode = "true";
            end    
        end
    endgenerate 

    
    generate 
        if ((SERDES_DPA_MODE == "tx_mode" || USE_DUPLEX == "true") && TX_OUTCLOCK_ENABLED == "true" && TX_OUTCLOCK_NON_STD_PHASE_SHIFT == "false") 
        begin : std_tx_outclock_serdes
        
            reg [9:0] tx_outclock_div_word_reg;
            wire [9:0] tx_outclock_div_word = TX_OUTCLOCK_DIV_WORD;
            wire tx_core_reg_clk = (TX_REGISTER_CLOCK == "tx_coreclock")? coreclock : inclock;
            wire                ufi_clk_0;
            wire [1:0]          clock_tree_loaden;          
            wire [1:0]          clock_tree_fclk;            
            wire                fbclk;                      


            ////////////////////////////////////////////////////////////////
            ////PHYCLK TREE                        //
            ////////////////////////////////////////////////////////////////
            tennm_io48_phyclk #(
                .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                .x0_xio_phy_clktree_phy_clk_mode("LVDS")
            ) lvds_clock_tree_inst (
                .loaden_0(loaden[0]),
                .lvds_clk_0(fclk[0]),
                .loaden_1(loaden[1]),
                .lvds_clk_1(fclk[1]),
                .fblvds(1'b0),
                .phy_clk_ufi_0(ufi_clk_0), 
                .phy_clk_ufi_1(), 
                .phy_clk_ufi_3(), 
                .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                .phy_clk_out_2(), 
                .phy_clk_out_3() 
            );
            
            wire [9:0] tx_outclock_div_word_cell;
            wire [9:0] tx_outclock_div_word_cell_ufi;
            genvar i; 
            for (i=0; i<J_FACTOR; i=i+1)
            begin : div_word_cells
                lcell div_word_wirelut (
                    .in(tx_outclock_div_word[i]),
                    .out(tx_outclock_div_word_cell[i])
                ) /* synthesis syn_keep = 1 */;
            end

            always @(posedge coreclock)
            begin
                    tx_outclock_div_word_reg <= tx_outclock_div_word_cell;
            end 
            
            ////////////////////////////////////////////////////////////////
            ////IOSERDESDPA TREE                   //
            ////////////////////////////////////////////////////////////////
            (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
            tennm_io_serdes_dpa #(
                .top_mode("tx_mode"),
                .serdes_factor(SERDES_FACTOR),
                .bslip_max("bslip_0"),
                .bslip_function("off_mode"),
                .clock_source_mode("cdr_off_pll1"),
                .serdes_function(SER_CLK_FUNCTION),
                .vco_div_exponent(VCO_DIV_EXPONENT),
                .a_filter_code(FILTER_CODE),
                .silicon_rev(SILICON_REV)
            ) serdes_dpa_tx_outclock (
                .fclk_in(clock_tree_fclk),
                .loaden_in(clock_tree_loaden),
                .par_in(tx_outclock_div_word_cell_ufi),
                .lvdsin(),
                .bslipcntl(),
                .bsliprst(),
                .dpaclk(),
                .dpahold(),
                .dparst(),
                .dpaswitch(),
                .fiforst(),
                .dpalock(),
                .bslipmax(),
                .lvdsout(tx_outclock),
                .par_out(),
                .pclk()
                );
            
            ////////////////////////////////////////////////////////////////
            ////C2P/P2C BOUNDARY                   //
            ////////////////////////////////////////////////////////////////
            for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
            begin: ser
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                      .mode    ("pin_ufi_use_delay_fifo_out_reg"),
                      .clk_sel (UFI_CLK_SEL),
                      .datapath("c2p")
                    ) txin_ufi (
                        .srcclk (tx_core_reg_clk),
                        .destclk(ufi_clk_0), 
                        .d      (tx_outclock_div_word_reg[SER_INDEX:SER_INDEX]),  
                        .dout   (tx_outclock_div_word_cell_ufi[SER_INDEX:SER_INDEX])
                );
            end
               
            ////////////////////////////////////////////////////////////////
            ////LVDS BUFFERS                       //
            ////////////////////////////////////////////////////////////////
            tennm_io_obuf tx_outclock_obuf (
                .i      (tx_outclock),
                .o      (tx_outclock_p),
                .obar   (tx_outclock_n)
            );
        end
        else if ((SERDES_DPA_MODE == "tx_mode"|| USE_DUPLEX == "true") && TX_OUTCLOCK_ENABLED == "true" && TX_OUTCLOCK_NON_STD_PHASE_SHIFT == "true")
        begin : phase_shifted_tx_outclock_serdes 
            
            reg [9:0] tx_outclock_div_word_reg;
            wire [9:0] tx_outclock_div_word = TX_OUTCLOCK_DIV_WORD;
            wire tx_core_reg_clk = (TX_REGISTER_CLOCK == "tx_coreclock")? coreclock : inclock;
            wire                ufi_clk_0;
            wire [1:0]          clock_tree_loaden;          
            wire [1:0]          clock_tree_fclk;            
            wire                fbclk;                      


            ////////////////////////////////////////////////////////////////
            ////PHYCLK TREE                        //
            ////////////////////////////////////////////////////////////////
            tennm_io48_phyclk #(
                .x0_xio_phy_clktree_a_phyclk_used("PHYCLK_USED"),
                .x0_xio_phy_clktree_phy_clk_mode("LVDS")
            ) lvds_clock_tree_inst (
                .loaden_0(loaden[0]),
                .lvds_clk_0(fclk[0]),
                .loaden_1(loaden[1]),
                .lvds_clk_1(fclk[1]),
                .fblvds(1'b0),
                .phy_clk_ufi_0(ufi_clk_0), 
                .phy_clk_ufi_1(), 
                .phy_clk_ufi_3(), 
                .phy_clk_out_0({clock_tree_fclk[1],clock_tree_loaden[1],fbclk,clock_tree_fclk[0],clock_tree_loaden[0]}), 
                .phy_clk_out_2(), 
                .phy_clk_out_3() 
            );

            wire [9:0] tx_outclock_div_word_cell;
            wire [9:0] tx_outclock_div_word_cell_ufi;
            genvar i; 
            for (i=0; i<J_FACTOR; i=i+1)
            begin : div_word_cells
                lcell div_word_wirelut (
                    .in(tx_outclock_div_word[i]),
                    .out(tx_outclock_div_word_cell[i])
                ) /* synthesis syn_keep = 1 */;
            end

            always @(posedge coreclock)
            begin
                    tx_outclock_div_word_reg <= tx_outclock_div_word_cell;
            end 
          
            wire clock_tree_tx_outclock;
            wire clock_tree_tx_outclock_loaden;
           
            ////////////////////////////////////////////////////////////////
            ////IOSERDESDPA TREE                   //
            ////////////////////////////////////////////////////////////////
            (* altera_attribute = "-name MAX_WIRES_FOR_CORE_PERIPHERY_TRANSFER  2; -name MAX_WIRES_FOR_PERIPHERY_CORE_TRANSFER  1" *)
            tennm_io_serdes_dpa #(
                .top_mode("tx_mode"),
                .serdes_factor(SERDES_FACTOR),
                .bslip_max("bslip_0"),
                .bslip_function("off_mode"),
                .clock_source_mode("cdr_off_pll1"),
                .serdes_function(SER_CLK_FUNCTION),
                .vco_div_exponent(VCO_DIV_EXPONENT),
                .a_filter_code(FILTER_CODE),
                .silicon_rev(SILICON_REV)
            ) serdes_dpa_tx_outclock (
                .fclk_in(clock_tree_fclk),
                .loaden_in(clock_tree_loaden), 
                .par_in(tx_outclock_div_word_cell_ufi),
                .lvdsin(),
                .bslipcntl(),
                .bsliprst(),
                .dpaclk(),
                .dpahold(),
                .dparst(),
                .dpaswitch(),
                .fiforst(),
                .dpalock(),
                .bslipmax(),
                .lvdsout(tx_outclock),
                .par_out(),
                .pclk()
                );
            
            ////////////////////////////////////////////////////////////////
            ////C2P/P2C BOUNDARY                   //
            ////////////////////////////////////////////////////////////////
            for (SER_INDEX=0;SER_INDEX<J_FACTOR;SER_INDEX=SER_INDEX+1)
            begin: ser
                (* altera_attribute = {"-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON; -name HYPER_REGISTER_DELAY_CHAIN 225"} *)                    
                tennm_ufi #(
                      .mode    ("pin_ufi_use_delay_fifo_out_reg"),
                      .clk_sel (UFI_CLK_SEL),
                      .datapath("c2p")
                    ) txin_ufi (
                        .srcclk (tx_core_reg_clk),
                        .destclk(ufi_clk_0), 
                        .d      (tx_outclock_div_word_reg[SER_INDEX:SER_INDEX]),  
                        .dout   (tx_outclock_div_word_cell_ufi[SER_INDEX:SER_INDEX])
                );
            end

            ////////////////////////////////////////////////////////////////
            ////LVDS BUFFERS                       //
            ////////////////////////////////////////////////////////////////
            tennm_io_obuf tx_outclock_obuf (
                .i      (tx_outclock),
                .o      (tx_outclock_p),
                .obar   (tx_outclock_n)
            );
        end
    endgenerate 
    
    
    generate
        if (USE_CPA_RECONFIG == "true")
        begin : pa_dprio_clk_gen
            assign pa_dprio_clk = user_dprio_clk_in;
        end 
        else
        begin : pa_dprio_clk_gen
            assign pa_dprio_clk = user_dprio_clk_in;            
        end 
        assign user_dprio_clk = pa_dprio_clk;
    endgenerate
    
    generate
        if  ((SERDES_DPA_MODE == "dpa_mode_fifo" || SERDES_DPA_MODE == "dpa_mode_cdr") && DPRIO_ENABLED == "true" )
        begin : dprio_clk_gen
            
            wire pll_reset_coreclock_dprio;
            lcell pll_reset_coreclock_wirelut (
                .in(pll_reset_coreclock),
                .out(pll_reset_coreclock_dprio)
            ) /* synthesis syn_keep = 1 */;
            
            reg dprio_done;
            reg dprio_start;
            
            
            wire dprio_clk_source = coreclock;
            reg [1:0] dprio_div_counter;
            wire dprio_gen_reset = ~pll_locked_only | dprio_done | pll_reset_coreclock_dprio;
            
            always @(posedge dprio_clk_source or posedge dprio_gen_reset)
            begin
                if (dprio_gen_reset)
                    dprio_div_counter <= 2'd0; 
                else
                    dprio_div_counter <= dprio_div_counter + 2'd1;
            end

            reg [7:0] dprio_cycle_counter;

            assign dprio_clk = dprio_div_counter[1];
            assign dprio_rst_n = ~dprio_gen_reset & dprio_start;
            
            always @(posedge dprio_clk or posedge dprio_gen_reset)
            begin
                if (dprio_gen_reset)
                    dprio_cycle_counter <= 7'd0; 
                else
                    dprio_cycle_counter <= dprio_cycle_counter + 7'd1;
            end

            assign user_dprio_ready = dprio_done;
            always @(posedge dprio_clk or posedge pll_reset_coreclock_dprio)
            begin
                if (pll_reset_coreclock_dprio)
                    dprio_start <= 1'b0;
                else if (&dprio_cycle_counter[1:0])
                    dprio_start <= 1'b1;
                    
                if (pll_reset_coreclock_dprio)
                    dprio_done <= 1'b0;
                else if (&dprio_cycle_counter)
                    dprio_done <= 1'b1;
            end
            
            assign rx_dpa_reset_internal = rx_dpa_reset | {RX_CHANNELS{~dprio_done}};
        end
        else
        begin : dpa_reset
            assign rx_dpa_reset_internal = rx_dpa_reset;
        end
    endgenerate 

endmodule


