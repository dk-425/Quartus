if {[get_collection_size [get_nodes  -nowarn hps_inst|s2f_module~l4_mp_clk ]] > 0} {
create_clock -name hps_l4_mp_clk_src -period 5.0 [get_nodes  hps_inst|s2f_module~l4_mp_clk]
create_generated_clock -divide_by 1 -name hps_l4_mp_clk [get_registers hps_inst|s2f_module~l4_mp_clk.reg] -master_clock [get_clocks hps_l4_mp_clk_src] -source [get_nodes hps_inst|s2f_module~l4_mp_clk]
}
if {[get_collection_size [get_nodes  -nowarn hps_inst|s2f_module~emac1_gmii_txclk_cm ]] > 0} {
create_clock -name hps_emac1_gtx_clk_src -period 8.0 [get_nodes  hps_inst|s2f_module~emac1_gmii_txclk_cm]
create_generated_clock -divide_by 1 -name hps_emac1_gtx_clk [get_registers hps_inst|s2f_module~emac1_gmii_txclk_cm.reg] -master_clock [get_clocks hps_emac1_gtx_clk_src] -source [get_nodes hps_inst|s2f_module~emac1_gmii_txclk_cm]
}