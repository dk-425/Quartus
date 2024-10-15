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

// scfifo_s is designed as a faster and smaller replacement of scfifo
// 
// Notes
// 1. The only scfifo port not supported by scfifo_s is "eccstatus".
//    All the other ports are identical to scfifo.
//
// 2. Both "normal" and "show-ahead" modes are supported. (parameter SHOW_AHEAD)
//
// 3. almost_empty and almost_full thresholds are supported 
//    See parameters ALMOST_EMPTY_VALUE and ALMOST_FULL_VALUE
//
// 4. scfifo_s is MLAB-based and is able to store up to 31 words.
//
// 5. All MLABs are fully registered in every mode.
//    This is different from scfifo which has unregistered MLAB in show-ahead mode

module scfifo_s #(
    parameter LOG_DEPTH      = 5,
    parameter WIDTH          = 20,
    parameter ALMOST_FULL_VALUE = 30,
    parameter ALMOST_EMPTY_VALUE = 2,
    parameter SHOW_AHEAD = 0, // Show-ahead mode is using a lot of area. Use Normal mode if possible  
    parameter FAMILY = "S10", // Agilex, S10, or Other
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
    output empty,
    output full,
    output almost_empty,
    output almost_full    
);

initial begin
    if ((LOG_DEPTH >= 6) || (LOG_DEPTH <= 2))
        $error("Invalid parameter value: LOG_DEPTH = %0d; valid range is 2 < LOG_DEPTH < 6", LOG_DEPTH);

    if (WIDTH <= 0)
        $error("Invalid parameter value: WIDTH = %0d; it must be greater than 0", WIDTH);
        
    if ((ALMOST_FULL_VALUE >= 2 ** LOG_DEPTH - 1) || (ALMOST_FULL_VALUE < 4))
        $error("Incorrect parameter value: ALMOST_FULL_VALUE = %0d; valid range is 3 < ALMOST_FULL_VALUE < %0d", 
            ALMOST_FULL_VALUE, 2 ** LOG_DEPTH - 1);     

    if ((ALMOST_EMPTY_VALUE >= 2 ** LOG_DEPTH - 4) || (ALMOST_EMPTY_VALUE < 1))
        $error("Incorrect parameter value: ALMOST_EMPTY_VALUE = %0d; valid range is 0 < ALMOST_EMPTY_VALUE < %0d", ALMOST_EMPTY_VALUE, 2 ** LOG_DEPTH - 4);  

    if ((FAMILY != "Agilex") && (FAMILY != "S10") && (FAMILY != "Other"))
        $error("Incorrect parameter value: FAMILY = %s; must be one of {Agilex, S10, Other}", FAMILY);  
end

generate
if (SHOW_AHEAD == 1)
    scfifo_s_showahead #(
        .LOG_DEPTH(LOG_DEPTH),
        .WIDTH(WIDTH),
        .ALMOST_FULL_VALUE(ALMOST_FULL_VALUE),
        .ALMOST_EMPTY_VALUE(ALMOST_EMPTY_VALUE),
        .FAMILY(FAMILY),
        .OVERFLOW_CHECKING(OVERFLOW_CHECKING),
        .UNDERFLOW_CHECKING(UNDERFLOW_CHECKING)
    ) a1 (
        .clock(clock),
        .aclr(aclr),
        .sclr(sclr),
        .data(data),
        .wrreq(wrreq),
        .rdreq(rdreq),
        .q(q),
        .usedw(usedw),
        .empty(empty),
        .full(full),
        .almost_empty(almost_empty),
        .almost_full(almost_full)    
    );
else
    scfifo_s_normal #(
        .LOG_DEPTH(LOG_DEPTH),
        .WIDTH(WIDTH),
        .ALMOST_FULL_VALUE(ALMOST_FULL_VALUE),
        .ALMOST_EMPTY_VALUE(ALMOST_EMPTY_VALUE),
        .FAMILY(FAMILY),
        .OVERFLOW_CHECKING(OVERFLOW_CHECKING),
        .UNDERFLOW_CHECKING(UNDERFLOW_CHECKING)
    ) a2 (
        .clock(clock),
        .aclr(aclr),
        .sclr(sclr),
        .data(data),
        .wrreq(wrreq),
        .rdreq(rdreq),
        .q(q),
        .usedw(usedw),
        .empty(empty),
        .full(full),
        .almost_empty(almost_empty),
        .almost_full(almost_full)    
    );
endgenerate
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "cYUAutiPbJ9eAYHEYZJ4jDklBHhf9bnIlALIdgBLX6Jaa49G8B73gYgUIrgIPVNXKXW2JgLn+sUuCX3vFHQmNVHazCLl+Q3pYnSSyJ+VeEBUuTsCYk4WyHVUoFLNJh3h9mwfe0M7KTTBH7CKYKU8pXSi+wdSpKKjUH4aaEHr62cgHz51pqktBtVw2k+aF+gJpGfaDgdM8hrvt8QCIwb7/6NZZ+I55UQUfSDFG/PYg6m8R+ZB99QXOmcsy7A0UesIZ9ri8bii1lanogcIqmr7M6ywx4OiNOdOp/vnY++xIcm4iyYjijtg9ZtodkF4cfXs3QwBurNJZPKogR43N4S2HJBu9D5NeCfOPuqDBd2idfZkdyxIuF/u61xf5wOwMUnkKkTZq/Bzs/HKY77Qxi1ueoizk1yVCAF0Cn5zFl7dxgd4K1cnKv9tFBNF+1U4J58dqI1vDBLyNBR47mLROG92r96+2Eqq7MoiVkOyYxQhd9/41Ysxe3/wEA2BfhNjBdIbR/jnMhAisehpgskpa1ExH9pWoKbYNAD33H908PaBN7pUsNPd/MNLg5D6gWURsogQ7bH0Gg9motW8gxF6EdJv1tFRX3iooV7VDRMJZ2jJq+/4cdJR5fEy6MVEdFAhg5707j3bOFnVyEMPYL8PSKqKSGbt3+AzxNkUgn90rvriZT3s6SRmUH91LBNCsymcrodVY2YVQbLOyMnu29s8ChWsXZxJttzZtNhr2oBfoyyE3Vmmu8vWO+wS2ADcty7iHNC2kxey+k5m9hfb2JD+OSt87QbQUTqw/4v2xeLzA2VHjCXmS5ppZw31syk4HgZFl/lVNsUB2Wd29U8Nm2d+pKc/zM7DaM/hkvOJ22L4xksR+LnzYsuSPcXTTe1wz/Hqnld4A7mNTqrkEiSldeFYXJKR2UxkdUgq9Yac3u1pmybVK6WgIzqCYG/ja6RDSCD0CnbbA6SJ3CiIKZWzV3PdTBPU8wQYb1se3gR2Dvx1x2cxE5j20/spN3rM2rSTz0queSEg"
`endif