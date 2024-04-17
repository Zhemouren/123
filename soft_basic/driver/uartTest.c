/*
 * uartTest.c
 *
 *  Created on: 2023年9月6日
 *      Author: j
 */

#include "ls1x.h"
#include "Buffer.h"
#include "ls1x_latimer.h"
#include "ls1x_wdg.h"
#include "ls1x_string.h"
#include "uartTest.h"
#include "ls1x_printf.h"
#include "ls1x_uart.h"
#include "my_delay.h"
// #include "F:\GOWIN\Project\loongxin2\soft\public\ls1x_uart.c"

static int g_recv_flag;
static uint8 g_recvCache[256];
static Buffer g_recvBuff;
void recv_buf_init()
{
	g_recv_flag = 0;
	memset(g_recvCache,0,500);
	Buffer_set(&g_recvBuff,g_recvCache,500);

}
void recv_dat_int(INT8U dat){
	g_recv_flag = 1;
	Buffer_write(&g_recvBuff,dat);
}

void test_uart_recv(){
	while(1){
		WDG_DogFeed();
		if(g_recv_flag){
			my_delay_ms(100);
			myprintf("recv buf len:%d\n",g_recvBuff.dataLen);
			Buffer_clear(&g_recvBuff);
			g_recv_flag = 0;
		}
	}
}

void test_uart_send()
{
	myprintf("send test...\n");
	int i;
	Buffer_clear(&g_recvBuff);
	g_recv_flag = 0;
	for(i=0;i<200;i++){
		UART_SendData(UART1,i);
	}
}