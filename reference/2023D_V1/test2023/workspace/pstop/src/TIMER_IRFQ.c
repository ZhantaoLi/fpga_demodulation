#include "delay.h"
#include "TIMER_IRFQ.h"
#include <stdio.h>
#include "read_vpp.h"
#include "XGpio.h"
extern XGpio FM_VPP_GPIO;
extern XGpio AM_VPP_GPIO;
extern XGpio FM_FREQ_GPIO;
extern XGpio AM_FREQ_GPIO;


extern uint16_t FM_FREQ;
extern uint16_t AM_FREQ;
extern uint16_t FM_VPP;
extern uint16_t AM_VPP;

extern uint16_t FM_VPP_buf[10];
extern uint16_t AM_VPP_buf[10];


void hwIntrHandler(void * CallBackRef)
{
	//printf("t1.txt=\"CWtest\"\xff\xff\xff");
	read_PEAK();
//	FM_VPP=XGpio_DiscreteRead(&FM_VPP_GPIO,1) ;
//	AM_VPP=XGpio_DiscreteRead(&AM_VPP_GPIO,1) ;
//	FM_FREQ=XGpio_DiscreteRead(&FM_FREQ_GPIO,1) ;
//	AM_FREQ=XGpio_DiscreteRead(&AM_FREQ_GPIO,1) ;
//	printf("FMis=%d,amis=%d,FM_FREQ=%d,AM_FREQ=%d\n",FM_VPP,AM_VPP,FM_FREQ,AM_FREQ);

}





int initGic()
{
	int status;
	//1. ��ʼ���쳣����ϵͳ
	Xil_ExceptionInit();
	//2. ��ʼ���жϿ�����
	gicCfg_Ptr = XScuGic_LookupConfig(GIC_DEV_ID);
	status = XScuGic_CfgInitialize(&gicInst, gicCfg_Ptr, gicCfg_Ptr->CpuBaseAddress);
	if(status != XST_SUCCESS)
	{
		printf("initialize GIC failed\n");
		return XST_FAILURE;
	}
	//3. ע���쳣�ص�����
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &gicInst);
	//4. ����GIC��Ӧ��Ӳ�ж�ID
	status = XScuGic_Connect(&gicInst, CPU0_HW_INT_ID, (Xil_InterruptHandler)hwIntrHandler, &gicInst);
	if(status != XST_SUCCESS)
	{
		printf("Connect GIC failed\n");
		return XST_FAILURE;
	}
	XScuGic_SetPriTrigTypeByDistAddr(DIST_BASE_ADDR, CPU0_HW_INT_ID, 0x20, 0x03);
	//6. ��Ӳ�жϰ󶨵�CPU0
	XScuGic_InterruptMaptoCpu(&gicInst, 0x00, CPU0_HW_INT_ID);
	//7. ʹ��Ӳ�ж�
	XScuGic_Enable(&gicInst, CPU0_HW_INT_ID);
	//8. ʹ���쳣����ϵͳ
	Xil_ExceptionEnable();
	return status;
}
