module next_byte_gen_tb();

parameter ADDRESS_WIDTH = 8;

reg[ADDRESS_WIDTH - 1:0] pc_reset_value;
reg clk;
reg start;
reg pc_reset;

wire ready;
wire [7:0] next_byte;

next_byte_gen nbg (.clk(clk),
 .start(start),.pc_reset(pc_reset),
 .pc_reset_value(pc_reset_value),
 .ready(ready),.next_byte(next_byte));

initial clk = 0;
always #5 clk = ~clk;

initial
	begin
		pc_reset_value = 8'b0000_0000; start = 1; pc_reset = 1;
		#5 pc_reset_value = 8'b0000_0000; pc_reset = 0;
    #5 pc_reset = 1;

	end

always #10 start = !start;
endmodule
