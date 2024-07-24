#include "soc_ls1c102.h"
#include "hbirdv2_uart.h"
#include "test.h"
uint32_t SystemCoreClock = 32000000;  /* System Clock Frequency (Core Clock) */
//设置系统时钟核频率
void hw_uart_init(uint32_t baudrate)
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    unsigned int uart_div = SystemCoreClock / baudrate - 1;
    uart->LCR = 0x80;                  
    uart->DLM =((uart_div >> 8)&0xFF);//低8位分频系数
    uart->DLL =(uart_div& 0xFF);//高8位分频系数
    uart->FCR = 0xC6;           
    uart->LCR = 0x03;

    // return 0;
}

//
void uart_config_stopbit( UART_STOP_BIT stopbit)
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->LCR &= 0xFFFFFFFB;
    uart->LCR |= (stopbit << 2);

    
}

void uart_enable_paritybit()
{


    uart->LCR |= 0x8;


}

void uart_disable_paritybit()
{

    uart->LCR &= 0xFFFFFFF7;


}

void uart_set_parity(  UART_PARITY_BIT paritybit)
{

    uart->LCR &= 0xFFFFFFCF;
    uart->LCR |= (paritybit << 4);

    // return 0;
}

void uart_write(  uint8_t val)
{
    while ((uart->LSR & 0x20) == 0);
    uart->THR = val;
}

uint8_t uart_read()
{
    uint32_t reg;
    while ((uart->LSR & 0x1) == 0);
    reg = uart->RBR;
    return (uint8_t)(reg & 0xFF);
}


void uart_enable_tx_empt_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER |= 0x2;
    // return 0;
}

void uart_disable_tx_empt_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER &= 0xFFFFFFFD;
    // return 0;
}

void uart_set_rx_th(  uint8_t th)
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    if(th > 3) {
       th = 3;
    }

    uart->FCR &= 0xFFFFFF3F;
    uart->FCR |= (th << 6);
    // return 0;
}

void uart_enable_rx_th_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER |= 0x1;
    // return 0;
}

void uart_disable_rx_th_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER &= 0xFFFFFFFE;
    // return 0;
}

void uart_enable_rx_err_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER |= 0x4;
    // return 0;
}

void uart_disable_rx_err_int( )
{
    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    uart->IER &= 0xFFFFFFFB;
    // return 0;
}

int32_t uart_get_int_status( )
{

    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    return uart->IIR;
}

int32_t uart_get_status( )
{

    // if (__RARELY(uart == NULL)) {
    //     return -1;
    // }

    return uart->LSR;
}


