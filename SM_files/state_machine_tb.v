`include "me_consts.vh"
module state_machine_tb ();

   wire [`SMNL - 1: 0] state;
   wire [`adr_rom_adr_size - 1: 0] com_adr;
   wire [7:0] jvm_opcode;
   wire q_select;
   wire param_even;


   reg [7:0] iram_data;
   reg [7:0] parameter_number;
   reg [`adr_rom_adr_size - 1: 0] next_adr;
   reg clk;
   reg reset;
   reg waiting;

   state_machine sm(
     .state(state),
     .com_adr(com_adr),
     .jvm_opcode(jvm_opcode),
     .q_select(q_select),
     .param_even(param_even),

     .waiting(waiting),
     .iram_data(iram_data),
     .parameter_number(parameter_number),
     .next_adr(next_adr),
     .clk(clk),
     .reset(reset));


  initial begin
  //fill stuff with random data
    waiting = 0;
    clk = 0;
    reset = 0;
    next_adr = 0;
    parameter_number = 2;
    iram_data = 23;

    #2 reset = 1;
    #2 reset = 0;


  end

  always begin
    #2 clk = !clk;
    iram_data <= iram_data + 1;
  end

  always begin
    #10 next_adr = 0;
    #30 next_adr = 12;
  end

endmodule
