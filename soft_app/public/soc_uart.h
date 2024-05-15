/*
 * soc_uart.h
 *
 * created: 2024/1/31
 *  author: 
 */

#ifndef _SOC_UART_H
#define _SOC_UART_H

#ifdef __cplusplus
extern "C" {
#endif
#include "soc_ls1c102.h"
#include "Buffer.h"
#include "ls1x_string.h"
// #include "ls1x_wdg.h"
void uart1_interrupt();
void uart0_interrupt();//uart0 中断，需要更改硬件支持

//收包初始化
void my_recv_buf_init();

//串口接收函数
void my_recv_dat_int(INT8U dat);

void uart_recv();   //接受字符串函数

void uart_send();   //发送字符串函数
#ifdef __cplusplus
}
#endif

#endif // _SOC_UART_H
