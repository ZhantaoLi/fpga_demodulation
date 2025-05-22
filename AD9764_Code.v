module AD9764_Code(
	input clk,
	input rst_n,//key_rst_negative_enable
	input KEY1_Fre,//frequency_control
	input KEY2_Wave,//wave_control
	output dac_clk,//输出频率
	output [13:0] dac_out_data//DAC波形数据
);

wire clk_125m;
wire [31:0] fre_k;
wire [11:0] addr;
wire [13:0] wave_z;
wire [13:0] wave_s;
wire [13:0] wave_f;
assign wave_s = {addr,2'b00};
assign wave_f = addr[11] ? 14'b11_1111_1111_1111 : 14'b00_0000_0000_0000;

PLL U_PLL(
	.inclk0(clk),
	.c0(dac_clk),
	.c1(clk_125m)
);

key_con	u_key_con(
	.clk(clk_125m),
	.rst_n(rst_n),
	.key_in(KEY1_Fre),
	.fre_k(fre_k)
);

add_32bit	u_add_32bit(
	.clk(clk_125m),
	.rst(rst_n),
	.fr_k(fre_k),
	.adder(addr)
);

ROM_Sin	u_ROM_Sin(
	.clock(clk_125m),
	.address(addr),
	.q(wave_z)
);

sel_wave u_sel_wave(
	.clk(clk_125m),
	.rst_n(rst_n),
	.KEY2_Wave(KEY2_Wave),
	.da_ina(wave_z),
	.da_inb(wave_s),
	.da_inc(wave_f),
	.da_out(dac_out_data)
);
/*
wave_Amp u_wave_Amp(
	.clk(clk_125m),
	.rst_n(rst_n),
	.f_key(key_3),
	.data_i(dac_out_data),
	.data_o()
);	//幅度控制
*/

endmodule 