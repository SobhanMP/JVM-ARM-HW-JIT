`include "me_consts.vh"
module fetch_inst(output wire fetch, input [`SMNL-1:0] state, input clk);

  assign fetch = (state == `FETCH_INSTRUCTION);

endmodule
