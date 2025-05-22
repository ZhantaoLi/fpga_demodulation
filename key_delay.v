module key_delay(
	input clk,
	input kin,//kin 0 按键按下;kin 1 按键悬空
	output reg kout
);//按键消抖

reg[31:0] kh,kl;	//kl按键按下，kh按键悬空
parameter  [31:0]  del = 2500000;	//clk = 125MHz, del 10ms.

always @(posedge clk)
begin
	if(!kin)
		kl<=kl+1'b1;
	else 
		kl<=4'b0000;
end

always @(posedge clk)
begin
	if(kin)
		kh<=kh+1'b1;
	else 
		kh<=4'b0000;
end

always @(posedge clk)
begin
	if(kh > del)	
		kout<=1'b1;
	else if(kl > del)
		kout=1'b0;
end

endmodule 