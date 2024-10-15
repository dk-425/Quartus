
`timescale 1ns / 1ps

module axis_fifo #(
    parameter DW = 32,
    parameter FIFO_DEPTH = 2048,
    parameter int ALMOST_FULL_DEPTH = 8,
    // uses xilinx pragmas
    parameter IS_XILINX = 0,
    // infers a FIFO using BRAM, ideal for large depths
    parameter IS_BRAM = 0    
) (
    input clk,
    input reset_n,

    input  logic [DW-1:0] s_tdata,
    input  logic          s_tvalid,
    output logic          s_tready,

    output logic [DW-1:0] m_tdata,
    output logic          m_tvalid,
    input  logic          m_tready,

    output logic almost_full
);
   
    localparam DW_ADDR = $clog2(FIFO_DEPTH);
    logic [DW - 1:0] ram[FIFO_DEPTH-1:0];
    logic full;
    logic empty;

    logic we;
    logic re;
    logic [DW_ADDR - 1:0] rd_addr;
    logic [DW_ADDR - 1:0] wr_addr;
    logic en_m_tvalid;

    logic [DW_ADDR - 1:0] depth;
    logic [DW_ADDR:0] wr_addr_plus_1;

    always @(posedge clk) begin
        if (!reset_n) begin
            wr_addr  <= 0;
            rd_addr  <= 0;

            m_tvalid <= 0;
            m_tdata <= 0;
        end else begin
            if (we) begin
                ram[wr_addr[DW_ADDR-1:0]] <= s_tdata;

                if (wr_addr == FIFO_DEPTH - 1) begin
                    wr_addr <= 0;
                end else begin
                    wr_addr <= wr_addr + 1'b1;
                end
            end

            if(en_m_tvalid) begin
                m_tvalid <= re;
            end
            
            if(re) begin
                m_tdata <= ram[rd_addr[DW_ADDR-1:0]];                                
            end

            // increment the read register when there is data in the FIFO and the slave is ready
            if (re) begin
                if (rd_addr == FIFO_DEPTH - 1) begin
                    rd_addr <= 0;
                end else begin
                    rd_addr <= rd_addr + 1'b1;
                end
            end
        end
    end

    always_comb begin
        empty = (wr_addr == rd_addr);
        wr_addr_plus_1 = wr_addr + 1;

        full = (wr_addr_plus_1[DW_ADDR-1:0] == rd_addr);

        s_tready = (full == 0);

        we = s_tready && s_tvalid;

        //! enable read where there is some data in the FIFO
        en_m_tvalid = (m_tvalid == 0) || (m_tready == 1);
        re = (empty == 0) && en_m_tvalid;

        depth = (wr_addr - rd_addr);
        almost_full = (depth > ALMOST_FULL_DEPTH);
    end

endmodule
