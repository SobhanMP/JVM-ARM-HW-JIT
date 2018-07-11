`include "me_consts.vh"

module write
    (
        output wire ready,

        input wire [31:0] data,
        input wire reset,
        input wire start,
        input wire clk
    );
    parameter queue_size = 8;
    parameter queue_len = 4;
    reg [`ADDRESS_WIDTH - 1:0] adr;

    memory_w #(.SIZE(`RAM_SIZE), .ADDRESS_WIDTH(`ADDRESS_WIDTH), .write_size(32))
      mem
      (
          .data_in(data),
          .ready(ready),
          .clk(clk),
          .reset(reset),
          .address(adr),
          .start(start)
      );

    always @(posedge clk or negedge reset) begin
    if (!reset) begin
        adr <= 0;
    end

    else if(start) begin
	
	
      adr <= adr + 1;
      end
    end
endmodule
