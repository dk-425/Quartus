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


# Check whether a project has already been opened
if {[catch {get_current_project}]} {
	post_message -type error "Please open a project first"
	return
}

proc altera_iosubsystem_create_generated_clock {args} {
   array set opts {  -invert 0 \
      -add 0 \
      -remove_clock 1 \
      -name "" \
      -target "" \
      -source "" \
      -multiply_by 1 \
      -divide_by 1 \
      -phase 0 \
		-duty_cycle 50.00  }

   array set opts $args

   set multiply_by [expr int($opts(-multiply_by))]
   if {[expr $multiply_by - $opts(-multiply_by)] != 0.0} {
      post_message -type error "Specify an integer ranging from 0 to 99999999 for the option -multiply_by"
      return ""
   }
	
   if {$opts(-remove_clock)==1} {
      set clock_name_to_remove [altera_iosubsystem_get_clock_name_from_target $opts(-target)]
      if {$clock_name_to_remove != ""} {
         foreach i $clock_name_to_remove {
            remove_clock  [get_clock_info -name $i]
         }
      }
   }
	
   set extra_params [list]
   if {$opts(-invert)==1} {
      lappend extra_params "-invert"
   }
   if {$opts(-add)==1} {
      lappend extra_params "-add"
   }
   
   if {$extra_params == ""} {
      eval {create_generated_clock -name $opts(-name) -source $opts(-source) -multiply_by $multiply_by -divide_by $opts(-divide_by) -phase $opts(-phase) -duty_cycle $opts(-duty_cycle) $opts(-target)}
   } else {
      eval {create_generated_clock {*}$extra_params -name $opts(-name) -source $opts(-source) -multiply_by $multiply_by -divide_by $opts(-divide_by) -phase $opts(-phase) -duty_cycle $opts(-duty_cycle) $opts(-target)}
   }
   
}

proc altera_iosubsystem_get_clock_name_from_target { target } {
   set clock_name [list]
   foreach_in_collection i [get_clocks -nowarn] {
      if {![is_clock_defined $i]} {
         continue
      }
      if { [catch { get_node_info -name  [get_clock_info -targets $i] } i_target ] } {
         continue
      }
      if {[string equal $target $i_target]} {
         lappend clock_name [get_clock_info -name $i]
      }
   }
   return $clock_name
}

proc altera_iosubsystem_get_ip_instance_names { libname corename } {
   set inst_keepers [get_keepers "*$libname*|$corename:arch_inst*" ]
   set channel_keepers [get_keepers "*channels*0*" ]

   set_project_mode -always_show_entity_name on

   set inst_regexp {(^.*\m}
   append inst_regexp "$libname"
   append inst_regexp {\M.*)\|}
   append inst_regexp "$corename"
   append inst_regexp {:arch_inst|channels[0]}

   foreach_in_collection keeper $inst_keepers {
      if {[regexp -- $inst_regexp [ get_node_info -name $keeper ] -> hier_name] == 1} {
         set instance_array([altera_iosubsystem_get_timequest_name $hier_name]) 1
      }
   }
   foreach_in_collection keeper $channel_keepers {
      if {[regexp -- $inst_regexp [ get_node_info -name $keeper ] -> hier_name] == 1} {
         set instance_array([altera_iosubsystem_get_timequest_name $hier_name]) 1
      }
   }

   set instance_list [array names instance_array]

   set_project_mode -always_show_entity_name qsf

   if {[ llength $instance_list ] == 0} {
      post_message -type critical_warning "The auto-constraining script was not able to detect any instance for lib < $libname > core < $corename >"
      post_message -type critical_warning "Make sure the core < $corename > is instantiated within another component (wrapper)"
      post_message -type critical_warning "and it's not the top-level for your project"
   }

   return $instance_list
}

#----------------------------------------------------------------
#
proc altera_iosubsystem_traverse_fanin_up_to_depth { node_id match_command edge_type results_array_name depth} {
#
#Description: Calls the recurse procedure to find nodes, scaling
#             depth if necessary to account for extended netlist
#             (which includes REs) for the hyper-retimer
#
#----------------------------------------------------------------
   upvar 1 $results_array_name results

   set depth [expr {$depth * 10}]
   altera_iosubsystem_traverse_fanin_up_to_depth_recurse $node_id $match_command $edge_type results $depth
}

#----------------------------------------------------------------
#
proc altera_iosubsystem_traverse_fanin_up_to_depth_recurse { node_id match_command edge_type results_array_name depth} {
#
#Description: Recurses through the timing netlist starting from the given
#             node_id through edges of type edge_type to find nodes
#             satisfying match_command.
#             Recursion depth is bound to the specified depth.
#             Adds the resulting TDB node ids to the results_array.
#
#----------------------------------------------------------------
   upvar 1 $results_array_name results

   if {$depth < 0} {
      error "Internal error: Bad timing netlist search depth"
   }
   set fanin_edges [get_node_info -${edge_type}_edges $node_id]
   set number_of_fanin_edges [llength $fanin_edges]
   for {set i 0} {$i != $number_of_fanin_edges} {incr i} {
      set fanin_edge [lindex $fanin_edges $i]
      set fanin_id [get_edge_info -src $fanin_edge]
      if {$match_command == "" || [eval $match_command $fanin_id] != 0} {
         set results($fanin_id) 1
      } elseif {$depth == 0} {
      } else {
         altera_iosubsystem_traverse_fanin_up_to_depth_recurse $fanin_id $match_command $edge_type results [expr {$depth - 1}]
      }
   }
}

proc altera_iosubsystem_get_timequest_name { full_hier_name } {
   set tq_name ""
   set tq_name_list {}
   set lib_inst_pair_list [split $full_hier_name "|"]
   foreach i_lib_inst_pair_str $lib_inst_pair_list {
      set i_lib_inst_pair [split $i_lib_inst_pair_str ":"]
      if {[llength $i_lib_inst_pair] > 1} {
         lappend tq_name_list [join [lrange $i_lib_inst_pair 1 end] :]
      } else {
         lappend tq_name_list [lindex $i_lib_inst_pair end]
      }
   }
   set tq_name [join $tq_name_list "|"]
   return $tq_name
}

proc altera_iosubsystem_get_input_clk_id { pll_inclk_id } {

   array set results_array [list]

   altera_iosubsystem_traverse_fanin_up_to_depth $pll_inclk_id altera_iosubsystem_is_node_type_pin clock results_array 20
   if {[array size results_array] == 1} {
      set pin_id [lindex [array names results_array] 0]
      set result $pin_id
   } else {
      set result -1
   }

   return $result
}

proc altera_iosubsystem_get_src_pin_name { target_node_name {max_depth 5} } {
   if {[expr [get_global_assignment -name "HYPER_RETIMER"] == "ON"]} {
	   set max_depth [expr {$max_depth * 10}]
   }

   altera_iosubsystem_get_src_pin_name_recurse $target_node_name $max_depth
}

proc altera_iosubsystem_get_src_pin_name_recurse { target_node_name {max_depth 5} } {
   set prefix [join [lrepeat [expr 5-$max_depth+1] "\t"] ""]

   if {$max_depth == 0} {
      return $target_node_name
   }

   set catch_get_src [catch {get_node_info -name [get_edge_info -src [get_node_info -clock_edges $target_node_name]]} src_node_name] 
   
   if {$catch_get_src == 0} {
      if {[altera_iosubsystem_is_node_type_pin $src_node_name]} {
         return $src_node_name 
      } else {
         set recur_src_node_name [altera_iosubsystem_get_src_pin_name_recurse $src_node_name [expr $max_depth-1]]
         if {$recur_src_node_name == $src_node_name} {
            return $target_node_name
         } else {
            return $recur_src_node_name
         }
      }
   } else {
      return $target_node_name
   }
}

#----------------------------------------------------------------
#
proc altera_iosubsystem_is_node_type_pin { node_id } {
#
#Description: Given a node, tells whether or not it is a reg
#
#----------------------------------------------------------------
   set node_type [get_node_info -type $node_id]
   if {$node_type == "port"} {
      set result 1
   } else {
      set result 0
   }
   return $result
}


#----------------------------------------------------------------
#
proc altera_iosubsystem_is_node_pll_in_pin {node_id} {
#
#Description: Given a node, tells whether or not it is a PLL input pin
#
#----------------------------------------------------------------
	set node_type [get_node_info -type $node_id]
	set cell_wysiwyg_type [get_cell_info -wysiwyg_type [get_node_info -cell $node_id]]
	if {$node_type == "pin" && $cell_wysiwyg_type == "tennm_iopll" && [get_pin_info -is_in_pin $node_id] == 1} {
		set result 1
	} else {
		set result 0
	}
	return $result
}

#----------------------------------------------------------------
#
proc altera_iosubsystem_is_node_pll_out_pin {node_id} {
#
#Description: Given a node, tells whether or not it is a PLL output pin
#
#----------------------------------------------------------------
	set node_type [get_node_info -type $node_id]
	set cell_wysiwyg_type [get_cell_info -wysiwyg_type [get_node_info -cell $node_id]]
	if {$node_type == "pin" && $cell_wysiwyg_type == "tennm_iopll" && [get_pin_info -is_out_pin $node_id] == 1} {
		set result 1
	} else {
		set result 0
	}
	return $result
}

#----------------------------------------------------------------
#
proc altera_iosubsystem_get_src_pll_in_pin {node_id} { 
#
#Description: Given a node, find all fanins which are PLL input pins
#
#----------------------------------------------------------------
	array set result_array [list]
	
	altera_iosubsystem_traverse_fanin_up_to_depth $node_id altera_iosubsystem_is_node_pll_in_pin clock result_array 10
	return [array names result_array]

}

#----------------------------------------------------------------
#
proc altera_iosubsystem_get_src_pll_out_pin {node_id} { 
#
#Description: Given a node, find all fanins which are PLL output pins
#
#----------------------------------------------------------------
	array set result_array [list]
	
	altera_iosubsystem_traverse_fanin_up_to_depth $node_id altera_iosubsystem_is_node_pll_out_pin clock result_array 10
	return [array names result_array]

}


proc altera_iosubsystem_get_pll_inclock_name_list { lvds_inst_name_list } {

	set pll_inclock_name_list {}
	
	foreach i_lvds_inst_name $lvds_inst_name_list {
		set i_pll_inclk_name [altera_iosubsystem_get_pll_inclock_name $i_lvds_inst_name]
		lappend pll_inclock_name_list $i_pll_inclk_name
	}
	
	return $pll_inclock_name_list
}

proc altera_iosubsystem_get_pll_inclock_name {lvds_instance_name} {
	
	set lvds_core_instance_name "${lvds_instance_name}|arch_inst"
	set pll_instance_name "$lvds_core_instance_name|internal_pll.pll_inst|tennm_pll" 

	
	set catch_exception [catch {
		set pll_refclk_node [get_nodes "$pll_instance_name|refclk[0]"]
		set ref_ck_port_id [altera_iosubsystem_get_input_clk_id $pll_refclk_node]
		set ref_ck_port_name [get_port_info -name $ref_ck_port_id]
	} ]
	if {$catch_exception == 0} {
		set ref_ck_pin $ref_ck_port_name
	} else {
		set ref_ck_pin "${lvds_instance_name}_inclock_export"
	}

	return $ref_ck_pin
}

proc altera_iosubsystem_get_current_timequest_report_folder {} {

   set catch_exception [catch {get_current_timequest_report_folder} error_message]
   if {[regexp ERROR $error_message] == 1} {
      return "ReportDDR"
   } else {
      return [get_current_timequest_report_folder]
   }
}

proc altera_iosubsystem_report_rskm {} {

   set RX_NON_DPA_IP_TRAIL "|core|arch_inst|rx_channels[0].rx_non_dpa.serdes_dpa_inst~rx_internal_reg"
   set RX_NON_DPA_REG_TRAIL {|core|arch_inst|rx_channels[*].rx_non_dpa.serdes_dpa_inst~rx_internal_reg}
   set RX_NON_DPA_FCLK_TRAIL "|core|arch_inst|*_channels[*].*.lvds_clock_tree_inst|lvds_clk_0"
   set RX_NON_DPA_LVDSIN_TRAIL {|core|arch_inst|rx_channels[*].rx_non_dpa.serdes_dpa_inst|fclk_in}

   set orig_op_cond [get_operating_conditions]

	set sw 300

   load_package report
   catch {load_report} load_report_out
   set report_not_loaded [regexp "ERROR" $load_report_out]
   if {$report_not_loaded == 1} {
      create_report_database -type cmp
      create_report_database -type taw
   }
	
	set current_tq_folder_name [altera_iosubsystem_get_current_timequest_report_folder]
   if {[string match "*GUI*" $current_tq_folder_name]} {
      set is_gui 1
   } else {
      set is_gui 0
   }
   if {[get_report_panel_id $current_tq_folder_name] == -1} {
      set panel_id [create_report_panel -folder $current_tq_folder_name]
   }

   set non_dpa_keepers_collection [get_keepers -nowarn "*${RX_NON_DPA_IP_TRAIL}"]
   if {[get_collection_size $non_dpa_keepers_collection] == 0} {
      post_message -type info "No Non-DPA RX instances detected to report RSKM"
   }

   foreach_in_collection i_non_dpa_keeper $non_dpa_keepers_collection {
      set keeper_name [altera_iosubsystem_get_timequest_name [get_node_info -name $i_non_dpa_keeper]]
      set lvds_instance_name [string range $keeper_name 0 [expr [string length $keeper_name] - [string length $RX_NON_DPA_IP_TRAIL] - 1]]
      set panel_name $lvds_instance_name
      set fclk_name "${lvds_instance_name}${RX_NON_DPA_FCLK_TRAIL}"
      foreach_in_collection lvds_node [get_nodes -nowarn "$lvds_instance_name|*|fclk"] {
         set fclk_name [get_node_info -name [get_edge_info -src [get_node_info -clock_edges [lindex $lvds_node 0]]]]
         break
      }
      set reg_name "${lvds_instance_name}${RX_NON_DPA_REG_TRAIL}"
      set lvdsin_name "${lvds_instance_name}${RX_NON_DPA_LVDSIN_TRAIL}"

      if { ! [string match "${current_tq_folder_name}*" $panel_name] } {
         set panel_name "${current_tq_folder_name}||$panel_name"
      }

      set panel_id [get_report_panel_id $panel_name]
      if {$panel_id != -1} {
         delete_report_panel -id $panel_id
      }

      set panel_id [create_report_panel -table $panel_name]

      if {$::RSKM_USE_MICRO == 1} {
         if {$is_gui == 1} {
            set setup_rpt [report_timing -setup -through $lvdsin_name -to [get_keepers $reg_name] ]
            set setup [lindex $setup_rpt 1]
            set hold_rpt [report_timing -hold -through $lvdsin_name -to [get_keepers $reg_name] ]
            set hold [lindex $hold_rpt 1]
            set rskm [expr min($setup, $hold)]
            post_message -type info "Micro RSKM of <$lvds_instance_name> = $rskm"

            if { ! [string match "${current_tq_folder_name}*" $panel_name] } {
               set panel_name "${current_tq_folder_name}||$panel_name"
            }

            add_row_to_table -id $panel_id [list "RSKM" "Worst-Case Setup Slack" "Worst-Case Hold Slack" "RCCS"]
            add_row_to_table -id $panel_id [list $rskm $setup $hold $::RCCS]
         } else {
            set rskm "_UNDEFINED"
            set header_row [list "LVDS Receiver Worst-case RSKM"]
            set data_row [list $rskm]

            foreach_in_collection i_op [get_available_operating_conditions] { 
               set i_op_name [get_operating_conditions_info -name $i_op] 
               set_operating_conditions $i_op
               update_timing_netlist
               set setup_rpt_at_op [report_timing -setup -through $lvdsin_name -to [get_keepers $reg_name] ]
               set setup_at_op [lindex $setup_rpt_at_op 1]
               set hold_rpt_at_op [report_timing -hold -through $lvdsin_name -to [get_keepers $reg_name] ]
               set hold_at_op [lindex $hold_rpt_at_op 1]
               if {$rskm == "_UNDEFINED"} {
                  set rskm [expr min($setup_at_op, $hold_at_op)]
               } else {
                  set rskm [expr min($rskm, $setup_at_op, $hold_at_op)]
               }

               lappend header_row "Setup:$i_op_name"
               lappend data_row $setup_at_op
               lappend header_row "Hold:$i_op_name"
               lappend data_row $hold_at_op
            }

            lset data_row 0 $rskm

            add_row_to_table -id $panel_id $header_row
            add_row_to_table -id $panel_id $data_row

         }
      } else {
         set fclk_target_name [get_node_info -name [get_edge_info -src [get_node_info -clock_edges $fclk_name]]]
         set fclk_setting_name [altera_iosubsystem_get_clock_name_from_target $fclk_target_name]
         set period [expr [get_clock_info -period [get_clocks [lindex $fclk_setting_name 0]]] * 1000]
         set rskm [expr 0.5 * ($period - $sw - $::RCCS)]
         post_message -type info "RSKM of <$lvds_instance_name> = $rskm"

         add_row_to_table -id $panel_id [list "RSKM" "LVDS Period" "Sampling Window" "RCCS"]
         add_row_to_table -id $panel_id [list $rskm $period $sw $::RCCS]

      }
   }

   if {$is_gui == 0} {
      set_operating_conditions $orig_op_cond
      update_timing_netlist
   }
}

proc altera_iosubsystem_report_tccs {} {
   set TX_IP_TRAIL "|core|arch_inst|tx_channels[0].tx.serdes_dpa_inst~tx_internal_reg"

   set orig_op_cond [get_operating_conditions]

   load_package report
   catch {load_report} load_report_out
   set report_not_loaded [regexp "ERROR" $load_report_out]
   if {$report_not_loaded == 1} {
      create_report_database -type cmp
      create_report_database -type taw
   }
	
	set current_tq_folder_name [altera_iosubsystem_get_current_timequest_report_folder]
   if {[string match "*GUI*" $current_tq_folder_name]} {
      set is_gui 1
   } else {
      set is_gui 0
   }

   if {[get_report_panel_id $current_tq_folder_name] == -1} {
      set panel_id [create_report_panel -folder $current_tq_folder_name]
   }

   set tx_keepers_collection [get_keepers -nowarn "*${TX_IP_TRAIL}"]
   if {[get_collection_size $tx_keepers_collection] == 0} {
      post_message -type info "No TX instances detected to report TCCS"
   }

   foreach_in_collection i_tx_keeper $tx_keepers_collection {
      set keeper_name [altera_iosubsystem_get_timequest_name [get_node_info -name $i_tx_keeper]]
		set lvds_instance_name [string range $keeper_name 0 [expr [string length $keeper_name] - [string length $TX_IP_TRAIL] - 1]]
      set panel_name [string range $keeper_name 0 [expr [string length $keeper_name] - [string length $TX_IP_TRAIL] - 1]]

      if { ! [string match "${current_tq_folder_name}*" $panel_name] } {
         set panel_name "${current_tq_folder_name}||$panel_name"
      }

      set panel_id [get_report_panel_id $panel_name]
      if {$panel_id != -1} {
         delete_report_panel -id $panel_id
      }
      
      set panel_id [create_report_panel -table $panel_name]
		set i_tccs 0


      if {$::TCCS_USE_MICRO == 0} {
         set header_row [list "LVDS Transmitter Constant TCCS"]
         set data_row [list 330]
      } else {
         if {$is_gui == 1} {
            set header_row [list "LVDS Transmitter TCCS"]
            set i_tccs [lindex [report_skew -from "${lvds_instance_name}|*~tx_internal_reg" -npaths 100] 1]
            set data_row [list $i_tccs]
         } else {
         
            set header_row [list "LVDS Transmitter Worst-case TCCS"]
            set data_row [list $i_tccs]
            

            foreach_in_collection i_op [get_available_operating_conditions] { 
               set i_op_name [get_operating_conditions_info -name $i_op] 
               set_operating_conditions $i_op
               update_timing_netlist
               set i_tccs_at_op [lindex [report_skew -from "${lvds_instance_name}|*~tx_internal_reg" -npaths 100] 1]
               lappend header_row $i_op_name
               lappend data_row $i_tccs_at_op
               if {$i_tccs < $i_tccs_at_op} {
                  set i_tccs $i_tccs_at_op
               }
            }

            lset data_row 0 $i_tccs
         }
      }
      add_row_to_table -id $panel_id $header_row
      add_row_to_table -id $panel_id $data_row

   }

   if {$is_gui == 0} {
      set_operating_conditions $orig_op_cond
      update_timing_netlist
   }

	
}

proc altera_iosubsystem_round_3dp { x } {
   return [expr { round($x * 1000) / 1000.0  } ]
}

proc altera_iosubsystem_get_periphery_clock_uncertainty { results_array_name } {
   upvar 1 $results_array_name results

#  set speed_temp_grade [get_speedgrade_name]

   set c2p_setup  [altera_iosubsystem_round_3dp 0.0]
   set c2p_hold   [altera_iosubsystem_round_3dp 0.0]
   set p2c_setup  [altera_iosubsystem_round_3dp 0.0]
   set p2c_hold   [altera_iosubsystem_round_3dp 0.0]

   set results [list $c2p_setup $c2p_hold $p2c_setup $p2c_hold]
}

#proc: altera_iosubsystem_get_clock_source
#
#  Get the first register mapped clock source by traversing fanins of clock
#  edges.  A node is deemed "register mapped" if it does not contain
#  `io48tilelvds`, hence this function is valid only for the IO subsystem
#
# parameters:
#
# node - TimeQuest node to get clock source of
#
# returns:
#
# Register maped clock node.
#

proc altera_iosubsystem_get_clock_source {node} {
   set clock_node ""
   catch {get_node_info -name [get_edge_info -src [get_node_info -clock_edges $node]]} clock_node

   if {$clock_node eq ""} {
      post_message -type error "Failed to find clock source of node '$node'"
   }

   if {[regexp {io48tilelvds} $clock_node]} {
       return [altera_iosubsystem_get_clock_source $clock_node]
   }

   return $clock_node
}

#Set max delay if in fit flow, otherwise set false path from "from_pin" to
#fanouts of "to_pin"
proc set_max_delay_in_fit_or_false_path_in_sta_to_fanout {from_pin to_pin delay} {
    upvar 1 fit_flow l_fit_flow

    set fanouts [get_fanouts $to_pin]
    if {$l_fit_flow == 1} { 
        set_max_delay -from $from_pin -to $fanouts $delay
    } else { 
        set_false_path -from $from_pin -to $fanouts
    } 
}

#Set max delay if in fit flow, otherwise set false path from "from_pin" to
#fanouts of "to_pin"
#Check for existence of fanouts before doing so.
proc set_max_delay_in_fit_or_false_path_in_sta_to_fanout_no_warn {from_pin to_pin delay} {
    upvar 1 fit_flow l_fit_flow

    if {[get_collection_size [get_pins -nowarn $to_pin]] <= 0 } { return }
    set fanouts [get_fanouts $to_pin]
    if {[get_collection_size $fanouts] <= 0} { return }

    if {$l_fit_flow == 1} { 
        set_max_delay -from $from_pin -to $fanouts $delay
    } else { 
        set_false_path -from $from_pin -to $fanouts
    } 
}

#Set max delay if in fit flow, otherwise set false path through "through_pin"
proc set_false_path_in_sta_through_no_warn {through_pin delay} {
    upvar 1 fit_flow l_fit_flow

    if {$l_fit_flow != 1} { 
    set through_pin_collection [get_pins -compatibility_mode -nowarn $through_pin]
    if {[get_collection_size $through_pin_collection] <= 0} { return }

        set_false_path -through $through_pin_collection
    } 
}

#Set max delay if in fit flow, otherwise set false path through "through_pin"
proc set_max_delay_in_fit_or_false_path_in_sta_through_no_warn {through_pin delay} {
    upvar 1 fit_flow l_fit_flow

    set through_pin_collection [get_pins -compatibility_mode -nowarn $through_pin]
    if {[get_collection_size $through_pin_collection] <= 0} { return }

    if {$l_fit_flow == 1} { 
        set_max_delay -through $through_pin_collection $delay
    } else { 
        set_false_path -through $through_pin_collection
    } 
}

#Set min delay if in fit flow, otherwise set false path from "from_pin" to
#fanouts of "to_pin"
proc set_min_delay_in_fit_or_false_path_in_sta_to_fanout {from_pin to_pin delay} {
    upvar 1 fit_flow l_fit_flow

    set fanouts [get_fanouts $to_pin]
    if {$l_fit_flow == 1} { 
        set_min_delay -from $from_pin -to $fanouts $delay
    } else { 
        set_false_path -from $from_pin -to $fanouts
    } 
}

#Set min delay if in fit flow, otherwise set false path from "from_pin" to
#fanouts of "to_pin"
#Check for existence of fanouts before doing so.
proc set_min_delay_in_fit_or_false_path_in_sta_to_fanout_no_warn {from_pin to_pin delay} {
    upvar 1 fit_flow l_fit_flow

    if {[get_collection_size [get_pins -nowarn $to_pin]] <= 0 } { return }
    set fanouts [get_fanouts $to_pin]
    if {[get_collection_size $fanouts] <= 0} { return }

    if {$l_fit_flow == 1} { 
        set_min_delay -from $from_pin -to $fanouts $delay
    } else { 
        set_false_path -from $from_pin -to $fanouts
    } 
}

#Set min delay if in fit flow, otherwise set false path through "through_pin"
proc set_min_delay_in_fit_or_false_path_in_sta_through_no_warn {through_pin delay} {
    upvar 1 fit_flow l_fit_flow

    set through_pin_collection [get_pins -compatibility_mode -nowarn $through_pin]
    if {[get_collection_size $through_pin_collection] <= 0} { return }

    if {$l_fit_flow == 1} { 
        set_min_delay -through $through_pin_collection $delay
    } else { 
        set_false_path -through $through_pin_collection
    } 
}

#Disable min pulse width check to keeper, if it exists.
proc disable_min_pulse_width_no_warn {keeper} {
    set keeper_collection [get_nodes -nowarn $keeper]
    if {[get_collection_size $keeper_collection] <= 0} { return }

    disable_min_pulse_width $keeper
}


#proc: altera_iosubsystem_get_iopll_atom
#
#  Given a lvds core instance name it finds the IOPLL its connected to.
#  Checks via both fclk and loaden.
#
#  parameters:
#  lvds_core_instance_name -> string (the one ending in "arch_inst")
#  is_tx_outclock -> int for different search types, usually based on LVDS mode
#
#  returns:
#  atom id (empty if not found)
#
proc altera_iosubsystem_get_iopll_atom { lvds_core_instance_name is_tx_outclock } {
    set atom_type IOPLL
    set search_iter 10
    set pll_atom [altera_iosubsystem_get_atom_by_lvds_input $lvds_core_instance_name $is_tx_outclock $atom_type $search_iter "fclk"]
    if {$pll_atom ne ""} {
        return $pll_atom
    }
    set pll_atom [altera_iosubsystem_get_atom_by_lvds_input $lvds_core_instance_name $is_tx_outclock $atom_type $search_iter "loaden"]
    if {$pll_atom ne ""} {
        return $pll_atom
    }
    set pll_atom [altera_iosubsystem_get_atom_by_lvds_input $lvds_core_instance_name $is_tx_outclock $atom_type $search_iter "dpa_reg"]
    return $pll_atom
}

#proc: altera_iosubsystem_get_clock_tree_atom
#
#  Given a lvds core instance name it finds the clock tree its connected to.
#  Checks via both fclk and loaden.
#
#  parameters:
#  lvds_core_instance_name -> string (the one ending in "arch_inst")
#  is_tx_outclock -> int for different search types, usually based on LVDS mode
#
#  returns:
#  atom id (empty if not found)
#

#proc: altera_iosubsystem_get_atom_by_lvds_input
#
#  Searches for an atom, starting from the lvds_input of the LVDS
#
#  returns:
#  atom id (empty if not found)
#
proc altera_iosubsystem_get_atom_by_lvds_input { lvds_core_instance_name is_tx_outclock atom_type search_iter lvds_input } {
    set lvds_core_instance_name [regsub -all {\[\d*\]} $lvds_core_instance_name "\[\*\]"]

    set node [altera_iosubsystem_get_lvds_node $lvds_core_instance_name $is_tx_outclock $lvds_input]
    if {$node eq ""} {
        return ""
    }
    set found_atom [altera_iosubsystem_search_back_from_node_to_atom $node $atom_type $search_iter]
    return $found_atom
}

#proc: altera_iosubsystem_get_lvds_node
#
#  Picks the correct LVDS node based on mode
#
#  returns:
#  LVDS node
#
proc altera_iosubsystem_get_lvds_node { lvds_core_instance_name is_tx_outclock lvds_input } {
    set node ""
    if {$is_tx_outclock == 1} {
        foreach_in_collection node [get_nodes -nowarn "$lvds_core_instance_name*channel*$lvds_input*"] { break }
    } elseif {$is_tx_outclock == 2} {
        foreach_in_collection node [get_nodes -nowarn "$lvds_core_instance_name*$lvds_input*"] { break }
    } else {
        foreach_in_collection node [get_nodes -nowarn "$lvds_core_instance_name*$lvds_input*"] { break }
    }
    return $node
}

#proc: altera_iosubsystem_node_is_type
#
#  Check if node has this atom type
#
#  parameters:
#  node -> the node to check
#  atom_type -> string saying type of atom to check
#
#  returns:
#  Empty if mismatch, atom id if match
#
proc altera_iosubsystem_node_is_type { node atom_type } {
    set cell [get_node_info -cell $node]
    set cell_name [get_cell_info -name $cell]                
    set ix [string last _ $cell]
    if {$ix < 0} {
        return ""
    }
    incr ix 1
    set cell_id [string range $cell $ix [string length $cell]]
    set cell_type [get_atom_node_info -key TYPE -node $cell_id]

    if {![string match -nocase "*$atom_type*" $cell_type]} {
        return ""
    }

    set atom_name [get_atom_node_info -key NAME -node $cell_id]
    if {$atom_name eq $cell_name} {
        return $cell_id
    }
    return ""
}

#proc: altera_iosubsystem_search_back_from_node_to_atom
#
#  DFS from node backwards to find the atom of atom_type.
#  Use clock edges for the traversal
#
#  parameters:
#  node -> the node to start searching from
#  atom_type -> string saying type of atom to check
#  search_iter -> Maximum hops to take
#
#  returns:
#  Empty if not found, atom id if found
#
proc altera_iosubsystem_search_back_from_node_to_atom { node atom_type search_iter } {
    set found_node [altera_iosubsystem_node_is_type $node $atom_type]
    if {$found_node ne ""} {
        return $found_node
    }
    if {$search_iter <= 0} {
        return ""
    }
    incr search_iter -1
    foreach edge [get_node_info -clock_edges $node] {
        set src_node [get_edge_info -src $edge]
        set found_node [altera_iosubsystem_search_back_from_node_to_atom $src_node $atom_type $search_iter]
        if {$found_node ne ""} {
            return $found_node
        }
    }
    return ""
}


proc get_iopll_clocks { iopll_atom } {
   set pll_name [get_atom_node_info -key NAME -node $iopll_atom]

    set clk_root $pll_name 
    for {set i 0} {$i < 2 } {incr i} {
        set ix [string last | $clk_root]
         if {$ix >= 0} {
             incr ix -1
             set clk_root [string range $clk_root 0 $ix]
         }
    }
    
    return [get_clocks $clk_root*]

}


proc convert_bigtime_period_ns {param} {
    set param_unitless [string trimright $param {MHz}]
    return [expr (1/$param_unitless)*1000]
}


proc convert_ps_to_degrees {param period} {
    return [expr ([string trimright $param ps])*360/$period]
}


set ::RSKM_USE_MICRO 0
set ::TCCS_USE_MICRO 0
