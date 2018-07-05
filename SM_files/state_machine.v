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

    reg [7:0] param_counter;

    wire [`adr_rom_adr_size - 1: 0] next_adr;

    next_adr_rom nar(.data_out(next_adr), .data_in(com_adr));

    always@(negedge reset) begin
      jvm_opcode <= 0;
      com_adr <= 0;
      state <= `FETCH_INSTRUCTION;
      q_select <= 0;

      param_counter <= 0;
      param_even <= 0;
      is_wide <= 0;
      push_wide <= 0;

    end


    always @(posedge clk) begin
        if (reset & !waiting) begin
          case(state)
              `FETCH_INSTRUCTION: begin
                state <= `CHECK_WIDE_and_READ_COUNTER;
              end

              `CHECK_WIDE_and_READ_COUNTER: begin
              //handle the wide command and set appropriate bits to for handling
              //next command
                param_counter <= 0;
                jvm_opcode <= iram_data;
                if(!(|iram_data)) begin
                  state <= `FETCH_INSTRUCTION;
                end
                else if(iram_data == `WIDE_OPCODE) begin
                    is_wide <= 1;
                    state <= `FETCH_INSTRUCTION;
                end
                else if (|parameter_number) begin
                    state <= `FETCH_PARAMS;
                    q_select <= `Q_FETCH;
                end
                else begin
                    state <= `ITERATE;
                    q_select <= `Q_ITER; 
                end
              end

              `FETCH_PARAMS: begin
              // wide bit
                if (param_counter == (parameter_number << is_wide)) begin
                  param_counter <= param_counter + param_even;
                  param_even <= !param_even;
                  push_wide <= 1;
                end
                // last round
                else begin
                  if (param_counter == (parameter_number << is_wide) + 1) begin
                    state <= `ITERATE;
                    com_adr <= jvm_opcode;
                    q_select <= `Q_ITER;
                    param_even <= 0;
                    push_wide <= 0;
                  end
                  else begin
                    //step by half
                    param_counter <= param_counter + param_even;
                    param_even <= !param_even;
                  end
                end
              end

              `ITERATE: begin
                is_wide <= 0;
                if (! (| next_adr))
                  state <= `FETCH_INSTRUCTION;
                else
                  com_adr <= next_adr;
              end
          endcase
        end
    end

endmodule
