
module clk_div
#(
parameter DIV = 2 // 时钟分频系数
)(
output logic div_clk,
input logic clk,
input logic rst_n
);

// 分频计数
logic [$clog2(DIV)-1 : 0] div_cnt;
always_ff @(posedge clk, negedge rst_n) begin
if (~rst_n)
div_cnt <= '0;
else if (div_cnt < (DIV - 1))
div_cnt <= div_cnt + 1'b1;
else
div_cnt <= '0;
end

// 生成分频时钟
logic div_clk_a;
always_ff @(posedge clk, negedge rst_n) begin
if (~rst_n)
div_clk_a <= 1'b0;
else if (div_cnt < (DIV >> 1))
div_clk_a <= 1'b1;
else
div_clk_a <= 1'b0;
end

logic div_clk_b;
always_ff @(negedge clk, negedge rst_n) begin
if (~rst_n)
div_clk_b <= 1'b0;
else if (div_cnt < (DIV >> 1))
div_clk_b <= 1'b1;
else
div_clk_b <= 1'b0;
end

always_comb begin
if (DIV == 1)
div_clk = clk;
else if (DIV[0] == 0)
div_clk = div_clk_a;
else
div_clk = div_clk_a | div_clk_b;
end

endmodule




