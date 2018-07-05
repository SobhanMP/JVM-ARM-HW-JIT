`include "me_consts.vh"
module state_machine
(
        output reg [`SMNL - 1: 0] state,
        output reg [`adr_rom_adr_size - 1: 0] com_adr,
        output reg [7:0] jvm_opcode,
        output reg q_select,
        output reg param_even,
        output reg push_wide,
        output reg is_wide,

        input wire waiting,
        input wire [7:0] iram_data,
        input wire [`PARAM_LEN - 1:0] parameter_number,
        input wire clk,
        input wire reset
    );
    // used to move the right number of parameters
    reg [7:0] param_counter;
    //holds the next address of the rum
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
        if (!reset & !waiting) begin
          case(state)
              `FETCH_INSTRUCTION: begin
                state <= `CHECK_WIDE_and_READ_COUNTER;
                $display("fetching instruction");
                $strobe("%d", state);
                $strobe("%d", `CHECK_WIDE_and_READ_COUNTER);
              end

              `CHECK_WIDE_and_READ_COUNTER: begin
              $display("check_wide and read counter");
              //handle the wide command and set appropriate bits to for handling
              //next command
                //reset param counter
                param_counter <= 0;
                //save the opcode for later
                jvm_opcode <= iram_data;
                //nop
                if(!(|iram_data)) begin
                  $display("nop");
                  state <= `FETCH_INSTRUCTION;
                end
                //wide
                else if(iram_data == `WIDE_OPCODE) begin
                    $display("wide\n");
                    is_wide <= 1;
                    state <= `FETCH_INSTRUCTION;
                end
                //no parameter
                else if (|parameter_number) begin
                    $display("has parameter\n");
                    state <= `FETCH_PARAMS;
                    //load push and move commands
                    q_select <= `Q_FETCH;
                end
                else begin
                    $display("no parameter\n");
                    state <= `ITERATE;
                    q_select <= `Q_ITER;
                end
              end

              `FETCH_PARAMS: begin
                // push wide bit
                if (param_counter == (parameter_number << is_wide)) begin
                  param_counter <= param_counter + param_even;
                  param_even <= !param_even;
                  push_wide <= 1;
                end
                else begin
                  // last round
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

                if (!(|next_adr)) begin
                  is_wide <= 0;
                  state <= `FETCH_INSTRUCTION;
                end
                else
                  com_adr <= next_adr;
              end
              default:
                state <= `FETCH_INSTRUCTION;
          endcase
        end
    end

endmodule
