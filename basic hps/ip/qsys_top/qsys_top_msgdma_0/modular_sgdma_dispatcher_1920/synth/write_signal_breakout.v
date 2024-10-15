// (C) 2001-2023 Intel Corporation. All rights reserved.
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


/*

  This block is used to breakout the 256 bit streaming ports to and from the write master.
  The information sent through the streaming ports is a bundle of wires and buses so it's
  fairly inconvenient to constantly refer to them by their position amungst the 256 lines.
  This block also provides a layer of abstraction since the descriptor buffers block has
  no clue what format the descriptors are in except that the 'go' bit is written to.  This
  means that using this block you could move descriptor information around without affecting
  the top level dispatcher logic.
  
  
  1.0  06/29/2009 - First version of this block of wires
  
  1.1  11/15/2012 - Added in an additional 32 bits of address for extended descriptors
  
*/


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 


module write_signal_breakout (
  write_command_data_in,     // descriptor from the write FIFO
  write_command_data_out,  // reformated descriptor to the write master

  // breakout of command information
  write_address,
  write_length,
  write_park,
  write_end_on_eop,
  write_transfer_complete_IRQ_mask,
  write_early_termination_IRQ_mask,
  write_error_IRQ_mask,
  write_wait_for_response,
  write_burst_count,      // when 'ENHANCED_FEATURES' is 0 this will be driven to ground
  write_stride,           // when 'ENHANCED_FEATURES' is 0 this will be driven to ground
  write_sequence_number,  // when 'ENHANCED_FEATURES' is 0 this will be driven to ground

  // additional control information that needs to go out asynchronously with the command data
  write_stop,
  write_sw_reset
);

  parameter DATA_WIDTH = 256;  // 256 bits when enhanced settings are enabled otherwise 128 bits

  input [DATA_WIDTH-1:0] write_command_data_in;
  output wire [255:0] write_command_data_out;

  output wire [63:0] write_address;
  output wire [31:0] write_length;
  output wire write_park;
  output wire write_end_on_eop;
  output wire write_transfer_complete_IRQ_mask;
  output wire write_early_termination_IRQ_mask;
  output wire [7:0] write_error_IRQ_mask;
  output wire write_wait_for_response;
  output wire [7:0] write_burst_count;
  output wire [15:0] write_stride;
  output wire [15:0] write_sequence_number;

  input write_stop;
  input write_sw_reset;

  assign write_address[31:0] = write_command_data_in[63:32];
  assign write_length = write_command_data_in[95:64];


  generate
    if (DATA_WIDTH == 256)
    begin
      assign write_park = write_command_data_in[235];
      assign write_end_on_eop = write_command_data_in[236];
      assign write_transfer_complete_IRQ_mask = write_command_data_in[238];
      assign write_early_termination_IRQ_mask = write_command_data_in[239];
      assign write_error_IRQ_mask = write_command_data_in[247:240];
      assign write_wait_for_response = write_command_data_in[249];
      assign write_burst_count = write_command_data_in[127:120];
      assign write_stride = write_command_data_in[159:144];
      assign write_sequence_number = write_command_data_in[111:96];
      assign write_address[63:32] = write_command_data_in[223:192];
    end
    else
    begin
      assign write_park = write_command_data_in[107];
      assign write_end_on_eop = write_command_data_in[108];
      assign write_transfer_complete_IRQ_mask = write_command_data_in[110];
      assign write_early_termination_IRQ_mask = write_command_data_in[111];
      assign write_error_IRQ_mask = write_command_data_in[119:112];
      assign write_wait_for_response = write_command_data_in[121];
      assign write_burst_count = 8'h00;
      assign write_stride = 16'h0000;
      assign write_sequence_number = 16'h0000; 
      assign write_address[63:32] = 32'h00000000;    
    end
  endgenerate


  // big concat statement to glue all the signals back together to go out to the write master (MSBs to LSBs)
  assign write_command_data_out = {{132{1'b0}},  // zero pad the upper 132 bits
                                  write_address[63:32],
                                  write_stride,
                                  write_burst_count,
                                  write_sw_reset,
                                  write_stop,
                                  write_wait_for_response,
                                  write_end_on_eop,
                                  write_length,
                                  write_address[31:0]};

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "4iyZBHSB9ddBnzZzazNhCqmPfRT8uWXqCM1r0T2F9Xa/v1YTC9E7OEotssuidbI4fzVC/olSnLRa0FC65kaJJO/KfyX8Wf8D2TSbqBfwooESlrOYK5t3TnXj7nsbvJpoDKEiXoGvt38wi/qJOjeL87PMuSOuwjY+7UrVTcIFbzCu2Yz0nbB8o6gTyLOmbeNjfnX8Qk/xBuWy3NE32y30EMlq6o4d5I1U4odmgKGgSTpy8+zopMjrjinSy9lo/CKs3AMb6bdCgwTIuaas43FRWSrxkwKNeWKxknmhHfNee0nasUmhveHLnAlOdZh0GY9VDryGwS46dzoNs3/VeqYkPIHdAQEbjmvnBZhQMeniOxuPT0df5Aqw1zwpcfUqusumh4LyLk0syI/0mIH59tYBWiA+M/5gfZuaZ/ITp/cmTim/UQADIXFtcE5dKdhsLvxJxA1SXXM3kv2Ewzp8usVRzxwWKAjghyuhHovIhfTveiHEYHmT51/P38mkqxY4b5DOa947yEdf11cpRKQk4xY4CrBuU30ZvLZUR3Krkmj4KQucBPYe161CBDQ1bWnjVdH7m9v1bRz6I4Jp2qZ/swn+XVI4DH9MMDcikewIRJ/GNYbSb7Fwq5puEVhIPbU9d7B+qvCiTwHwXN8UkYFnqzmQfxi+8PQfIBasSlUEVpGQceVCf1IGQRGyWha96T6ohDeYUteF3RcGN1mYedF2/FA7q89KQyjjKP5/fDTi6S/f+qw+GXXd0UCmFR4p1XvYIPr2hZXccAqQWutOo7NMfFZhfeM3gxhFD8XUJH2fBOoX5lm/LBmATorV59HawbbUoCdGgXuGnwOCvlfFT4+aTHFwETyEIkHnoxNzheRlI42Cp4qb9D01+2PZCruLgcyr9a6va4CzAIymXU301wSjO44PzerOCm7o9Sc0rJyX19jif3PAik2UA48BcCx4/8DHZMXjMW7qJYQd8eaCCg6hKDIVByOnh/Gop0Rwat6SyKpSitOvDDjYU4LNumvseUDshHGx"
`endif