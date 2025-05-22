module DownSample
#(
  parameter DOWN_SAMPLING_TIME = 8, // 降采样倍数
  parameter DIN_WIDTH = 12
)(
  output logic [DIN_WIDTH-1 : 0]  dout,
  output logic                    dout_valid,

  input  logic [DIN_WIDTH-1 : 0]  din,
  input  logic                    din_valid,

  input  logic clk,
  input  logic rst_n
);


//
logic [DIN_WIDTH-1 : 0] din_r1;
logic [DIN_WIDTH-1 : 0] din_r2;
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



logic [$clog2(DOWN_SAMPLING_TIME+1)-1 : 0] din_valid_cnt;
always_ff @(posedge clk, negedge rst_n) begin
  if (~rst_n)
    din_valid_cnt <= '0;
  else if (din_valid_r2)
    if (din_valid_cnt == DOWN_SAMPLING_TIME)
      din_valid_cnt <= 'd1;
    else
      din_valid_cnt <= din_valid_cnt + 1'b1;
  else if (din_valid_cnt == DOWN_SAMPLING_TIME)
    din_valid_cnt <= '0;
  else
    din_valid_cnt <= din_valid_cnt;
end


always_ff @(posedge clk, negedge rst_n) begin
  if (~rst_n)
    dout <= '0;
  else if (din_valid_cnt == DOWN_SAMPLING_TIME)
    dout <= din_r2;
  else
    dout <= dout;
end


always_ff @(posedge clk, negedge rst_n) begin
  if (~rst_n)
    dout_valid <= 1'b0;
  else if (din_valid_cnt == DOWN_SAMPLING_TIME)
    dout_valid <= 1'b1;
  else
    dout_valid <= 1'b0;
end

endmodule
