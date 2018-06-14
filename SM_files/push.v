module push(output [31:0] o, input [15:0] im, input adr);
    assign o = adr? 32'hE5_2D_00_04 : {12'hE34, im[15:12], 4'h0, im[11:0]};
endmodule

module push_tb;
    reg [15:0] i;
    reg adr;
    wire [31:0] o;
    push_rom r(o, i, adr);
    initial begin
        i = 16'h1234;
        adr = 0;
        #1
        adr = 1;
        #1
        $finish;
    end
endmodule

