`define com_rom_input_size 7
`define com_rom_output_size 32
module com_rom(input [6:0] data_in, output [31:0] data_out);
        begin
            always@*
            begin
                case(data_in)

					7'b0000000: data_out <= 3232'h0;
					7'b0000001: data_out <= 3232'hE49D0004;
					7'b0000010: data_out <= 3232'hE52D0004;
					7'b0000011: data_out <= 3232'hE8BD0003;
					7'b0000100: data_out <= 3232'hE92D0003;
					7'b0000101: data_out <= 3232'hE8BD0007;
					7'b0000110: data_out <= 3232'hE92D0007;
					7'b0000111: data_out <= 3232'hE1A02000;
					7'b0001000: data_out <= 3232'hE92D0006;
					7'b0001001: data_out <= 3232'hE8BD000F;
					7'b0001010: data_out <= 3232'hE92D000F;
					7'b0001011: data_out <= 3232'hEE300A40;
					7'b0001100: data_out <= 3232'hED2D0A01;
					7'b0001101: data_out <= 3232'hEEB70A00;
					7'b0001110: data_out <= 3232'hEEB00A00;
					7'b0001111: data_out <= 3232'hEE300B40;
					7'b0010000: data_out <= 3232'hED2D0B02;
					7'b0010001: data_out <= 3232'hEEB70B00;
					7'b0010010: data_out <= 3232'hECBD0A02;
					7'b0010011: data_out <= 3232'hEE800A20;
					7'b0010100: data_out <= 3232'hEE200A20;
					7'b0010101: data_out <= 3232'hEE300A20;
					7'b0010110: data_out <= 3232'hECFD0A01;
					7'b0010111: data_out <= 3232'hE1A00100;
					7'b0011000: data_out <= 3232'hE080000B;
					7'b0011001: data_out <= 3232'hED900A00;
					7'b0011010: data_out <= 3232'hED9B0A00;
					7'b0011011: data_out <= 3232'hED9B0A01;
					7'b0011100: data_out <= 3232'hED9B0A02;
					7'b0011101: data_out <= 3232'hED9B0A03;
					7'b0011110: data_out <= 3232'hEEB40A60;
					7'b0011111: data_out <= 3232'hEEF1FA10;
					7'b0100000: data_out <= 3232'h00400000;
					7'b0100001: data_out <= 3232'h052D0004;
					7'b0100010: data_out <= 3232'hC3A00001;
					7'b0100011: data_out <= 3232'hC52D0004;
					7'b0100100: data_out <= 3232'hB3E00000;
					7'b0100101: data_out <= 3232'hB52D0004;
					7'b0100110: data_out <= 3232'hECBD0B04;
					7'b0100111: data_out <= 3232'hEEB40B41;
					7'b0101000: data_out <= 3232'hECBD0B02;
					7'b0101001: data_out <= 3232'hEEBD0BC0;
					7'b0101010: data_out <= 3232'hEC510B10;
					7'b0101011: data_out <= 3232'hE92D4800;
					7'b0101100: data_out <= 3232'hEBFFFFFE;
					7'b0101101: data_out <= 3232'hE8BD4800;
					7'b0101110: data_out <= 3232'hE92D000C;
					7'b0101111: data_out <= 3232'hECBD0A01;
					7'b0110000: data_out <= 3232'hEEB10A40;
					7'b0110001: data_out <= 3232'hEE801A20;
					7'b0110010: data_out <= 3232'hEEBD1AC1;
					7'b0110011: data_out <= 3232'hEEB81AC1;
					7'b0110100: data_out <= 3232'hEE211A20;
					7'b0110101: data_out <= 3232'hEE300A41;
					7'b0110110: data_out <= 3232'hEEB70AC0;
					7'b0110111: data_out <= 3232'hEEFD0AC0;
					7'b0111000: data_out <= 3232'hED6D0A01;
					7'b0111001: data_out <= 3232'hECBD1B02;
					7'b0111010: data_out <= 3232'hEEB70BC1;
					7'b0111011: data_out <= 3232'hEE300B01;
					7'b0111100: data_out <= 3232'hEE300B41;
					7'b0111101: data_out <= 3232'hE1A01101;
					7'b0111110: data_out <= 3232'hE0800001;
					7'b0111111: data_out <= 3232'hED800A00;
					7'b1000000: data_out <= 3232'hE1A01181;
					7'b1000001: data_out <= 3232'hED900B00;
					7'b1000010: data_out <= 3232'hED800B00;

                    default: data_out = -1;

                endcase
            end
        end
    endmodule