`include "me_consts.vh"

module acc_tb;

  wire [`SMNL-1:0] state;
  wire waiting;

  wire param_even;
  wire q_select;
  wire [`PARAM_LEN-1:0] parameter_number; // count_rom output
  wire push_wide; // 0: push parameters 1: push is_wide amount 
  wire is_wide; // if keyword "wide" came before this jvm opcode


  wire [31:0] arm_inst, push_inst, instr;
  wire valid_write;
  wire [`adr_rom_adr_size-1:0] link_list_ptr;


  wire [7:0] iram, oram_iter, jvm_opcode;
  wire [7:0] byte_to_push;
  wire iram_ready, oram_ready;

  reg clk;
  reg reset;
acc a(
	.state(state),
	.waiting(waiting),
	.param_even(param_even),
	.q_select(q_select),
	.parameter_number(parameter_number),
	.push_wide(push_wide),
	.is_wide(is_wide),
	.arm_inst(arm_inst),
	.push_inst(push_inst),
	.instr(instr),
	.valid_write(valid_write),
	.link_list_ptr(link_list_ptr),
	.iram(iram),
	.oram_iter(oram_iter),
	.jvm_opcode(jvm_opcode),
	.byte_to_push(byte_to_push),
	.iram_ready(iram_ready),
	.oram_ready(oram_ready),
	.clk(clk),
	.reset(reset)
	);
  
  initial begin
    clk = 0;
    reset = 1;
    #3 reset = 0;
    #3 reset = 1;
   
  end

  always
    #5 clk = !clk;
endmodule
