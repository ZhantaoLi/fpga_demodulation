module am_dm(
        input   clk,
        input   rst_n,
        input   [11:0] data_in, //12bit adc input MSB
		  output		ds_clk,
		  output	signed	[11:0] fir_out,
		  output	signed	[11:0] am_dm_dc,
        output	signed	[11:0] am_dm_ac
    );

	 //
	 reg signed [11:0] signed_data;
	 always@(posedge clk or negedge rst_n) begin
	  if(!rst_n)
			signed_data <= 12'd0;
	  else
			signed_data <= data_in - 12'd2048;
	 end
 
	wire signed [11:0] avr_am;
	wire signed	[11:0] ac_am;
	MOV_AVR #(1024, 12) u1_MOV_AVR(
		.clk(clk),
		.rst_n(rst_n),
		.din(signed_data),
		.din_valid(1),
		.avg_signal(avr_am),
		.ac_signal(ac_am),
		.ac_signal_valid()
	);
	
    //full wave rectification
	 wire signed [11:0]abs_am;
	 assign abs_am = (ac_am[11]) ? (~ac_am+1'b1) : (ac_am);
    /*reg signed [11:0]abs_am;
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            abs_am <= 12'd0;
        else if(ac_am[11] == 1'b1) begin
            abs_am <= ~ac_am + 1;
        end
        else if(ac_am[11] == 1'b0) begin
            abs_am <= ac_am;
        end
    end
	 */
	 //down sample
	 wire signed [11:0]ds_am;
	 DownSample #(8, 12) am_DownSample(
				 .clk(clk),
				 .rst_n(rst_n),
				 .din(abs_am),
				 .din_valid(1),
				 
				 .dout(ds_am),
				 .dout_valid(ds_clk)
				);

    //fir_lpf
    wire fir_in_valid,fir_out_valid;
    wire signed [11:0]fir_odata_w;
    wire signed [11:0]fir_odata;
    assign fir_in_valid = (ds_clk == 1'b1) ? 1'b1 : 1'b0;
    am_fir u_am_fir (
                .clk (clk),
                .reset_n (rst_n),

                .ast_sink_data (ds_am),	//in_data
                .ast_sink_valid (fir_in_valid),	//in_high ***
                .ast_sink_error (),
                .ast_sink_ready (),

                .ast_source_ready (1'b1),
                .ast_source_data (fir_odata_w),	//out_data
                .ast_source_valid (fir_out_valid),	//out_high
                .ast_source_error (),
            );
    assign fir_odata = (fir_out_valid == 1'b1) ? fir_odata_w : fir_odata;
	 assign fir_out = fir_odata;
	//
	wire signed [11:0] am_lp_ac;
	wire signed [11:0] am_lp_dc;
	MOV_AVR #(1024, 12) u2_MOV_AVR(
		.clk(clk),
		.rst_n(rst_n),
		.din(fir_odata),
		.din_valid(fir_out_valid),
		.avg_signal(am_lp_dc),
		.ac_signal(am_lp_ac),
		.ac_signal_valid()
	);
	//output
    assign am_dm_ac = am_lp_ac;
	 assign am_dm_dc = am_lp_dc;
	 
endmodule
