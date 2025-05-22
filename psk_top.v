module psk_top (
	input				clk,
	input				rst_n,

	//AD9226 Interface
	output				ad_clk,
	input	[11:0]		ad_in,
	
	output				clk_sigaltap,
	output				ds_clk,
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
//wire ds_clk;
wire signed [11:0]mix;
wire signed [11:0]fir1_mix;
wire signed [11:0]ds_mix;
//wire signed [11:0]avr_data;
wire signed [11:0]ac_data;
psk_dm u_psk_dm(
	.clk(clk),
	.clk_adc(clk_div),
	.rst_n(rst_n),
	.data_in(ad_out),
	.ds_clk(ds_clk),
	.mix(mix),
	.fir1_mix(fir1_mix),
	.ds_mix(ds_mix),
	.avr_data(),
	.ac_data(ac_data)
	);

wire [13:0] dm_out;
reg dm_clk,dm_clk_w;
always@(posedge clk) begin
		if(!ac_data[11]) dm_clk <= 1;
		else dm_clk <= 0;
end
always@(posedge dm_clk) begin
	dm_clk_w <= ~dm_clk_w;
end

assign dm_out = (dm_clk_w) ? 14'b01_1111_1111_1111 : 14'd0;

reg [13:0] dac_data_reg;
assign dac_clk = ds_clk;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n)	dac_data_reg <= 0;
	else	dac_data_reg <= dm_out;
end

assign dac_out_data = dac_data_reg;

endmodule
