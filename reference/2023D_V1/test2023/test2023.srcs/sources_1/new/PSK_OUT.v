`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/04 12:55:15
// Design Name: 
// Module Name: PSK_OUT
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


module PSK_OUT(
    input sys_clk,
    input sys_rst_n,
    input signed [15:0]indata,
    output reg PSK_data,
    output reg signed [15:0]PSK_data_ANL
    );
    reg signed [15:0]in_buf[0:2];
    initial begin
        PSK_data<=0;
    end
    always @(posedge sys_clk) begin
        if(!sys_rst_n)begin
            in_buf[0]<=0;
            in_buf[1]<=0;
            in_buf[2]<=0;
            PSK_data<=0;
        end
        else begin
            in_buf[0]<=indata;
            in_buf[1]<=in_buf[0];
            in_buf[2]<=in_buf[1];
                if (((in_buf[2]>=in_buf[1])&&(in_buf[1]>=in_buf[0]))&&(in_buf[1]>=400)&&(in_buf[0]<=400)) begin
                    PSK_data<=~PSK_data;
                end
                else begin
                    PSK_data<=PSK_data;
                end
        end
    end
    always @(posedge sys_clk) begin
         if(!sys_rst_n)begin
            PSK_data_ANL<=0;
        end
        else if (PSK_data) begin
            PSK_data_ANL<=20000;
        end
        else begin
            PSK_data_ANL<=-20000;
        end
    end
endmodule
