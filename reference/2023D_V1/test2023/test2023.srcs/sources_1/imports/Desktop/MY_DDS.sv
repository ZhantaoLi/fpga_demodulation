`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/11 23:14:22
// Design Name: 
// Module Name: MY_DDS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MY_DDS #(
	parameter PW = 13,
	parameter DW = 16
)(
	input logic rstn_i,
	input logic clk_i,
	input logic clk_en,
	input logic [PW-1:0] phase_acc,
	input logic [PW-1:0] phase_diff,
	output logic [DW-1:0] data_o
);

	localparam LENGTH = 2**PW;
	localparam PI = 3.1415926535;
	logic [PW-1:0] phase;
	logic [DW-1:0] sin_table[2**PW];

	initial begin 
		for(int i=0; i<LENGTH; i++)begin 
			sin_table[i] = $sin(2.0*PI*i/LENGTH)*(2.0**(DW-1)-1);
		end
	end

	always@(posedge clk_i)begin 
		if(rstn_i==0)begin 
			phase <= '0;
		end
		else //if(clk_en)
		begin 
			phase <= phase + phase_acc;
		end
	end

	always@(posedge clk_i)begin 
		if(rstn_i==0)begin 
			data_o <= '0;
		end
		else //if(clk_en)
		begin 
			data_o <= sin_table[phase + phase_diff];
		end
	end
endmodule 