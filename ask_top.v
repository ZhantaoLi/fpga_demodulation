module ask_top (
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

/*
wire [13:0]dm_out;
am_demo u_am_demo(
	.clk(clk),
	.clk_adc(clk_div),
	.rst_n(rst_n),
	.data_in(ad_out),
	.data_out(dm_out)
);
*/
wire signed [11:0]am_dm_dc;
wire signed [11:0]am_dm_ac;
wire ds_clk;
wire signed [11:0] fir_temp;
am_dm am_dm_inst(
	.clk(clk),
	.rst_n(rst_n),
	.data_in(ad_out),
	.ds_clk(ds_clk),
	.fir_out(fir_temp),
	.am_dm_dc(am_dm_dc),
	.am_dm_ac(am_dm_ac)	
);
wire signed [13:0] dm_out;
//assign dm_out = (fir_temp + 14'd1024)<<3;
assign dm_out = (am_dm_ac + 14'd512) <<< 4;
wire [13:0]da_data;
assign da_data = (dm_out[13]) ? 14'b01_1111_1111_1111 : 14'd0;
AD9764_INIT u_AD9764_INIT(
	.clk(clk),
	//.ds_clk(ds_clk),
	.rst_n(rst_n),
	.dac_in_data(da_data),
	.dac_clk(dac_clk),
	.dac_out_data(dac_out_data)
);

endmodule
