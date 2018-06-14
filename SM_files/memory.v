module memory #(
    parameter SIZE = 256,
    parameter ADDRESS_WIDTH = 8)   
    (
        output reg [31:0] data_out,
        output wire ready,
        input wire clk,
        input wire reset,
        input wire [ADDRESS_WIDTH - 1:0] address,
        input wire [31:0] data_in,
        input wire rwn,
        input wire start,
        input [ADDRESS_WIDTH-1:0] address_tb,
        output [31:0] data_out_tb
    );

	reg [7:0] array[SIZE -1:0];
	reg state;
	reg [7:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;
	reg rwn_t;
	integer i;
	assign ready=~state;
        assign data_out_tb={
            array[(address_tb[ADDRESS_WIDTH-1:0]+3)%SIZE][7:0],
            array[(address_tb[ADDRESS_WIDTH-1:0]+2)%SIZE[7:0],
            array[(address_tb[ADDRESS_WIDTH-1:0]+1)%SIZE][7:0],
            array[address_tb[ADDRESS_WIDTH-1:0]][7:0]};
        always @(posedge clk or negedge reset)
        begin
            if(reset == 0) begin
                for(i=0; i < SIZE - 1; i = i+1) begin
                    array[i] <= 8'b0000_0000;
                end
                state <= 0;
            end
            else if(start & ~state) begin
                ad_t <= address[7:0];
                rwn_t <= rwn;
                data_t <= data_in;
                counter <= address[1:0];
                state <= 1;
            end
            else if(|counter && state)
                counter <= counter-1;
            else if(state) begin
                if(rwn_t)
                    data_out={array[(ad_t+3)%SIZE], array[(ad_t+2)%SIZE], array[(ad_t+1)%SIZE], array[ad_t]};
                else begin
                    array[ad_t] <= data_t[7:0];
				    array[(ad_t+1)%SIZE] <= data_t[15:8];
				    array[(ad_t+2)%SIZE] <= data_t[23:16];
				    array[(ad_t+3)%SIZE] <= data_t[31:24];
                end 
                state <= 0;
            end
        end

endmodule
