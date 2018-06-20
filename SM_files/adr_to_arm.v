//connect the two rom so it's easier to use
`include "me_consts.vh"

module adr_to_arm (output wire [31:0] arm_inst, input [`adr_rom_adr_size-1:0] i);
  wire [`com_rom_adr_size-1:0] connector;
  inst_adr_rom a(.data_out(connector), .data_in(i));
  com_rom c(.data_out(arm_inst), .data_in(connector));
endmodule // adr_to_arm
