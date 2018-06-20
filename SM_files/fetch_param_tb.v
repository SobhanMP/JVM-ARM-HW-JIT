module fetch_param_tb;
    wire [31:0] o_data;
    reg even_param;
    reg [15:0] i_data;
    reg clk;

    fetch_param f(.o_data(o_data), .even_param(even_param),
      .i_data(i_data), .clk(clk));

    initial begin
      clk = 0;
      i_data =16'habcd;
      even_param = 0;
    end
    always #2 clk = !clk;
    always #2 even_param = !even_param;
endmodule //fetch_param_tb
