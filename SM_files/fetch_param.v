`include "me_consts.vh"


module fetch_param
(
  output wire [31: 0] o_data,
  input even_param,
  input [15:0] i_data,
  input clk);


  assign o_data = !even_param?{12'hE34, i_data[15:12], 4'h0, i_data[11:0]}:{31'hE5_2D_00_04};


endmodule
