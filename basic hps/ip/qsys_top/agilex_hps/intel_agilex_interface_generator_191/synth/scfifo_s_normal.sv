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


// Copyright 2021 Intel Corporation. 
//
// This reference design file is subject licensed to you by the terms and 
// conditions of the applicable License Terms and Conditions for Hardware 
// Reference Designs and/or Design Examples (either as signed by you or 
// found at https://www.altera.com/common/legal/leg-license_agreement.html ).  
//
// As stated in the license, you agree to only use this reference design 
// solely in conjunction with Intel FPGAs or Intel CPLDs.  
//
// THE REFERENCE DESIGN IS PROVIDED "AS IS" WITHOUT ANY EXPRESS OR IMPLIED
// WARRANTY OF ANY KIND INCLUDING WARRANTIES OF MERCHANTABILITY, 
// NONINFRINGEMENT, OR FITNESS FOR A PARTICULAR PURPOSE. Intel does not 
// warrant or assume responsibility for the accuracy or completeness of any
// information, links or other items within the Reference Design and any 
// accompanying materials.
//
// In the event that you do not agree with such terms and conditions, do not
// use the reference design file.
/////////////////////////////////////////////////////////////////////////////

module scfifo_s_normal #(
    parameter LOG_DEPTH      = 5,
    parameter WIDTH          = 20,
    parameter ALMOST_FULL_VALUE = 30,
    parameter ALMOST_EMPTY_VALUE = 2,
    parameter FAMILY = "S10", // Agilex, S10, or Other
    parameter NUM_WORDS = 2**LOG_DEPTH - 1,
    parameter MLAB_ALWAYS_READ = 1, // 1 to reduce amount of routing; 0 to reduce power consumption 
    parameter OVERFLOW_CHECKING = 0, // Overflow checking circuitry is using extra area. Use only if you need it
    parameter UNDERFLOW_CHECKING = 0 // Underflow checking circuitry is using extra area. Use only if you need it
)(
    input clock,
    input aclr,
    input sclr,
    input [WIDTH-1:0] data,
    input wrreq,
    input rdreq,
    output [WIDTH-1:0] q,
    output [LOG_DEPTH-1:0] usedw,
    output reg empty,
    output reg full,
    output reg almost_empty,
    output reg almost_full    
);

initial begin
    if ((LOG_DEPTH > 5) || (LOG_DEPTH < 3))
        $error("Invalid parameter value: LOG_DEPTH = %0d; valid range is 2 < LOG_DEPTH < 6", LOG_DEPTH);
        
    if ((ALMOST_FULL_VALUE >= NUM_WORDS) || (ALMOST_FULL_VALUE < 1))
        $error("Incorrect parameter value: ALMOST_FULL_VALUE = %0d; valid range is 0 < ALMOST_FULL_VALUE < %0d", 
            ALMOST_FULL_VALUE, NUM_WORDS);     

    if ((ALMOST_EMPTY_VALUE >= NUM_WORDS) || (ALMOST_EMPTY_VALUE < 1))
        $error("Incorrect parameter value: ALMOST_EMPTY_VALUE = %0d; valid range is 0 < ALMOST_EMPTY_VALUE < %0d", 
            ALMOST_EMPTY_VALUE, NUM_WORDS);  

    if ((NUM_WORDS > 2 ** LOG_DEPTH - 1) || (NUM_WORDS < 1))
        $error("Incorrect parameter value: NUM_WORDS = %0d; valid range is 0 < NUM_WORDS < %0d", 
            NUM_WORDS, 2 ** LOG_DEPTH);  
end

(* altera_attribute = "-name AUTO_CLOCK_ENABLE_RECOGNITION OFF" *) reg [LOG_DEPTH-1:0] write_addr = 0;
(* altera_attribute = "-name AUTO_CLOCK_ENABLE_RECOGNITION OFF" *) reg [LOG_DEPTH-1:0] read_addr = 0;
reg [LOG_DEPTH-1:0] capacity = 0;
wire [LOG_DEPTH-1:0] capacity_w;

wire wrreq_safe;
wire rdreq_safe;
assign wrreq_safe = OVERFLOW_CHECKING ? wrreq & ~full : wrreq;
assign rdreq_safe = UNDERFLOW_CHECKING ? rdreq & ~empty : rdreq;

initial begin 
    empty = 1;
    full = 0;
    almost_empty = 1;
    almost_full = 0;
end

add_a_b_s0_s1 #(LOG_DEPTH) adder(
    .a(write_addr),
    .b(~read_addr),
    .s0(wrreq_safe),
    .s1(~rdreq_safe),
    .out(capacity_w)
);

always @(posedge clock or posedge aclr) begin
    if (aclr) begin
        write_addr <= 0;
        read_addr <= 0;
        capacity <= 0;
        empty <= 1;
        full <= 0;
        almost_empty <= 1;
        almost_full <= 0;  
    
    end else if (sclr) begin
        write_addr <= 0;
        read_addr <= 0;
        capacity <= 0;
        empty <= 1;
        full <= 0;
        almost_empty <= 1;
        almost_full <= 0;  

    end else begin
    
        write_addr <= write_addr + wrreq_safe;
        read_addr <= read_addr + rdreq_safe;

        capacity <= capacity_w;
        
        empty <= (capacity == 0) && (wrreq == 0) || (capacity == 1) && (rdreq == 1) && (wrreq == 0);
            
        full <= (capacity == NUM_WORDS) && (rdreq == 0) || (capacity == NUM_WORDS - 1) && (rdreq == 0) && (wrreq == 1);
        
        almost_empty <=
            (capacity < (ALMOST_EMPTY_VALUE-1)) || 
            (capacity == (ALMOST_EMPTY_VALUE-1)) && ((wrreq == 0) || (rdreq == 1)) || 
            (capacity == ALMOST_EMPTY_VALUE) && (rdreq == 1) && (wrreq == 0);
            
        almost_full <= 
            (capacity > ALMOST_FULL_VALUE) ||
            (capacity == ALMOST_FULL_VALUE) && ((rdreq == 0) || (wrreq == 1)) ||
            (capacity == ALMOST_FULL_VALUE - 1) && (rdreq == 0) && (wrreq == 1);    
    end
end

assign usedw = capacity;

generic_mlab_sc #(.WIDTH(WIDTH), .ADDR_WIDTH(LOG_DEPTH), .FAMILY(FAMILY)) mlab_inst (
    .clk(clock),
    .din(data),
    .waddr(write_addr),
    .we(1'b1),
    .re(MLAB_ALWAYS_READ ? 1'b1 : rdreq_safe),
    .raddr(read_addr),
    .dout(q)
);

endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "cYUAutiPbJ9eAYHEYZJ4jDklBHhf9bnIlALIdgBLX6Jaa49G8B73gYgUIrgIPVNXKXW2JgLn+sUuCX3vFHQmNVHazCLl+Q3pYnSSyJ+VeEBUuTsCYk4WyHVUoFLNJh3h9mwfe0M7KTTBH7CKYKU8pXSi+wdSpKKjUH4aaEHr62cgHz51pqktBtVw2k+aF+gJpGfaDgdM8hrvt8QCIwb7/6NZZ+I55UQUfSDFG/PYg6ncQsyAXZJmfxYk6CTLToX9l9zwwjRzwO8ooeEpW56djJk4r3NMlX3KbDHrHWbGZINjz6a2kdHMdCcj2p8B6uWUpvuiXuRKBzYt7hyl/a5bMaW5gRraASFEhmWgz1Xgd8wBIicoM0fgUO3Q2VnK5dlsP93h8SUhGTb2/4NUupGeT9xvRwf7sFpFI/cj1QJXtKiPwLG077RUtTrVn+KF243EMyRWq+Ur0erPn6QRGuR3isA0gwmqqxNF5aWLrJ8TF6ck6XsFUHjwlBca+QKTslj7RuXW/KKZcLTn0Bn/7VNeinFB0ERtchUpWI6uCLaIgzmovkeQBelWzzzuRwY9PiMfTpkC/p7Y73cnbzln+QTRKi0x5pzO7PLk/iGEhKUkPu5ZJ1V+z90C259v/m/MMfH/xRV69vbd1/FExtS6stvUwc0Fd4Jsjq2ZTOUVDq+tzSBwVYW/6hIDp3m37pPG0qhgiBiQz9hj1w9+kEEdRPnvYujI8FnOoIqn/ZMNYCBo5IOw43+aBAMl5nB2b7QlQraQ87Tz4c/lZkHt2X6MkfagWo9AGfZZ/zdPAMjo632SsPaqsn7+dr5aZvtlSB3VC+QTDDNkrpDQxkowG4buOWb7lFL70lUF7IPZSOk023H2hyZITfLnTHOUDLvtI88qbH+U76jmIAFTQ9Qz78CMdfcYNsYQny4+h2/rNKToyUb8IWxYaFEvYqFvfgsNj0xqa5pwM84g/GmC19YCYHhQUwZ/Jtg2EYuFn4AMHmegWNdAJKLnlLHmb8VuzE+h2mL5JLUi"
`endif