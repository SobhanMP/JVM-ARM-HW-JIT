// input: opcode of jvm instruction
// output: number of bytes after that instruction
`include "me_consts.vh"
module count_rom(output reg[`PARAM_LEN - 1:0] count, input wire [7:0] opcode);
    always @(opcode) begin
        case (opcode)
            8'b00010000: count = 5'd1;
            8'b00010001: count = 5'd2;
            8'b00010010: count = 5'd1;
            8'b00010011: count = 5'd2;
            8'b00010100: count = 5'd2;
            8'b00010101: count = 5'd1;
            8'b00010110: count = 5'd1;
            8'b00010111: count = 5'd1;
            8'b00011000: count = 5'd1;
            8'b00011001: count = 5'd1;
            8'b00110110: count = 5'd1;
            8'b00110111: count = 5'd1;
            8'b00111000: count = 5'd1;
            8'b00111001: count = 5'd1;
            8'b00111010: count = 5'd1;
            8'b1000010: count = 5'd2;
            8'b10011001: count = 5'd2;
            8'b10011010: count = 5'd2;
            8'b10011011: count = 5'd2;
            8'b10011100: count = 5'd2;
            8'b10011101: count = 5'd2;
            8'b10011110: count = 5'd2;
            8'b10011111: count = 5'd2;
            8'b10100000: count = 5'd2;
            8'b10100001: count = 5'd2;
            8'b10100010: count = 5'd2;
            8'b10100011: count = 5'd2;
            8'b10100100: count = 5'd2;
            8'b10100101: count = 5'd2;
            8'b10100110: count = 5'd2;
            8'b10100111: count = 5'd2;
            8'b10101000: count = 5'd2;
            8'b10101001: count = 5'd1;
            8'b10101010: count = 5'd16;
            8'b10101011: count = 5'd8;
            8'b10110010: count = 5'd2;
            8'b10110011: count = 5'd2;
            8'b10110100: count = 5'd2;
            8'b10110101: count = 5'd2;
            8'b10110110: count = 5'd2;
            8'b10110111: count = 5'd2;
            8'b10111000: count = 5'd2;
            8'b10111001: count = 5'd4;
            8'b10111010: count = 5'd4;
            8'b10111011: count = 5'd2;
            8'b10111100: count = 5'd1;
            8'b10111101: count = 5'd2;
            8'b11000000: count = 5'd2;
            8'b11000001: count = 5'd2;
            8'b11000100: count = 5'd3;
            8'b11000101: count = 5'd3;
            8'b11000110: count = 5'd2;
            8'b11000111: count = 5'd2;
            8'b11001000: count = 5'd4;
            8'b11001001: count = 5'd4;

            default: count = 5'd0;
        endcase
    end
endmodule
