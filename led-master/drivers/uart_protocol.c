#include "uart_protocol.h"

// static struct UART_CTRL	uart_ctrl;
///////////////////////////////////////////////////////////////////////

/**
 * @brief  ���uart_ctrl�ṹ��ĵ�ַ
 * @param  None
 * @return uart_ctrl�ṹ��ĵ�ַ
 * @note   ��Ӧ�ò��uart_protocolģ���е���
 */
struct UART_CTRL* get_p_uart_ctrl(void)
{	
	return &uart_ctrl;  
}

/**
 * @brief  ��ս��ջ�����
 * @param  None
 * @return None
 */
void clr_rx_buf(void)	
{
	uart_ctrl.rx_buf[0] = 0;
	uart_ctrl.recv_end_flg = 0;
}