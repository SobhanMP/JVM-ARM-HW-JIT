`include "me_consts.vh"
module state_machine
(
        output reg [`SMNL - 1: 0] state,
        output reg [`adr_rom_adr_size - 1: 0] com_adr,
        output reg [7:0] jvm_opcode,
        output reg q_select,
        output reg param_even,

        input wire waiting,
        input wire [7:0] iram_data,
        input wire [7:0] parameter_number,
        input wire [`adr_rom_adr_size - 1: 0] next_adr,
        input wire clk,
        input wire reset
    );

    reg [7:0] param_counter;

    reg is_wide;

    always@(negedge reset) begin
      jvm_opcode <= 0;
      com_adr <= 0;
      state <= `FETCH_INSTRUCTION;
      q_select <= 0;

      param_counter <= 0;
      param_even <= 0;
      is_wide <= 0;

    end


    always @(posedge clk) begin
        if (!reset & !waiting) begin
          case(state)
              `FETCH_INSTRUCTION: begin
                state <= `CHECK_WIDE_and_READ_COUNTER;
              end

              `CHECK_WIDE_and_READ_COUNTER: begin
              //handle the wide command and set appropriate bits to for handling
              //next command
                  param_counter <= 0;
                  jvm_opcode <= iram_data;
                  if(iram_data == `WIDE_OPCODE) begin
                      is_wide <= 1;
                      state <= `FETCH_INSTRUCTION;
                  end
                  else begin
                     state <= `FETCH_PARAMS;
                     q_select <= `Q_FETCH;
                  end
              end

              `FETCH_PARAMS: begin
              // last round
                if (param_counter == parameter_number) begin
                  state <= `ITERATE;
                  com_adr <= jvm_opcode;
                  q_select <= `Q_ITER;
                  param_even <= 0;
                end
                else begin
                  //step by half
                  param_counter <= param_counter + param_even;
                  param_even <= !param_even;
                end
              end

              `ITERATE: begin
              if (! (| next_adr))
                state <= `FETCH_INSTRUCTION;
              else
                com_adr <= next_adr;
              end
          endcase
        end
    end

endmodule
