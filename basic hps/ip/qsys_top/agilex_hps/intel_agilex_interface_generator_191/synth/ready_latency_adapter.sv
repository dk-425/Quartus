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


`timescale 1ns / 100ps

// this module has zero ready latency input and non zero latency output


module ready_latency_adapter # (
 parameter READY_LATENCY_OUT = 2,
 parameter PAYLOAD_WIDTH = 256,
 parameter LOG_DEPTH = 3


) (  
 output logic         in_ready,
 input  logic            in_valid,
 input  logic   [PAYLOAD_WIDTH-1: 0]  in_data,
 // Interface: out
 input  logic             out_ready,
 output logic          out_valid,
 output logic [PAYLOAD_WIDTH-1: 0] out_data,
  // Interface: clk
 input logic          clk,
 // Interface: reset
 input logic           reset

 /*AUTOARG*/);

   // ---------------------------------------------------------------------
   //| Signal Declarations
   // ---------------------------------------------------------------------
   
   logic [PAYLOAD_WIDTH-1:0]   in_payload;
   logic [PAYLOAD_WIDTH-1:0]   out_payload;
   logic            in_ready_wire;
   logic            out_valid_wire;
   logic [2:0]      fifo_fill;
   logic    rdreq;
   logic empty;   

   logic [READY_LATENCY_OUT-1:0] in_ready_dly_reg;
   logic in_ready_dly;
   assign in_ready_dly = (READY_LATENCY_OUT > 0) ? in_ready_dly_reg[0] : in_ready;
 
   localparam DEPTH = 2 ** LOG_DEPTH -1 ;

   // ---------------------------------------------------------------------
   //| Payload Mapping
   // ---------------------------------------------------------------------
   always @* begin
     in_payload = {in_data};
     {out_data} = out_payload;
   end

   // ---------------------------------------------------------------------
   //| FIFO
   // ---------------------------------------------------------------------                           
    scfifo_s # (
      .LOG_DEPTH (LOG_DEPTH),
      .WIDTH (PAYLOAD_WIDTH),
      .ALMOST_FULL_VALUE (DEPTH-1),
      .SHOW_AHEAD (1),
      .FAMILY ("Agilex")
    ) fifo_inst ( 
       .clock        (clk),
       .aclr       (reset),
       .sclr (1'b0),
       //.in_ready   (),
       .wrreq  (in_valid && in_ready_dly),      
       .data    (in_payload),
      //.out_ready  (out_ready),
       .rdreq      (rdreq),
       .q (out_payload),
       .usedw (fifo_fill),
       .empty (empty),
       .full (full),
       .almost_empty (),
       .almost_full ()
       );

   // ---------------------------------------------------------------------
   //| Ready & valid signals.
   // ---------------------------------------------------------------------
   always @* begin
      in_ready = ( DEPTH- fifo_fill > READY_LATENCY_OUT);
   end

    always @(posedge clk) begin
        in_ready_dly_reg[READY_LATENCY_OUT-1] <= in_ready;
        for (int i = 0; i < READY_LATENCY_OUT - 1; i++) begin
            in_ready_dly_reg[i] <= in_ready_dly_reg[i+1];
        end
    end

assign rdreq = out_ready && !empty;

assign out_valid = !empty;


endmodule


`ifdef QUESTA_INTEL_OEM
`pragma questa_oem_00 "cYUAutiPbJ9eAYHEYZJ4jDklBHhf9bnIlALIdgBLX6Jaa49G8B73gYgUIrgIPVNXKXW2JgLn+sUuCX3vFHQmNVHazCLl+Q3pYnSSyJ+VeEBUuTsCYk4WyHVUoFLNJh3h9mwfe0M7KTTBH7CKYKU8pXSi+wdSpKKjUH4aaEHr62cgHz51pqktBtVw2k+aF+gJpGfaDgdM8hrvt8QCIwb7/6NZZ+I55UQUfSDFG/PYg6nxt3OQEsBFMcNhL/4NpyR4JTHot99lf4IXHYv8lqJhmB3u8YRSasVnnzBWM+a59lGwY9njzWhh8u4j6G55Doq1cw1rKQyIv9o6/DeTpQcarJWDClRMqHs6sN445nx9UAL5vyX2lMzSHQzsqBGD+Fu5xbY1JSjBkKATQQJTLH0M0JX6lOzZ+0OU9W4vdY2b/gxITIgymxojEVeSECE8gb39Tg3dDaijqgyWoE70xIolilg3nFXmcd3IS05NB/eRpcLbwb55S3LQFSH3uLyac8igo8TTb8t1LFNSpNt3fiPocEiX263bNmBs4GAtx+935OBG4BLl5AANG/YkC37zQvAU+QJ8z5YhI2C9tquvhEFXSJ++ZsODWr7u5BejpezRYOBkwQjJNclIfvnobrtZ3bYrZYUR4tCz+KP7Yvpg24Gpxmpw1Zwucs/ZrKyufmoHJMzSDW5afFpkrLWukqp2c6y7Zii75OQ2NSjPCLytTYMrhaykwpJ4Xi+WD4+bEjuoyjorVeLnkwDh262TJC06B89F+zhgM9yvvkqhxzlbooIsXR0gbyzP6uz2gBWbRjqTd/nUxihhp5i9678Oi+gEV3sCb5CbCb+MDjlpN55QjZEtBHSY9K7umSDYeYMdjY3SKEdzP0XmgXyZ/ctTwqHveEEC0P2lnxFKvYtGm0tL/tA8lL4da/gPtjQYnpByn5sBFS4FNw5Z9bhp8IsysIWbgo68NmD/lF/EgMq+WPgUQoqwmwn6wtCchy0TN1HfYQrqKZKZtt1wK4B3t74g9D1RnThF"
`endif