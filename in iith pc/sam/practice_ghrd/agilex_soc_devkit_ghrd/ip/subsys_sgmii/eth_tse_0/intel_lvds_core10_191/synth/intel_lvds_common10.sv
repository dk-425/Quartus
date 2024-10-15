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
////LVDS SERDES COMMON MODULES               //
////////////////////////////////////////////////////////////////
module reset_synchronizer_active_high
#(
   parameter RESET_SYNC_LENGTH = 2
) (
   input async_reset,
   input clock,
   output sync_reset
);
    wire reset_n = ~async_reset;
    altera_std_synchronizer_nocut #(.depth(RESET_SYNC_LENGTH), .rst_value(1)) sync_inst (
        .clk(clock), 
        .reset_n(reset_n), 
        .din(1'b0), 
        .dout(sync_reset)
    );
endmodule

module data_synchronizer
#(
    parameter SYNC_LENGTH = 2
) (
    input data_in,
    input clock,
    input reset,
    output data_out
);
    wire reset_n = ~reset;
    altera_std_synchronizer_nocut #(.depth(SYNC_LENGTH)) sync_inst (
        .clk(clock), 
        .reset_n(reset_n), 
        .din(data_in), 
        .dout(data_out)
    );
endmodule


module reset_sync_w_lock (
	input pll_areset,
	input pll_locked,
	input clock,
	output sync_reset
);

localparam RESET_SYNC_STAGES = 4;
wire reset_n;

(* altera_attribute = {"-name SYNCHRONIZER_IDENTIFICATION FORCED_IF_ASYNCHRONOUS; -name GLOBAL_SIGNAL OFF"}*) reg [RESET_SYNC_STAGES-1:0] reset_reg /*synthesis dont_merge */;

assign reset_n = ~pll_areset & pll_locked;
assign sync_reset = reset_reg[RESET_SYNC_STAGES-1];

always @(posedge clock or negedge reset_n)
begin
	if (~reset_n)
		reset_reg <= {RESET_SYNC_STAGES{1'b1}};
	else
		reset_reg <= {reset_reg[RESET_SYNC_STAGES-2:0], 1'b0};
end

endmodule


module div3 (
   input        srst,
   input        inclk,
   output       outclk
);

logic [1:0] a;
reg         genclk;
reg       outclk_reg;
assign    outclk=outclk_reg;
assign    genclk=~a[0]&~a[1];

always_ff @(posedge inclk)
begin
    if (srst)
        a <= 2'b0;
    else if (a==2)
        a <= 2'b0;
    else 
        a <= a + 1'b1;
end 


always_ff @(posedge inclk)
begin 
    if (srst)
    begin
        outclk_reg<=0;
    end 
    else 
        outclk_reg<=genclk;
end 

endmodule

module div5 (
   input        srst,
   input        inclk,
   output       outclk
);

logic [2:0] a;
reg         genclk;
reg         outclk_reg;
assign      outclk=outclk_reg;
assign      genclk=~a[2]&~a[1];

always_ff @(posedge inclk)
begin
    if (srst)
        a <= 3'b0;
    else if (a==4)
        a <= 3'b0;
    else 
        a <= a + 1'b1; 
end

always_ff @(posedge inclk)
begin 
    if (srst)
    begin
        outclk_reg<=0;
    end 
    else 
        outclk_reg<=genclk;
end 

endmodule

module div1p5 (
   input    srst,
   input    inclk,
   output   outclk
);
logic a, b;

always_ff @(posedge inclk)
begin
   if (srst) a <= 0;
   else a <= (~a & ~b);
end

always_ff @(posedge inclk)
begin
   if (srst) b <= 0;
   else b <= a;
end

logic clk1p5, o, pullingdown;

assign clk1p5 = o | a;

always_ff @(negedge inclk)
begin
	if (srst) o <= 0;
	else o <= b;
end

logic a_prime, o_prime;
always_ff @(negedge inclk)
	a_prime <= a;
always_ff @(posedge inclk)
	o_prime <= o;
assign pullingdown = a_prime | o_prime;
	
logic outclk_reg /* synthesis noprune */ ;
always_ff @(posedge clk1p5 or posedge pullingdown)
begin
   if (pullingdown) outclk_reg <= 0;
   else outclk_reg <= 1;
end


assign outclk = outclk_reg;

endmodule

module div2p5 (
   input    srst,
   input    inclk,
   output   outclk
);

logic a, b, c;

always_ff @(posedge inclk)
begin
   if (srst) a <= 0;
   else a <= (~a & ~b & ~c);
end

always_ff @(posedge inclk)
begin
   if (srst) b <= 0;
   else b <= (~c & (b | a));
end

always_ff @(posedge inclk)
begin
   if (srst) c <= 0;
   else c <= b;
end

logic clk2p5, o, and1, and2, pullingdown;

assign clk2p5 = o | a;

always_ff @(negedge inclk)
begin
	if (srst) o <= 0;
	else o <= b & c;
end


logic a_prime, o_prime;
always_ff @(posedge inclk)
	a_prime <= a;
always_ff @(negedge inclk)
	o_prime <= o;
assign pullingdown = a_prime | o_prime;
	
logic outclk_reg /* synthesis noprune */ ;
always_ff @(posedge clk2p5 or posedge pullingdown)
begin
   if (pullingdown) outclk_reg <= 0;
   else outclk_reg <= 1;
end


assign outclk = outclk_reg;

endmodule
module div3p5 (
   input    srst,
   input    inclk,
   output   outclk
);

logic a, b, c, d;

always_ff @(posedge inclk)
begin
   if (srst) a <= 0;
   else a <= (~b & ~c & ~d);
end

always_ff @(posedge inclk)
begin
   if (srst) b <= 0;
   else b <= (~d & (a & ~c | ~a & b & c));
end

always_ff @(posedge inclk)
begin
   if (srst) {c,d} <= 0;
   else {c,d} <= {b,c};
end

logic clk3p5, o, pullingdown;

assign clk3p5 = o | a;

always_ff @(negedge inclk)
begin
	if (srst) o <= 0;
	else o <= c & d;
end

logic a_prime, o_prime;
always_ff @(posedge inclk)
	a_prime <= a & b ;
always_ff @(negedge inclk)
	o_prime <= ~c & d;
assign pullingdown = a_prime | o_prime;
	
logic outclk_reg /* synthesis noprune */ ;
always_ff @(posedge clk3p5 or posedge pullingdown)
begin
   if (pullingdown) outclk_reg <= 0;
   else outclk_reg <= 1;
end

assign outclk = outclk_reg;

endmodule

module div4p5 (
   input    srst,
   input    inclk,
   output   outclk
);

logic a, b, c, d, e, f;

always_ff @(posedge inclk)
begin
   if (srst) a <= 0;
   else a <= (~b & ~c & ~d & ~e & ~f);
end

always_ff @(posedge inclk)
begin
   if (srst) b <= 0;
   else b <= (~d & ~e & ~f & (a & ~c | ~a & b & c));
end

always_ff @(posedge inclk)
begin
   if (srst) {c,d,e,f} <= 0;
   else {c,d,e,f} <= {b,c,d,e};
end

logic clk4p5, o, pullingdown;

assign clk4p5 = o | a;

always_ff @(negedge inclk)
begin
	if (srst) o <= 0;
	else o <= d & e;
end

logic a_prime, o_prime;
always_ff @(posedge inclk)
	a_prime <= a & b ;
always_ff @(negedge inclk)
	o_prime <= ~d & e;
assign pullingdown = a_prime | o_prime;
	
logic outclk_reg /* synthesis noprune */ ;
always_ff @(posedge clk4p5 or posedge pullingdown)
begin
   if (pullingdown) outclk_reg <= 0;
   else outclk_reg <= 1;
end

assign outclk = outclk_reg;

endmodule
