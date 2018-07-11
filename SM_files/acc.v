
`include "me_consts.vh"
module acc(

  output wire [`SMNL-1:0] state,
  output wire waiting,

  output wire param_even,
  output wire q_select,
  output wire [`PARAM_LEN-1:0] parameter_number, // count_rom output
  output wire push_wide, // 0: push parameters 1: push is_wide amount 
  output wire is_wide, // if keyword "wide" came before this jvm opcode


  output wire [31:0] arm_inst, push_inst, instr,
  output wire valid_write,
  output wire [`adr_rom_adr_size-1:0] link_list_ptr,


  output wire [7:0] iram, oram_iter, jvm_opcode,
  output wire [7:0] byte_to_push,
  output wire iram_ready,
  input oram_ready,

  input clk,
  input reset);

  assign byte_to_push = push_wide ? {7'b000_0000, is_wide} : iram[7:0];

  assign waiting = !iram_ready || (!oram_ready && state == `ITERATE);
  
  assign push_inst = (!param_even)?
    {12'hE34, 4'h0, 4'h0, 4'h0, byte_to_push[7:0]}:{32'hE5_2D_00_04};
    // load im                                      // arm push
  assign arm_inst = (q_select == `Q_FETCH ) ? push_inst : instr;
  assign fetch = (state == `FETCH_INSTRUCTION) || 
  	(state == `CHECK_WIDE_and_READ_COUNTER && (|parameter_number)) || 
    (param_even && !push_wide &&
     (|parameter_number) && (state == `FETCH_PARAMS));
  assign valid_write = ((state == `ITERATE) ||
    (state == `FETCH_PARAMS && |parameter_number))&&|jvm_opcode&&!waiting;

  adr_to_arm decoder(.arm_inst(instr), .i(link_list_ptr));

  wire [`ADDRESS_WIDTH - 1: 0] pc_reset_value;
  assign pc_reset_value = 0;

  next_byte_gen n(.next_byte(iram), .ready(iram_ready),
    .pc_reset_value(pc_reset_value),
    .pc_reset(reset),
    .start(fetch),
    .clk(clk));

  state_machine sm(.state(state), .com_adr(link_list_ptr),
    .jvm_opcode(jvm_opcode),
    .q_select(q_select),
    .param_even(param_even),
    .parameter_number(parameter_number),
     .waiting(waiting), .iram_data(iram),
     .clk(clk), .reset(reset),
     .push_wide(push_wide),
     .is_wide(is_wide));

 wire [7:0]pjvm ;
 assign pjvm = ((state==`FETCH_INSTRUCTION) || (state == `CHECK_WIDE_and_READ_COUNTER))? iram:jvm_opcode;
  count_rom c(.count(parameter_number), .opcode(pjvm));

endmodule
