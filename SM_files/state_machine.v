module addr_rom(output [31:0] n_addr, input [31:0] addr); //used to store next address of the instruction
    reg [31:0] mem [31:0];
    always@* begin

    end
    assign data = mem[addr];
endmodule

module conv_rom(output [31:0] inst_id, input [31:0] addr); // instrs
    reg [31:0] mem [31:0];
    always@* begin

    end
    assign data = mem[addr];
endmodule

module inst_rom(output [31:0] instr, input [31:0] inst_id); // address of instrs
    reg [31:0] mem [31:0];
    always@* begin

    end
    assign data = mem[addr];
endmodule

module count_rom(output [4:0] count, input [7:0] opcode);
    reg [7:0] number_of_bytes [4:0];
    always@* begin

    end
    assign data = mem[addr];
endmodule

module push_1byte_rom();

endmodule

module push_2byte_rom();

endmodule

module state_machine(
        input wire clk
    );
    wire next_byte;
    wire ready_jvm;
    wire ready_arm;
    reg start_fetch;
    reg start_write;
    reg is_wide;
    reg state;
    reg waiting;
    reg param_no;

    parameter FETCH_INSTRUCTION = 0;
    parameter CHECK_WIDE = 1;
    parameter READ_COUNTER = 2;
    parameter FETCH_PARAMS = 3;
    parameter PUSH_TO_STACK = 4;
    parameter READ_NEXT = 5;
    parameter WRITE_INSTRUCTION = 6;

    next_byte_gen  #(.SIZE(RAM_SIZE), .ADDRESS_WIDTH(ADDRESS_WIDTH))
    nbg
    (
        .next_byte(next_byte),
        .ready(ready_jvm),
        .pc_reset(1'b1),
        .start(start_fetch),
        .clk(clk),
        .instr(final_instr) // modify later
    );

    instruction_ram  #(.SIZE(RAM_SIZE), .ADDRESS_WIDTH(ADDRESS_WIDTH))
    instr_ram
    (
        
        .ready(ready_jvm),
        .pc_reset(1'b1),
        .start(start_fetch),
        .clk(clk),
        .word(word_to_write)
    );

    wire [4:0] param_bits;
    reg [4:0] counter;
    reg [7:0] opcode;
    reg [7:0] mem_reg;
    reg [15:0] push_reg;
    wire [31:0] next_addr;
    reg [31:0] current_addr;
    wire [31:0] instr_id;
    reg [31:0] instr_id_reg;
    wire [31:0] instr_wire;
    reg [31:0] word_to_write;

    addr_rom next_addr(
        .addr(current_addr),
        .n_addr(next_addr)
    );

    conv_rom converter(
        .inst_id(instr_id),
        .addr(current_addr)
    );

    inst_rom instrs(
        .inst_id(instr_id_reg),
        .instr(instr_wire)
    );

    cnt count_rom(
        .count(param_bits),
        .opcode(opcode)
    );

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
                        if(ready_jvm == 1'b1) begin
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
            PUSH_TO_STACK:
                

            READ_NEXT:
                instr_id_reg <= inst_id;
                current_addr <= next_addr;
                word_to_write <= instr_wire;

            WRITE_INSTRUCTION:
                case(waiting)
                    1'b0:
                        start_write <= 1'b1;
                        waiting <= 1'b1';
                        next_state <= WRITE_INSTRUCTION;
                    1'b1:
                        start_write <= 1'b0;
                        if(ready_arm == 1'b1) begin
                            waiting <= 1'b0;
                            
                            if (next_addr == 0) begin
                                next_state <= FETCH_INSTRUCTION
                            end
                            else begin
                                next_state <= READ_NEXT;
                            end
                        end
                        else begin
                            waiting <= 1'b1;
                            next_state <= WRITE_INSTRUCTION;
                        end
                endcase

        endcase
    end

endmodule