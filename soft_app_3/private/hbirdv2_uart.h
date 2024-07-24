// See LICENSE for license details.

#ifndef _HBIRDV2_UART_H
#define _HBIRDV2_UART_H

#ifdef __cplusplus
 extern "C" {
#endif

typedef enum uart_stop_bit {
    UART_STOP_BIT_1 = 0,
    UART_STOP_BIT_2 = 1
} UART_STOP_BIT;//停止位

typedef enum uart_parity_bit {
    UART_ODD   = 0,
    UART_EVEN  = 1,
    UART_SPACE = 2,
    UART_MARK  = 3
} UART_PARITY_BIT;//校验位

void hw_uart_init(uint32_t baudrate);
void uart_config_stopbit( UART_STOP_BIT stopbit);
void uart_enable_paritybit( );
void uart_disable_paritybit( );
void uart_set_parity( UART_PARITY_BIT paritybit);
void uart_write(uint8_t val);
uint8_t uart_read( );
void uart_enable_tx_empt_int( );
void uart_disable_tx_empt_int( );
void uart_set_rx_th(  uint8_t th);
void uart_enable_rx_th_int( );
void uart_disable_rx_th_int( );
void uart_enable_rx_err_int( );
void uart_disable_rx_err_int( );
int32_t uart_get_int_status( );
int32_t uart_get_status( );

#ifdef __cplusplus
}
#endif
#endif /* _HBIRDV2_UART_H */
