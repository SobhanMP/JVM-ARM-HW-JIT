`define com_rom_input_size 3
`define com_rom_output_size 32
module com_rom(input [2:0] data_in, output [31:0] data_out);
        begin
            always@*
            begin
                case(data_in)

					3'b000 = 3232'h0;
					3'b000 = 3232'hE83D0003;
					3'b001 = 3232'hE0800001;
					3'b010 = 3232'hE9AD0001;
					3'b011 = 3232'hE0400001;

                    default: data_out = -1;

                endcase
            end
        end
    endmodule