// (C) 2001-2019 Intel Corporation. All rights reserved.
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

module alt_mge_rcfg_rxcdr_switch #(
    // Avalon-MM interface
    parameter AVM_ADDR_WIDTH = 11
)
(
    input                       clk,
    input                       rst_n,
    
    input                       reconfig_start,
    output                      reconfig_busy,
    
    input                       rx_cdr_refclk_select, // Latched when reconfig start
    
    output [AVM_ADDR_WIDTH-1:0] reconfig_mgmt_address,
    output                      reconfig_mgmt_read,
    input  [31:0]               reconfig_mgmt_readdata,
    input                       reconfig_mgmt_waitrequest,
    output                      reconfig_mgmt_write,
    output [31:0]               reconfig_mgmt_writedata
);

//
// Local parameters declaration
//
// State definition
localparam STM_IDLE                 = 4'b0001;
localparam STM_SAVE_HIP_DATA        = 4'b0010;
localparam STM_READ_HIP_DATA        = 4'b0100;
localparam STM_WRITE_HIP_DATA       = 4'b1000;

// XCVR address offset
localparam CDR_REFCLK_0_LOGICAL_ADDR    = 11'h16A;
localparam CDR_REFCLK_1_LOGICAL_ADDR    = 11'h16B;
localparam CDR_REFCLK_SELECT_MUX_ADDR   = 11'h141;

// State machine
reg   [3:0]                         state;
reg   [3:0]                         next_state;

// Logical PLL
reg   [7:0]                         logical_pll_src_selected;

reg                                 reconfig_read_r;
reg                                 reconfig_write_r;
reg   [AVM_ADDR_WIDTH-1:0]          reconfig_address_r;
reg   [31:0]                        reconfig_writedata_r;
reg   [31:0]                        reconfig_readdata_r;

// Reconfig flow control
reg                                 rx_cdr_refclk_select_r;
reg                                 reconfig_busy_r;

//
// State machine
//
always @(posedge clk or negedge rst_n)
begin
    if(~rst_n) begin
        state <= STM_IDLE;
    end
    else begin
        state <= next_state;
    end
end

always @(*)
begin
    case(state)
        
        STM_IDLE: begin
            if(reconfig_start) begin
                next_state = STM_SAVE_HIP_DATA;
            end
            else begin
                next_state = STM_IDLE;
            end
        end
        
        STM_SAVE_HIP_DATA: begin
            if(reconfig_read_r & ~reconfig_mgmt_waitrequest) begin
                next_state = STM_READ_HIP_DATA;
            end
            else begin
                next_state = STM_SAVE_HIP_DATA;
            end
        end
        
        STM_READ_HIP_DATA: begin
            if(reconfig_read_r & ~reconfig_mgmt_waitrequest) begin
                next_state = STM_WRITE_HIP_DATA;
            end
            else begin
                next_state = STM_READ_HIP_DATA;
            end
        end
        
        STM_WRITE_HIP_DATA: begin
            if(reconfig_write_r & ~reconfig_mgmt_waitrequest) begin
                next_state = STM_IDLE;
            end
            else begin
                next_state = STM_WRITE_HIP_DATA;
            end
        end
        
        default: begin
            next_state = STM_IDLE;
        end
        
    endcase
end

//
// Reconfiguration flow control
//
always @(posedge clk or negedge rst_n)
begin
    if(~rst_n) begin
        rx_cdr_refclk_select_r <= 1'b0;
        reconfig_busy_r <= 1'b0;
    end
    else begin
        
        // Store the RX CDR selection index when reconfig start during idle
        // The value will hold during other states
        if(state == STM_IDLE) begin
            rx_cdr_refclk_select_r <= rx_cdr_refclk_select;
        end
        
        // Set status to busy when reconfig start
        if(state == STM_IDLE) begin
            if(reconfig_start) begin
                reconfig_busy_r <= 1'b1;
            end
            else begin
                reconfig_busy_r <= 1'b0;
            end
        end
        else begin
            reconfig_busy_r <= 1'b1;
        end
        
    end
end

assign reconfig_busy = reconfig_busy_r;


//
// Avalon MM master interface
//
always @(posedge clk or negedge rst_n)
begin
    if(~rst_n) begin
        reconfig_read_r         <= 1'b0;
        reconfig_write_r        <= 1'b0;
        reconfig_address_r      <= {AVM_ADDR_WIDTH{1'b0}};
        reconfig_writedata_r    <= 32'h0;
        reconfig_readdata_r     <= 32'h0;
    end
    else begin
        case(state)
            
            STM_IDLE: begin
                reconfig_address_r      <= {AVM_ADDR_WIDTH{1'b0}};
                reconfig_write_r        <= 1'b0;
                reconfig_read_r         <= 1'b0;
                reconfig_writedata_r    <= 32'h0;
                reconfig_readdata_r     <= 32'h0;
            end
            
            STM_SAVE_HIP_DATA: begin
                reconfig_address_r      <= rx_cdr_refclk_select_r ? CDR_REFCLK_1_LOGICAL_ADDR : CDR_REFCLK_0_LOGICAL_ADDR;
                reconfig_write_r        <= 1'b0;
                reconfig_read_r         <= ~reconfig_read_r | reconfig_mgmt_waitrequest;
                reconfig_writedata_r    <= 32'h0;
                
                if(~reconfig_mgmt_waitrequest) begin
                    logical_pll_src_selected <= reconfig_mgmt_readdata[7:0];
                end
            end
            
            STM_READ_HIP_DATA: begin
                reconfig_address_r      <= CDR_REFCLK_SELECT_MUX_ADDR;
                reconfig_write_r        <= 1'b0;
                reconfig_read_r         <= ~reconfig_read_r | reconfig_mgmt_waitrequest;
                reconfig_writedata_r    <= 32'h0;
                
                if(~reconfig_mgmt_waitrequest) begin
                    reconfig_readdata_r <= reconfig_mgmt_readdata;
                end
            end
            
            STM_WRITE_HIP_DATA: begin
                reconfig_address_r      <= CDR_REFCLK_SELECT_MUX_ADDR;
                reconfig_write_r        <= ~reconfig_write_r | reconfig_mgmt_waitrequest;
                reconfig_read_r         <= 1'b0;
                reconfig_writedata_r    <= (reconfig_readdata_r & ~(32'hFF)) | logical_pll_src_selected;
                reconfig_readdata_r     <= reconfig_readdata_r;
            end
            
            default: begin
                reconfig_address_r      <= {AVM_ADDR_WIDTH{1'b0}};
                reconfig_write_r        <= 1'b0;
                reconfig_read_r         <= 1'b0;
                reconfig_writedata_r    <= 32'h0;
                reconfig_readdata_r     <= 32'h0;
            end
            
        endcase
    end
end

assign reconfig_mgmt_read = reconfig_read_r;
assign reconfig_mgmt_write = reconfig_write_r;
assign reconfig_mgmt_address = reconfig_address_r;
assign reconfig_mgmt_writedata = reconfig_writedata_r;

endmodule
