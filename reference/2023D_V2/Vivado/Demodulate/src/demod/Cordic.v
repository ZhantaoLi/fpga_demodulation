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
// Description: Cordic�㷨ģ��
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Cordic #(
	parameter XY_BITS      = 12,			// �㷨�к��������λ����Ĭ�Ͼ���12λ
	parameter PH_BITS      = 32,			// �㷨�нǶ�����ֵ��λ����Ĭ�Ͼ���32λ
	parameter ITERATIONS   = 32,			// ��������32����������Խ�࣬���ա���ת���ĽǶȾ�ԽС���õ��Ľ��Խ��ȷ
	parameter CORDIC_STYLE = "ROTATE",		// CORDIC�㷨��ģʽ�������Ϊ"ROTATE"������cos��sin����"VECTOR"(����tan-1)����
	parameter PHASE_ACC    = "ON"
)(
	input   clk_in,							// ����ʱ�ӣ�ʱ��Ƶ�ʾ������㷨ÿһ�ε�����ִ������
	input   RST,							// ��λ
	input   signed [XY_BITS-1:0] x_i,		// ��������꣬��ʾ��תδ��ʼʱ��λ��
	input   signed [XY_BITS-1:0] y_i,		// ���������꣬��ʾ��תδ��ʼʱ��λ��
	input   signed [PH_BITS-1:0] phase_in,	// ������λ���Ƕȣ�������תģʽ�£������λ���ǵ�����ת������Ŀ��

	output  signed [XY_BITS-1:0] x_o,		// ��������꣬����תģʽ�£�������˿����cos
	output  signed [XY_BITS-1:0] y_o,		// ��������꣬����תģʽ�£�������˿����sin
	output  signed [PH_BITS-1:0] phase_out, // �����λ���Ƕȣ�����ʸ��ģʽ�£�������˿����tan-1�����ǣ��ļ�����
	output  signed [XY_BITS:0] magnitude,   // ������ȣ���ʸ��ģʽ�£�������˿����������������Ӧ�ķ��ȣ���������������һλ

	input   valid_in, 
	output  valid_out
);

// ��������˵����x0 = K�� y0 = 0ʱ�������ܼ���õ� xn = cosz0, yn = sinz0
// ��һ���С��ֵ�޷��洢��XY_BITS֮��
// ��˿��ǽ� ��-1��1�������ڵ���������ֵ�����ڡ�-2^(XY_BITS-1) + 2��2^(XY_BITS-1) - 2��֮��
// ���õķ������ǽ�K����2^(XY_BITS-1) - 1����
localparam [XY_BITS-1:0] K_COS = 0.607252935 * (2 ** (XY_BITS - 1) - 2);


/*
����tanangle����ȡÿ�ε���ʱ��ת�ĽǶ�theta_i������ֵ
����i:����������ȡֵ��Χ0~31
���tanangle���Ƕȵ�����ֵ
*/

/*
Ĭ�ϽǶȵ�����׼��������Χ-180~180�㣬����λ��32λ�����������СΪ(360/2^32)
����λ���仯ʱ������׼�򣺵�����λ������32ʱ��ֱ�ӽ�32λ����������ֵ���Ƽ���
ע��Ƕ����з��ŵģ��Ƕȵ�ǰ��λ�����Ӧ�����ޣ�
	00������һ����
	01�����ڶ�����
	10�����������ޣ�ע�⸺����������ʽ�洢
	11������������
*/
function [PH_BITS-1:0] tanangle;
input [4:0] i;
begin
	case (i)
		5'b00000: tanangle = (32'h20000000 >> (32 - PH_BITS));   //i = 0, tan(theta_i) = 1/2^0 = 1, ��Ӧ����ֵ2^29 = 0x20000000
		5'b00001: tanangle = (32'h12e4051e >> (32 - PH_BITS));   //i = 1, tan(theta_i) = 1/2^1 = 1/2,��Ӧ����ֵ2316933406 = 0x12e4051e
		5'b00010: tanangle = (32'h09fb385b >> (32 - PH_BITS));   //i = 2, tan(theta_i) = 1/2^2 = 1/4, ��Ӧ����ֵ2167458907 = 0x09fb385b
		5'b00011: tanangle = (32'h051111d4 >> (32 - PH_BITS));   //i = 3, tan(theta_i) = 1/2^3 = 1/8,��Ӧ����ֵ285004756 = 0x051111d4
		// ����ͬ��ԭע�ʹ������ﲻ�پ���
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

// ���������������õ��ĸ����������
// ��������鲻�������洢��һ�����ڲ�ͬ�ε����еõ��Ľ����
// ������������ˮ�ߵ���ʽ����������ITERATIONS����ֵͬʱ���е�����
// �ٸ����ӣ�λ��[0]�����뾭����0����ת�󣬽��˳����[1]λ�ȴ���1����ת�����ͬʱ�µ����ݽ���[0]λ׼����ʼ��0����ת

// ����������x��y��λ���������һλ���ǿ��ǵ�������ģʽ���п��ܳ������������������ϴ�����ת�����к���������������
reg        [1:0] Quad_data [ITERATIONS:0];      // ��ʾ����Ƕ����ڵ����ޣ�����������ֵ�ĸ�2bit��ʾ
												// ע��������ģʽ��Quad_data��ֵ�����޵Ķ�Ӧ��ϵ��ͬ
												// ��תģʽ�£�	00������һ���ޣ�01�����ڶ����ޣ�10�����������ޣ�11������������
												// ����ģʽ�£� 00������һ���ޣ�01�����������ޣ�10�����ڶ����ޣ�11������������
reg signed [XY_BITS + 1:0]   x  [ITERATIONS:0];   // ��ת�����е�ĺ�����
reg signed [XY_BITS + 1:0]   y  [ITERATIONS:0];   // ��ת�����е��������
reg signed [PH_BITS:0]   z  [ITERATIONS:0];   // ��ת�����еĽǶ�����תģʽ���� �Ѿ���ת�ĽǶȣ�����ģʽ��

// �Ը�������������г�ʼ����ȫ����ʼ��Ϊ0
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

// ��ʼ����������ʹ��forѭ�����е���������generate�ؼ�������ѭ����䣬genvar�ؼ�������ֻ����generate��������в���ʹ�õı���
// CORDIC��ѭ������ʵ�����ƣ��൱�ڱ�ǩ��label��
genvar i;
generate for(i = 0; i < ITERATIONS; i = i+1) begin : CORDIC
// λ�ڵ�iλ��Ԫ��Ҫ���е�i�ε�������ת�ĽǶ�theta_i����tan(theta_i) =  2^(-i)
// �������������һλ
always @ (posedge clk_in) begin
    if (RST) begin
      x[i+1] <= 0;
      y[i+1] <= 0;
      z[i+1] <= 0;
    end 
    else begin
        // �������תģʽ���͸��ݵ�ǰZ��Ŀ��Ƕ��뵱ǰ��ת�ǶȵĲ�ࣩ�������ж���ת����
		if (CORDIC_STYLE == "ROTATE") begin
		    // ��Z<0����˳ʱ����ת
			if (z[i] < 0) begin
				x[i+1] <= x[i] + (y[i]>>>i);     // x[i+1] = x[i] + tan(theta_i) * y[i]
				y[i+1] <= y[i] - (x[i]>>>i);    // y[i+1] = - tan(theta_i) * x[i] + y[i]    
				z[i+1] <= z[i] + tanangle(i);   // z[i+1] = z[i] + theta_i
			end 
            // ��Z>0������ʱ����ת
			else begin
				x[i+1] <= x[i] - (y[i]>>>i);    // x[i+1] = x[i] - tan(theta_i) * y[i]
				y[i+1] <= y[i] + (x[i]>>>i);    // y[i+1] = tan(theta_i) * x[i] + y[i]
				z[i+1] <= z[i] - tanangle(i);   // z[i+1] = z[i] - theta_i   
			end
	    end		
	    // ���������ģʽ�����ڳ�ʼ��һ��λ�ڵ�һ�������ޣ���x����������ת�������ֻ��Ҫ����y�������ж���ת����
		else if(CORDIC_STYLE == "VECTOR") begin
		    // ��y>0����˳ʱ����ת
			if (y[i] > 0) begin
				x[i+1] <= x[i] + (y[i]>>>i); 
				y[i+1] <= y[i] - (x[i]>>>i); 
				z[i+1] <= z[i] + tanangle(i);   // �����Z��ʾ��ǰ�Ѿ���ʱ����ת�ĽǶȣ���Ȼ���岻ͬ���仯һ��
			end 
			// ��y<0������ʱ����ת
			else begin
				x[i+1] <= x[i] - (y[i]>>>i); 
				y[i+1] <= y[i] + (x[i]>>>i); 
				z[i+1] <= z[i] - tanangle(i);
			end
		end
	end
end

// ��������˳��
always @ (posedge clk_in) begin
	Quad_data[i+1]  <= Quad_data[i];
end

end 
endgenerate

// �����תģʽ�µĸ���ֵ�Լ����ֵ�Ĺ���
generate if (CORDIC_STYLE == "ROTATE") begin : IQ_Gen

// ����cordic�㷨������·�����ز�ʱ�����뵽�㷨�е�ʵ������Ƶ�ʿ����֣���������������ʱ�ӵ��ز���λ�仯��
// ���ʵ��Ҫ����cos��sin����λӦ���ɿ������ۼӵõ�����PHASE_ACCģʽ

// �����ֻ��һ��ļ���cos��sin���Ͳ���ҪPHASE_ACCģʽ
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

// ��תģʽ�£��Կ�ʼ��תʱ�ĺ������꼰�Ƕ�����ֵ
// ����RST = 0��valid_in = 1��������Ч��ʱ��������
always @(posedge clk_in) begin
	if(valid_in & (~RST)) begin
		x[0] <= K_COS;
		y[0] <= 0;
		z[0] <= Phase_input[PH_BITS - 3 : 0];     // Ŀ����ת�Ƕ�ֻ����λ�ڵ�һ���ޣ���Ϊ��2bit��ȡ����
		Quad_data[0] <= Phase_input[PH_BITS - 1 : PH_BITS - 2];       // ȡ����2bit����Ϊ����Ƕ����ڵ���������
	end
	else begin
		x[0] <= 0;
		y[0] <= 0;
		z[0] <= 0;
		Quad_data[0] <= 0;
	end
end

// ����תģʽ�£��ӵ�һ���޵ļ������õ�λ���������޵ļ�����
reg signed [XY_BITS:0] cos = 0;       // ���ռ���õ�������ֵ
reg signed [XY_BITS:0] sin = 0;       // ���ռ���õ�������ֵ
always @ (posedge clk_in) begin
	case(Quad_data[ITERATIONS]) 
	2'b00:begin //if the phase is in first quadrant,the sin(X)=sin(A),cos(X)=cos(A)
	        cos <= x[ITERATIONS];
	        sin <= y[ITERATIONS];
	      end
	2'b01:begin //if the phase is in second quadrant,the sin(X)=sin(A+90)=cosA,cos(X)=cos(A+90)=-sinA
	        cos <= ~(y[ITERATIONS]) + 1'b1;    // -sin ע���з������ǰ��ղ���洢��
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
assign x_o = cos[XY_BITS - 1:0];                       // ����Ƕȵ�����ֵ��ʵ�ʸ���λ�����ڷ���λ����˿�����ȥһλ
assign y_o = sin[XY_BITS - 1:0];                       // ����Ƕȵ�����ֵ
assign phase_out = z[ITERATIONS];       // ���Ƕ�������0
end
endgenerate


// �����תģʽ�µĸ���ֵ�Լ����ֵ�Ĺ���
generate if (CORDIC_STYLE == "VECTOR") begin : Demodule_Gen
//localparam MODUIUS_COE = ;

// ����ģʽ�£��Կ�ʼ��תʱ�ĺ������꼰�Ƕ�����ֵ
// ����RST = 0��valid_in = 1��������Ч��ʱ��������
always @(posedge clk_in) begin
	if(valid_in & (~RST)) begin
	   // ����תģʽ��ͬ������ģʽ�豣֤��ʼλ��λ�ڵ�һ��������
	   // �ж�(x,y)λ���ĸ����ޣ�ֻ�迴��ߵķ���λ��0����������1������
		case ({x_i[XY_BITS-1],y_i[XY_BITS-1]}) 
		   // ������ĳ�ʼλ��λ�ڵ�һ��������ʱ����������
		    2'b00 : begin   x[0] <=  x_i; 
						    y[0] <=  y_i; end
		    2'b01 : begin   x[0] <=  x_i; 
			                y[0] <=  y_i; end
		  // ������ĳ�ʼλ��λ�ڵڶ���������ʱ���ֱ�����ת����һ��������
		    2'b10 : begin   x[0] <=  y_i;       // �ڶ����ޣ�˳ʱ����ת90�ȵ���һ����
			                y[0] <= - x_i; end
		    2'b11 : begin   x[0] <= - y_i;       // �������ޣ���ʱ����ת90�ȵ���������
			                y[0] <=  x_i; end
		    default : begin x[0] <= x_i; 
			                y[0] <= y_i; end
		endcase
//		case ({x_i[XY_BITS-1],y_i[XY_BITS-1]}) 
//		   // ������ĳ�ʼλ��λ�ڵ�һ��������ʱ����������
//		   // ����Ĳ����൱�ڽ�x_i,y_i�ڲ��ı����λ������¼�Сһλ����λ��(�����ڳ���2)�õ�x_0,y_0
//		   // ����������ԭ�����ڣ�������������궼��11bit���������Ϊ��2047������£�ģֵ���Ϊ2895����Ҫ��12bit��������͵������������λ����һ��
//		   // ��˽�����λ����СΪ10bit������1023������£� ���ģֵ1447�Ϳ�����11bit����
//		    2'b00 : begin   x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//						    y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		    2'b01 : begin   x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//			                y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		  // ������ĳ�ʼλ��λ�ڵڶ���������ʱ���ֱ�����ת����һ��������
//		    2'b10 : begin   x[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]};       // �ڶ����ޣ�˳ʱ����ת90�ȵ���һ����
//			                y[0] <= -{x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; end
//		    2'b11 : begin   x[0] <= -{y_i[XY_BITS-1],y_i[XY_BITS-1:1]};       // �������ޣ���ʱ����ת90�ȵ���������
//			                y[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; end
//		    default : begin x[0] <=  {x_i[XY_BITS-1],x_i[XY_BITS-1:1]}; 
//			                y[0] <=  {y_i[XY_BITS-1],y_i[XY_BITS-1:1]}; end
//		endcase
		
		z[0] <= phase_in;     // ����ģʽ������Ĭ��Ϊ0������Ҳ��ζ�ų�ʼ��ת�ĽǶ�Ϊ0
		Quad_data[0] <= {x_i[XY_BITS-1],y_i[XY_BITS-1]};      // ͬ���ģ�����������������޵���Ϣ
    end
	else begin
		x[0] <= 0;
		y[0] <= 0;
		z[0] <= 0;
		Quad_data[0] <= 0;
	end
end

// ����ģʽ�£����ݵ�������õ���ʼ���Ӧ�ķ��Ǻͷ���
localparam signed [PH_BITS-1:0] PHASE_COE = (2**(PH_BITS-2)) - 1;      // ��������ĽǶ�����λ����90���Ӧ������ֵ

reg        [XY_BITS + 16 - 1:0] Magnitude_amplified = 0;
wire       [XY_BITS + 16 - 1:0] Magnitude_comp_temp;
reg signed [PH_BITS - 1:0] phase_r = 0;     // ����ᡢ�������Ӧ�ĵ�ķ��ǣ�ȡֵ��Χ-pi~pi
// ��������ǰ����ʼ�����ת
always @ (posedge clk_in) begin
	case(Quad_data[ITERATIONS]) 
		2'b00:begin phase_r <= $signed(z[ITERATIONS]); end
		2'b01:begin phase_r <= $signed(z[ITERATIONS]); end
		2'b10:begin phase_r <= $signed(z[ITERATIONS]) + $signed(PHASE_COE); end       // �����ʼ��λ�ڵڶ����ޣ�����ת�Ƕȼ�90��
		2'b11:begin phase_r <= $signed(z[ITERATIONS]) - $signed(PHASE_COE); end       // �����ʼ��λ�ڵ������ޣ�����ת�Ƕȼ�90��
	endcase
	Magnitude_amplified[XY_BITS + 1:0] <= x[ITERATIONS];       
end
// ����ģʽ�����յ����õ���xnֵ��������������ģ��������ģ������1/0.607252935 = 1.646760258�õ��Ľ��
// ��Ҫ�õ���ȷ��ģ������Ҫ����1.646760258�����߳���0.607252935����С������ֱ�ӳ˳�
// �������ʵ�ʳ˵��ǣ�0.607252935 * 2^16 = 39796.9283 ��Լ����39797
// ��Ȼ����˵�2^16����Ҫͨ������16λ���������Ӷ��õ���ȷ��ģ�����

// ������Ҫ���ǵ��˷������λ��Ҫ��XY_BITS��ܶ࣬39797������һ��15bit��(���Ϸ���16bit)
// ����Ŵ�ķ�ֵ��12bit��ʾ����Χ��[0,2047]֮��(��Ȼ���з����������Ǻ���)����ô�˷������Ϊ0x4DB0C8B(27bit�����Ϸ���λ28bit)
// �ɼ����x,y������λ��ΪXY_BITS,��ô�˷������λ��ӦΪXY_BITS + 16���з�������
assign Magnitude_comp_temp = (Magnitude_amplified * 32'd39797)>>16;
assign x_o = {XY_BITS{1'bz}};      // sqrt(x0^2 + y0^2)
assign y_o = y[ITERATIONS];       // ԼΪ0
assign phase_out = phase_r;
assign magnitude = Magnitude_comp_temp[XY_BITS:0];
end
endgenerate

// �����Ч�źŸ�����Ч�������ź��ƶ�
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

