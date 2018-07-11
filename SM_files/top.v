
`include "me_consts.vh"

`timescale 1 ns/ 100 ps
module top;

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
write w(.data(arm_inst), .reset(reset), .clk(clk), .ready(oram_ready), .start(valid_write));

integer f;
//log
initial
	begin
      f = $fopen("output.txt","w");
	end
always@(posedge clk) begin
	if(valid_write)
		$fwrite(f,"%08x\n", arm_inst);
end
acc i1(
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
	#40 reset = 0;
	#40 reset = 1;

end
always@(posedge clk) begin

 if (state == `FSTATE) 
 	begin  $fclose(f); 
	 $finish(); 
	 end
end
always
	#10 clk = !clk;
endmodule
