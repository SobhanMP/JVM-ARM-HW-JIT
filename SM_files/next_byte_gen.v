`include "me_consts.vh"

module next_byte_gen
    (
        output wire [7:0] next_byte,
        output wire ready,

        input wire [`ADDRESS_WIDTH - 1:0] pc_reset_value,
        input wire pc_reset,
        input wire start,
        input wire clk
    );

    reg [`ADDRESS_WIDTH - 1:0] pc;

memory_r #(.SIZE(`RAM_SIZE), .ADDRESS_WIDTH(`ADDRESS_WIDTH))
    mem
    (
        .data_out(next_byte),
        .ready(ready),
        .clk(clk),
        .reset(pc_reset),
        .address(pc),
        .start(start)
    );

    always @(posedge clk or negedge pc_reset) begin
    if (pc_reset == 0) begin
        pc <= pc_reset_value; 
    end
    else if(start & ready) begin
            pc <= pc + 1;
        end
    end
endmodule
