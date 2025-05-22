#include "delay.h"
#include "read_vpp.h"
#include "XGpio.h"
#include <stdio.h>
#include<stdlib.h>
#define BUF_LONG 50
#define BUF_FREQ_LONG 80
XGpio FM_VPP_GPIO;
XGpio AM_VPP_GPIO;
XGpio FM_FREQ_GPIO;
XGpio AM_FREQ_GPIO;
XGpio FM_RMS_GPIO;
XGpio AM_RMS_GPIO;
XGpio PSK_RMS_GPIO;
XGpio PSK_FREQ_GPIO;
XGpio SELE_GPIO;

uint16_t FM_VPP=0;
uint16_t AM_VPP=0;
uint16_t FM_FREQ=0;
uint16_t AM_FREQ=0;
uint16_t FM_RMS=0;
uint16_t AM_RMS=0;
uint16_t PSK_RMS=0;
uint16_t PSK_FREQ=0;

uint16_t FM_VPP_buf[BUF_LONG];
uint16_t AM_VPP_buf[BUF_LONG];

uint16_t FM_FREQ_buf[BUF_FREQ_LONG];
uint16_t AM_FREQ_buf[BUF_FREQ_LONG];

uint16_t FM_RMS_buf[BUF_LONG];
uint16_t AM_RMS_buf[BUF_LONG];
uint16_t PSK_RMS_buf[BUF_LONG];
uint16_t PSK_FREQ_buf[BUF_FREQ_LONG];


int FM_PEAK_EN=0,AM_PEAK_EN=0;
int FM_buf_point=0,AM_buf_point=0;

int FM_FREQ_EN=0,AM_FREQ_EN=0;
int FM_FREQ_point=0,AM_FREQ_point=0;

int FM_RMS_EN=0,AM_RMS_EN=0,PSK_RMS_EN=0;
int FM_RMS_point=0,AM_RMS_point=0,PSK_RMS_point=0;
int PSK_FREQ_EN=0;
int PSK_FREQ_point=0;

float FM_PEAK_AVR=0.0;
float AM_PEAK_AVR=0.0;
int FM_FREQ_AVR=0;
int AM_FREQ_AVR=0;
int PSK_FREQ_AVR=0;
float FM_RMS_AVR=0.0;
float AM_RMS_AVR=0.0;
float PSK_RMS_AVR=0.0;
double MA_temp=0;


void read_io_init(){
	XGpio_Initialize(&FM_VPP_GPIO,			XPAR_GPIO_0_DEVICE_ID);
	XGpio_Initialize(&AM_VPP_GPIO,			XPAR_GPIO_1_DEVICE_ID);
	XGpio_Initialize(&FM_FREQ_GPIO,			XPAR_GPIO_2_DEVICE_ID);
	XGpio_Initialize(&AM_FREQ_GPIO,			XPAR_GPIO_3_DEVICE_ID);
	XGpio_Initialize(&FM_RMS_GPIO,			XPAR_GPIO_4_DEVICE_ID);
	XGpio_Initialize(&AM_RMS_GPIO,			XPAR_GPIO_5_DEVICE_ID);
	XGpio_Initialize(&PSK_RMS_GPIO,			XPAR_GPIO_6_DEVICE_ID);
	XGpio_Initialize(&PSK_FREQ_GPIO,		XPAR_GPIO_7_DEVICE_ID);
	XGpio_Initialize(&SELE_GPIO,		XPAR_GPIO_8_DEVICE_ID);


	XGpio_SetDataDirection(&FM_VPP_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&AM_VPP_GPIO,      1, 0x1);
	XGpio_SetDataDirection(&FM_FREQ_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&AM_FREQ_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&FM_RMS_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&AM_RMS_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&PSK_RMS_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&PSK_FREQ_GPIO,        1, 0x1);
	XGpio_SetDataDirection(&SELE_GPIO,        1, 0x0);

	XGpio_DiscreteWrite(&SELE_GPIO,1,0x0000 ) ;
	FM_VPP=XGpio_DiscreteRead(&FM_VPP_GPIO,1) ; 
	AM_VPP=XGpio_DiscreteRead(&AM_VPP_GPIO,1) ; 
	FM_FREQ=XGpio_DiscreteRead(&FM_FREQ_GPIO,1) ;
	AM_FREQ=XGpio_DiscreteRead(&AM_FREQ_GPIO,1) ;
	FM_RMS=XGpio_DiscreteRead(&FM_RMS_GPIO,1) ;
	AM_RMS=XGpio_DiscreteRead(&AM_RMS_GPIO,1) ;
	PSK_RMS=XGpio_DiscreteRead(&PSK_RMS_GPIO,1) ;
	PSK_FREQ=XGpio_DiscreteRead(&PSK_FREQ_GPIO,1) ;
	 FM_PEAK_EN=0;
	 AM_PEAK_EN=0;
	 FM_buf_point=0;
	 AM_buf_point=0;
	 FM_FREQ_EN=0;
	 AM_FREQ_EN=0;
	 FM_FREQ_point=0;
	 AM_FREQ_point=0;

	 PSK_FREQ_EN=0;
	 PSK_FREQ_point=0;

	 FM_RMS_point=0;
	 AM_RMS_point=0;
	 PSK_RMS_point=0;

	 PSK_FREQ_AVR=0;
	 AM_RMS=0;
	 FM_RMS=0;
	 PSK_RMS=0;
}


void read_PEAK(){
	//FMPEAK
	if(FM_buf_point<BUF_LONG){
		FM_VPP_buf[FM_buf_point]=XGpio_DiscreteRead(&FM_VPP_GPIO,1);
		FM_buf_point++;
	}
	else {
		FM_buf_point=0;
		FM_PEAK_EN=1;
	}

	//AMPEAK
	if(AM_buf_point<BUF_LONG){
		AM_VPP_buf[AM_buf_point]=XGpio_DiscreteRead(&AM_VPP_GPIO,1);
		AM_buf_point++;
	}
	else {
		AM_buf_point=0;
		AM_PEAK_EN=1;
	}

	//FMfreq
	if(FM_FREQ_point<BUF_FREQ_LONG){
		FM_FREQ_buf[FM_FREQ_point]=XGpio_DiscreteRead(&FM_FREQ_GPIO,1);
		FM_FREQ_point++;
	}
	else {
		FM_FREQ_point=0;
		FM_FREQ_EN=1;
	}
	//AMFREQ
	if(AM_FREQ_point<BUF_FREQ_LONG){
		AM_FREQ_buf[AM_FREQ_point]=XGpio_DiscreteRead(&AM_FREQ_GPIO,1);
		AM_FREQ_point++;
	}
	else {
		AM_FREQ_point=0;
		AM_FREQ_EN=1;
	}
	//FMRMS
	if(FM_RMS_point<BUF_LONG){
		FM_RMS_buf[FM_RMS_point]=XGpio_DiscreteRead(&FM_RMS_GPIO,1);
		FM_RMS_point++;
	}
	else {
		FM_RMS_point=0;
		FM_RMS_EN=1;
	}
	//
	//AMRMS
	if(AM_RMS_point<BUF_LONG){
		AM_RMS_buf[AM_RMS_point]=XGpio_DiscreteRead(&AM_RMS_GPIO,1);
		AM_RMS_point++;
	}
	else {
		AM_RMS_point=0;
		AM_RMS_EN=1;
	}
	//PSKRMS
	if(PSK_RMS_point<BUF_LONG){
		PSK_RMS_buf[PSK_RMS_point]=XGpio_DiscreteRead(&PSK_RMS_GPIO,1);
		PSK_RMS_point++;
	}
	else {
		PSK_RMS_point=0;
		PSK_RMS_EN=1;
	}
	//PSKFREQ
	if(PSK_FREQ_point<BUF_FREQ_LONG){
		PSK_FREQ_buf[PSK_FREQ_point]=XGpio_DiscreteRead(&PSK_FREQ_GPIO,1);
		PSK_FREQ_point++;
	}
	else {
		PSK_FREQ_point=0;
		PSK_FREQ_EN=1;
	}
	//printf("%d\n",PSK_FREQ_buf[PSK_FREQ_point]);
}

void AVR_PEAK(){

	int FM_PEAK_ADD=0;
	int AM_PEAK_ADD=0;
	int FM_RMS_ADD=0;
	int AM_RMS_ADD=0;
	int PSK_RMS_ADD=0;


	uint16_t FM_VPP_temp,AM__VPP_temp;
		for (int i = 0; i < BUF_LONG - 1; i++){
			for (int j = 0; j < BUF_LONG - 1 - i; j++)
			    if (FM_VPP_buf[j] > FM_VPP_buf[j + 1]) {
			    	FM_VPP_temp = FM_VPP_buf[j];
			        FM_VPP_buf[j] = FM_VPP_buf[j + 1];
			        FM_VPP_buf[j + 1] = FM_VPP_temp;
			        }
			  }
	for(int i=0;i<BUF_LONG-10;i++){
		FM_PEAK_ADD+=FM_VPP_buf[i];
	}
	FM_PEAK_AVR = FM_PEAK_ADD/(BUF_LONG-10);

	FM_PEAK_EN=0;

	for (int i = 0; i < BUF_LONG - 1; i++){
		for (int j = 0; j < BUF_LONG - 1 - i; j++)
		    if (AM_VPP_buf[j] > AM_VPP_buf[j + 1]) {
		    	AM__VPP_temp = AM_VPP_buf[j];
		    	AM_VPP_buf[j] = AM_VPP_buf[j + 1];
		    	AM_VPP_buf[j + 1] = AM__VPP_temp;
		        }
		  }
	for(int i=0;i<BUF_LONG-10;i++){
		AM_PEAK_ADD+=AM_VPP_buf[i];
	}


	AM_PEAK_AVR = AM_PEAK_ADD/(BUF_LONG-10);
	AM_PEAK_EN=0;


//FMRMS
	uint16_t FM_RMS_temp,AM_RMS_temp;
		for (int i = 0; i < BUF_LONG - 1; i++){
			for (int j = 0; j < BUF_LONG - 1 - i; j++)
			    if (FM_RMS_buf[j] > FM_RMS_buf[j + 1]) {
			    	FM_RMS_temp = FM_RMS_buf[j];
			    	FM_RMS_buf[j] = FM_RMS_buf[j + 1];
			    	FM_RMS_buf[j + 1] = FM_RMS_temp;
			        }
			  }
	for(int i=10;i<BUF_LONG-10;i++){
		FM_RMS_ADD+=FM_RMS_buf[i];
	}
	FM_RMS_AVR = (FM_RMS_ADD*1.3107)/(BUF_LONG-20);
	FM_RMS_EN=0;

//AMRMS
		for (int i = 0; i < BUF_LONG - 1; i++){
			for (int j = 0; j < BUF_LONG - 1 - i; j++)
			    if (AM_RMS_buf[j] > AM_RMS_buf[j + 1]) {
			    	AM_RMS_temp = AM_RMS_buf[j];
			    	AM_RMS_buf[j] = AM_RMS_buf[j + 1];
			    	AM_RMS_buf[j + 1] = AM_RMS_temp;
			        }
			  }
	for(int i=10;i<BUF_LONG-10;i++){
		AM_RMS_ADD+=AM_RMS_buf[i];
	}
	AM_RMS_AVR = AM_RMS_ADD/(BUF_LONG-20);
	AM_RMS_EN=0;

//PSKRMS
	uint16_t PSK_RMS_temp=0;
	for (int i = 0; i < BUF_LONG - 1; i++){
		for (int j = 0; j < BUF_LONG - 1 - i; j++)
		    if (PSK_RMS_buf[j] > PSK_RMS_buf[j + 1]) {
		    	PSK_RMS_temp = PSK_RMS_buf[j];
		    	PSK_RMS_buf[j] = PSK_RMS_buf[j + 1];
		    	PSK_RMS_buf[j + 1] = PSK_RMS_temp;
		        }
		  }
	for(int i=10;i<BUF_LONG-10;i++){
		PSK_RMS_ADD+=PSK_RMS_buf[i];
	}
	PSK_RMS_AVR = PSK_RMS_ADD/(BUF_LONG-20);
	PSK_RMS_EN=0;


	//printf("FMRMS=%f;div=%f;PSKRMS=%f\n",FM_RMS_AVR,(FM_PEAK_AVR/FM_RMS_AVR),PSK_RMS_AVR);
	//printf("AMRMS=%f;div=%f\n",AM_RMS_AVR,(AM_PEAK_AVR/AM_RMS_AVR));

	uint16_t FM_temp,AM_temp,PSK_temp;
	for (int i = 0; i < BUF_FREQ_LONG - 1; i++){
		for (int j = 0; j < BUF_FREQ_LONG - 1 - i; j++)
		    if (FM_FREQ_buf[j] > FM_FREQ_buf[j + 1]) {
		        FM_temp = FM_FREQ_buf[j];
		        FM_FREQ_buf[j] = FM_FREQ_buf[j + 1];
		        FM_FREQ_buf[j + 1] = FM_temp;
		        }
		  }
	FM_FREQ_EN=0;
	FM_FREQ_AVR = FM_FREQ_buf[0];
	for (int i = 0; i < BUF_FREQ_LONG - 1; i++){
		for (int j = 0; j < BUF_FREQ_LONG - 1 - i; j++)
		    if (AM_FREQ_buf[j] > AM_FREQ_buf[j + 1]) {
		    	AM_temp = AM_FREQ_buf[j];
		        AM_FREQ_buf[j] = AM_FREQ_buf[j + 1];
		        AM_FREQ_buf[j + 1] = AM_temp;
		        }
		  }
	AM_FREQ_EN=0;
	AM_FREQ_AVR = AM_FREQ_buf[0];

	//PSKFREQ
	for (int i = 0; i < BUF_FREQ_LONG - 1; i++){
		for (int j = 0; j < BUF_FREQ_LONG - 1 - i; j++)
		    if (PSK_FREQ_buf[j] > PSK_FREQ_buf[j + 1]) {
		    	PSK_temp = PSK_FREQ_buf[j];
		    	PSK_FREQ_buf[j] = PSK_FREQ_buf[j + 1];
		        PSK_FREQ_buf[j + 1] = PSK_temp;
		        }
		  }
	PSK_FREQ_EN=0;
	PSK_FREQ_AVR = PSK_FREQ_buf[49];
	//printf("PSK_FREQ_temp = %d;mid is =%d\n",PSK_FREQ_AVR,PSK_FREQ_buf[90]);

//	uint16_t
//
//	  int i, j, temp;
//	    for (i = 0; i < len - 1; i++){
//	        for (j = 0; j < len - 1 - i; j++)
//	            if (arr[j] > arr[j + 1]) {
//	                temp = arr[j];
//	                arr[j] = arr[j + 1];
//	                arr[j + 1] = temp;
//	            }
//	    }
//	double FM_FREQ_temp=0;
//	FM_FREQ_temp = (FM_FREQ_AVR*5.960464478);
//	printf("FM_FREQ_temp = %f;mid is =%d\n",FM_FREQ_temp,FM_FREQ_buf[49]);
//
	 //find_AM_FREQ();
	//printf("AMPEAK=%f;FMPEAK=%f;FMFREQ=%d;AMFREQ=%d\n",AM_PEAK_AVR,FM_PEAK_AVR,FM_FREQ_AVR,AM_FREQ_AVR);
	//find_FM_FREQ();
	find_mtype();
}
void find_AM_FREQ(){
	double AM_FREQ_temp=0;

	AM_FREQ_temp = (AM_FREQ_AVR*5.960464478);
	if(AM_FREQ_temp>4500){
		print("t3.txt=\"5KHz \"\xff\xff\xff");
		//print("\xff\xff\xff");
		//printf("AM_FREQ is 5KHz \n");
		MA_temp = (AM_PEAK_AVR*0.0051997106)-0.352768545;

	}
	else if(AM_FREQ_temp>3500){
		print("t3.txt=\"4KHz \"\xff\xff\xff");
		//printf("AM_FREQ is 4KHz \n");
		MA_temp = (AM_PEAK_AVR*0.005177367)-0.53899878;

	}
	else if(AM_FREQ_temp>2500){
		print("t3.txt=\"3KHz \"\xff\xff\xff");
		//printf("AM_FREQ is 3KHz \n");
		MA_temp = (AM_PEAK_AVR* 0.00510294)-0.54854;

	}
	else if(AM_FREQ_temp>1500){
		print("t3.txt=\"2KHz \"\xff\xff\xff");
		//printf("AM_FREQ is 2KHz \n");
		MA_temp = (AM_PEAK_AVR*0.0053331796)-0.523445;

	}
	else if(AM_FREQ_temp>500){
		print("t3.txt=\"1KHz \"\xff\xff\xff");
		//printf("AM_FREQ is 1KHz \n");
		MA_temp = (AM_PEAK_AVR*0.00492932)-0.39360;

	}


	//printf("AMPEAK=%f;AMFREQ=%d\n",AM_PEAK_AVR,AM_FREQ_AVR);
	//printf("AM_MA = %f\n",MA_temp);

}

void find_ASK_FREQ(){
	double AM_FREQ_temp=0;

	AM_FREQ_temp = (AM_FREQ_AVR*5.960464478);
	if(AM_FREQ_temp>4500){
		//print("t3.txt=\"5KHz \"\xff\xff\xff");
		print("t9.txt=\"10Kbps \"\xff\xff\xff");
	}
	else if(AM_FREQ_temp>3500){
		print("t9.txt=\"8Kbps \"\xff\xff\xff");

	}
	else if(AM_FREQ_temp>2500){
		print("t9.txt=\"6Kbps \"\xff\xff\xff");

	}



}

void find_FM_FREQ(){
	double FM_FREQ_temp=0;
	double MF=0,delta_F=0;
	FM_FREQ_temp = (FM_FREQ_AVR*5.960464478);
	if((FM_FREQ_temp>4700)&&(FM_PEAK_AVR>3500)){
		print("t3.txt=\"5KHz\"\xff\xff\xff");
		char c[20]={"\0"};
		MF = (0.006*FM_PEAK_AVR-1.5427)/50;
		delta_F = MF*5;

		char*str_buf =  gcvt(MF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		char*str_buf2 =  gcvt(delta_F,4,c);
		printf("t7.txt=\"%s KHz \"\xff\xff\xff\n",str_buf2);
		print("\xff\xff\xff");

		//printf("FM_FREQ is 5KHz ;MF = %f;delta_F = %f\n",MF,delta_F);
	}
	else if((FM_FREQ_temp>3800)&&(FM_PEAK_AVR>3500)){
		print("t3.txt=\"4KHz\"\xff\xff\xff");
		char c[20]={"\0"};
		MF = (0.0063*FM_PEAK_AVR-1.9332)/40;
		delta_F = MF*4;

		char*str_buf =  gcvt(MF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		char*str_buf2 =  gcvt(delta_F,4,c);
		printf("t7.txt=\"%s KHz \"\xff\xff\xff\n",str_buf2);
		print("\xff\xff\xff");

		//printf("FM_FREQ is 4KHz ;MF = %f;delta_F = %f\n",MF,delta_F);
	}
	else if((FM_FREQ_temp>2700)&&(FM_PEAK_AVR>3500)){
		print("t3.txt=\"3KHz\"\xff\xff\xff");
		char c[20]={"\0"};
		MF = (0.006*FM_PEAK_AVR-1.7736)/30;
		delta_F = MF*3;
		char*str_buf =  gcvt(MF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		char*str_buf2 =  gcvt(delta_F,4,c);
		printf("t7.txt=\"%s KHz \"\xff\xff\xff\n",str_buf2);
		print("\xff\xff\xff");


		//printf("FM_FREQ is 3KHz ;MF = %f;delta_F = %f\n",MF,delta_F);
	}

	else if((FM_FREQ_temp>1990)&&(FM_PEAK_AVR>3500)){
		print("t3.txt=\"2KHz\"\xff\xff\xff");
		char c[20]={"\0"};
		MF = (0.0058*FM_PEAK_AVR-1.9262)/20;
		delta_F = MF*2;

		char*str_buf =  gcvt(MF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		char*str_buf2 =  gcvt(delta_F,4,c);
		printf("t7.txt=\"%s KHz \"\xff\xff\xff\n",str_buf2);
		print("\xff\xff\xff");

		//printf("FM_FREQ is 2KHz ;MF = %f;delta_F = %f\n",MF,delta_F);

	}
	else if(FM_FREQ_temp>500){
		print("t3.txt=\"1KHz\"\xff\xff\xff");
		char c[20]={"\0"};

		MF = (0.0069*FM_PEAK_AVR-2.8475)/10;
		delta_F = MF*1;

		char*str_buf =  gcvt(MF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		char*str_buf2 =  gcvt(delta_F,4,c);
		printf("t7.txt=\"%s KHz \"\xff\xff\xff\n",str_buf2);

		print("\xff\xff\xff");
		//printf("FM_FREQ is 1KHz ;MF = %f;delta_F = %f\n",MF,delta_F);


	}
	//printf("FMPEAK=%f;FMFREQ=%d\n",FM_PEAK_AVR,FM_FREQ_temp);
	//printf("FM_FREQ_temp = %f;mid is =%d\n",FM_FREQ_temp,FM_FREQ_buf[49]);

}

void find_FSK_FREQ(){
	double FSK_FREQ_temp=0;
	double HF=0;
	FSK_FREQ_temp = (FM_FREQ_AVR*5.960464478);
	if((FSK_FREQ_temp>4700)&&(FM_PEAK_AVR>3500)){
		print("t9.txt=\"10Kbps\"\xff\xff\xff");
		HF = ((0.00100734645*FM_PEAK_AVR)-0.475576)/10;
		char c[20]={"\0"};
		char*str_buf =  gcvt(HF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");
		//printf("FM_FREQ is 5KHz ;MF = %f\n",HF);
	}
	else if((FSK_FREQ_temp>3800)&&(FM_PEAK_AVR>3500)){
		print("t9.txt=\"8Kbps\"\xff\xff\xff");
		HF = ((0.001285367*FM_PEAK_AVR)-0.4151169)/10;
		char c[20]={"\0"};
		char*str_buf =  gcvt(HF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");

		//printf("FM_FREQ is 4KHz ;HF = %f\n",HF);

	}
	else if((FSK_FREQ_temp>2700)&&(FM_PEAK_AVR>3500)){
		print("t9.txt=\"6Kbps\"\xff\xff\xff");
		HF = ((0.0017419*FM_PEAK_AVR)-0.4969)/10;
		char c[20]={"\0"};
		char*str_buf =  gcvt(HF,3,c);
		printf("t5.txt=\"%s  \"\xff\xff\xff\n",str_buf);
		print("\xff\xff\xff");

		//printf("FM_FREQ is 3KHz ;HF = %f;\n",HF);
	}

	//printf("FMPEAK=%f;\n",FM_PEAK_AVR);
	//printf("FM_FREQ_temp = %f;mid is =%d\n",FM_FREQ_temp,FM_FREQ_buf[49]);

}





void find_mtype(){
	double div_AM=AM_PEAK_AVR/AM_RMS_AVR;



	if(AM_PEAK_AVR>3000){
		//printf("AM/ASK\n");
		if(((div_AM)>3.4)||(AM_FREQ_AVR<300)){
			print("t1.txt=\"AM\"\xff\xff\xff");
			//printf("AM! VPP = %f,div=%f\n",AM_PEAK_AVR,(AM_PEAK_AVR/AM_RMS_AVR));
			XGpio_DiscreteWrite(&SELE_GPIO,1,0x0001);
			find_AM_FREQ();
			char c[20]={"\0"};
			char*str_buf =  gcvt(MA_temp,4,c);
			printf("t5.txt=\"%s %% \"\xff\xff\xff\n",str_buf);
			print("\xff\xff\xff");
			printf("t7.txt=\"--\"\xff\xff\xff\n");
			print("\xff\xff\xff");
			printf("t9.txt=\"--\"\xff\xff\xff\n");
			print("\xff\xff\xff");

		}

		else{
			print("t1.txt=\"2ASK\"\xff\xff\xff");
			XGpio_DiscreteWrite(&SELE_GPIO,1,0x0001);
			find_ASK_FREQ();
			print("t3.txt=\"--\"\xff\xff\xff");
			print("t5.txt=\"--\"\xff\xff\xff");
			print("t7.txt=\"--\"\xff\xff\xff");
		}

	}
	else { //先判断频率，若达到3K阈值开始判断FSK与PSK，否侧直接为FM/CW

		find_FM_PSK();

	}

}

void find_FM_PSK(){
	float FM_div=0;
	FM_div = FM_PEAK_AVR/FM_RMS_AVR;
	double FM_FREQ_temp=0;
	FM_FREQ_temp = (FM_FREQ_AVR*5.960464478);
	if((FM_div >=5)&&(FM_RMS_AVR<1800)&&(AM_RMS_AVR>=2)){
		if((PSK_RMS_AVR<=40)){
			print("t1.txt=\"CW\"\xff\xff\xff");
			print("t3.txt=\"--\"\xff\xff\xff");
			print("t5.txt=\"--\"\xff\xff\xff");
			print("t7.txt=\"--\"\xff\xff\xff");
			print("t9.txt=\"--\"\xff\xff\xff");
			print("t1.txt=\"CW\"\xff\xff\xff");
			XGpio_DiscreteWrite(&SELE_GPIO,1,0x1000);
		}
		else {
		print("t1.txt=\"2PSK\"\xff\xff\xff");
		print("t3.txt=\"--\"\xff\xff\xff");
		print("t5.txt=\"--\"\xff\xff\xff");
		print("t7.txt=\"--\"\xff\xff\xff");

		find_PSK_FREQ();




		XGpio_DiscreteWrite(&SELE_GPIO,1,0x0100);
		}

	}
	else if((FM_div <=2.7)&&((FM_FREQ_temp>2500)&&(FM_PEAK_AVR>5000))){
		print("t1.txt=\"2FSK\"\xff\xff\xff");
		print("t3.txt=\"--\"\xff\xff\xff");
		print("t7.txt=\"--\"\xff\xff\xff");


		find_FSK_FREQ();
		XGpio_DiscreteWrite(&SELE_GPIO,1,0x0010);
	}
	else if(((FM_div >=2.8)||(FM_FREQ_AVR<500))&&(FM_FREQ_AVR<3500)){

		print("t9.txt=\"--\"\xff\xff\xff");



		find_FM_FREQ();
		XGpio_DiscreteWrite(&SELE_GPIO,1,0x0010);
		print("t1.txt=\"FM\"\xff\xff\xff");
	}
	else {
		print("t1.txt=\"--\"\xff\xff\xff");
		print("t1.txt=\"NO SIGNAL\"\xff\xff\xff");
		print("t3.txt=\"--\"\xff\xff\xff");
		print("t5.txt=\"--\"\xff\xff\xff");
		print("t7.txt=\"--\"\xff\xff\xff");
		print("t9.txt=\"--\"\xff\xff\xff");


		XGpio_DiscreteWrite(&SELE_GPIO,1,0x0000);
	}


}
void find_PSK_FREQ(){

	double PSK_FREQ_temp=0;
	PSK_FREQ_temp = (PSK_FREQ_AVR*5.960464478);
	if(PSK_FREQ_temp>4500){
		print("t9.txt=\"10Kbps\"\xff\xff\xff");
		//printf("FM_FREQ is 5KHz ;MF = %f\n",HF);
	}
	else if(PSK_FREQ_temp>3500){
		print("t9.txt=\"8Kbps\"\xff\xff\xff");
		//printf("FM_FREQ is 4KHz ;HF = %f\n",HF);

	}
	else if(PSK_FREQ_temp>2500){
		print("t9.txt=\"6Kbps\"\xff\xff\xff");
			//printf("FM_FREQ is 3KHz ;HF = %f;\n",HF);
	}


}

