module fir_test (
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

    reg signed [11:0]signed_data;
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            signed_data <= 12'd0;
        else
            signed_data <= ad_out - 12'd2048;
    end
    logic fir1_in_valid,fir1_out_valid;
    logic signed [11:0]fir1_mix;
	 logic signed [11:0]fir1_mix_w;
    assign fir1_in_valid = (clk_div == 1'b1) ? 1'b1 : 1'b0;
    fm_fir1 u_fm_fir1(
               .clk(clk),
               .reset_n(rst_n),

               .ast_sink_data (signed_data),	//in_data
               .ast_sink_valid (fir1_in_valid),	//in_high ***
               .ast_sink_error (),
               .ast_sink_ready (),

               .ast_source_ready (1'b1),
               .ast_source_data (fir1_mix_w),	//out_data
               .ast_source_valid (fir1_out_valid),	//out_high
               .ast_source_error (),
             );
    assign fir1_mix = (fir1_out_valid == 1'b1) ? fir1_mix_w : fir1_mix;

wire [13:0] dm_out;
assign dm_out = 0;
AD9764_INIT u_AD9764_INIT(
	.clk(clk),
	//.ds_clk(ds_clk),
	.rst_n(rst_n),
	.dac_in_data(dm_out),
	.dac_clk(dac_clk),
	.dac_out_data(dac_out_data)
);

endmodule
