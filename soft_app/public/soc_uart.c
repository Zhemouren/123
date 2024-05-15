/*
 * my_uart.c
 *
 * created: 2024/1/31
 *  author: 
 */

#include "soc_uart.h"
#include "as608.h"
#include "my_delay.h"
#include "ls1x_string.h"
static int g_recv_flag=0;
static uint8 g_recvCache[256];
static Buffer g_recvBuff;


void uart1_interrupt() {
    intc->en |= 0x04;                    // 开启 UART1 全局中断
}
void uart0_interrupt() {
    intc->en |= 0x08;                    // 开启 UART1 全局中断
}


void my_recv_buf_init()
{
	USART0_RX_STA = 0;
	memset(USART0_RX_BUF,0,sizeof(USART0_RX_BUF));//清空缓存
	Buffer_set(&g_recvBuff,USART0_RX_BUF,sizeof(USART0_RX_BUF));

}

void my_recv_dat_int(uint8 dat){
	USART0_RX_STA = 1;
	Buffer_write(&g_recvBuff,dat);
}

void uart_recv(){
	while(1){
		// WDG_DogFeed();
		if(g_recv_flag){
			my_delay_ms(100);
			// myprintf("recv buf len:%d\n",g_recvBuff.dataLen);
			Buffer_clear(&g_recvBuff);
			g_recv_flag = 0;
		}
	}
}

void uart_send()
{
	// myprintf("send test...\n");
	int i;
	Buffer_clear(&g_recvBuff);
	g_recv_flag = 0;
	for(i=0;i<200;i++){
		// UART_SendData(UART1,i);
		UART0_FIFO = i ;
	}
}



