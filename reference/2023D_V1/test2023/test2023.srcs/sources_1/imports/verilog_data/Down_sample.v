`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/10 10:41:33
// Design Name: 
// Module Name: Down_sample
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




module Down_sample_2(
    input sys_clk,
    input sys_rst_n,
    input signed[15:0]indata,
    output reg signed[15:0]outdata,
    output clk_div64,
    output signed[23:0]DS_buf_1,DS_buf_2,DS_buf_3,DS_buf_4,DS_buf_5,DS_buf_6
    );
    wire clk_div2,clk_div4,clk_div8,clk_div16,clk_div32;
    always @(posedge clk_div64) begin
        outdata<=DS_buf_6[23:8];
    end
    wire signed [23:0]input_buf;
    assign input_buf = indata<<<8;

    FIR_DS3 DS_fir1(sys_clk, sys_rst_n, 1,input_buf, DS_buf_1);
    FIR_DS3 DS_fir2(sys_clk, sys_rst_n, clk_div2,DS_buf_1, DS_buf_2);
    FIR_DS3 DS_fir3(sys_clk, sys_rst_n,clk_div4 ,DS_buf_2, DS_buf_3);
    FIR_DS3 DS_fir4(sys_clk, sys_rst_n,clk_div8 ,DS_buf_3, DS_buf_4);
    FIR_DS3 DS_fir5(sys_clk, sys_rst_n,clk_div16 ,DS_buf_4, DS_buf_5);
    FIR_DS3 DS_fir6(sys_clk, sys_rst_n,clk_div32 ,DS_buf_5, DS_buf_6);


    clk_diver #(2) myclk_diver2(sys_rst_n, sys_clk, 1'b1, clk_div2);
    clk_diver #(4) myclk_diver4(sys_rst_n, sys_clk, 1'b1, clk_div4);
    clk_diver #(8) myclk_diver8(sys_rst_n, sys_clk, 1'b1, clk_div8);
    clk_diver #(16) myclk_diver16(sys_rst_n, sys_clk, 1'b1, clk_div16);
    clk_diver #(32) myclk_diver32(sys_rst_n, sys_clk, 1'b1, clk_div32);
    clk_diver #(64) myclk_diver64(sys_rst_n, sys_clk, 1'b1, clk_div64);
endmodule

