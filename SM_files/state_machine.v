`include "me_consts.vh"
module state_machine
(
	output reg [`SMNL - 1: 0] state,
	output reg [`adr_rom_adr_size - 1: 0] com_adr, // arm instruction (next_adr_rom output)
	output reg [7:0] jvm_opcode,
	output reg q_select,
	output reg param_even,
	output reg push_wide,
	output reg is_wide,

	input wire waiting,
	input wire [7:0] iram_data, // jvm ram input (byte)
	input wire [`PARAM_LEN - 1:0] parameter_number,
	input wire clk,
	input wire reset
);
// used to move the right number of parameters
reg [7:0] param_counter;
//holds the next address of the rum
wire [`adr_rom_adr_size - 1: 0] next_adr;

next_adr_rom nar(.data_out(next_adr), .data_in(com_adr));
integer i;
reg [106:0]state_name;
always @(posedge clk or negedge reset) begin
	if (!reset) begin
		jvm_opcode <= 0;
		com_adr <= 0;
		state <= `FETCH_INSTRUCTION;
		q_select <= 0;
		i <= 0;
		param_counter <= 0;
		param_even <= 0;
		is_wide <= 0;
		push_wide <= 0;
		state_name<="reset";
		$monitor("i:%d, j:%x, s:%s", i, jvm_opcode, state_name);
	end
	else if (!waiting) begin
	case(state)
		`FETCH_INSTRUCTION: begin
		$monitor("i:%d, j:%x, s:%s, %x, p%d, op%x com%x", 
		i, jvm_opcode, state_name, iram_data, parameter_number,
			jvm_opcode, com_adr);

		i = 1 + i;
			state_name <= "fetch";
		state <= `CHECK_WIDE_and_READ_COUNTER;
		end

		`CHECK_WIDE_and_READ_COUNTER: begin
		state_name <= "check W&RC";
		
		if (iram_data == 8'hFF) begin//end of simulation
			$finish;
			state <= `FSTATE;
		end
		else begin
		//handle the wide command and set appropriate bits to for handling
		//next command
		//reset param counter
			param_counter <= 0;
			//save the opcode for later
			jvm_opcode <= iram_data;
			com_adr <= iram_data;
			//nop
			if(!(|iram_data)) begin	
				state <= `FETCH_INSTRUCTION;
			end
			//wide
			else if(iram_data == `WIDE_OPCODE) begin
				is_wide <= 1;
				state <= `FETCH_INSTRUCTION;
			end
			else 
				if (~ (|parameter_number)) begin
					state <= `ITERATE; 
					q_select <= `Q_ITER;
					
					com_adr <= iram_data;	
				end
				else begin
					param_counter <= 0;
					push_wide <= 0;
					state <= `FETCH_PARAMS;
					param_even <= 0;
					//load push and move commands
					q_select <= `Q_FETCH;
				end
			end
		end

		`FETCH_PARAMS: begin
		
		state_name <= "fetch param";
		$display("c%d n%d e%d i%x pw%d w%d", param_counter,
		parameter_number, param_even, iram_data, push_wide, is_wide);
		// push wide bit
		
		
		// last round
		if (param_counter == (parameter_number << is_wide)) begin
		$display("pushing is wide");
			param_counter <= param_counter + param_even;
			param_even <= !param_even;
			if(param_even) begin
				state <= `ITERATE;
				com_adr <= jvm_opcode;
				q_select <= `Q_ITER;
				push_wide <= 0;
			end
			$monitor("i:%d, j:%x, s:%s", i, jvm_opcode, state_name);
	
		end
		else begin
			//step by half
			param_counter <= param_counter + param_even;
			param_even <= !param_even;

			if (param_counter + !param_even == (parameter_number << is_wide)) begin
		
			push_wide <= 1;
			end
		
		end
		
	end
	`ITERATE: begin
		state_name <= "iter"; 
		if (!(|next_adr)) begin
		is_wide <= 0;
		state <= `FETCH_INSTRUCTION;
		end
		else
		com_adr <= next_adr;
		end
	`FSTATE: begin
	$finish();
	end
	default: state <= `FETCH_INSTRUCTION;
	endcase
	end
end

endmodule
