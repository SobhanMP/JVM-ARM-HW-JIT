module memory #(
    parameter SIZE = 256,
    parameter ADDRESS_WIDTH = 8)   
    (
        output reg [7:0] data_out,
        output wire ready,
        input wire clk,
        input wire reset,
        input wire [ADDRESS_WIDTH - 1:0] address,
        input wire [31:0] data_in,
        input wire rwn,
        input wire start
    );
	reg [7:0] array[SIZE -1:0];
	reg state;
	reg [7:0] ad_t;
	reg [31:0] data_t;
	reg [1:0] counter;
	reg rwn_t;
	integer i;
	assign ready=~state;
    `ifdef SIMULATION
        always @(posedge clk or negedge reset)
        begin
            if(reset == 0) begin
                for(i=0; i< SIZE - 1; i = i+1) begin
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
                    data_out <= array[ad_t];
                else begin
                    array[ad_t] <= data_t[7:0]
                end
                state <= 0;
            end
        end
    `else
        always @(posedge clk or posedge reset)
        begin
            if(reset) begin
                for(i=0; i<SIZE; i=i+1) begin
                    array[i] <= 8'b0000_0000;
                end
                state=0;
            end
            else if(start & ~state) begin
                ad_t <= address[7:0];
                rwn_t <= rwn;
                data_t <= data_in;
                state <= 1;
            end
            else if(state) begin
                if(rwn_t)
                    data_out <= array[ad_t];
                else begin
                    array[ad_t] <= data_t;
                end
                state=0;
            end
        end
    `endif
endmodule
