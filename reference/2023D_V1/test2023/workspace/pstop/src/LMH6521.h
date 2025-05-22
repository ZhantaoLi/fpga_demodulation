
#ifndef __LMH6521_H_
#define __LMH6521_H_
#include "XGpio.h"
//INIT DATA
//SERIAL_CONFIG =DFLT
#define CHA 0x00
#define CHB 0x01
#define GAIN 0xC0

void Wirte_Data(uint8_t ADDR,uint8_t Data);
void LMH6521_io_init();
#endif
