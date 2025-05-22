#include "LMH6521.h"
#include "XGpio.h"
XGpio CS;
XGpio SCLK;
XGpio SDIO;



void LMH6521_io_init(){
	XGpio_Initialize(&CS,			XPAR_GPIO_2_DEVICE_ID);
	XGpio_Initialize(&SDIO,			XPAR_GPIO_1_DEVICE_ID);
	XGpio_Initialize(&SCLK,			XPAR_GPIO_0_DEVICE_ID);

	XGpio_SetDataDirection(&CS,        1, 0x0);
	XGpio_SetDataDirection(&SDIO,      1, 0x0);
	XGpio_SetDataDirection(&SCLK,        1, 0x0);


	XGpio_DiscreteWrite(&CS, 			 1, 0x1);
	XGpio_DiscreteWrite(&SDIO, 		 1, 0x0);
	XGpio_DiscreteWrite(&SCLK, 			 1, 0x0);

}


void Wirte_Data(uint8_t ADDR,uint8_t Data){
	XGpio_DiscreteWrite(&CS,     1,0x1);
	XGpio_DiscreteWrite(&SCLK, 1,0x0);
	XGpio_DiscreteWrite(&CS,     1,0x0);

	for(int j=0;j<8;j++){
			XGpio_DiscreteWrite(&SCLK, 1,0x0);
			XGpio_DiscreteWrite(&SDIO  , 1,(ADDR >> (7-j)) & 0x01);	// MSB
			XGpio_DiscreteWrite(&SCLK, 1,0x1);
		}
	for(int j=0;j<8;j++){
			XGpio_DiscreteWrite(&SCLK, 1,0x0);
			XGpio_DiscreteWrite(&SDIO  , 1,(Data >> (7-j)) & 0x01);	// MSB
			XGpio_DiscreteWrite(&SCLK, 1,0x1);
		}
	XGpio_DiscreteWrite(&SCLK,     1,0x0);
	XGpio_DiscreteWrite(&CS,     1,0x1);
}

