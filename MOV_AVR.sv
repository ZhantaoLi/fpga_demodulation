module MOV_AVR#(
  parameter N = 1024,
  parameter DIN_WIDTH = 12
)(
	input	logic	clk,
	input	logic	rst_n,

	input  logic signed [DIN_WIDTH-1 : 0] din,
	input  logic	din_valid,

	output logic signed [DIN_WIDTH-1 : 0] avg_signal,

	output logic signed [DIN_WIDTH-1 : 0] ac_signal,
	output logic	ac_signal_valid
	
);
logic signed [DIN_WIDTH-1 : 0] fwft_fifo_din;
logic									fwft_fifo_wr_en;

logic signed [DIN_WIDTH-1 : 0] fwft_fifo_dout;
logic									fwft_fifo_rd_en;
//
logic signed [DIN_WIDTH-1 : 0] din_r1;
logic signed [DIN_WIDTH-1 : 0] din_r2;
always_ff @(posedge clk) begin
  din_r1 <= din;
  din_r2 <= din_r1;
end

logic din_valid_r1;
logic din_valid_r2;
always_ff @(posedge clk) begin
  din_valid_r1 <= din_valid;
  din_valid_r2 <= din_valid_r1;
end	

//fifo
logic [$clog2(N) : 0] din_cnt;
always_ff @(posedge clk) begin
  if (~rst_n)
    din_cnt <= '0;
  else if (din_valid_r2 && din_cnt[$clog2(N)] != 1)
    din_cnt <= din_cnt + 1'b1;
  else
    din_cnt <= din_cnt;
end

always_comb begin
  fwft_fifo_din = din_r2;
  fwft_fifo_wr_en = din_valid_r2;

  fwft_fifo_rd_en = din_cnt[$clog2(N)] == 1 && din_valid_r2;
end

//sum
logic signed [$clog2(N)+DIN_WIDTH-1 : 0] sum;
always_ff @(posedge clk) begin
  if (~rst_n)
    sum <= '0;
  else if (din_valid_r2)
    if (din_cnt[$clog2(N)] != 1)
      sum <= din_r2 + sum;
    else
      sum <= (din_r2 - fwft_fifo_dout) + sum;
  else
    sum <= sum;
end

//avg
always_ff @(posedge clk) begin
  if (~rst_n)
    avg_signal <= '0;
  else
    avg_signal <= sum[$clog2(N)+DIN_WIDTH-1 : $clog2(N)];
end

//ac
always_ff @(posedge clk) begin
  if (~rst_n)
    ac_signal <= '0;
  else if (din_valid_r2)
    ac_signal <= din_r2 - avg_signal;
  else
    ac_signal <= ac_signal;
end

always_ff @(posedge clk) begin
  if (~rst_n)
    ac_signal_valid <= '0;
  else
    ac_signal_valid <= din_valid_r2;
end

//
fifo_mov	fifo_mov_inst (
	.clock ( clk ),
	.wrreq ( fwft_fifo_wr_en ),
	.data ( fwft_fifo_din ),
	
	.rdreq ( fwft_fifo_rd_en ),
	.q ( fwft_fifo_dout )
	);

endmodule
