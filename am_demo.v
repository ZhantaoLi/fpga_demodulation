module am_demo(
        input   clk,
        input   clk_adc,
        input   rst_n,
        input   [11:0] data_in, //12bit adc input MSB
        output  [13:0] data_out  //14bit dac output
    );

    //smooth filter


    //full wave rectification
    parameter ABS = 12'd2048;
    reg [11:0]convert_out;
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            convert_out <= 12'd0;
        else if(data_in[11] == 1'b1) begin
            convert_out <= data_in;
        end
        else if(data_in[11] == 1'b0) begin
            convert_out <= (ABS - data_in) + ABS;
        end
    end

    //fir_lpf
    wire fir_in_valid,fir_out_valid;
    wire [13:0]fir_odata_w;
    wire [13:0]fir_odata;
    assign fir_in_valid = (clk_adc == 1'b1) ? 1'b1 : 1'b0;
    fir_lpf u_fir_lpf (
                .clk (clk),
                .reset_n (rst_n),

                .ast_sink_data (convert_out),	//in_data
                .ast_sink_valid (fir_in_valid),	//in_high ***
                .ast_sink_error (),
                .ast_sink_ready (),

                .ast_source_ready (1'b1),
                .ast_source_data (fir_odata_w),	//out_data
                .ast_source_valid (fir_out_valid),	//out_high
                .ast_source_error (),
            );
    assign fir_odata = (fir_out_valid == 1'b1) ? fir_odata_w : fir_odata;
	
    //output
    assign data_out = fir_odata;
endmodule
