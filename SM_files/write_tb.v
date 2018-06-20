module write_tb();

parameter ADDRESS_WIDTH = 8;

reg[ADDRESS_WIDTH - 1:0] reset_value;
reg clk;
reg start;
reg reset;

wire ready;
reg [31:0] data;

write w (.clk(clk),
 .start(start),.reset(reset),
 .ready(ready),.data(data));

initial clk = 0;
always #5 clk = !clk;

initial
	begin
		reset_value = 8'b0000_0000; start = 1; reset = 1; data = 0;
		#5 reset = 0;
    #5 reset = 1;

	end

always #10 start = !start;
always #20 data = data + 1;
endmodule
