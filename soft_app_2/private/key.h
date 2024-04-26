#ifndef __KEY_H_
#define __KEY_H_
#include "soc_gpio.h"
#include "soc_ls1c102.h"

unsigned char MatrixKey(void);
void clkey(void);


#define   C1  gpio_read(3)  //C1
#define   C2  gpio_read(4)  //C2
#define   C3  gpio_read(5)  //C3
#define   C4  gpio_read(6)  //C4
#define   R1  gpio_read(13)  //R1
#define   R2  gpio_read(14)  //R2
#define   R3  gpio_read(15)  //R3
#define   R4  gpio_read(16)  //R4

#endif


