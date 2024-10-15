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

module add_a_b_s0_s1 #(
    parameter SIZE = 5
)(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    input s0,
    input s1,
    output [SIZE-1:0] out
);
    wire [SIZE:0] left;
    wire [SIZE:0] right;
    wire temp;
    
    assign left = {a ^ b, s0};
    assign right = {a[SIZE-2:0] & b[SIZE-2:0], s1, s0};
    assign {out, temp} = left + right;
    
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "cYUAutiPbJ9eAYHEYZJ4jDklBHhf9bnIlALIdgBLX6Jaa49G8B73gYgUIrgIPVNXKXW2JgLn+sUuCX3vFHQmNVHazCLl+Q3pYnSSyJ+VeEBUuTsCYk4WyHVUoFLNJh3h9mwfe0M7KTTBH7CKYKU8pXSi+wdSpKKjUH4aaEHr62cgHz51pqktBtVw2k+aF+gJpGfaDgdM8hrvt8QCIwb7/6NZZ+I55UQUfSDFG/PYg6l2ncIHtNj8ya17tFPBi/Nwj7KPcivlmBBJhjEuz1f+IEVQx8AmVz+S3VQWUvjaZPNyfktFjdNccon1aJOuVMJfqPU7BZUIMQKMp4v4K282PDjWQBTwh1XVAxRLjMheSoASpl6/Gq2SrP/+Tv/Bvl3H9j/5k9UKO+P2JZu7HBYP3PbHRc/n9PxnhO/RDAqf6cx0QWouF6/TyNj9icMn7VQyMwhPuK9lVVCU8C1uqxEgZntSW2p2U4323aKHi3yLDCghzbnJGKKaZViFdZGiYSEi6wmDz1Vx29+Ww+VDxqzsCXQ1IeIFrzlaz/laNjRIySJ5sGUOGvKuxX/0+sJTUd4C0818NpGfUgYPudwep7OOHM7NjXfUmV/UGSeKv7fT8BOzjZ/G8HVxDLurAU87LieabB784jQ3A6CV1+e18UsAUHB7QCz+Q97tULix0Zs30W9qm/86L/aUDHzTTiUi72GpxxkvluxC1ZtKig4eg7TfpPGBPD/ZY6Jgi7mpeMIPdGQ2s7+Wa4tHmidOcrK9bGpbYBgFphjCuUnJPtoip5nxQze6ctT2lQ5p6hPjDHANlvuhdA8ZYx693x1RrLA960cOjVq1GPFnvfDXx1H90mT6PZlZR5XnR9vziHZebQJ623SDTwLuazri0LVOoAmFVIo8qPJth3WuXx5hEHgi526fNVm1KrBKM29t+gNKF38vmWaaYUhJFfRb/aOGt6iWnMm5nfurkfluqBEEHpkzsEq72GiKgfxP18tbCJk/8xHZ8vD6gcfWaS95rGQwZXjP8XDO"
`endif