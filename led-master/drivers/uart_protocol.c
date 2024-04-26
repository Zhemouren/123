#include "uart_protocol.h"

// static struct UART_CTRL	uart_ctrl;
///////////////////////////////////////////////////////////////////////

/**
 * @brief  获得uart_ctrl结构体的地址
 * @param  None
 * @return uart_ctrl结构体的地址
 * @note   在应用层的uart_protocol模块中调用
 */
struct UART_CTRL* get_p_uart_ctrl(void)
{	
	return &uart_ctrl;  
}

/**
 * @brief  清空接收缓冲区
 * @param  None
 * @return None
 */
void clr_rx_buf(void)	
{
	uart_ctrl.rx_buf[0] = 0;
	uart_ctrl.recv_end_flg = 0;
}