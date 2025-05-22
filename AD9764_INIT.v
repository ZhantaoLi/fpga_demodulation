module AD9764_INIT(
	input clk,
	//input ds_clk,
	input rst_n,
	input [13:0]dac_in_data,
	output dac_clk,
	output [13:0] dac_out_data
);


reg [13:0] dac_data_reg;

PLL_CLK_125M u_PLL_CLK_125M(
	.inclk0(clk),
	.c0(dac_clk)
);

//assign dac_clk = ds_clk;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n)	dac_data_reg <= 0;
	else	dac_data_reg <= dac_in_data;
end

assign dac_out_data = dac_data_reg;

endmodule 