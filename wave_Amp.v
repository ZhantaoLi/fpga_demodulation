/*module wave_Amp(
	input clk,
	input rst_n,
	input f_key,
	input [13:0] data_i,
	
	output [31:0] data_o
);

reg [17:0] amp_num;

always @(posedge clk, negedge rst_n)
begin 
	if(!rst_n)
		amp_num <= 18'b00;
	else 
		if(f_key==0) 
			amp_num <= amp_num*18'b10;
		else
			amp_num <= amp_num;	
end 

assign data_o == amp_num*data_i;

endmodule 
*/