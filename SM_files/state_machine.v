module state_machine(
        input wire clk
    );
    wire next_byte;
    wire ready;
    reg start_fetch;

    next_byte_gen  #(.SIZE(RAM_SIZE), .ADDRESS_WIDTH(ADDRESS_WIDTH))
    nbg
    (
        .next_byte(next_byte);
        .ready(ready),

        .pc_reset(1'b1),
        .start(start_fetch),
        .clk(clk)
    );

endmodule