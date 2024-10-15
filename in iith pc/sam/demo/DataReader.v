module DataReader (
    input wire clk,
    input wire rst,
    input wire data_valid,
    output reg data_ready,
    output reg [127:0] data_out
);

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            data_ready <= 0;
            data_out <= 32'h0;
        end else if (data_valid && data_ready) begin
            
            data_ready <= 0;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            data_out <= 32'h0;
        end else if (data_ready) begin
            data_out <= external_data_source;
        end
    end

endmodule

