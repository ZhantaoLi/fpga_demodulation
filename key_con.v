module key_con (
	input clk, 
	input rst_n,
	input key_in,
	output [31:0] fre_k
);//频率控制字选择

reg     [31:0]   fre;
initial
begin
	fre <= 32'd34360;			// 1KHz  2^32/125M*1K
end

wire key_out;

// delay 
key_delay u_key_delay(
	.clk(clk),
	.kin(key_in),
	.kout(key_out)
);

always @(negedge key_out) 
begin
	if(fre<32'd343600)				// 10KHz
		fre <= fre + 32'd34360;
	else if(fre<32'd3436000)		// 100KHz
		fre <= fre + 32'd343600;
	else if(fre<32'd34360000)		// 1MHz
		fre <= fre + 32'd3436000;
	else if(fre<32'd34360000)		// 10MHz
		fre <= fre + 32'd3436000;
	else
		fre <= 32'd34360;
end

assign  fre_k = fre;

endmodule 