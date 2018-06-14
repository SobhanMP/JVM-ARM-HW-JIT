module memory_r #(
	parameter SIZE = 256,
    parameter ADDRESS_WIDTH = 8)   
    (
        output wire ready,
	  output wire [31:0] data_out,

        input wire clk,
        input wire reset,

        input wire [ADDRESS_WIDTH - 1:0] address,
        input wire start
    );


	assign ready=~state;

	reg [7:0] array[SIZE -1:0];
	reg state;
	reg [7:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;

	integer i;
	always @(posedge clk or negedge reset)
		begin
		if(reset == 0) begin
			for(i=0; i < SIZE - 1; i = i+1) begin
				array[i] <= 8'b0000_0000;
			end
			ready <= 1;
			state <= 0;
		end
		else if(start & ~state) begin
			ad_t <= address[7:0];
			counter <= address[1:0];
			state <= 1;
			data_t <= data_in
		end
		//try to create some sort of random delay
		else if(|counter && state)
			counter <= counter-1;
		else	if(state) begin

			data_out[07:00] <= array[(ad_t+0)%SIZE];
			data_out[15:08] <= array[(ad_t+1)%SIZE];
			data_out[23:16] <= array[(ad_t+2)%SIZE];
			data_out[31:24] <= array[(ad_t+3)%SIZE];
			
			state <= 0;
			end 
		end
	end
endmodule

module memory_w #(
	parameter SIZE = 256,
	parameter ADDRESS_WIDTH = 8)   
	(
		output wire ready,
		input wire clk,
		input wire reset,

		input wire [ADDRESS_WIDTH - 1:0] address,
		input wire [31:0] data_in,
		input wire rwn,
		input wire start

		,input wire [ADDRESS_WIDTH - 1:0] a_adr,
		output wire [31:0] a_data
	);

	assign a_data = {array[(a_adr + 3)%SIZE],
		array[(a_adr + 2)%SIZE],
		array[(a_adr + 1)%SIZE],
		array[(a_adr + 0)%SIZE]};
	assign ready=~state;

	reg [7:0] array[SIZE -1:0];
	reg state;
	reg [7:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;

	integer i;
	always @(posedge clk or negedge reset)
		begin
		if(reset == 0) begin
			for(i=0; i < SIZE - 1; i = i+1) begin
				array[i] <= 8'b0000_0000;
			end
			ready <= 1;
			state <= 0;
		end
		else if(start & ~state) begin
			ad_t <= address[7:0];
			counter <= address[1:0];
			state <= 1;
			data_t <= data_in
		end
		//try to create some sort of random delay
		else if(|counter && state)
			counter <= counter-1;
		else	if(state) begin
			array[(ad_t+0)%SIZE] <= data_t[7:0];
			array[(ad_t+1)%SIZE] <= data_t[15:8];
			array[(ad_t+2)%SIZE] <= data_t[23:16];
			array[(ad_t+3)%SIZE] <= data_t[31:24];
			
			state <= 0;
			end 
		end
	end
endmodule

