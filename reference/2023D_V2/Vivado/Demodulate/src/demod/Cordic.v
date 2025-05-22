`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: Cordic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Cordic算法模块
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Cordic #(
	parameter XY_BITS      = 12,			// 算法中横纵坐标的位数，默认精度12位
	parameter PH_BITS      = 32,			// 算法中角度量化值的位数，默认精度32位
	parameter ITERATIONS   = 32,			// 迭代次数32，迭代次数越多，最终“旋转”的角度就越小，得到的结果越精确
	parameter CORDIC_STYLE = "ROTATE",		// CORDIC算法的模式，这里分为"ROTATE"（计算cos和sin）和"VECTOR"(计算tan-1)两种
	parameter PHASE_ACC    = "ON"
)(
	input   clk_in,							// 输入时钟，时钟频率决定了算法每一次迭代的执行速率
	input   RST,							// 复位
	input   signed [XY_BITS-1:0] x_i,		// 输入横坐标，表示旋转未开始时的位置
	input   signed [XY_BITS-1:0] y_i,		// 输入纵坐标，表示旋转未开始时的位置
	input   signed [PH_BITS-1:0] phase_in,	// 输入相位（角度），在旋转模式下，这个相位就是迭代旋转的最终目标

	output  signed [XY_BITS-1:0] x_o,		// 输出横坐标，在旋转模式下，由这个端口输出cos
	output  signed [XY_BITS-1:0] y_o,		// 输出纵坐标，在旋转模式下，由这个端口输出sin
	output  signed [PH_BITS-1:0] phase_out, // 输出相位（角度），在矢量模式下，由这个端口输出tan-1（辐角）的计算结果
	output  signed [XY_BITS:0] magnitude,   // 输出幅度，在矢量模式下，由这个端口输出输入横纵坐标对应的幅度，比输入横纵坐标多一位

	input   valid_in, 
	output  valid_out
);

// 理论上来说，当x0 = K， y0 = 0时，最终能计算得到 xn = cosz0, yn = sinz0
// 但一般的小数值无法存储在XY_BITS之中
// 因此考虑将 【-1，1】区间内的正、余弦值量化在【-2^(XY_BITS-1) + 2，2^(XY_BITS-1) - 2】之间
// 采用的方法就是将K扩大2^(XY_BITS-1) - 1倍。
localparam [XY_BITS-1:0] K_COS = 0.607252935 * (2 ** (XY_BITS - 1) - 2);


/*
函数tanangle，获取每次迭代时旋转的角度theta_i的量化值
输入i:迭代次数，取值范围0~31
输出tanangle：角度的量化值
*/

/*
默认角度的量化准则：量化范围-180~180°，量化位数32位，量化区间大小为(360/2^32)
量化位数变化时的量化准则：当量化位数少于32时，直接将32位量化的量化值右移即可
注意角度是有符号的，角度的前两位与其对应的象限：
	00——第一象限
	01——第二象限
	10——第三象限，注意负数按补码形式存储
	11——第四象限
*/
function [PH_BITS-1:0] tanangle;
input [4:0] i;
begin
	case (i)
		5'b00000: tanangle = (32'h20000000 >> (32 - PH_BITS));   //i = 0, tan(theta_i) = 1/2^0 = 1, 对应量化值2^29 = 0x20000000
		5'b00001: tanangle = (32'h12e4051e >> (32 - PH_BITS));   //i = 1, tan(theta_i) = 1/2^1 = 1/2,对应量化值2316933406 = 0x12e4051e
		5'b00010: tanangle = (32'h09fb385b >> (32 - PH_BITS));   //i = 2, tan(theta_i) = 1/2^2 = 1/4, 对应量化值2167458907 = 0x09fb385b
		5'b00011: tanangle = (32'h051111d4 >> (32 - PH_BITS));   //i = 3, tan(theta_i) = 1/2^3 = 1/8,对应量化值285004756 = 0x051111d4
		// 以下同理，原注释错误，这里不再纠正
		5'b00100: tanangle = (32'h028b0d43 >> (32 - PH_BITS));   //tan = 1/2^5 = 1/32
		5'b00101: tanangle = (32'h0145d7e1 >> (32 - PH_BITS));   //tan = 1/2^6 = 1/64
		5'b00110: tanangle = (32'h00a2f61e >> (32 - PH_BITS));   //tan = 1/2^7 = 1/128
		5'b00111: tanangle = (32'h00517c55 >> (32 - PH_BITS));   //tan = 1/2^8 = 1/256
		5'b01000: tanangle = (32'h0028be53 >> (32 - PH_BITS));   //tan = 1/2^9 = 1/512
		5'b01001: tanangle = (32'h00145f2f >> (32 - PH_BITS));   //tan = 1/2^10 = 1/1024
		5'b01010: tanangle = (32'h000a2f98 >> (32 - PH_BITS));   //tan = 1/2^11 = 1/2048
		5'b01011: tanangle = (32'h000517cc >> (32 - PH_BITS));   //tan = 1/2^12 = 1/4096
		5'b01100: tanangle = (32'h00028be6 >> (32 - PH_BITS));   //tan = 1/2^13 = 1/8192
		5'b01101: tanangle = (32'h000145f3 >> (32 - PH_BITS));   //tan = 1/2^14 = 1/16384
		5'b01110: tanangle = (32'h0000a2fa >> (32 - PH_BITS));   //tan = 1/2^15 = 1/32768
		5'b01111: tanangle = (32'h0000517d >> (32 - PH_BITS));   //tan = 1/2^16 = 1/65536
		5'b10000: tanangle = (32'h000028be >> (32 - PH_BITS));   //tan = 1/2^17 = 1/131072
		5'b10001: tanangle = (32'h0000145f >> (32 - PH_BITS));   //tan = 1/2^18 = 1/262144
		5'b10010: tanangle = (32'h00000a30 >> (32 - PH_BITS));   //tan = 1/2^19 = 1/524288
		5'b10011: tanangle = (32'h00000518 >> (32 - PH_BITS));   //tan = 1/2^20 = 1/1048576
		5'b10100: tanangle = (32'h0000028c >> (32 - PH_BITS));   //tan = 1/2^21 = 1/2097152
		5'b10101: tanangle = (32'h00000146 >> (32 - PH_BITS));   //tan = 1/2^22 = 1/4194304
		5'b10110: tanangle = (32'h000000a3 >> (32 - PH_BITS));   //tan = 1/2^23 = 1/8388608
		5'b10111: tanangle = (32'h00000051 >> (32 - PH_BITS));   //tan = 1/2^24 = 1/16777216
		5'b11000: tanangle = (32'h00000029 >> (32 - PH_BITS));   //tan = 1/2^25 = 1/33554432
		5'b11001: tanangle = (32'h00000014 >> (32 - PH_BITS));   //tan = 1/2^26 = 1/67108864
		5'b11010: tanangle = (32'h0000000a >> (32 - PH_BITS));   //tan = 1/2^27 = 1/134217728
		5'b11011: tanangle = (32'h00000005 >> (32 - PH_BITS));   //tan = 1/2^28 = 1/268435456
		5'b11100: tanangle = (32'h00000003 >> (32 - PH_BITS));   //tan = 1/2^29 = 1/536870912
		5'b11101: tanangle = (32'h00000001 >> (32 - PH_BITS));   //tan = 1/2^30 = 1/1073741824
		5'b11110: tanangle = (32'h00000001 >> (32 - PH_BITS));   //tan = 1/2^31 = 1/2147483648
		5'b11111: tanangle = (32'h00000000 >> (32 - PH_BITS));   //tan = 1/2^32 = 1/4294967296
	endcase
end
endfunction

// 声明迭代过程中用到的各个数组变量
// 这里的数组不是用来存储单一输入在不同次迭代中得到的结果的
// 而是用来以流水线的形式，对连续的ITERATIONS个样值同时进行迭代的
// 举个例子，位于[0]的输入经过第0次旋转后，结果顺延至[1]位等待第1次旋转，与此同时新的数据进入[0]位准备开始第0次旋转

// 迭代过程中x、y的位数比输入多一位，是考虑到在向量模式下有可能出现由于输入横纵坐标较大导致旋转过程中横纵坐标溢出的情况
reg        [1:0] Quad_data [ITERATIONS:0];      // 表示输入角度所在的象限，用输入量化值的高2bit表示
												// 注意在两个模式下Quad_data的值与象限的对应关系不同
												// 旋转模式下：	00——第一象限；01——第二象限；10——第三象限；11——第四象限
												// 向量模式下： 00——第一象限；01——第四象限；10——第二象限；11——第三象限
reg signed [XY_BITS + 1:0]   x  [ITERATIONS:0];   // 旋转过程中点的横坐标
reg signed [XY_BITS + 1:0]   y  [ITERATIONS:0];   // 旋转过程中点的纵坐标
reg signed [PH_BITS:0]   z  [ITERATIONS:0];   // 旋转过程中的角度误差（旋转模式）或 已经旋转的角度（向量模式）

// 对各个数组变量进行初始化，全部初始化为0
integer m;
initial begin
	for (m = 0; m<=ITERATIONS; m=m+1) begin
		x[m] = 0;
	end    
end

integer n;
initial begin
	for (n = 0; n<=ITERATIONS; n=n+1) begin
		y[n] = 0;
	end    
end

integer s;
initial begin
	for (s = 0; s<=ITERATIONS; s=s+1) begin
		z[s] = 0;
	end    
end

integer k;
initial begin
	for (k = 0; k<=ITERATIONS; k=k+1) begin
		Quad_data[k] = 0;
	end    
end

// 开始迭代，这里使用for循环进行迭代，利用generate关键字声明循环语句，genvar关键字声明只有在generate声明语句中才能使用的变量
// CORDIC是循环语句的实例名称，相当于标签（label）
genvar i;
generate for(i = 0; i < ITERATIONS; i = i+1) begin : CORDIC
// 位于第i位的元素要进行第i次迭代，旋转的角度theta_i满足tan(theta_i) =  2^(-i)
// 迭代结果进入下一位
always @ (posedge clk_in) begin
    if (RST) begin
      x[i+1] <= 0;
      y[i+1] <= 0;
      z[i+1] <= 0;
    end 
    else begin
        // 如果是旋转模式，就根据当前Z（目标角度与当前旋转角度的差距）的正负判断旋转方向
		if (CORDIC_STYLE == "ROTATE") begin
		    // 若Z<0，则顺时针旋转
			if (z[i] < 0) begin
				x[i+1] <= x[i] + (y[i]>>>i);     // x[i+1] = x[i] + tan(theta_i) * y[i]
				y[i+1] <= y[i] - (x[i]>>>i);    // y[i+1] = - tan(theta_i) * x[i] + y[i]    
				z[i+1] <= z[i] + tanangle(i);   // z[i+1] = z[i] + theta_i
			end 
            // 若Z>0，则逆时针旋转
			else begin
				x[i+1] <= x[i] - (y[i]>>>i);    // x[i+1] = x[i] - tan(theta_i) * y[i]
				y[i+1] <= y[i] + (x[i]>>>i);    // y[i+1] = tan(theta_i) * x[i] + y[i]
				z[i+1] <= z[i] - tanangle(i);   // z[i+1] = z[i] - theta_i   
			end
	    end		
	    // 如果是向量模式，由于初始点一定位于第一、四象限（向x轴正半轴旋转），因此只需要根据y的正负判断旋转方向
		else if(CORDIC_STYLE == "VECTOR") begin
		    // 若y>0，则顺时针旋转
			if (y[i] > 0) begin
				x[i+1] <= x[i] + (y[i]>>>i); 
				y[i+1] <= y[i] - (x[i]>>>i); 
				z[i+1] <= z[i] + tanangle(i);   // 这里的Z表示当前已经逆时针旋转的角度，虽然含义不同但变化一致
			end 
			// 若y<0，则逆时针旋转
			else begin
				x[i+1] <= x[i] - (y[i]>>>i); 
				y[i+1] <= y[i] + (x[i]>>>i); 
				z[i+1] <= z[i] - tanangle(i);
			end
		end
	end
end

// 象限数据顺延
always @ (posedge clk_in) begin
	Quad_data[i+1]  <= Quad_data[i];
end

end 
endgenerate

// 完成旋转模式下的赋初值以及输出值的构造
generate if (CORDIC_STYLE == "ROTATE") begin : IQ_Gen

// 当用cordic算法生成两路正交载波时，输入到算法中的实际上是频率控制字，代表了相邻两个时钟的载波相位变化量
// 因此实际要计算cos和sin的相位应该由控制字累加得到，即PHASE_ACC模式

// 而如果只是一般的计算cos和sin，就不需要PHASE_ACC模式
reg [PH_BITS - 1 : 0] Phase_input = 0;
if (PHASE_ACC == "ON") begin
	reg [PH_BITS - 1 : 0] addr_r0 = 0;
	always @(posedge clk_in) begin
        if( (addr_r0 + phase_in) < phase_in ) begin
            addr_r0 <= phase_in;
        end
        else begin
            addr_r0 <= addr_r0 + phase_in;
        end
	end
	
	always @(posedge clk_in) begin   
		Phase_input <= addr_r0;
	end
end
else if (PHASE_ACC == "OFF") begin
	always @(posedge clk_in) begin
		Phase_input <= phase_in;
	end
end

// 旋转模式下，对开始旋转时的横纵坐标及角度误差赋初值
// 仅当RST = 0且valid_in = 1（输入有效）时输入数据
always @(posedge clk_in) begin
	if(valid_in & (~RST)) begin
		x[0] <= K_COS;
		y[0] <= 0;
		z[0] <= Phase_input[PH_BITS - 3 : 0];     // 目标旋转角度只可能位于第一象限，因为高2bit被取走了
		Quad_data[0] <= Phase_input[PH_BITS - 1 : PH_BITS - 2];       // 取出高2bit，作为输入角度所在的象限数据
	end
	else begin
		x[0] <= 0;
		y[0] <= 0;
		z[0] <= 0;
		Quad_data[0] <= 0;
	end
end

// 在旋转模式下，从第一象限的计算结果得到位于其他象限的计算结果
reg signed [XY_BITS:0] cos = 0;       // 最终计算得到的余弦值
reg signed [XY_BITS:0] sin = 0;       // 最终计算得到的正弦值
always @ (posedge clk_in) begin
	case(Quad_data[ITERATIONS]) 
	2'b00:begin //if the phase is in first quadrant,the sin(X)=sin(A),cos(X)=cos(A)
	        cos <= x[ITERATIONS];
	        sin <= y[ITERATIONS];
	      end
	2'b01:begin //if the phase is in second quadrant,the sin(X)=sin(A+90)=cosA,cos(X)=cos(A+90)=-sinA
	        cos <= ~(y[ITERATIONS]) + 1'b1;    // -sin 注意有符号数是按照补码存储的
	        sin <= x[ITERATIONS];  // cos
	      end
	2'b10:begin //if the phase is in third quadrant,the sin(X)=sin(A+180)=-sinA,cos(X)=cos(A+180)=-cosA
	        cos <= ~(x[ITERATIONS]) + 1'b1;// -cos
	        sin <= ~(y[ITERATIONS]) + 1'b1;// -sin
	      end
	2'b11:begin //if the phase is in forth quadrant,the sin(X)=sin(A+270)=-cosA,cos(X)=cos(A+270)=sinA
	        cos <= y[ITERATIONS]; // sin
	        sin <= ~(x[ITERATIONS]) + 1'b1; // -cos
	      end
	endcase
end
assign x_o = cos[XY_BITS - 1:0];                       // 输入角度的余弦值，实际高两位都属于符号位，因此可以舍去一位
assign y_o = sin[XY_BITS - 1:0];                       // 输入角度的正弦值
assign phase_out = z[ITERATIONS];       // （角度误差）趋于0
end
endgenerate


// 完成旋转模式下的赋初值以及输出值的构造
generate if (CORDIC_STYLE == "VECTOR") begin : Demodule_Gen
//localparam MODUIUS_COE = ;

// 向量模式下，对开始旋转时的横纵坐标及角度误差赋初值
// 仅当RST = 0且valid_in = 1（输入有效）时输入数据
always @(posedge clk_in) begin
	if(valid_in & (~RST)) begin
	   // 与旋转模式不同，向量模式需保证初始位置位于第一、四象限
	   // 判断(x,y)位于哪个象限，只需看最高的符号位是0（正）还是1（负）
		case ({x_i[XY_BITS-1],y_i[XY_BITS-1]}) 
		   // 当输入的初始位置位于第一、四象限时，不做操作
		    2'b00 : begin   x[0] <=  x_i; 
						    y[0] <=  y_i; end
		    2'b01 : begin   x[0] <=  x_i; 
			                y[0] <=  y_i; end
		  // 当输入的初始位置位于第二、三象限时，分别将其旋转到第一、四象限
		    2'b10 : begin   x[0] <=  y_i;       // 第二象限，顺时针旋转90度到第一象限
			                y[0] <= - x_i; end
		    2'b11 : begin   x[0] <= - y_i;       // 第三象限，逆时针旋转90度到第四象限
			                y[0] <=  x_i; end
		    default : begin x[0] <= x_i; 
			                y[0] <= y_i; end
		endcase
//		case ({x_i[XY_BITS-1],y_i[XY_BITS-1]}) 
//		   // 当输入的初始位置位于第一、四象限时，不做操作
//		   // 这里的操作相当于将x_i,y_i在不改变符号位的情况下减小一位量化位数(近似于除以2)得到x_0,y_0
//		   // 这样操作的原因在于，在输入横纵坐标都用11bit量化，最大为±2047的情况下，模值最大为2895，需要用12bit量化，这就导致输入输出的位数不一致
//		   // 因此将输入位数减小为10bit，最大±1023的情况下， 最大模值1447就可以用11bit量化
//		    2'b00 : begin   x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//						    y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		    2'b01 : begin   x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//			                y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		  // 当输入的初始位置位于第二、三象限时，分别将其旋转到第一、四象限
//		    2'b10 : begin   x[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]};       // 第二象限，顺时针旋转90度到第一象限
//			                y[0] <= -{x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; end
//		    2'b11 : begin   x[0] <= -{y_i[XY_BITS-1],y_i[XY_BITS-1:1]};       // 第三象限，逆时针旋转90度到第四象限
//			                y[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; end
//		    default : begin x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//			                y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		endcase
		
		z[0] <= phase_in;     // 向量模式下输入默认为0，这里也意味着初始旋转的角度为0
		Quad_data[0] <= {x_i[XY_BITS-1],y_i[XY_BITS-1]};      // 同样的，保留输入点所在象限的信息
    end
	else begin
		x[0] <= 0;
		y[0] <= 0;
		z[0] <= 0;
		Quad_data[0] <= 0;
	end
end

// 向量模式下，根据迭代结果得到起始点对应的辐角和幅度
localparam signed [PH_BITS-1:0] PHASE_COE = (2**(PH_BITS-2)) - 1;      // 根据输入的角度量化位数，90°对应的量化值

reg        [XY_BITS + 16 - 1:0] Magnitude_amplified = 0;
wire       [XY_BITS + 16 - 1:0] Magnitude_comp_temp;
reg signed [PH_BITS - 1:0] phase_r = 0;     // 输入横、纵坐标对应的点的辐角，取值范围-pi~pi
// 补偿迭代前对起始点的旋转
always @ (posedge clk_in) begin
	case(Quad_data[ITERATIONS]) 
		2'b00:begin phase_r <= $signed(z[ITERATIONS]); end
		2'b01:begin phase_r <= $signed(z[ITERATIONS]); end
		2'b10:begin phase_r <= $signed(z[ITERATIONS]) + $signed(PHASE_COE); end       // 如果初始点位于第二象限，则旋转角度加90°
		2'b11:begin phase_r <= $signed(z[ITERATIONS]) - $signed(PHASE_COE); end       // 如果初始点位于第三象限，则旋转角度减90°
	endcase
	Magnitude_amplified[XY_BITS + 1:0] <= x[ITERATIONS];       
end
// 向量模式下最终迭代得到的xn值并非输入向量的模长，而是模长乘以1/0.607252935 = 1.646760258得到的结果
// 想要得到正确的模长，就要除以1.646760258，或者乘以0.607252935，但小数不能直接乘除
// 因此这里实际乘的是：0.607252935 * 2^16 = 39796.9283 ，约等于39797
// 当然，多乘的2^16必须要通过右移16位补偿掉，从而得到正确的模长结果

// 此外需要考虑到乘法结果的位数要比XY_BITS大很多，39797本身是一个15bit数(算上符号16bit)
// 如果放大的幅值由12bit表示，范围在[0,2047]之间(虽然是有符号数，但是恒正)，那么乘法最大结果为0x4DB0C8B(27bit，算上符号位28bit)
// 可见如果x,y的量化位数为XY_BITS,那么乘法结果的位数应为XY_BITS + 16（有符号数）
assign Magnitude_comp_temp = (Magnitude_amplified * 32'd39797)>>16;
assign x_o = {XY_BITS{1'bz}};      // sqrt(x0^2 + y0^2)
assign y_o = y[ITERATIONS];       // 约为0
assign phase_out = phase_r;
assign magnitude = Magnitude_comp_temp[XY_BITS:0];
end
endgenerate

// 输出有效信号跟随有效的输入信号移动
reg [ITERATIONS+1:0] v = 0;
always @ (posedge clk_in) begin
	if (RST) 
		v <= 0;
	else begin
		v <= v << 1;
		v[0] <= valid_in;
	end
end
assign valid_out = v[ITERATIONS+1];

endmodule

