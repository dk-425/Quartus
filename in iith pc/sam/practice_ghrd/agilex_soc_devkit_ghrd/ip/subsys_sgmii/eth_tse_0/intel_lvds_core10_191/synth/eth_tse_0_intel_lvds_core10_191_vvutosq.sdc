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




#####################################################################
#
# THIS IS AN AUTO-GENERATED FILE!
# -------------------------------
# If you modify this files, all your changes will be lost if you
# regenerate the core!
#
# FILE DESCRIPTION
# ----------------
# This file specifies the timing constraints for the Altera LVDS interface


# Source helper script
set script_dir [file dirname [info script]]
source "$script_dir/eth_tse_0_intel_lvds_core10_191_vvutosq_ip_parameters.tcl"
source "$script_dir/sdc_util.tcl"

set syn_flow 0
set sta_flow 0
set fit_flow 0
if { $::TimeQuestInfo(nameofexecutable) == "quartus_syn" } {
    set syn_flow 1
} elseif { $::TimeQuestInfo(nameofexecutable) == "quartus_sta" } {
    set sta_flow 1
} elseif { $::TimeQuestInfo(nameofexecutable) == "quartus_fit" } {
    set fit_flow 1
}



##########################################################################################
# Modifiable user variables
# Change these values to match your design.
##########################################################################################

set ::RCCS 0.0

##########################################################################################
# The following functions are to find out all the instances and the corresponding PLL
# refclk.  If you see an critical warning, modify to match your design.
##########################################################################################

set catch_exception [catch {
    set lvds_instance_name_list [altera_iosubsystem_get_ip_instance_names $ip_params(libname) $ip_params(corename)]
} ]

if {$catch_exception != 0} {
    post_message -type critical_warning "Errors encountered when searching for LVDS instance name and ref clock pin names.  Please override variables lvds_instance_name_list and rerun read_sdc"
    return
}

##########################################################################################
# Derived user variables
##########################################################################################

set half_RCCS [expr $::RCCS / 2]

###########################################################
# IP parameters
###########################################################


# Throw error only at TimeQuest but critical warning in Fitter\n"
if {$fit_flow} {
    set msg_error_type "critical_warning"
} else {
    set msg_error_type "error"
}

# Iterate through all instances of this IP
foreach lvds_instance_name $lvds_instance_name_list {


    set core_clocks [list]
    set periphery_clocks [list]

    set lvds_core_instance_name "${lvds_instance_name}|arch_inst"
    regexp {([0-9_A-Za-z]+)|} $lvds_instance_name -> lvds_top_level_name
    
    set my_iopll_clks ""
    if {$ip_params(use_tx_outclock)} {
        set lvds_search_mode 1
    } else {
        set lvds_search_mode 0
    }
    set iopll_atom [altera_iosubsystem_get_iopll_atom $lvds_core_instance_name $lvds_search_mode ]
    set refclk_period_ns $ip_params(ref_clock_period_ns)
    set loaden_period_ns $ip_params(slow_clock_period_ns)
    set loaden_phase $ip_params(loaden_phase)
    if {$iopll_atom == ""} {
        if {$sta_flow} {
            post_message -type $msg_error_type "LVDS SDC cannot find IOPLL. Ensure that IOPLL SDC is listed before LVDS SDC in the QSF and that LVDS IP data input/output ports are connected."
        }
    } else {
        set my_iopll_clks [get_iopll_clocks $iopll_atom]
        if { ([get_collection_size $my_iopll_clks] == 0) } {
            if {$sta_flow} {
                post_message -type $msg_error_type "Please ensure the IOPLL IP is before the LVDS IP in the QSF so that clocks are created properly."
            }
        } else {
            set refclk_period_ns [altera_iosubsystem_round_3dp [convert_bigtime_period_ns [get_atom_node_info -key TIME_IOPLL_REFCLK_TIME -node $iopll_atom]]]
            set loaden_period_ns [altera_iosubsystem_round_3dp [convert_bigtime_period_ns [get_atom_node_info -key TIME_IOPLL_OUTCLK1 -node $iopll_atom]]]
            set loaden_phase [altera_iosubsystem_round_3dp [expr [convert_ps_to_degrees [get_atom_node_info -key TIME_IOPLL_PHASE_SHIFT_1 -node $iopll_atom] $loaden_period_ns] / 1000.0]]
        }
    }

    ###########################################################################################
    # Create Common Clocks, Periods, and Delays
    ###########################################################################################

    # Construct clock names
    set pll_fclk_name "${lvds_instance_name}|fclk"
    set pll_lden_name "${lvds_instance_name}|sclk"
    set pll_tx_outclock_fclk_name "${lvds_instance_name}|tx_out_fclk"
    set pll_tx_outclock_lden_name "${lvds_instance_name}|tx_out_sclk"
    set pll_out_name "${lvds_instance_name}|core_clk"
    set cpa_core_clk_out_name "${lvds_instance_name}|cpa_clk"

    # Construct port names
    set lvds_clock_tree_inst_name "${lvds_core_instance_name}|tx_channels[*].tx.lvds_clock_tree_inst"
    set pll_fclk0_tree_name "${lvds_clock_tree_inst_name}|lvds_clk_0"
    set pll_lden0_tree_name "${lvds_clock_tree_inst_name}|loaden_0"
    set pll_fclk1_tree_name "${lvds_clock_tree_inst_name}|lvds_clk_1"
    set pll_lden1_tree_name "${lvds_clock_tree_inst_name}|loaden_1"

    # Query clocktree fanin names
    if {[get_collection_size [get_pins -nowarn ${lvds_clock_tree_inst_name}|*]] > 0} {
        if {[catch {
                set pll_fclk0_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_fclk0_tree_name]]]
                set pll_instance_name [get_cell_info -name [get_node_info -cell $pll_fclk0_pin]]
                set pll_ref_ck_pin "${pll_instance_name}|refclk*"
                set ref_ck_port_id [altera_iosubsystem_get_input_clk_id [get_nodes $pll_ref_ck_pin]]
                set ref_ck_pin [get_port_info -name $ref_ck_port_id]
        }]} {
            set pll_fclk0_pin ""
            set pll_ref_ck_pin ""
            set ref_ck_pin ""
            set pll_instance_name ""
        }
        if {[catch {set pll_lden0_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_lden0_tree_name]]]}]} {
            set pll_lden0_pin ""
        }
        if {[catch {set pll_fclk1_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_fclk1_tree_name]]]}]} {
            set pll_fclk1_pin ""
        }
        if {[catch {set pll_lden1_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_lden1_tree_name]]]}]} {
            set pll_lden1_pin ""
        }
    } else {
        set pll_fclk0_pin ""
        set pll_lden0_pin ""
        set pll_fclk1_pin ""
        set pll_lden1_pin ""
        set pll_ref_ck_pin ""
        set ref_ck_pin ""
        set pll_instance_name ""
    }

    if {$ref_ck_pin != "" && !$ip_params(use_external_pll)} {
        # Create a clock at the reference clock pin, 
        # if one does not already exist.
        if {[altera_iosubsystem_get_clock_name_from_target $ref_ck_pin] == ""} {
            create_clock -name $ref_ck_pin -period $ip_params(ref_clock_period_ns) $ref_ck_pin
        }
    }

    if {$pll_fclk0_pin != ""} {
        lappend periphery_clocks "${pll_fclk_name}\[0\]"
    }

    if {$pll_fclk1_pin != ""} {
        lappend periphery_clocks "${pll_fclk_name}\[1\]"
    }

    if {$pll_lden0_pin != "" } {
        lappend periphery_clocks "${pll_lden_name}\[0\]"
        if {$sta_flow} {
            set_false_path -from $pll_lden0_pin
        }
    }
    
    if {$pll_lden1_pin != "" } {
        lappend periphery_clocks "${pll_lden_name}\[1\]"
        if {$sta_flow} {
            set_false_path -from $pll_lden1_pin
        }
    }

    # TX exported clock.  This clock runs off its own clock tree, and has its own fclk and loaden.
    if {$ip_params(use_tx_outclock)} {
        set tx_outclock_lvds_clock_tree_inst_name "${lvds_core_instance_name}|phase_shifted_tx_outclock_serdes.lvds_clock_tree_clk_inst"

        set pll_tx_outclock_fclk_tree_name "${lvds_clock_tree_inst_name}|lvds_clk_1"
        set pll_tx_outclock_lden_tree_name "${lvds_clock_tree_inst_name}|loaden_1"

        if {[catch {
            set pll_tx_outclock_fclk_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_tx_outclock_fclk_tree_name]]]
            set pll_tx_outclock_lden_pin [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $pll_tx_outclock_lden_tree_name]]]
        }]} {
            set pll_tx_outclock_fclk_pin ""
            set pll_tx_outclock_lden_pin ""
        }

        if {$pll_tx_outclock_fclk_pin != ""} {
            lappend periphery_clocks $pll_tx_outclock_fclk_name
        }

        if {$pll_tx_outclock_lden_pin != ""} {
            lappend periphery_clocks $pll_tx_outclock_lden_name

            if {$sta_flow} {
                set_false_path -from $pll_tx_outclock_lden_pin
            }
        }
    }

    if {[get_collection_size [get_keepers -nowarn ${lvds_core_instance_name}|*tx_outclock_serdes.serdes_dpa_tx_outclock~tx_internal_reg]] > 0 } {
        set_false_path -from ${lvds_core_instance_name}|*tx_outclock_serdes.ser[*].txin_ufi~ufi_read_reg -to ${lvds_core_instance_name}|*tx_outclock_serdes.serdes_dpa_tx_outclock~tx_internal_reg
    }

    # Create the tx core clock, if using it to clock the core register.  Otherwise, the input clock is forwarded to the core.
    if {$ip_params(use_tx_coreclock)} {
        set cpa_instance_name "${lvds_core_instance_name}|u_lvds_cpa" 
        set cpa_core_clk_out_pin "${cpa_instance_name}|core_clk_out[0]"

        altera_iosubsystem_create_generated_clock \
                -source [altera_iosubsystem_get_clock_source "$cpa_core_clk_out_pin"] \
                -divide_by  $ip_params(cdr_core_divide_by) \
                -duty_cycle 50 -phase $ip_params(loaden_phase) \
                -name "${cpa_core_clk_out_name}" -target "${cpa_core_clk_out_pin}" 
        lappend core_clocks  "${cpa_core_clk_out_name}"

        disable_min_pulse_width "$cpa_instance_name~pa_feedback_div_core0_reg"
        lappend periphery_clocks  "$ref_ck_pin"
    } else {
        lappend core_clocks  "$ref_ck_pin"
    }

    set internal_reg "${lvds_core_instance_name}|tx_channels[*].tx.serdes_dpa_inst~tx_internal_reg"

    # Set multicycle to model actual transfer frequency
    #Set multicycle. The actual multitcycle doesn't matter, except that all bits transfer in the same multicycle.
    set setup_multicyle [expr int($ip_params(j_factor)/2)]
    set_multicycle_path -end -from ${lvds_core_instance_name}|tx_channels[*].tx.ser[*].txin_ufi~ufi_read_reg -to $internal_reg -setup $setup_multicyle
    set_multicycle_path -end -from ${lvds_core_instance_name}|tx_channels[*].tx.ser[*].txin_ufi~ufi_read_reg -to $internal_reg -hold [expr $ip_params(j_factor) -1]
    set_multicycle_path -from ${lvds_core_instance_name}*ufi_write_reg -to ${lvds_core_instance_name}*ufi_read_reg -hold 1
    
    if {$ip_params(j_factor) != 10} {
        set_false_path -from ${lvds_core_instance_name}|tx_channels[*].tx.ser_padding[*].txpadding_ufi~ufi_read_reg -to $internal_reg
    }

    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|phase_shifted_tx_outclock_serdes.serdes_dpa_tx_outclock~tx_internal_reg"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|phase_shifted_tx_outclock_serdes.serdes_dpa_tx_outclock|fclk_in[1]"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|phase_shifted_tx_outclock_serdes.lvds_clock_tree_inst|phy_clk_out_0[*]"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|std_tx_outclock_serdes.serdes_dpa_tx_outclock~tx_internal_reg"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|std_tx_outclock_serdes.serdes_dpa_tx_outclock~tx_internal_reg__nff"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|std_tx_outclock_serdes.serdes_dpa_tx_outclock|fclk_in[1]"
    disable_min_pulse_width_no_warn "${lvds_core_instance_name}|std_tx_outclock_serdes.lvds_clock_tree_inst|phy_clk_out_0[*]"
    disable_min_pulse_width $internal_reg
    disable_min_pulse_width "${lvds_core_instance_name}|tx_channels[*].tx.serdes_dpa_inst|fclk_in[1]"
    disable_min_pulse_width "${lvds_core_instance_name}|tx_channels[*].tx.lvds_clock_tree_inst|phy_clk_out_0[*]"

    if {$::TCCS_USE_MICRO == 0 && $sta_flow} {
        set_false_path -from ${lvds_core_instance_name}|tx_channels[*].tx.serdes_dpa_inst~tx_internal_reg
    }


    # Set max delay constraints in FIT to avoid ridiculously long path but cut
    # the timing path in STA since we have synchronizers
    set dpa_inst_name ${lvds_core_instance_name}|tx_channels[*].tx.serdes_dpa_inst
    set max_delay [expr 2*$ip_params(slow_clock_period_ns)]
    set min_delay [expr 0 - $ip_params(slow_clock_period_ns)]

    set_max_delay_in_fit_or_false_path_in_sta_through_no_warn ${dpa_inst_name}|fiforst $max_delay
    set_max_delay_in_fit_or_false_path_in_sta_through_no_warn ${dpa_inst_name}|dparst $max_delay
    set_max_delay_in_fit_or_false_path_in_sta_through_no_warn ${dpa_inst_name}|bsliprst $max_delay

    # ------------------------- #
    # -                       - #
    # --- CLOCK UNCERTAINTY --- #
    # -                       - #
    # ------------------------- #


    if {($fit_flow == 1 || $sta_flow == 1)} {

        # Build target to clock names cache
        #Needed for external PLL mode because the clock name is not the same as the pin name
        ##Ensure that the pll SDC is sourced first.  
        if {$ip_params(use_external_pll)} { 
            if { ([get_collection_size [get_clocks -nowarn]] == 0) } {
                post_message -type critical_warning "Please ensure the pll IP is before the lvds IP in the QSF so that clocks are created properly."
            }
        }
        
        array unset target_to_clock_name_map *
        foreach_in_collection iclk_name [get_clocks] {
            if { ![is_clock_defined $iclk_name] } {
               continue
            }
            if { [catch { [get_node_info -name [get_clock_info -target $iclk_name]] } itarget ] } {
                continue
            }
            lappend target_to_clock_name_map($itarget) [get_clock_info -name $iclk_name]
        }

        # Get extra periphery clock uncertainty
        set periphery_clock_uncertainty [list]
        altera_iosubsystem_get_periphery_clock_uncertainty periphery_clock_uncertainty

        if {$fit_flow == 1} {
            set overconstraints [list $ip_params(OC_C2P_SU) $ip_params(OC_C2P_H) $ip_params(OC_P2C_SU) $ip_params(OC_P2C_H)]
        } else {
            set overconstraints [list 0.0 0.0 0.0 0.0]
        }

        # Now loop over core/periphery clocks and set clock uncertainty
        set i_core_clock 0
        foreach core_clock $core_clocks {
            if {$core_clock != ""} {

                if {[info exists target_to_clock_name_map($core_clock)]} {
                    set core_clock_target $target_to_clock_name_map($core_clock)
                } else {
                    set core_clock_target $core_clock
                }
                if {[get_collection_size [get_clocks -nowarn $core_clock_target]]==0} {
                    continue
                }
                set i_periphery_clock 0
                foreach { periphery_clock } $periphery_clocks {

                    if {[info exists target_to_clock_name_map($periphery_clock)]} {
                        set periphery_clock_target $target_to_clock_name_map($periphery_clock)
                    } else {
                        set periphery_clock_target $periphery_clock
                    }
                    if {[get_collection_size [get_clocks -nowarn $periphery_clock_target]]==0} {
                        continue
                    }
                    # For these transfers it is safe to use the -add option since we rely on
                    # derive_clock_uncertainty for the base value.
                    set add_to_derived "-add"
                    set c2p_su         [expr [lindex $overconstraints 0] + [lindex $periphery_clock_uncertainty 0]]
                    set c2p_h          [expr [lindex $overconstraints 1] + [lindex $periphery_clock_uncertainty 1]]
                    set p2c_su         [expr [lindex $overconstraints 2] + [lindex $periphery_clock_uncertainty 2]]
                    set p2c_h          [expr [lindex $overconstraints 3] + [lindex $periphery_clock_uncertainty 3]]


                    set_clock_uncertainty -from [get_clocks $core_clock_target] -to   [get_clocks $periphery_clock_target] -setup $add_to_derived $c2p_su
                    set_clock_uncertainty -from [get_clocks $core_clock_target] -to   [get_clocks $periphery_clock_target] -hold  $add_to_derived $c2p_h
                    set_clock_uncertainty -to   [get_clocks $core_clock_target] -from [get_clocks $periphery_clock_target] -setup $add_to_derived $p2c_su
                    set_clock_uncertainty -to   [get_clocks $core_clock_target] -from [get_clocks $periphery_clock_target] -hold  $add_to_derived $p2c_h

                    incr i_periphery_clock
                }
            }
            incr i_core_clock
        }
    }


}

add_rskm_report_command altera_iosubsystem_report_rskm
add_tccs_report_command altera_iosubsystem_report_tccs
