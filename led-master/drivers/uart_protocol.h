#ifndef _UART_BUFFER_H
#define _UART_BUFFER_H

#include <rtthread.h>

/**CMD*/
//#define FRAME_HEAD    0xBE
//#define FRAME_END     0xED
//#define CMD_MODEL1    0xA1
//#define CMD_MODEL2    0xA2
//#define CMD_PWM1    	0xB1
//#define CMD_PWM2    	0xB2
//#define CMD_PWM3    	0xB3
//#define CMD_PWM4    	0xB4
//#define CMD_PWM5    	0xB5

#define FRAME_HEAD    0
#define FRAME_END     9
#define CMD_MODEL1    1
#define CMD_MODEL2    2
#define CMD_PWM1    	3
#define CMD_PWM2    	4
#define CMD_PWM3    	5
#define CMD_PWM4    	6
#define CMD_PWM5    	7

/** uart控制块 */
struct UART_CTRL
{
    rt_uint8_t   rx_buf[1];             /**< 接收缓冲区 */
	rt_uint8_t  recv_end_flg;               /**< 接收块完成 */
}uart_ctrl;

struct UART_CTRL* get_p_uart_ctrl(void);
void clr_rx_buf(void);
void uart_response_cmd(void);


#endif
