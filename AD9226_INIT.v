module AD9226_INIT(
	input CLK, 
	input [11:0] AD_IN,
	output AD_CLK, 
	output reg [11:0] AD_OUT
);

	assign AD_CLK = CLK;
	
	wire [11:0]reversed_data = {
    AD_IN[0], AD_IN[1], AD_IN[2], AD_IN[3], 
    AD_IN[4], AD_IN[5], AD_IN[6], AD_IN[7], 
    AD_IN[8], AD_IN[9], AD_IN[10], AD_IN[11]};
	always @(posedge CLK)
		AD_OUT <= reversed_data;  
	
endmodule
