`include "me_consts.vh"

module read_count_tb;
  wire [`PARAM_LEN-1:0] count;
  reg [7:0] iram_data;
  reg [`SMNL - 1: 0] state;
  reg reset, clk;

  read_count r(.count(count), .iram_data(iram_data), .state(state),
    .reset(reset), .clk(clk));
  initial begin
    clk = 0;
    reset = 1;
    state = 0;
    iram_data = 0;
    #2 reset = 0;
    #2 reset = 1;
  end
  always
  begin
    #2 clk = !clk;
    iram_data = iram_data + 1;
    state = state + 1;
  end

endmodule
