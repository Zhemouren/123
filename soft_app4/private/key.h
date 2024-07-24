#ifndef __KEY_H_
#define __KEY_H_
#include "soc_gpio.h"
#include "soc_ls1c102.h"

unsigned char MatrixKey(void);
void clkey(void);


// #define   C1  gpio_read(18)  //C1
// #define   C2  gpio_read(19)  //C2
// #define   C3  gpio_read(20)  //C3
// #define   C4  gpio_read(34)  //C4
#define   R1  gpio_read(14)  //R1
#define   R2  gpio_read(15)  //R2
#define   R3  gpio_read(16)  //R3
#define   R4  gpio_read(17)  //R4

#define   HLK_IO gpio_read(38)

#endif


