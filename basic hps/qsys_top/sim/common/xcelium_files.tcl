source [file join [file dirname [info script]] ./../../../ip/qsys_top/emif_calbus_0/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/qsys_top_onchip_memory2_0/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/rst_in/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/clk_100/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/agilex_hps/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/qsys_top_pio_1/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/user_rst_clkgate_0/sim/common/xcelium_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/qsys_top/emif_hps/sim/common/xcelium_files.tcl]

namespace eval qsys_top {
  proc get_design_libraries {} {
    set libraries [dict create]
    set libraries [dict merge $libraries [emif_calbus_0::get_design_libraries]]
    set libraries [dict merge $libraries [qsys_top_onchip_memory2_0::get_design_libraries]]
    set libraries [dict merge $libraries [rst_in::get_design_libraries]]
    set libraries [dict merge $libraries [clk_100::get_design_libraries]]
    set libraries [dict merge $libraries [agilex_hps::get_design_libraries]]
    set libraries [dict merge $libraries [qsys_top_pio_1::get_design_libraries]]
    set libraries [dict merge $libraries [user_rst_clkgate_0::get_design_libraries]]
    set libraries [dict merge $libraries [emif_hps::get_design_libraries]]
    dict set libraries altera_merlin_axi_translator_1931    1
    dict set libraries altera_merlin_slave_translator_191   1
    dict set libraries altera_merlin_axi_master_ni_1962     1
    dict set libraries altera_merlin_slave_agent_1921       1
    dict set libraries altera_avalon_sc_fifo_1931           1
    dict set libraries altera_merlin_router_1921            1
    dict set libraries altera_avalon_st_pipeline_stage_1930 1
    dict set libraries altera_merlin_burst_adapter_1931     1
    dict set libraries altera_merlin_demultiplexer_1921     1
    dict set libraries altera_merlin_multiplexer_1922       1
    dict set libraries altera_mm_interconnect_1920          1
    dict set libraries altera_reset_controller_1922         1
    dict set libraries qsys_top                             1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [emif_calbus_0::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/emif_calbus_0/sim/"]]
    set memory_files [concat $memory_files [qsys_top_onchip_memory2_0::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_onchip_memory2_0/sim/"]]
    set memory_files [concat $memory_files [rst_in::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/rst_in/sim/"]]
    set memory_files [concat $memory_files [clk_100::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/clk_100/sim/"]]
    set memory_files [concat $memory_files [agilex_hps::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/agilex_hps/sim/"]]
    set memory_files [concat $memory_files [qsys_top_pio_1::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_pio_1/sim/"]]
    set memory_files [concat $memory_files [user_rst_clkgate_0::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/user_rst_clkgate_0/sim/"]]
    set memory_files [concat $memory_files [emif_hps::get_memory_files "$QSYS_SIMDIR/../../ip/qsys_top/emif_hps/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [emif_calbus_0::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/emif_calbus_0/sim/"]]
    set design_files [dict merge $design_files [qsys_top_onchip_memory2_0::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_onchip_memory2_0/sim/"]]
    set design_files [dict merge $design_files [rst_in::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/rst_in/sim/"]]
    set design_files [dict merge $design_files [clk_100::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/clk_100/sim/"]]
    set design_files [dict merge $design_files [agilex_hps::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/agilex_hps/sim/"]]
    set design_files [dict merge $design_files [qsys_top_pio_1::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_pio_1/sim/"]]
    set design_files [dict merge $design_files [user_rst_clkgate_0::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/user_rst_clkgate_0/sim/"]]
    set design_files [dict merge $design_files [emif_hps::get_common_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/emif_hps/sim/"]]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    set design_files [concat $design_files [emif_calbus_0::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/emif_calbus_0/sim/"]]
    set design_files [concat $design_files [qsys_top_onchip_memory2_0::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_onchip_memory2_0/sim/"]]
    set design_files [concat $design_files [rst_in::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/rst_in/sim/"]]
    set design_files [concat $design_files [clk_100::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/clk_100/sim/"]]
    set design_files [concat $design_files [agilex_hps::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/agilex_hps/sim/"]]
    set design_files [concat $design_files [qsys_top_pio_1::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_pio_1/sim/"]]
    set design_files [concat $design_files [user_rst_clkgate_0::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/user_rst_clkgate_0/sim/"]]
    set design_files [concat $design_files [emif_hps::get_design_files $USER_DEFINED_COMPILE_OPTIONS $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_VHDL_COMPILE_OPTIONS "$QSYS_SIMDIR/../../ip/qsys_top/emif_hps/sim/"]]
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_axi_translator_1931/sim/qsys_top_altera_merlin_axi_translator_1931_d46vvwa.sv\"  -work altera_merlin_axi_translator_1931 -cdslib  ./cds_libs/altera_merlin_axi_translator_1931.cds.lib"            
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_slave_translator_191/sim/qsys_top_altera_merlin_slave_translator_191_x56fcki.sv\"  -work altera_merlin_slave_translator_191 -cdslib  ./cds_libs/altera_merlin_slave_translator_191.cds.lib"        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1962/sim/altera_merlin_address_alignment.sv\"  -work altera_merlin_axi_master_ni_1962 -cdslib  ./cds_libs/altera_merlin_axi_master_ni_1962.cds.lib"                                  
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_axi_master_ni_1962/sim/qsys_top_altera_merlin_axi_master_ni_1962_2kryw2a.sv\"  -work altera_merlin_axi_master_ni_1962 -cdslib  ./cds_libs/altera_merlin_axi_master_ni_1962.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/qsys_top_altera_merlin_slave_agent_1921_b6r3djy.sv\"  -work altera_merlin_slave_agent_1921 -cdslib  ./cds_libs/altera_merlin_slave_agent_1921.cds.lib"                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_slave_agent_1921/sim/altera_merlin_burst_uncompressor.sv\"  -work altera_merlin_slave_agent_1921 -cdslib  ./cds_libs/altera_merlin_slave_agent_1921.cds.lib"                                       
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_avalon_sc_fifo_1931/sim/qsys_top_altera_avalon_sc_fifo_1931_vhmcgqy.v\"  -work altera_avalon_sc_fifo_1931 -cdslib  ./cds_libs/altera_avalon_sc_fifo_1931.cds.lib"                                             
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_xjikzeq.sv\"  -work altera_merlin_router_1921 -cdslib  ./cds_libs/altera_merlin_router_1921.cds.lib"                                            
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_4q6uyiq.sv\"  -work altera_merlin_router_1921 -cdslib  ./cds_libs/altera_merlin_router_1921.cds.lib"                                            
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1930/sim/qsys_top_altera_avalon_st_pipeline_stage_1930_bv2ucky.sv\"  -work altera_avalon_st_pipeline_stage_1930 -cdslib  ./cds_libs/altera_avalon_st_pipeline_stage_1930.cds.lib"
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_avalon_st_pipeline_stage_1930/sim/altera_avalon_st_pipeline_base.v\"  -work altera_avalon_st_pipeline_stage_1930 -cdslib  ./cds_libs/altera_avalon_st_pipeline_stage_1930.cds.lib"                        
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/qsys_top_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1931_gncw4ji.v\"  -work altera_merlin_burst_adapter_1931"                                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/qsys_top_altera_merlin_burst_adapter_1931_iirrl6i.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_uncmpr.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                               
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_13_1.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                 
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_new.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                  
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_incr_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                      
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_wrap_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                      
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_default_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                   
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_address_alignment.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                  
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_7w2ffaa.sv\"  -work altera_merlin_demultiplexer_1921 -cdslib  ./cds_libs/altera_merlin_demultiplexer_1921.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/qsys_top_altera_merlin_multiplexer_1922_m7v5tgi.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                                               
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_zeqxbai.sv\"  -work altera_merlin_demultiplexer_1921 -cdslib  ./cds_libs/altera_merlin_demultiplexer_1921.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/qsys_top_altera_merlin_multiplexer_1922_pvrwnty.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                                               
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/qsys_top_altera_mm_interconnect_1920_yigfcli.v\"  -work altera_mm_interconnect_1920"                                                                                       
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_g4nzxoa.sv\"  -work altera_merlin_router_1921 -cdslib  ./cds_libs/altera_merlin_router_1921.cds.lib"                                            
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_daoa7wi.sv\"  -work altera_merlin_router_1921 -cdslib  ./cds_libs/altera_merlin_router_1921.cds.lib"                                            
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/qsys_top_altera_merlin_burst_adapter_altera_avalon_st_pipeline_stage_1931_luvkc2q.v\"  -work altera_merlin_burst_adapter_1931"                                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/qsys_top_altera_merlin_burst_adapter_1931_rnbm54y.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_uncmpr.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                               
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_13_1.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                 
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_burst_adapter_new.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                  
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_incr_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                      
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_wrap_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                      
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_default_burst_converter.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                   
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_burst_adapter_1931/sim/altera_merlin_address_alignment.sv\"  -work altera_merlin_burst_adapter_1931 -cdslib  ./cds_libs/altera_merlin_burst_adapter_1931.cds.lib"                                  
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_n77vofi.sv\"  -work altera_merlin_demultiplexer_1921 -cdslib  ./cds_libs/altera_merlin_demultiplexer_1921.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/qsys_top_altera_merlin_multiplexer_1922_sejd2qy.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                                               
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_zjcvwny.sv\"  -work altera_merlin_demultiplexer_1921 -cdslib  ./cds_libs/altera_merlin_demultiplexer_1921.cds.lib"                
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/qsys_top_altera_merlin_multiplexer_1922_rvmlpmi.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                        
    lappend design_files "xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_merlin_multiplexer_1922/sim/altera_merlin_arbitrator.sv\"  -work altera_merlin_multiplexer_1922 -cdslib  ./cds_libs/altera_merlin_multiplexer_1922.cds.lib"                                               
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_mm_interconnect_1920/sim/qsys_top_altera_mm_interconnect_1920_6idghsa.v\"  -work altera_mm_interconnect_1920"                                                                                       
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_controller.v\"  -work altera_reset_controller_1922 -cdslib  ./cds_libs/altera_reset_controller_1922.cds.lib"                                                           
    lappend design_files "xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/../altera_reset_controller_1922/sim/altera_reset_synchronizer.v\"  -work altera_reset_controller_1922 -cdslib  ./cds_libs/altera_reset_controller_1922.cds.lib"                                                         
    lappend design_files "xmvlog -compcnfg $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"$QSYS_SIMDIR/qsys_top.v\"  -work qsys_top"                                                                                                                                                                                 
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [emif_calbus_0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qsys_top_onchip_memory2_0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [rst_in::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [clk_100::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [agilex_hps::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [qsys_top_pio_1::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [user_rst_clkgate_0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [emif_hps::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [emif_calbus_0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qsys_top_onchip_memory2_0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [rst_in::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [clk_100::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [agilex_hps::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [qsys_top_pio_1::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [user_rst_clkgate_0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [emif_hps::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [emif_calbus_0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qsys_top_onchip_memory2_0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [rst_in::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [clk_100::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [agilex_hps::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [qsys_top_pio_1::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [user_rst_clkgate_0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [emif_hps::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
  proc get_dpi_libraries {QSYS_SIMDIR} {
    set libraries [dict create]
    set libraries [dict merge $libraries [emif_calbus_0::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/emif_calbus_0/sim/"]]
    set libraries [dict merge $libraries [qsys_top_onchip_memory2_0::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_onchip_memory2_0/sim/"]]
    set libraries [dict merge $libraries [rst_in::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/rst_in/sim/"]]
    set libraries [dict merge $libraries [clk_100::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/clk_100/sim/"]]
    set libraries [dict merge $libraries [agilex_hps::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/agilex_hps/sim/"]]
    set libraries [dict merge $libraries [qsys_top_pio_1::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/qsys_top_pio_1/sim/"]]
    set libraries [dict merge $libraries [user_rst_clkgate_0::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/user_rst_clkgate_0/sim/"]]
    set libraries [dict merge $libraries [emif_hps::get_dpi_libraries "$QSYS_SIMDIR/../../ip/qsys_top/emif_hps/sim/"]]
    
    return $libraries
  }
  
}
