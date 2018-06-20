`include "me_consts.vh"

module read_count(
  output reg [`PARAM_LEN-1:0] count, input [7:0] iram_data,
  input [`SMNL - 1: 0] state, input reset, input clk);

  wire [`PARAM_LEN-1:0] count_rom_count;
  count_rom c(.count(count_rom_count), .opcode(iram_data));
  always@(posedge clk or negedge reset) begin
    if (reset) begin
      if (state == `CHECK_WIDE_and_READ_COUNTER) begin
        count <= count_rom_count;
      end
    end
    else
      count <= 0;
  end


endmodule
