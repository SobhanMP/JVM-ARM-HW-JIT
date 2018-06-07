module rom(address, data);
input [11:0] address; //needs to be changed
output [31:0] data;	//needs to be changed
reg [31:0] array[4095:0];	//needs to be changed
always @*
begin
array[0]=31'b0000000000000000000000000000;//to program the rom
array[1]=31'b0000000000000000000000000000;
end
assign data=array[address];
endmodule