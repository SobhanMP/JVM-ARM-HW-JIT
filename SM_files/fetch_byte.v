`include "me_consts.vh"
module fetch_byte(output wire fetch, input param_even, input [7:0] parameter_number,
  input [`SMNL-1:0] state);

  assign fetch = (state == `FETCH_INSTRUCTION) ||
    (!param_even && (|parameter_number) && (state == `FETCH_PARAMS));

endmodule
