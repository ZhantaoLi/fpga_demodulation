`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 18:57:47
// Design Name: 
// Module Name: DATA_SELE
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


module DATA_SELE(
    input sys_clk,
    input sys_rst_n,
    input [15:0]SELE,
    input signed [15:0]AM_data,
    input signed [15:0]FM_data,
    input signed [15:0]PSK_data,
    output reg signed [15:0]DAC_data
    );
    always @(posedge sys_clk) begin
        if(!sys_rst_n)begin
            DAC_data<=0;
        end
        else begin
            case (SELE)
                16'h0001:DAC_data<=AM_data;
                16'h0010:DAC_data<=FM_data;
                16'h0100:DAC_data<=PSK_data;
                16'h1000:DAC_data<=0;//CW
                default: DAC_data<=0;//CW
            endcase
        end
    end

endmodule
