// 波形选择
module sel_wave(
	input clk,//50M时钟
	input rst_n,//按键复位，低电平有效
	input KEY2_Wave,
	input [13:0] da_ina,
	input [13:0] da_inb,
	input [13:0] da_inc,
	output [13:0] da_out
);

wire key_switch;
reg [13:0] da_out_reg;
reg [1:0] sel ;
assign da_out = da_out_reg;

// delay 
key_delay u_key_delay_sel_wave(
	.clk(clk),
	.kin(KEY2_Wave),
	.kout(key_switch)
);

always @(negedge key_switch)
begin
	if (!key_switch)
		sel <= sel + 1'b1;
end


always @(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		da_out_reg <= 14'd0;
	end
	else
	begin
		case(sel)
			2'b01 : da_out_reg <= da_ina;
			2'b10 : da_out_reg <= da_inb;
			2'b11 : da_out_reg <= da_inc;
			default: da_out_reg <= da_ina;
		endcase
	end
end

endmodule 