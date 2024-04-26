/*
 * my_uart.c
 *
 * created: 2024/1/31
 *  author: 
 */

#include "soc_uart.h"
#include "soc_ls1c102.h"

void uart1_interrupt() {
    intc->en |= 0x04;                    // 开启 UART1 全局中断
}



