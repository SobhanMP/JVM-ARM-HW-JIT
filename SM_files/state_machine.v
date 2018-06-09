module adr_rom(output n_addr, input addr);//used to store next address of the instruction
....
endmodule

module inst_rom(output [31:0]data, input addr);
...
endmodule

module conv_rom(output [31:0]data, input addr);
...
endmodule

module count_rom(output [4:0] count, input [7:0] opcode);
...
endmodule

module push_1byte_rom()
...
endmodule

module push_2byte_rom()
...
endmodule

module state_machine(
        input wire clk
    );
    wire next_byte;
    wire ready;
    reg start_fetch;
    reg is_wide;
    reg state;
    reg waiting;
    reg param_no;

    parameter FETCH_INSTRUCTION = 0;
    parameter CHECK_WIDE = 1;
    parameter READ_COUNTER = 2;
    parameter FETCH_PARAMS = 3;
    parameter CONVERT = 4;

    next_byte_gen  #(.SIZE(RAM_SIZE), .ADDRESS_WIDTH(ADDRESS_WIDTH))
    nbg
    (
        .next_byte(next_byte),
        .ready(ready),

        .pc_reset(1'b1),
        .start(start_fetch),
        .clk(clk)
    );

    wire [4:0] param_bits;
    reg [4:0] counter;
    reg [7:0] opcode;
    reg [7:0] mem_reg;
    reg [15:0] push_reg;

    cnt count_rom(
        .count(param_bits),
        .opcode(opcode)
    )

    always @(posedge clk) begin
        case(state)
            FETCH_INSTRUCTION: 
                case(waiting)
                    1'b0:
                        start_fetch <= 1'b1;
                        waiting <= 1'b1';
                        next_state <= FETCH_INSTRUCTION;
                    1'b1:
                        start_fetch <= 1'b0;
                        if(ready == 1'b1) begin
                            opcode <= next_byte;
                            waiting <= 1'b0;
                            next_state <= CHECK_WIDE;
                        end
                        else begin
                            waiting <= 1'b1;
                            next_state <= FETCH_INSTRUCTION;
                        end
                endcase
            CHECK_WIDE: 
                if(opcode == 8'b1100_0100) begin
                    is_wide <= 1'b1
                    next_state <= FETCH_INSTRUCTION
                end
                else begin
                   next_state = READ_COUNTER; 
                end
            READ_COUNTER:
                if (param_bits == 4'b000)
                    next_state <= CONVERT;
                else begin
                    counter <= param_bits;
                    next_state <= FETCH_PARAMS;
                end
            FETCH_PARAMS:
                case(waiting)
                    1'b0:
                        start_fetch <= 1'b1;
                        waiting <= 1'b1';
                        next_state <= FETCH_PARAMS;
                    1'b1:
                        start_fetch <= 1'b0;
                        if(ready == 1'b1) begin
                            mem_reg <= next_byte;
                            counter <= counter - 1;
                            waiting <= 1'b0;
                            if (is_wide == 0'b0) begin
                                push_reg <= next_byte;
                                next_state <= PUSH_TO_STACK;
                            end
                            else if (param_no == 0'b0) begin
                                push_reg <= next_byte << 8;
                                param_no <= 0'b1;
                                next_state <= FETCH_PARAMS
                            end
                            else if (param_no == 0'b1) begin
                                push_reg <= next_byte or push_reg;
                                param_no <= 0'b0;
                                next_state <= PUSH_TO_STACK
                            end
                        end
                        else begin
                            waiting <= 1'b1;
                            next_state <= FETCH_PARAMS;
                        end
                endcase
            PUSH_TO_STACK
        endcase
    end

endmodule