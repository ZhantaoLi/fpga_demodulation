module dm_test_top (
	input				clk,
	input				rst_n,

	//AD9226 Interface
	output				ad_clk,
	input	[11:0]		ad_in,
	
	output				clk_sigaltap,
	
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
//
wire [11:0]ad_out;
AD9226_INIT			u0_AD9226_INIT(
	.CLK				(clk_div), 
	.AD_IN			(ad_in),		//LSB
	.AD_OUT			(ad_out),	//MSB
	.AD_CLK			(ad_clk)
);


wire ds_clk;
wire signed [11:0]mix;
wire signed [11:0]fir1_mix;
wire signed [11:0]ds_mix;
wire signed [11:0]fir2_mix;
fm_dm u_fm_dm(
	.clk(clk),
	.clk_adc(clk_div),
	.rst_n(rst_n),
	.data_in(ad_out),
	.ds_clk(ds_clk),
	.mix(mix),
	.fir1_mix(fir1_mix),
	.ds_mix(ds_mix),
	.fir2_mix(fir2_mix)
	);

wire [13:0] dm_out;
//assign dm_out = (fir2_mix);
assign dm_out = (fir2_mix + 12'd1024)<<2;

AD9764_INIT u_AD9764_INIT(
	.clk(clk),
	//.ds_clk(ds_clk),
	.rst_n(rst_n),
	.dac_in_data(dm_out),
	.dac_clk(dac_clk),
	.dac_out_data(dac_out_data)
);

endmodule
