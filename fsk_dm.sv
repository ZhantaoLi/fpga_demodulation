module fsk_dm(
        input   clk,
		  input	 clk_adc,
        input   rst_n,
        input   [11:0] data_in, //12bit adc input MSB
		  output  ds_clk,
        //output	 signed	[11:0] mix,
        //output	 signed	[11:0] fir1_mix,
		  //output	 signed	[11:0] ds_mix,
		  output  signed	[11:0] fir2_mix
    );
    parameter NUM = 18;
    reg signed [11:0]signed_data;
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            signed_data <= 12'd0;
        else
            signed_data <= data_in - 12'd2048;
    end

    //delay 1/4 carrier period 
    logic signed [11:0]databuf[0:NUM-1];
    integer i;
    always @(posedge clk) begin
        for (i = NUM-2; i >= 0; i = i - 1) begin
            databuf[i+1] <= databuf[i];
        end
        databuf[0] <= signed_data;
    end
	 
    //mix 
    logic signed [11:0]mix;
    always @(posedge clk) begin
        mix <= ((2*12)'(databuf[NUM-1]) * (2*12)'(signed_data)) >>> (12-1);
    end
	 
	 //fir_lpf 2*fc
    logic fir1_in_valid,fir1_out_valid;
    logic signed [11:0]fir1_mix;
	 logic signed [11:0]fir1_mix_w;
    assign fir1_in_valid = (clk_adc == 1'b1) ? 1'b1 : 1'b0;
    fir_lpf u_fm_fir1(
               .clk(clk),
               .reset_n(rst_n),

               .ast_sink_data (mix),	//in_data
               .ast_sink_valid (fir1_in_valid),	//in_high ***
               .ast_sink_error (),
               .ast_sink_ready (),

               .ast_source_ready (1'b1),
               .ast_source_data (fir1_mix_w),	//out_data
               .ast_source_valid (fir1_out_valid),	//out_high
               .ast_source_error (),
             );
    assign fir1_mix = (fir1_out_valid == 1'b1) ? fir1_mix_w : fir1_mix;
	 
	 //downsample
	 logic signed [11:0]ds_idata;
	 assign ds_idata = fir1_mix <<< 2;	//enlarge
    logic signed [11:0]ds_mix;
    DownSample #(8, 12) fm_DownSample(
                   .clk(clk),
                   .rst_n(rst_n),
                   .din(ds_idata),
                   .din_valid(1),

                   .dout(ds_mix),
                   .dout_valid(ds_clk)
                );
	 
    //fir2
    logic fir2_in_valid,fir2_out_valid;
    //logic signed [11:0]fir2_mix;
	 logic signed [11:0]fir2_mix_w;
	 assign fir2_in_valid = (ds_clk == 1'b1) ? 1'b1 : 1'b0;
	 
    fm_fir_b u_fm_fir_2(
                 .clk(clk),
                 .reset_n(rst_n),

                 .ast_sink_data (ds_mix),	//in_data
                 .ast_sink_valid (fir2_in_valid),	//in_high ***
                 .ast_sink_error (),
                 .ast_sink_ready (),

                 .ast_source_ready (1'b1),
                 .ast_source_data (fir2_mix_w),	//out_data
                 .ast_source_valid (fir2_out_valid),	//out_high
                 .ast_source_error (),
             );
	 assign fir2_mix = (fir2_out_valid == 1'b1) ? fir2_mix_w : fir2_mix;
	 
endmodule
