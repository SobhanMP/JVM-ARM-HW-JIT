`include "me_consts.vh"

module fetch_inst_tb;

  reg [`SMNL-1:0] state;
  reg clk;
  wire fetch;
  fetch_inst f(.fetch(fetch), .state(state), .clk(clk));

  initial begin
    clk = 0;
    state = 0;
  end

  always
    #2 clk = !clk;

  always
    #4 state = state + 1;




endmodule
