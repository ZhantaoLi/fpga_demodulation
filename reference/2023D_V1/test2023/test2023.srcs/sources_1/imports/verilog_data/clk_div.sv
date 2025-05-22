`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/15 17:23:38
// Design Name: 
// Module Name: clk_div
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


module clk_diver #(
	parameter CONT = 10
)(
	input logic resetn,
	input logic clk,
	input logic clk_en,
	output logic en
);

	logic [$clog2(CONT)-1:0] counter;
	always_ff@(posedge clk)begin 
		if(resetn == 0)begin 
			counter <= 0;
			en <= 0;
		end
		else if(clk_en)begin 
			if(counter == CONT - 1)begin 
				counter <= 0;
				en <= 1;
			end
			else begin 
				counter = counter + 1;
				en <= 0;
			end
		end
		else begin 
			en <= 0;
		end
	end
/*
	always_ff@(posedge clk)begin 
		if((counter == CONT - 1) && clk_en)begin 
			en <= 1;
		end
		else begin 
			en <= 0;
		end
	end
*/
endmodule : clk_diver

