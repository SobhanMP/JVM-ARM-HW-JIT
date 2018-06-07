module adr_rom(adr, n_adr);//used to store next address of the instruction
....
endmodule

module inst_rom([31:0]data,adr);
...
endmodule

module conv_rom([31:0]data,adr);
...
endmodule
//use some sort of syntax to create dynamic instructions
module converter([31:0]data_in, [63:0]opcode_data,[31:0]data_out, [31:0]convert_inst, input clk)
//get one instruction from iram and write the armv7 equivalent in oram
module state_machine(
  output [3:0] iram_offset,
  input [7:0] iram_data,
  input iram_rdy;

  output [7:0] oram_adr,
  output [31:0] oram_data,
  output oram_write,
  input reset,
  input clk);

  reg [7:0] inst_adr;
  reg [7:0] n_adr;
  reg [7:0] counter;
  reg [63:0] opcode_data;
  wire [31:0] inst;
  wire [31:0] conv;

  adr_rom x(.adr(inst_adr), .n_adr(n_adr));

  inst_rom y(.data(inst), .adr(inst_adr));

  conv_rom z(.data(conv), .adr(inst_adr));

  converter c(.data_in(inst), .opcode_data(opcode_data),
    .data_out(oram_data), .convert_inst(conv),
    .clk(clk));

  always@(posedge clk or negedge reset)
  begin
    //simple async reset@reset
    // FIXME is this even valid?
    if (!reset)
    begin
      iram_offset <= 4'b0;
      iram_next <= 0;

      oram_adr <= 0;
      oram_data <= 0;
      oram_write <= 0;

      inst_adr <= 0;
      n_adr <= 0;
      counter <= 0;
      opcode_data <= 0;
    end
    else
    begin
      if (iram_rdy)
      begin
        oram_write <= 1;
        //we're just starting
        if (inst_adr == 0)
        begin
          inst_adr <= iram_data;
          counter <= 1;
          opcode_data[7:0] <= inst_adr;
        end
        else
        begin
          opcode_data[counter * 8 + 7 :counter*8] <= iram_data;
          counter <= counter + 1;
          inst_adr <= n_adr;
        end
      end//end if rdy
      else
      begin
        oram_write <= 0;
      end

    end//end else
  end//end always
endmodule
