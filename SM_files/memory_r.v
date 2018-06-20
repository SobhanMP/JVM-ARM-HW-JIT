module memory_r #(
		parameter SIZE = 256,
    parameter ADDRESS_WIDTH = 8)
    (
        output wire ready,
				output reg [7:0] data_out,

        input wire clk,
        input wire reset,

        input wire [ADDRESS_WIDTH - 1:0] address,
        input wire start
    );


	reg [7:0] array[SIZE -1:0];
	reg state;
	reg [7:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;

	assign ready=~state;

	integer i;
	always @(posedge clk or negedge reset)
		begin
		if(reset == 0) begin
			array[0] <= 8'h59;
			array[1] <= 8'h5c;
			array[2] <= 8'h57;


			for(i=3; i < SIZE - 1; i = i+1) begin
				array[i] <= 0;
			end
			ad_t <= 0;
			state <= 1'b0;
			counter <= 0;
		end
		else if(start & ~state) begin
			ad_t <= address[7:0];
			counter <= address[1:0];
			state <= 1;
		end
		//try to create some sort of random delay
		else if(|counter && state)
			counter <= counter-1;
		else	if(state) begin

			data_out <= array[ad_t%SIZE];

			state <= 0;
			end
	end
endmodule
