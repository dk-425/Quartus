# (C) 2001-2022 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.


## Identify HPS EMAC clock
set fanin_keeper_list ""
set fanins [get_fanins [get_keepers "[get_current_instance]|*u_txbuffer|wr_data_flp\[0\]"] -clock]
if {[get_collection_size $fanins] != 0} {
    foreach_in_collection fanin_keeper $fanins {
        lappend fanin_keeper_list [get_node_info $fanin_keeper -name]
    }

    ## Identify HPS EMAC CLOCK
    if {[regexp {emac1_gmii_txclk_cm.reg} $fanin_keeper_list]} {
        set emac_clk "hps_emac1_gtx_clk"
        declare_clock $emac_clk
    } elseif {[regexp {emac2_gmii_txclk_cm.reg} $fanin_keeper_list]} {
        set emac_clk "hps_emac2_gtx_clk"
        declare_clock $emac_clk
    } else {
        set emac_clk 0
    }
    
    if {$emac_clk != 0} {
        ## Get PCS_CLOCK path
        set pcs_clock ""
        foreach fanin_keeper_node $fanin_keeper_list { 
            foreach_in_collection i [get_clocks -nowarn] {
				if {![is_clock_defined $i]} {
					continue
				}
				if { [catch { get_node_info -name  [get_clock_info -targets $i] } i_target ] } {
					continue
				}
				if {[string equal $fanin_keeper_node $i_target]} {
					set clock_temp [get_clock_info -name $i]
					if {![string equal $clock_temp $emac_clk]} {
						lappend pcs_clock $clock_temp
					}
				}
			}
        }
		
		if {$pcs_clock != ""} {
			# False Path PCS_CLOCK to GMII Reg
			set_false_path -from [get_clocks $pcs_clock] -to [get_registers "[get_current_instance]|u_txbuffer|wr_data_flp\[*\]"]
			# Async clock group between PCS_CLOCK and EMAC_CLK
			set_clock_groups -asynchronous -group [get_clocks $pcs_clock] -group [get_clocks $emac_clk]
		}
        # False Path Falling Edge of EMAC_CLK to GMII Reg
        set_false_path -fall_from [get_clocks $emac_clk] -to [get_registers "[get_current_instance]|u_txbuffer|wr_data_flp\[*\]"]
    }
}

# False Path on reset sync clrn
set_false_path -to [get_pins [get_current_instance]|u_reset_blk|u_mac_rst_rx_pcs|din_sync_*|clrn]
set_false_path -to [get_pins [get_current_instance]|u_reset_blk|u_mac_rst_tx_pcs|din_sync_*|clrn]
set_false_path -to [get_pins [get_current_instance]|u_reset_blk|u_sw_tx_rst_mac|din_sync_*|clrn]
set_false_path -to [get_pins [get_current_instance]|u_reset_blk|u_sw_tx_rst_pcs|din_sync_*|clrn]

# MII data path doesn't need to meet 125MHz. 
set_multicycle_path 5 -setup -end -to [get_registers [get_current_instance]|mii_rd_data_reg[*]]
set_multicycle_path 4 -hold -end -to [get_registers [get_current_instance]|mii_rd_data_reg[*]]
