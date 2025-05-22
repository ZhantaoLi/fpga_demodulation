module AD9226_2 (
	input				clk,
	input				rst_n,

	//AD9226 Interface
	output				ad_clk,
	output	[11:0]		ad_out,
	input	[11:0]		ad_in,

	//AD9226 Interface2
	output				ad_clk_2,
	output	[11:0]		ad_out_2,
	input	[11:0]		ad_in_2,
	
	output				clk_sigaltap,
	output	[13:0]	fir_odata,
	output				dac_clk,
	output	[13:0]	dac_out_data
);

wire	clk_64M,clk_div;

PLL_CLK_64M				u0_PLL_CLK_64M(
	.inclk0			(clk),
	.c0				(clk_64M),
	.c1				(clk_sigaltap)
);
clk_div	#(4)			u0_clk_div(
	 .clk			  	(clk_64M),
	 .rst_n			(rst_n),
	 .div_clk		(clk_div)
);

AD9226_INIT			u0_AD9226_INIT(
	.CLK				(clk_div), 
	.AD_IN			(ad_in),		//LSB
	.AD_OUT			(ad_out),	//MSB
	.AD_CLK			(ad_clk)
);

AD9226_INIT			u1_AD9226_INIT(
	.CLK				(clk_div), 
	.AD_IN			(ad_in_2),
	.AD_OUT			(ad_out_2),
	.AD_CLK			(ad_clk_2)
);
//
wire fir_in_valid,fir_out_valid;
wire [13:0] fir_odata_w;
assign fir_in_valid = (clk_div == 1'b1) ? 1'b1 : 1'b0;
fir_lpf u_fir_lpf (
	.clk (clk),
	.reset_n (rst_n),
	
	.ast_sink_data (ad_out),	//in_data
	.ast_sink_valid (fir_in_valid),	//in_high ***
	.ast_sink_error (),
	.ast_sink_ready (),
	
	.ast_source_ready (1'b1),
	.ast_source_data (fir_odata_w),	//out_data
	.ast_source_valid (fir_out_valid),	//out_high
	.ast_source_error (),
);
assign fir_odata = (fir_out_valid == 1'b1) ? fir_odata_w : fir_odata;

//wire [13:0]dac_in_data;
//assign dac_in_data = fir_odata;	//MSB

AD9764_INIT u_AD9764_INIT(
	.clk(clk),
	.rst_n(rst_n),
	.dac_in_data(fir_odata),
	.dac_clk(dac_clk),
	.dac_out_data(dac_out_data)
);

endmodule
