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


module ff_macro # (
 parameter DATA_WIDTH = 256,
 parameter NUM_FLOPS = 1 // based on number of flops you need in 1 dir 
 ) (
 input logic clk,

 input [DATA_WIDTH -1:0] in_data ,

 output [DATA_WIDTH -1:0] out_data

);


 (* altera_attribute = "-name FORCE_HYPER_REGISTER_FOR_CORE_PERIPHERY_TRANSFER ON" *)
    reg [DATA_WIDTH-1:0] in_data_reg [NUM_FLOPS:0];    

    assign in_data_reg[0] = in_data;


    genvar i;
    
    generate 
    for (i=0 ; i<NUM_FLOPS ; i=i+1 ) begin
      always @(posedge clk) begin
          in_data_reg[i+1] <= in_data_reg[i];
      end
    end
    endgenerate

    assign out_data = in_data_reg[NUM_FLOPS];



    
endmodule
`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "cYUAutiPbJ9eAYHEYZJ4jDklBHhf9bnIlALIdgBLX6Jaa49G8B73gYgUIrgIPVNXKXW2JgLn+sUuCX3vFHQmNVHazCLl+Q3pYnSSyJ+VeEBUuTsCYk4WyHVUoFLNJh3h9mwfe0M7KTTBH7CKYKU8pXSi+wdSpKKjUH4aaEHr62cgHz51pqktBtVw2k+aF+gJpGfaDgdM8hrvt8QCIwb7/6NZZ+I55UQUfSDFG/PYg6mf6tJLC9Gn+/w0aX9ZYkgRA7KenDpX/1hNkq9Bp2JhllnlOb1El6IT/27jtwmvInGW/7lDg7F9hHMZvtTKUVkj99K/vjF0yfuURnDFcK2VxUH7ucxKmMtIsYS5mkeBUlD0P1oOydiwH5Yh1Ruoh4QBIDc3602ruvszI5CiQr7gSFZNRUkBj7cOe9wSY9C0JPQj4TNqAr4R4aYD6SvHchF+ZHs4LxQCSeBd1A5ij9LBE17e0hcS7C3vEyMECPNd9A931kwpbze7dTGHLKyT+qUbo/s0+Clm9Q7CJX49pBIzqpAzbJaNosERWePKUkTbFIwPzEalXbadO2cy70q9G4jhE587dP7KjUamiEv5XfJYrwk5wYs+Keclmur1cjyR6NNWsrgOqxPQ0laheUdExN1dOfDsmNKnFuUPowUFu4wIAvmsfvP7eSKj4w7odZq68P9nZlL2O0/mNd1OFrZiyyZAxHe5bY7dRBewYUuCw+mKYpbBNDHEZkQvdlJmiJ4Q+Wj4+dkC4oKnuEWg9UnCa4A1nMuXgei8ZSq+Kpq3a9CBnMtSZ9Dlv0Ozf5CireaUt+jdscG0uxKsrgmFiJDPBbrwbiCPYmHpGIrYjB/oKs1gL4pBwKaUrp4kc6qeKijQQhUvqkWB8RLXiTg0Sy944c/SUtMkncyryVAIPoGo3LfErnGB4phJbneTpHix89AzPS6642XMiTPBsZRmgnKHJ2TxAP7z/ATmRF6JAtVOKmwN/M8r5A6Zi4sqPWxyOAdcj2bf4GHgWJrhdtX9nvonaSNL"
`endif